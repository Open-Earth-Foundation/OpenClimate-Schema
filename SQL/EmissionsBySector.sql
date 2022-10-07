/*
This table captures emissions in metric tons for each actor separated by sector

emissions_id: 
    description: unique identifier for record 
    format: <datasource>:<actor_id>:<year>
sector_id: 
    description: The sector for the emissions
    format: 1, 2, or 3
emissions_value: 
    description:metric tonnes of CO2 equivalent
    format: integer
created:
    description: date record created
    format: timestamp
last_updated:
    description: data record created
    format: timestamp
*/
CREATE TABLE "EmissionsBySector" (
  "emissions_id" varchar(255), /* Which emissions aggregate this is a part of */
  "sector_id" varchar(255), /* The sector for the emissions */
  "emissions_value" bigint, /* metric tonnes of CO2 equivalent */
  "created" timestamp,
  "last_updated" timestamp,
  PRIMARY KEY ("emissions_id", "sector_id"),
  CONSTRAINT "FK_EmissionsBySector.emissions_id"
    FOREIGN KEY ("emissions_id")
      REFERENCES "EmissionsAgg"("emissions_id"),
  CONSTRAINT "FK_EmissionsBySector.sector_id"
    FOREIGN KEY ("sector_id")
      REFERENCES "Sector"("sector_id")
);
