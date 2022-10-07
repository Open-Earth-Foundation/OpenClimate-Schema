/*
This table captures total aggregated emissions in metric tons for each actor

emissions_id: 
    description: unique identifier for record 
    format: <datasource>:<actor_id>:<year>
scope: 
    description: The GHG Protocol Corporate Standard category for greenhouse gas emissions
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
CREATE TABLE "EmissionsByScope" (
  "emissions_id" varchar(255), /* What emissions this is aggregated to */
  "scope" int, /* 1, 2, or 3 */
  "emissions_value" bigint, /* metric tonnes of CO2 equivalent */
  "created" timestamp,
  "last_updated" timestamp,
  PRIMARY KEY ("emissions_id", "scope"),
  CONSTRAINT "FK_EmissionsByScope.emissions_id"
    FOREIGN KEY ("emissions_id")
      REFERENCES "EmissionsAgg"("emissions_id")
);
