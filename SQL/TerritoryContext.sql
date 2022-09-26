CREATE TABLE `TerritoryContext` (
  `actor_id` varchar(255),
  `area` int,
  `lat` int,
  `lng` int,
  `population` int,
  `population_year` int,
  `gdp` int,
  `gdp_year` int,
  `admin_bound` geojson,
  `created` datetime,
  `last_updated` datetime,
  PRIMARY KEY (`actor_id`)
);
