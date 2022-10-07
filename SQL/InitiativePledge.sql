/*
This table captures ...

initiative_id: 
    description: unique identifier for record ???
    format: 
actor_id:
    description: party responsible for emissions
    format: ISO-3166, UN/LOCODE, other
initiative_type: 
    description: ???
    format: 
initiative_name: 
    description: ???
    format: 
initiative_statement: 
    description: ???
    format: 
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
CREATE TABLE `InitiativePledge` (
  `initiative_id` varchar(255),
  `actor_id` varchar(255),
  `initiative_type` varchar(255),
  `initiative_name` varchar(255),
  `initiative_statement` varchar(255),
  `datasource_id` varchar(255),
  `created` timestamp,
  `last_updated` timestamp,
  PRIMARY KEY (`initiative_id`)
);