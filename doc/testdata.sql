USE vdl;
INSERT INTO `user` VALUES ( NULL, 'aa@aa.aa', 'aa', sha1('astest'), NULL, NULL, now(), 0, 0, 0, 0, 0, 0.0, 0.0, NULL, NULL );
select * from `user`\G
