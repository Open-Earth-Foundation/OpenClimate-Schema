CREATE TABLE `Action` (
  `action_id` text,
  `actor_id` text,
  `action_type` text,
  `sector` text,
  `year` int,
  `description` text,
  `emissions_reductions` int,
  `percent_achieved` int,
  `datasource_id` text,
  `last_updated` datetime,
  PRIMARY KEY (`action_id`)
);
