CREATE TABLE `Target` (
  `target_id` text,
  `actor_id` text,
  `target_type` text,
  `baseline_year` int,
  `target_year` int,
  `target_value` int,
  `target_unit` text,
  `bau_value` int,
  `is_net_zero` bool,
  `percent_achieved` int,
  `data_source` text,
  `last_updated` datetime,
  PRIMARY KEY (`target_id`)
);
