drop table if exists `user_info`;
create table user_info (
info_id bigint unsigned auto_increment not null,
sid bigint unsigned not null,
screen_name varchar(60),
location varchar(40),
description varchar(210),
gender char(1),
followers_count int unsigned,
friends_count int unsigned,
statuses_count int unsigned,
favourites_count int unsigned,
verified boolean,
verified_reason varchar(70),
create_at varchar(40),
max_reposts int unsigned,
max_comments int unsigned,
aver_reposts float unsigned,
aver_comments float unsigned,
get_time datetime,
primary key(info_id)
);

