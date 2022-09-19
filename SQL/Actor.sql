CREATE TABLE "Actor" (
  "actor_id" text,
  "type" text,
  "name" text,
  "iso" text,
  "flag" text,
  "hq" text,
  "is_part_of" text,
  "is_owned_by" text,
  PRIMARY KEY ("actor_id"),
  CONSTRAINT "FK_Actor.is_owned_by"
    FOREIGN KEY ("is_owned_by")
      REFERENCES "Actor"("actor_id"),
  CONSTRAINT "FK_Actor.is_part_of"
    FOREIGN KEY ("is_part_of")
      REFERENCES "Actor"("actor_id")
);
