/*
This table captures ...

actor_id:
    description: party responsible for emissions
    format:  ISO-3166-1 alpha-2 code, i.e. the two letter code
area:
    description:
    format:
lat:
    description: 
    format:
lng:
    description:
    format:
population:
    description:
    format:
population_year:
    description:
    format:
gdp:
    description:
    format:
gdp_year:
    description:
    format:
admin_bound:
    description:
    format:
created:
    description: date record created
    format: timestamp
last_updated:
    description: data record created
    format: timestamp
*/
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
  `created` timestamp,
  `last_updated` timestamp,
  PRIMARY KEY (`actor_id`)
);
