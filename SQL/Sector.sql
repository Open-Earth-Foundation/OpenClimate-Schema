CREATE TABLE "Sector" (
  "sector_id" varchar(255), /* Unique ID; 
  "name" varchar(255),
  "namespace" varchar(255),
  "datasource_id" varchar(255), /* Where the record came from */
  "created" timestamp,
  "last_updated" timestamp,
  PRIMARY KEY ("sector_id"),
  CONSTRAINT "FK_Sector.datasource_id"
    FOREIGN KEY ("datasource_id")
      REFERENCES "DataSource"("datasource_id")
);
