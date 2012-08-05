USE vdl;
INSERT INTO `user` (email, nick_name, pass, reg_time) VALUES ( 'test1@vdongli.com', 'test1', sha1('test'), now());
INSERT INTO `user` (email, nick_name, pass, reg_time) VALUES ( 'test2@vdongli.com', 'test2', sha1('test'), now());
INSERT INTO `user` (email, nick_name, pass, reg_time) VALUES ( 'test3@vdongli.com', 'test3', sha1('test'), now());
INSERT INTO `user` (email, nick_name, pass, reg_time) VALUES ( 'test4@vdongli.com', 'test4', sha1('test'), now());
INSERT INTO `user` (email, nick_name, pass, reg_time) VALUES ( 'test5@vdongli.com', 'test5', sha1('test'), now());
INSERT INTO `user` (email, nick_name, pass, reg_time) VALUES ( 'test6@vdongli.com', 'test6', sha1('test'), now());
INSERT INTO `user` (email, nick_name, pass, reg_time) VALUES ( 'test7@vdongli.com', 'test7', sha1('test'), now());

INSERT INTO `task` values (NULL, 1, 1, 'follow', '2881802930', 100, 39);
INSERT INTO `task` values (NULL, 2, 1, 'forward', '11142488790', 200, 139);
INSERT INTO `task` values (NULL, 3, 1, 'review', '11142488880', 300, 239);
INSERT INTO `task` values (NULL, 4, 1, 'create', '介绍一下吉祥馄饨童卫路店', 150, 139);
INSERT INTO `task` values (NULL, 4, 2, 'follow', '2300716454', 100, 39);
INSERT INTO `task` values (NULL, 3, 2, 'forward', '11142847890', 200, 139);
INSERT INTO `task` values (NULL, 2, 2, 'review', '11414288880', 300, 239);
INSERT INTO `task` values (NULL, 1, 2, 'create', '推广中山陵旅游', 150, 139);

INSERT INTO `ader` (email, nick_name, task_amount) values('ad1@ad.ad', 'ad1', 1);
INSERT INTO `ader` (email, nick_name, task_amount) values('ad2@ad.ad', 'ad2', 1);
INSERT INTO `ader` (email, nick_name, task_amount) values('ad3@ad.ad', 'ad3', 1);
INSERT INTO `ader` (email, nick_name, task_amount) values('ad4@ad.ad', 'ad4', 1);

INSERT INTO `do_task` (task_id, user_id, status) values(1, 1, 'unfinish');
INSERT INTO `do_task` (task_id, user_id, status) values(1, 2, 'unfinish');
INSERT INTO `do_task` (task_id, user_id, status) values(1, 3, 'unfinish');
INSERT INTO `do_task` (task_id, user_id, status) values(1, 4, 'unfinish');
INSERT INTO `do_task` (task_id, user_id, status) values(2, 1, 'unfinish');
INSERT INTO `do_task` (task_id, user_id, status) values(2, 2, 'unfinish');
INSERT INTO `do_task` (task_id, user_id, status) values(2, 3, 'unfinish');
INSERT INTO `do_task` (task_id, user_id, status) values(2, 4, 'unfinish');
INSERT INTO `do_task` (task_id, user_id, status) values(3, 1, 'unfinish');
INSERT INTO `do_task` (task_id, user_id, status) values(3, 2, 'unfinish');
INSERT INTO `do_task` (task_id, user_id, status) values(3, 3, 'unfinish');
INSERT INTO `do_task` (task_id, user_id, status) values(3, 4, 'unfinish');
INSERT INTO `do_task` (task_id, user_id, status) values(4, 1, 'unfinish');
INSERT INTO `do_task` (task_id, user_id, status) values(4, 2, 'unfinish');
INSERT INTO `do_task` (task_id, user_id, status) values(4, 3, 'unfinish');
INSERT INTO `do_task` (task_id, user_id, status) values(4, 4, 'unfinish');
