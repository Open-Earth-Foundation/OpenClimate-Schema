/*
This table cpatures information about each datasource

datasource_id:
    description: Where the record came from
    format: <publisher>:<dataset_doi>:<version>
name:
    description: ???
    format:
publisher: 
    description: name of publisher 
    format: 
published:
    description: date dataset published ???
    format:
URL:
    description: URL of dataset
    format:
created:
    description: date record created
    format: timestamp
last_updated:
    description: data record created
    format: timestamp
*/
CREATE TABLE "DataSource" (
  "datasource_id" varchar(255),
  "name" varchar(255),
  "publisher" varchar(255),
  "published" timestamp,
  "URL" varchar(255),
  "created" timestamp,
  "last_updated" timestamp,
  PRIMARY KEY ("datasource_id"),
  CONSTRAINT "FK_DataSource.publisher"
    FOREIGN KEY ("publisher")
      REFERENCES "Publisher"("id")
);
