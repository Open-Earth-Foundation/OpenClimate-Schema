CREATE TABLE `InitiativesPledges` (
  `initiative_id` text,
  `actor_id` text,
  `initiative_type` text,
  `initiative_name` text,
  `initiative_statement` text,
  `datasource_id` text,
  `last_updated` datetime,
  PRIMARY KEY (`initiative_id`)
);