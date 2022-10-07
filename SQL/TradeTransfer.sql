/*
This table captures ...

transaction_id:
    description: party responsible for emissions
    format:  ISO-3166-1 alpha-2 code, i.e. the two letter code
actor_from:
    description:
    format:
actor_to:
    description: 
    format:
type:
    description:
    format:
unit:
    description:
    format:
value:
    description:
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
CREATE TABLE `TradeTransfer` (
  `transaction_id` varchar(255),
  `actor_from` varchar(255),
  `actor_to` varchar(255),
  `type` varchar(255),
  `unit` varchar(255),
  `value` varchar(255),
  `datasource_id` varchar(255),
  `created` timestamp,
  `last_updated` timestamp,
  PRIMARY KEY (`transaction_id`)
);
