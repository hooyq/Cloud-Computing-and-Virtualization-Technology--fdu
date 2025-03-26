-- Source Table;
CREATE TABLE `source_table` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `good_id` int DEFAULT NULL,
  `amount` int DEFAULT NULL,
  `record_time` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- Dimension Table;
CREATE TABLE `dimension_table` (
  `good_id` int unsigned NOT NULL,
  `good_name` varchar(256) DEFAULT NULL,
  `good_price` int DEFAULT NULL,
  PRIMARY KEY (`good_id`)
);

-- Sink Table;
CREATE TABLE `sink_table` (
  `record_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `good_name` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `sell_amount` int DEFAULT NULL,
  PRIMARY KEY (`record_timestamp`)
);