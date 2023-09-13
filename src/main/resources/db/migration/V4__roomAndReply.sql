CREATE TABLE `roomAndReply`
(

    `room_id`      bigint unsigned NOT NULL COMMENT 'ルームID',
    `user_id`      bigint unsigned NOT NULL COMMENT '参加申請をしてきたユーザID',
    `created_at`  datetime     NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '作成日',
    `updated_at`  datetime     NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新日時',

    PRIMARY KEY (`room_id`)
) ENGINE=InnoDB COMMENT='募集とそれに対するリプライ';

INSERT INTO `roomAndReply` (`room_id`, `user_id`, `created_at`, `updated_at`)
VALUES (3, 2,'2023-08-17 07:04:10', '2023-08-18 07:04:10');