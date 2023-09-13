CREATE TABLE `user`
(
    `user_id`    bigint unsigned NOT NULL AUTO_INCREMENT COMMENT 'ユーザーID',
    `name`       varchar(32)  NOT NULL COMMENT 'ユーザー名',
    `email`      varchar(32)  NOT NULL COMMENT 'メールアドレス',
    `password`   varchar(128) NOT NULL COMMENT 'パスワード',
    `sex`        varchar(32)  NOT NULL,
    `birthday`   date         NOT NULL DEFAULT '9999-01-01',
    `line`       varchar(128) NOT NULL ,
    `created_at` datetime     NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '作成日',
    `updated_at` datetime     NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新日時',
    PRIMARY KEY (`user_id`),
    UNIQUE (`email`)
) ENGINE=InnoDB COMMENT='ユーザー';

INSERT INTO `user` (`user_id`, `name`, `email`, `password`,`sex`,`birthday`,`line`, `created_at`, `updated_at`)
VALUES (1, 'labol', 'labol@example.com', '{bcrypt}$2a$10$qsp2hyF8ed/12BSTWoKzkOmW/ibvjaqGPjCQ10Vllx3JdsWKyKUmu','男性','2002-11-11','lineid','2023-08-17 07:04:10', '2023-08-17 07:04:10');
INSERT INTO `user` (`user_id`, `name`, `email`, `password`,`sex`,`birthday`,`line`, `created_at`, `updated_at`)
VALUES (2, 'one', 'one@example.com', '{bcrypt}$2a$10$qsp2hyF8ed/12BSTWoKzkOmW/ibvjaqGPjCQ10Vllx3JdsWKyKUmu','男性','2002-11-11','lineid1','2023-08-17 07:04:10', '2023-08-17 07:04:10');
INSERT INTO `user` (`user_id`, `name`, `email`, `password`,`sex`,`birthday`,`line`, `created_at`, `updated_at`)
VALUES (3, 'two', 'two@example.com', '{bcrypt}$2a$10$qsp2hyF8ed/12BSTWoKzkOmW/ibvjaqGPjCQ10Vllx3JdsWKyKUmu','女性','2003-11-11','lineid2','2023-08-17 07:04:10', '2023-08-17 07:04:10');
INSERT INTO `user` (`user_id`, `name`, `email`, `password`,`sex`,`birthday`,`line`, `created_at`, `updated_at`)
VALUES (4, 'three', 'three@example.com', '{bcrypt}$2a$10$qsp2hyF8ed/12BSTWoKzkOmW/ibvjaqGPjCQ10Vllx3JdsWKyKUmu','女性','2004-11-11','lineid3','2023-08-17 07:04:10', '2023-08-17 07:04:10');
