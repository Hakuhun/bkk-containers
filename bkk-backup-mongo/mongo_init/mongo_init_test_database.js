db.createUser(
   {
     user: "root",
     pwd: "root123",  // Or  "<cleartext password>"
     roles: [ { role: "clusterAdmin", db: "admin" },
     { role: "readAnyDatabase", db: "admin" },
     "readWrite"] 
   }
);

db.auth("root","root123")

db.createUser(
    {
      user: "routeManager",
      pwd: "route123",  // Or  "<cleartext password>"
      roles: [ "readWrite", "dbAdmin" ]
    }
 );
 
 db.auth("routeManager", "route123");
 
 routes = db.getSiblingDB("routes-backup");

 routes.createCollection("routes",{
    validator:{ $jsonSchema:{
        bsonType:"object",
        //required:[time,route,weather],
        //required:[month, dayOfWeek, routeId, stopId, temperature,humidity,pressure,rain, snow, visibility, alert, label],
        properties:{
            time:{
                bsonType:"object",
          //      required:[month, dayOfWeek, hour],
                month:{
                    bsonType:"int"
                },
                dayOfWeek:{
                    bsonType:"int",
                },
                hour:{
                    bsonType:"int"
                }
            },
            route:{
                bsonType:"object",
            //    required:[routeId,stopId,alert],
                routeId:{ bsonType:"int" },
                stopId:{bsonType:"int"},
                alert:{bsonType:"bool"}
            },
            weather:{
              //  required:[temperature,humidity,pressure, visibility],
                bsonType:"object",
                temperature:{bsonType:"double"},
                humidity:{bsonType:"double"},
                pressure:{bsonType:"double"},
                snow:{bsonType:"double"},
                rain:{bsonType:"double"},
                visibility:{bsonType:"double"}
            },
            label:{
                bsonType:"double"
            }
        }
    }}
 });

 routes.routes.insertOne({
     time:{
         month:11,
         dayOfWeek:4,
         hour:22
     },
     route:{
         routeId:2005,
         stopId:86856,
         alert:false
     },
     weather:{
         temperature:8.46,
         humidity:93.0,
         pressure:1012.0,
         visibility:1000
     },
     label:2.5
 });