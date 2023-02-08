CREATE TABLE "EmissionsBreakdown" (
  "emissions_id" varchar(255),
  "scope" int,
  "sector_id" varchar(255),
  "ghgs_included" varchar(255),
  "activity_description" varchar(255),
  "activity_value" bigint,
  "activity_unit" varchar(255),
  "emissions_factor" double(4.2),
  "emissions_value" bigint,
  "reporting_boundary" varchar(255),
  "gwp_used" varchar(255),
  "created" timestamp,
  "last_updated" timestamp,
  PRIMARY KEY ("emissions_id", "scope", "sector_id", "ghgs_included")
  CONSTRAINT "FK_EmissionsBreakdown.emissions_id"
    FOREIGN KEY ("emissions_id")
        REFERENCES "EmissionsAgg" ("emissions_id")
  CONSTRAINT "FK_EmissionsBreakdown.sector_id"
    FOREIGN KEY ("sector_id")
        REFERENCES "Sector" ("sector_id")
);
