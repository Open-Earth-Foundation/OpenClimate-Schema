/*
This table captures information about each 
party responsible emissions (i.e. actors)

actor_id:
    description: party responsible for emissions
    format: ISO-3166, UN/LOCODE, other
type:
    description: classification of the actor
    format: One of: planet, country, adm1, city, organization, site 
name:
    description: Default; see ActorName for alternates and languages 
    format:
icon:
    description: symbol for the actor
    format: URI of a square, small avatar icon, like a flag or logo
hq:
    description: ???
    format:
is_part_of:
    description: Where this actor is physically
    format:
is_owned_by:
    description: Only for sites, which company owns them
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
CREATE TABLE "Actor" (
  "actor_id" varchar(255), /* Unique identifier for the Actor; ISO-3166, UN/LOCODE, other */
  "type" varchar(255), /* One of: planet, country, adm1, city, organization, site */
  "name" varchar(255), /* Default; see ActorName for alternates and languages */
  "icon" varchar(255), /* URI of a square, small avatar icon, like a flag or logo */
  "hq" varchar(255),
  "is_part_of" varchar(255), /* Where this actor is physically */
  "is_owned_by" varchar(255), /* Only for sites, which company owns them */
  "datasource_id" varchar(255), /* Where the record came from */
  "created" timestamp,
  "last_updated" timestamp,
  PRIMARY KEY ("actor_id"),
  CONSTRAINT "FK_Actor.is_owned_by"
    FOREIGN KEY ("is_owned_by")
      REFERENCES "Actor"("actor_id"),
  CONSTRAINT "FK_Actor.is_part_of"
    FOREIGN KEY ("is_part_of")
      REFERENCES "Actor"("actor_id"),
  CONSTRAINT "FK_Actor.datasource_id"
    FOREIGN KEY ("datasource_id")
      REFERENCES "DataSource"("datasource_id")
);
