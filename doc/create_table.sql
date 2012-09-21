DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
	user_id INT UNSIGNED AUTO_INCREMENT NOT NULL,
	email VARCHAR(50) ,
	nick_name VARCHAR(50) NOT NULL,
	pass CHAR(40) ,
    role ENUM('user', 'ader', 'master', 'other') DEFAULT 'user',
    /* 直接在微动力首页上用微博登录的用户默认为user，ader注册需要邀请链接 */
    status ENUM('normal', 'verified', 'examine', 'forbid') DEFAULT 'normal',
    /* 分别对应：普通，已认证，审核，封禁 */
	sina_uid BIGINT UNSIGNED,
	sina_token VARCHAR(50),
    token_update_at DATETIME,
    token_expire_in INT UNSIGNED,
	level TINYINT default 3,   /*欲更改为level*/ /* 此level由微动力评定user和ader使用不同的评定标准 */
    sina_location VARCHAR(30),      /* 此location有sina提供 */
    sina_description VARCHAR(220),  /* form sina */
	pro TINYINT UNSIGNED DEFAULT 0, /* 好评，*/
	con TINYINT UNSIGNED DEFAULT 0, /* 差评 */
	task_taken INT UNSIGNED DEFAULT 0,  /* user-承接任务数|ader-发布任务数 */
	task_finished INT UNSIGNED DEFAULT 0,   /* user-完成任务数|ader-发布的任务被完结数 */
    /* 注意：金钱在数据库内部以 厘 为单位存储 */
    total_income INT UNSIGNED DEFAULT 0,    /* user-总入账金额|ader-总投入|其他留空*/
    realtime_income INT UNSIGNED DEFAULT 0, /* user-当前账户金额|ader-当前账户金额|其他留空 */
	alipay_id VARCHAR(50) DEFAULT NULL,     /* 支付宝id */
	alipay_name VARCHAR(50) DEFAULT NULL,   /* 支付宝用户名 */
    alipay_token VARCHAR(50) DEFAULT NULL,  /* 支付宝token */
    cell_phone CHAR(11),    /* 可用于实名认证，ader注册必填 */
	reg_time DATETIME NOT NULL,
	PRIMARY KEY(user_id),
	UNIQUE (email),
	UNIQUE (nick_name),
	UNIQUE (sina_uid),
	INDEX (email(25))
);
DESCRIBE `user`;

DROP TABLE IF EXISTS `task`;
CREATE TABLE `task` (
	task_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
	owner_id INT UNSIGNED NOT NULL, /* ader_id */
	publisher_id INT UNSIGNED NOT NULL DEFAULT 1,
	task_type ENUM('follow', 'forward', 'review', 'create'),
    task_sina_uid BIGINT UNSIGNED NOT NULL,
    task_screen_name VARCHAR(60),
	task_offer INT UNSIGNED DEFAULT 500,
	/* 原始佣金 以 厘 为单位 默认为500厘 并非用户的真正佣金 */
	task_amount INT UNSIGNED NOT NULL,
	task_finish_amount INT UNSIGNED NOT NULL DEFAULT 0,
	task_status ENUM('normal', 'finished', 'closed', 'examine') DEFAULT 'normal',
    /* 分别对应:正常，结束，关闭，审核 */
    /* task_icon_url 其实是user的小头像*/
    task_icon_url VARCHAR(80) DEFAULT NULL,
    /* task_location是关注任务特有的 */
    task_location VARCHAR(60),
    /* 对于关注任务，task_icon是大图标， 对于转发任务task_icon是小图标*/
    /* 下面 4 列是转发任务特有的 */
	task_sina_wid BIGINT UNSIGNED,
    task_thumbnail_pic_url VARCHAR(80), /* 微博配图 */
    task_bmiddle_pic_url VARCHAR(80),
    task_text VARCHAR(420),

	PRIMARY KEY (task_id),
	INDEX (task_type)
);
DESCRIBE `task`;

DROP TABLE IF EXISTS `do_task`;
CREATE TABLE `do_task` (
	do_id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
	task_id INT UNSIGNED NOT NULL,
	user_id INT UNSIGNED NOT NULL,
	status ENUM('unfinish', 'finish', 'fail', 'retract', 'hide'),
    /* 分别对应：尚未完成，成功完成，失败或屏蔽，反悔，屏蔽*/
    /* repost_mid 仅针对转发任务，为转发产生的微博的mid，十进制 */
    repost_mid BIGINT UNSIGNED DEFAULT NULL,
    time DATETIME NOT NULL,
	PRIMARY KEY(do_id),
	INDEX (task_id),
	INDEX (user_id)
);
DESCRIBE `do_task`;
