/*
This table captures ...

tag_id:
    description: unique id
    format: 
tag_name:
    description: human readable name ???
    format:
created:
    description: date record created
    format: timestamp
last_updated:
    description: data record created
    format: timestamp
*/
CREATE TABLE `Tag` (
  `tag_id` varchar(255),
  `tag_name` varchar(255),
  `created` timestamp,
  `last_updated` timestamp,
  PRIMARY KEY (`tag_id`)
);
