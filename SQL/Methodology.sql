/*
This table captures information about the emissions methodology

methodology_id:
    description: methodology used to estimate emissions
    format: <datasource>:methodology
name:
    description: Name for the methodology
    format: 
methodology_link:
    description: Link for human-readable methodology documentation 
    format: URL
created:
    description: date record created
    format: timestamp
last_updated:
    description: data record created
    format: timestamp
*/
CREATE TABLE "Methodology" (
  "methodology_id" varchar(255), /* Unique identifier for this methodology */
  "name" varchar(255), /* Name for the methodology */
  "methodology_link" varchar(255), /* Link for human-readable methodology documentation */
  "created" timestamp,
  "last_updated" timestamp,
  PRIMARY KEY ("methodology_id")
);
