CREATE TABLE `TradeTransfer` (
  `transaction_id` varchar(255),
  `actor_from` varchar(255),
  `actor_to` varchar(255),
  `type` varchar(255),
  `unit` varchar(255),
  `value` varchar(255),
  `datasource_id` varchar(255),
  PRIMARY KEY (`transaction_id`)
);
