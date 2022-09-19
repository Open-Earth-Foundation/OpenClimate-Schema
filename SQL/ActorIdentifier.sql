CREATE TABLE `ActorIdentifier` (
  `actor_id` text,
  `identifier` text,
  `namespace` text,
  PRIMARY KEY (`actor_id`, `identifier`, `namespace`)
);