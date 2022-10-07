/*
This table captures ...

id:
    description: unique id
    format: 
name:
    description: ???
    format:
URL:
    description: link to information about publisher
    format: URL
created:
    description: date record created
    format: timestamp
last_updated:
    description: data record created
    format: timestamp
*/
CREATE TABLE "Publisher" (
  "id" varchar(255),
  "name" varchar(255),
  "URL" varchar(255),
  "created" timestamp,
  "last_updated" timestamp,
  PRIMARY KEY ("id")
);
