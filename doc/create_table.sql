DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
	user_id int unsigned auto_increment not null,
	email varchar(50) ,
	nick_name varchar(50) not null,
	pass char(40) ,
	sina_uid BIGINT UNSIGNED,
	sina_token varchar(50),
    token_update_at DATETIME,
    token_expire_in INT UNSIGNED,
	sina_level tinyint default 3,
    sina_location VARCHAR(30),
    sina_description VARCHAR(220),
	pro tinyint unsigned default 0,
	con tinyint unsigned default 0,
	task_taken int unsigned default 0,
	task_finished int unsigned default 0,
    /* 注意：金钱在数据库内部以 厘 为单位存储 */
    total_income INT UNSIGNED DEFAULT 0,
    realtime_income INT UNSIGNED DEFAULT 0,
	alipay_id varchar(50),
	alipay_code varchar(50),
	reg_time datetime not null,
	primary key(user_id),
	unique (email),
	unique (nick_name),
	unique (sina_uid),
	index (email(25))
);
DESCRIBE `user`;

DROP TABLE IF EXISTS `task`;
CREATE TABLE `task` (
	task_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
	owner_id INT UNSIGNED NOT NULL, /* ader_id */
	publisher_id INT UNSIGNED NOT NULL DEFAULT 1,
	task_type ENUM('follow', 'forward', 'review', 'create'),
    task_sina_uid BIGINT UNSIGNED NOT NULL,
    task_screen_name varchar(60),
	task_offer INT UNSIGNED DEFAULT 500,
	/* 原始佣金 以 厘 为单位 默认为500厘 并非用户的真正佣金 */
	task_amount INT UNSIGNED NOT NULL,
	task_finish_amount INT UNSIGNED NOT NULL DEFAULT 0,
	task_status ENUM('normal', 'closed', 'examine') DEFAULT 'normal',
    /* task_icon_url 其实是user的小头像*/
    task_icon_url varchar(80) DEFAULT NULL,
    /* task_location是关注任务特有的 */
    task_location varchar(60),
    /* 对于关注任务，task_icon是大图标， 对于转发任务task_icon是小图标*/
    /* 下面 4 列是转发任务特有的 */
	task_sina_wid BIGINT UNSIGNED,
    task_thumbnail_pic_url varchar(80), /* 微博配图 */
    task_bmiddle_pic_url varchar(80),
    task_text varchar(420),

	PRIMARY KEY (task_id),
	INDEX (task_type)
);
DESCRIBE `task`;

DROP TABLE IF EXISTS `ader`;
CREATE TABLE `ader` (
	ader_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
	email VARCHAR(50),
	nick_name VARCHAR(20),
	sina_uid BIGINT UNSIGNED,
	sina_token VARCHAR(50),
	`level` TINYINT UNSIGNED DEFAULT 3,
	task_amount INT UNSIGNED DEFAULT 0,
	PRIMARY KEY(ader_id)
);
DESCRIBE `ader`;

DROP TABLE IF EXISTS `do_task`;
CREATE TABLE `do_task` (
	do_id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
	task_id INT UNSIGNED NOT NULL,
	user_id INT UNSIGNED NOT NULL,
	status ENUM('unfinish', 'finish', 'fail', 'retract', 'hide'),
    /* 分别对应：尚未完成，成功完成，失败或屏蔽，审核中，屏蔽*/
    /* repost_mid 仅针对转发任务，为转发产生的微博的mid，十进制 */
    repost_mid BIGINT UNSIGNED DEFAULT NULL,
    time DATETIME NOT NULL,
	PRIMARY KEY(do_id),
	INDEX (task_id),
	INDEX (user_id)
);
DESCRIBE `do_task`;
