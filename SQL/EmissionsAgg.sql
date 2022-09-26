CREATE TABLE `EmissionsAgg` (
  `emissions_id` varchar(255),
  `actor_id` varchar(255),
  `year` int,
  `scope1_agg` int,
  `scope2_agg` int,
  `scope3_agg` int,
  `total_emissions` int,
  `methodology_id` varchar(255),
  `datasource_id` varchar(255),
  `created` datetime,
  `last_updated` datetime,
  PRIMARY KEY (`emissions_id`),
  CONSTRAINT "FK_EmissionsAgg.actor_id"
    FOREIGN KEY ("actor_id")
      REFERENCES "Actor"("actor_id"),
  CONSTRAINT "FK_EmissionsAgg.methodology_id"
    FOREIGN KEY ("methodology_id")
      REFERENCES "Methodology"("methodology_id"),
  CONSTRAINT "FK_EmissionsAgg.datasource_id"
    FOREIGN KEY ("datasource_id")
      REFERENCES "DataSource"("datasource_id"),
);
