/*
This table captures ...

actor_id:
    description: party responsible for emissions
    format: ISO-3166, UN/LOCODE, other
identifier:
    description: ???
    format:
namespace:
    description: ???
    format:
datasource_id:
    description: Where the record came from
    format: <publisher>:<dataset_doi>:<version>
created:
    description: date record created
    format: timestamp
last_updated:
    description: data record created
    format: timestamp
*/
CREATE TABLE "ActorIdentifier" (
  "actor_id" varchar(255),
  "identifier" varchar(255),
  "namespace" varchar(255),
  "datasource_id" varchar(255),
  "created" timestamp,
  "last_updated" timestamp,
  PRIMARY KEY ("identifier", "namespace"),
  CONSTRAINT "FK_ActorIdentfier.actor_id"
    FOREIGN KEY ("actor_id")
      REFERENCES "Actor"("actor_id"),
  CONSTRAINT "FK_ActorIdentfier.datasource_id"
    FOREIGN KEY ("datasource_id")
      REFERENCES "DataSource"("datasource_id")
);