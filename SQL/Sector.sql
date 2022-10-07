/*
This table captures ...

sector_id:
    description: unique id
    format: 
name:
    description: human readable name
    format:
namespace:
    description: Namespace or vocabulary for the sector
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
CREATE TABLE "Sector" (
  "sector_id" varchar(255), /* Unique ID */
  "name" varchar(255), /* human-readable name; TODO: i18n */
  "namespace" varchar(255), /* Namespace or vocabulary for the sector */
  "datasource_id" varchar(255), /* Where the record came from */
  "created" timestamp,
  "last_updated" timestamp,
  PRIMARY KEY ("sector_id"),
  CONSTRAINT "FK_Sector.datasource_id"
    FOREIGN KEY ("datasource_id")
      REFERENCES "DataSource"("datasource_id")
);
