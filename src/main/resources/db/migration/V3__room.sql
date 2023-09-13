CREATE TABLE `room`
(

    `room_id`      bigint unsigned NOT NULL AUTO_INCREMENT COMMENT 'ルームID',
    `name`         varchar(32)   NOT NULL COMMENT 'イベント名',
    `date`         varchar(32)          NOT NULL COMMENT '日時',
    `participants` varchar(32)   NOT NULL COMMENT '参加人数',
    `leader`       bigint unsigned NOT NULL COMMENT '主催者',
    `explanation`  VARCHAR(1024) NOT NULL COMMENT '説明',

    `created_at` datetime     NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '作成日',
    `updated_at` datetime     NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新日時',

    PRIMARY KEY (`room_id`)
) ENGINE=InnoDB COMMENT='ユーザー';

INSERT INTO `room` (`room_id`, `name`, `date`, `participants`,`leader`,`explanation`, `created_at`, `updated_at`)
VALUES (1, '瀬例洲山スキー場', '2023-10-11', '4','4', 'みんなでスキー行きましょう!!初心者歓迎です!!','2023-08-17 07:04:10', '2023-08-18 07:04:10');
INSERT INTO `room` (`room_id`, `name`, `date`, `participants`,`leader`,`explanation`, `created_at`, `updated_at`)
VALUES (2, 'HACK''n''ROLL', '2023-08-22', '3','3', '一緒にロックなライブに行こうぜ!!','2023-08-17 07:04:10', '2023-08-18 07:04:10');
INSERT INTO `room` (`room_id`, `name`, `date`, `participants`,`leader`,`explanation`, `created_at`, `updated_at`)
VALUES (3, '優勝キャンプ場', '2023-06-22', '2','2', 'キャンプ仲間探してます!!!誰でも歓迎!!!','2023-08-17 07:04:10', '2023-08-18 07:04:10');
INSERT INTO `room` (`room_id`, `name`, `date`, `participants`,`leader`,`explanation`, `created_at`, `updated_at`)
VALUES (4, 'セレフェス', '2023-11-21', '5','1', '一緒にコンサート行く人を探しています！','2023-08-17 07:04:10', '2023-08-18 07:04:10');