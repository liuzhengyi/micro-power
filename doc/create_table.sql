DROP TABLE `user`;

CREATE TABLE `user` (
	user_id int unsigned auto_increment not null,
	email varchar(50) ,
	nick_name varchar(30) not null,
	pass char(40) ,
	sina_uid varchar(50) ,
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
	unique (sina_uid)
);

DESCRIBE `user`;
