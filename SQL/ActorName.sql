CREATE TABLE `ActorName` (
  `actor_id` varchar(255),
  `name` varchar(255),
  `language` varchar(255),
  `preferred` boolean,
  PRIMARY KEY (`actor_id`, `language`, `name`)
);