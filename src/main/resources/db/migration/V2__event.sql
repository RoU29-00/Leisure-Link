CREATE TABLE `event`
(
    `event_id`    bigint unsigned NOT NULL AUTO_INCREMENT COMMENT 'イベントID',
    `name`       varchar(64)  NOT NULL COMMENT 'イベント名',
    `explanation`      varchar(1024)  NOT NULL COMMENT '説明',

    PRIMARY KEY (`event_id`),
    UNIQUE (`name`)
) ENGINE=InnoDB COMMENT='イベント';


INSERT INTO `event` (`event_id`, `name`, `explanation`)
VALUES (1, 'セレフェス', '株式会社セレス主催のライブイベントです!この夏最後の思い出を私たちと過ごしませんか？');
INSERT INTO `event` (`event_id`, `name`, `explanation`)
VALUES (2, '瀬例洲山スキー場', '夏はハイキング!冬はスキー!国内最大級のゲレンデを誇る瀬例洲山スキー場です。初心者も上級者も大歓迎!');
INSERT INTO `event` (`event_id`, `name`, `explanation`)
VALUES (3, 'HACK'n'ROLL', 'ROCKBAND +＋CELES＋+ 20th Anniversary Live Event');
INSERT INTO `event` (`event_id`, `name`, `explanation`)
VALUES (4, 'マーキュリープール', '子連れ様大歓迎!リニューアルオープンしたマーキュリープールで目いっぱい遊ぼう！');
INSERT INTO `event` (`event_id`, `name`, `explanation`)
VALUES (5, '優勝キャンプ場', '穏やかな森の雰囲気に囲まれて優雅なひと時を・・・');