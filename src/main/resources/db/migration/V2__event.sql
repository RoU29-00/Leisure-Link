CREATE TABLE `event`
(
    `event_id`    bigint unsigned NOT NULL AUTO_INCREMENT COMMENT 'イベントID',
    `name`       varchar(64)  NOT NULL COMMENT 'イベント名',
    `explanation`      varchar(1024)  NOT NULL COMMENT '説明',

    PRIMARY KEY (`event_id`),
    UNIQUE (`name`)
) ENGINE=InnoDB COMMENT='イベント';

INSERT INTO `event` (`event_id`, `name`, `explanation`)
VALUES (1, 'labolevent', 'イベントです');