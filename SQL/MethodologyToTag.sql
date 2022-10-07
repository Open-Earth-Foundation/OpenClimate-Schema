/*
This table captures ...

methodology_id:
    description: methodology used to estimate emissions
    format: <datasource>:methodology
tag_id:
    description: ???
    format:
created:
    description: date record created
    format: timestamp
last_updated:
    description: data record created
    format: timestamp
*/
CREATE TABLE `MethodologyToTag` (
  `methodology_id` varchar(255),
  `tag_id` varchar(255),
  `created` timestamp,
  `last_updated` timestamp
);
