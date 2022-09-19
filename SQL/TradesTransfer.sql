CREATE TABLE `TradesTransfer` (
  `transaction_id` text,
  `actor_from` text,
  `actor_to` text,
  `type` text,
  `unit` text,
  `value` text,
  `datasource_id` text,
  PRIMARY KEY (`transaction_id`)
);
