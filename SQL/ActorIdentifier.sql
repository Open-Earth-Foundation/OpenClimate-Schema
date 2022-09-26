CREATE TABLE `ActorIdentifier` (
  `actor_id` varchar(255),
  `identifier` varchar(255),
  `namespace` varchar(255),
  PRIMARY KEY (`identifier`, `namespace`),
  CONSTRAINT "FK_ActorIdentfier.actor_id"
    FOREIGN KEY ("actor_id")
      REFERENCES "Actor"("actor_id"),
);