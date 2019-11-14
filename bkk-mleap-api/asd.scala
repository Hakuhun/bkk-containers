          val splits = bkkv3Data.randomSplit(Array(0.7, 0.3))

          val trainingData = splits(0)
          val testData = splits(1)

          val assembler = new VectorAssembler()
            .setInputCols(Array("routeId", "stopId", "month","dayOfWeek","hour","temperature","humidity","pressure","rain","snow","visibility"))
            .setOutputCol("features")

          val dt = new DecisionTreeRegressor()
            .setLabelCol("value")
            .setFeaturesCol("features")
            .setImpurity("variance")
            .setMaxDepth(30)
            .setMaxBins(32)
            .setMinInstancesPerNode(5)

          pipeline = new Pipeline()

          try {
            model = PipelineModel.load(modelDirectory)
            pipeline.setStages(model.stages)
          } catch {
            case iie: InvalidInputException => {
              pipeline.setStages(Array(assembler,dt))
              printf(iie.getMessage)
            }
            case unknownError: UnknownError => {
              printf(unknownError.getMessage)
            }
          }

          newModel = pipeline.fit(trainingData)

          // Make predictions.
          val predictions: DataFrame = model.transform(testData)

          // Select example rows to display.
          print(s"Predictions based on ${System.currentTimeMillis()} time train: ${System.lineSeparator()}")
          predictions.show(10, false)

          // Select (prediction, true label) and compute test error
          val evaluator = new MulticlassClassificationEvaluator()
            .setLabelCol("value")
            .setPredictionCol("prediction")
            .setMetricName("accuracy")
          val accuracy = evaluator.evaluate(predictions)
