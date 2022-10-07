/*
This table captures  ...

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
CREATE TABLE "ActorName" (
  "actor_id" varchar(255),
  "name" varchar(255),
  "language" varchar(255),
  "preferred" boolean,
  "datasource_id" varchar(255),
  "created" timestamp,
  "last_updated" timestamp,
  PRIMARY KEY ("actor_id", "language", "name"),
  CONSTRAINT "FK_ActorName.actor_id"
    FOREIGN KEY ("actor_id")
      REFERENCES "Actor"("actor_id"),
  CONSTRAINT "FK_ActorName.datasource_id"
    FOREIGN KEY ("datasource_id")
      REFERENCES "DataSource"("datasource_id")
);