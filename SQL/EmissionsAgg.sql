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
  `last_updated` datetime,
  PRIMARY KEY (`emissions_id`)
);
