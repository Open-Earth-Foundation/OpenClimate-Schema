CREATE TABLE `TerritoryContext` (
  `actor_id` text,
  `area` int,
  `lat` int,
  `lng` int,
  `population` int,
  `population_year` int,
  `gdp` int,
  `gdp_year` int,
  `admin_bound` geojson,
  PRIMARY KEY (`actor_id`)
);
