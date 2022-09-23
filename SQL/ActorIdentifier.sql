CREATE TABLE `ActorIdentifier` (
  `actor_id` varchar(255),
  `identifier` varchar(255),
  `namespace` varchar(255),
  PRIMARY KEY (`actor_id`, `identifier`, `namespace`)
);