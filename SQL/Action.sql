/*
This table captures ...

emissions_id: 
    description: unique identifier for record 
    format: <datasource>:<actor_id>:<year>
actor_id:
    description: party responsible for emissions
    format:  ISO-3166-1 alpha-2 code, i.e. the two letter code
year:
    description: year of emissions
    format: integer
total_emissions: 
    description: metric tones (i.e. tonnes) of CO2 equivalent emitted by actor for given year
    format: integer
methodology_id:
    description: methodology used to estimate emissions
    format: <datasource>:methodology
datasource_id:
    description: Where the record came from
    format: <publisher>:<dataset_doi>:<version>
created:
    description: date record created
    format: timestamp
last_updated:
    description: data record created
    format: timestamp
*/
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
  `created` timestamp,
  `last_updated` timestamp,
  PRIMARY KEY (`action_id`),
  CONSTRAINT "FK_Action.actor_id"
    FOREIGN KEY ("actor_id")
      REFERENCES "Actor"("actor_id"),
);
