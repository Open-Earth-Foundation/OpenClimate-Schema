/*
This table captures total aggregated emissions in metric tons for each actor

emissions_id: 
    description: unique identifier for record 
    format: <datasource>:<actor_id>:<year>
actor_id:
    description: party responsible for emissions
    format:  ISO-3166-1 alpha-2 code, i.e. the two letter code
year:
    description: year of emissions
    format: integer
total_emissions: 
    description: metric tones (i.e. tonnes) of CO2 equivalent emitted by actor for given year
    format: integer
methodology_id:
    description: methodology used to estimate emissions
    format: <datasource>:methodology
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
CREATE TABLE "EmissionsAgg" (
  "emissions_id" varchar(255), /* Unique identifier for this record */
  "actor_id" varchar(255), /* Responsible party for the emissions */
  "year" int, /* Year of emissions, YYYY */
  "total_emissions" bigint, /* Integer value of tonnes of CO2 equivalent */
  "methodology_id" varchar(255), /* Methodology used */
  "datasource_id" varchar(255), /* Source for the data */
  "created" timestamp,
  "last_updated" timestamp,
  PRIMARY KEY ("emissions_id"),
  CONSTRAINT "FK_EmissionsAgg.actor_id"
    FOREIGN KEY ("actor_id")
      REFERENCES "Actor"("actor_id"),
  CONSTRAINT "FK_EmissionsAgg.methodology_id"
    FOREIGN KEY ("methodology_id")
      REFERENCES "Methodology"("methodology_id"),
  CONSTRAINT "FK_EmissionsAgg.datasource_id"
    FOREIGN KEY ("datasource_id")
      REFERENCES "DataSource"("datasource_id")
);
