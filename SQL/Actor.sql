CREATE TABLE "Actor" (
  "actor_id" varchar(255),
  "type" varchar(255),
  "name" varchar(255),
  "icon" varchar(255),
  "hq" varchar(255),
  "is_part_of" varchar(255),
  "is_owned_by" varchar(255),
  PRIMARY KEY ("actor_id"),
  CONSTRAINT "FK_Actor.is_owned_by"
    FOREIGN KEY ("is_owned_by")
      REFERENCES "Actor"("actor_id"),
  CONSTRAINT "FK_Actor.is_part_of"
    FOREIGN KEY ("is_part_of")
      REFERENCES "Actor"("actor_id")
);
