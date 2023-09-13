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
VALUES (2, 'HACK and ROLL', '2023-08-22', '3','3', '一緒にロックなライブに行こうぜ!!','2023-08-17 07:04:10', '2023-08-18 07:04:10');
INSERT INTO `room` (`room_id`, `name`, `date`, `participants`,`leader`,`explanation`, `created_at`, `updated_at`)
VALUES (3, '優勝キャンプ場', '2023-06-22', '2','2', 'キャンプ仲間探してます!!!誰でも歓迎!!!','2023-08-17 07:04:10', '2023-08-18 07:04:10');
INSERT INTO `room` (`room_id`, `name`, `date`, `participants`,`leader`,`explanation`, `created_at`, `updated_at`)
VALUES (4, 'セレフェス', '2023-11-21', '5','3', '一緒にコンサート行く人を探しています！','2023-08-17 07:04:10', '2023-08-18 07:04:10');
INSERT INTO `room` (`room_id`, `name`, `date`, `participants`,`leader`,`explanation`, `created_at`, `updated_at`)
VALUES (5, 'セレフェス', '2023-11-21', '5','2', 'フェスの日程を確認してみて。都合が合えば一緒に行こう！','2023-08-17 07:04:10', '2023-08-18 07:04:10');
INSERT INTO `room` (`room_id`, `name`, `date`, `participants`,`leader`,`explanation`, `created_at`, `updated_at`)
VALUES (6, 'セレフェス', '2023-11-21', '5','4', '音楽が私たちをつなげている。次のフェスで再びつながろう！','2023-08-17 07:04:10', '2023-08-18 07:04:10');
INSERT INTO `room` (`room_id`, `name`, `date`, `participants`,`leader`,`explanation`, `created_at`, `updated_at`)
VALUES (7, 'セレフェス', '2023-11-21', '5','3', 'フェスの雰囲気を楽しんで、一緒にダンスしよう！','2023-08-17 07:04:10', '2023-08-18 07:04:10');
INSERT INTO `room` (`room_id`, `name`, `date`, `participants`,`leader`,`explanation`, `created_at`, `updated_at`)
VALUES (8, 'セレフェス', '2023-11-21', '5','4', 'フェスで楽しい時間を過ごしませんか？一緒に行こうよ！','2023-08-17 07:04:10', '2023-08-18 07:04:10');
INSERT INTO `room` (`room_id`, `name`, `date`, `participants`,`leader`,`explanation`, `created_at`, `updated_at`)
VALUES (9, 'セレフェス', '2023-11-21', '5','3', '次の週末はフェスの予定だけど、一緒に行く仲間がまだいないよ。一緒に行こう！','2023-08-17 07:04:10', '2023-08-18 07:04:10');
INSERT INTO `room` (`room_id`, `name`, `date`, `participants`,`leader`,`explanation`, `created_at`, `updated_at`)
VALUES (10, 'セレフェス', '2023-11-21', '5','2', 'フェスで最高の音楽と最高の友達。一緒に行こう！','2023-08-17 07:04:10', '2023-08-18 07:04:10');
INSERT INTO `room` (`room_id`, `name`, `date`, `participants`,`leader`,`explanation`, `created_at`, `updated_at`)
VALUES (11, 'セレフェス', '2023-11-21', '5','5', '音楽フェスの季節がやってきた！行く予定だけど、一緒に行かない？','2023-08-17 07:04:10', '2023-08-18 07:04:10');
INSERT INTO `room` (`room_id`, `name`, `date`, `participants`,`leader`,`explanation`, `created_at`, `updated_at`)
VALUES (12, 'セレフェス', '2023-11-21', '5','10', '次のフェスに一緒に行けるなんて最高だと思わない？！','2023-08-17 07:04:10', '2023-08-18 07:04:10');
INSERT INTO `room` (`room_id`, `name`, `date`, `participants`,`leader`,`explanation`, `created_at`, `updated_at`)
VALUES (13, 'セレフェス', '2023-11-21', '5','110', 'フェスのチケットを手に入れたんだ！一緒に行こうよ！','2023-08-17 07:04:10', '2023-08-18 07:04:10');
INSERT INTO `room` (`room_id`, `name`, `date`, `participants`,`leader`,`explanation`, `created_at`, `updated_at`)
VALUES (14, 'セレフェス', '2023-11-21', '5','30', 'フェスで素晴らしい音楽を楽しみながら、一緒に素晴らしい思い出を作ろう！','2023-08-17 07:04:10', '2023-08-18 07:04:10');
INSERT INTO `room` (`room_id`, `name`, `date`, `participants`,`leader`,`explanation`, `created_at`, `updated_at`)
VALUES (17, 'セレフェス', '2023-11-21', '5','40', 'フェスで素晴らしいバンドやアーティストが出演するよ！行きたいと思わない？！','2023-08-17 07:04:10', '2023-08-18 07:04:10');
INSERT INTO `room` (`room_id`, `name`, `date`, `participants`,`leader`,`explanation`, `created_at`, `updated_at`)
VALUES (15, 'セレフェス', '2023-11-21', '5','50', 'フェスのラインナップを見たんだけど、すごく楽しみだよ。一緒に行かない？','2023-08-17 07:04:10', '2023-08-18 07:04:10');
INSERT INTO `room` (`room_id`, `name`, `date`, `participants`,`leader`,`explanation`, `created_at`, `updated_at`)
VALUES (16, 'セレフェス', '2023-11-21', '5','60', '次の週末、フェスがあるんだ。一緒に行くことに興味ある？','2023-08-17 07:04:10', '2023-08-18 07:04:10');