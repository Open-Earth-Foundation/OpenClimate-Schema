CREATE TABLE "Target" (
  "target_id" varchar(255),
  "actor_id" varchar(255),
  "target_type" varchar(255),
  "baseline_year" int,
  "target_year" int,
  "target_value" int,
  "target_unit" varchar(255),
  "bau_value" int,
  "is_net_zero" boolean,
  "percent_achieved" int,
  "sector_list" varchar(255),
  "baseline_emissions" varchar(255),
  "target_year_emissions" varchar(255),
  "target_boundary" varchar(255),
  "data_source" varchar(255),
  "created" timestamp,
  "last_updated" timestamp,
  PRIMARY KEY ("target_id")
  CONSTRAINT "Target.baseline_emissions"
    FOREIGN KEY ("baseline_emissions")
      REFERENCES "EmissionsAgg"("emissions_id")
  CONSTRAINT "Target.target_year_emissions"
    FOREIGN KEY ("target_year_emissions")
      REFERENCES "EmissionsAgg"("emissions_id")
);
