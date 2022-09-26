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
