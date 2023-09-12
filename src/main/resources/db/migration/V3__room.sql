CREATE TABLE `room`
(

    `room_id`      bigint unsigned NOT NULL AUTO_INCREMENT COMMENT 'ルームID',
    `name`         varchar(32)   NOT NULL COMMENT 'イベント名',
    `date`         date          NOT NULL COMMENT '日時',
    `participants` varchar(32)   NOT NULL COMMENT '参加人数',
    `leader`       bigint unsigned NOT NULL AUTO_INCREMENT COMMENT '主催者',
    `explanation`  VARCHAR(1024) NOT NULL COMMENT '説明',
    `created_at` datetime     NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '作成日',
    `updated_at` datetime     NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新日時',

    PRIMARY KEY (`room_id`)
) ENGINE=InnoDB COMMENT='ユーザー';

INSERT INTO `room` (`room_id`, `name`, `date`, `participants`,`leader`,`explanation`, `created_at`, `updated_at`)
VALUES (1, 'ski', '2023-10-11', '4','1', 'みんなでスキー行きましょう!!初心者歓迎です!!','2023-08-17 07:04:10', '2023-08-18 07:04:10');