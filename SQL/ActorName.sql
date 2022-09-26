CREATE TABLE `ActorName` (
  `actor_id` varchar(255),
  `name` varchar(255),
  `language` varchar(255),
  `preferred` boolean,
  `created` datetime,
  `last_updated` datetime,
  PRIMARY KEY (`actor_id`, `language`, `name`),
  CONSTRAINT "FK_ActorName.actor_id"
    FOREIGN KEY ("actor_id")
      REFERENCES "Actor"("actor_id"),
);