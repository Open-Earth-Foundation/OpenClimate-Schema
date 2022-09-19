CREATE TABLE `EmissionsAgg` (
  `emissions_id` text,
  `actor_id` text,
  `year` int,
  `scope1_agg` int,
  `scope2_agg` int,
  `scope3_agg` int,
  `total_emissions` int,
  `methodology_id` text,
  `datasource_id` text,
  `last_updated` datetime,
  PRIMARY KEY (`emissions_id`)
);
