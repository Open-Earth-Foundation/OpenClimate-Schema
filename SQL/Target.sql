/*
This table captures ...

target_id:
    description: unique id
    format: 
actor_id:
    description: party responsible for emissions
    format:  ISO-3166-1 alpha-2 code, i.e. the two letter code
target_type:
    description:
    format:
baseline_year: 
    description: reference year targets are benchmarked to
    format:
target_year:
    description: year to meet the stated goal
    format:
target_value:
    description:
    format:
target_unit:
    description:
    format:
bau_unit:
    description: ???
    format:
is_net_zero:
    description:
    format:
percent_achieved:
    description:
    format:
data_source:
    description: ???
    format:
created:
    description: date record created
    format: timestamp
last_updated:
    description: data record created
    format: timestamp
*/
CREATE TABLE `Target` (
  `target_id` varchar(255),
  `actor_id` varchar(255),
  `target_type` varchar(255),
  `baseline_year` int,
  `target_year` int,
  `target_value` int,
  `target_unit` varchar(255),
  `bau_value` int,
  `is_net_zero` boolean,
  `percent_achieved` int,
  `data_source` varchar(255),
  `created` timestamp,
  `last_updated` timestamp,
  PRIMARY KEY (`target_id`)
);
