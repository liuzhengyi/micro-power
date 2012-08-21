DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
	user_id int unsigned auto_increment not null,
	email varchar(50) ,
	nick_name varchar(30) not null,
	pass char(40) ,
	sina_uid BIGINT UNSIGNED,
	sina_token varchar(50),
	sina_level tinyint default 3,
	pro tinyint unsigned default 0,
	con tinyint unsigned default 0,
	task_taken int unsigned default 0,
	task_finished int unsigned default 0,
	total_income double(10,2) unsigned default 0.0,
	realtime_income double(10,2) unsigned default 0.0,
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
	owner_id INT UNSIGNED NOT NULL,
	publisher_id INT UNSIGNED NOT NULL DEFAULT 1,
	task_type ENUM('follow', 'forward', 'review', 'create'),
	task_info varchar(420) NOT NULL,
	/* 对应于task_type(uid, weibo_id, weibo_id, content) */
	task_offer TINYINT UNSIGNED DEFAULT 5,
	/* 原始佣金 以角为单位 默认为5角 并非用户的真正佣金 */
	task_amount INT UNSIGNED NOT NULL,
	task_finish_amount INT UNSIGNED NOT NULL,
	task_status ENUM('normal', 'closed', 'examine') DEFAULT 'normal',
    task_screen_name varchar(60),
    task_location varchar(60),
    /* location是关注任务特有的 */
    task_icon_url varchar(50) DEFAULT NULL,
    /* 对于关注任务，task_icon是大图标， 对于转发任务task_icon是小图标*/
    /* 下面三列是转发任务特有的 */
    task_thumbnail_pic_url varchar(50),
    task_bmiddle_pic_url varchar(50),
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
	status ENUM('unfinish', 'finish', 'fail', 'retract'),
    /* 分别对应：尚未完成，成功完成，失败或屏蔽，审核中*/
	PRIMARY KEY(do_id),
	INDEX (task_id),
	INDEX (user_id)
);
DESCRIBE `do_task`;
