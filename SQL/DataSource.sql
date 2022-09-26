CREATE TABLE "DataSource" (
  "datasource_id" varchar(255),
  "name" varchar(255),
  "publisher" varchar(255),
  "published" datetime,
  "URL" varchar(255),
  "created" datetime,
  "last_updated" datetime,
  PRIMARY KEY ("datasource_id"),
  CONSTRAINT "FK_DataSource.publisher"
    FOREIGN KEY ("publisher")
      REFERENCES "Publisher"("id"),
);
