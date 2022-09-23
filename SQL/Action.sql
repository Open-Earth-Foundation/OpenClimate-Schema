CREATE TABLE `Action` (
  `action_id` varchar(255),
  `actor_id` varchar(255),
  `action_type` varchar(255),
  `sector` varchar(255),
  `year` int,
  `description` varchar(255),
  `emissions_reductions` int,
  `percent_achieved` int,
  `datasource_id` varchar(255),
  `last_updated` datetime,
  PRIMARY KEY (`action_id`)
);
