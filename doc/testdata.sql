USE vdl;

INSERT INTO `user` (email, nick_name, pass, reg_time) VALUES ( 'test1@vdongli.com', 'test1', sha1('test'), now());
INSERT INTO `user` (email, nick_name, pass, reg_time) VALUES ( 'test2@vdongli.com', 'test2', sha1('test'), now());
INSERT INTO `user` (email, nick_name, pass, reg_time) VALUES ( 'test3@vdongli.com', 'test3', sha1('test'), now());
INSERT INTO `user` (email, nick_name, pass, reg_time) VALUES ( 'test4@vdongli.com', 'test4', sha1('test'), now());
INSERT INTO `user` (email, nick_name, pass, reg_time) VALUES ( 'test5@vdongli.com', 'test5', sha1('test'), now());
INSERT INTO `user` (email, nick_name, pass, reg_time) VALUES ( 'test6@vdongli.com', 'test6', sha1('test'), now());
INSERT INTO `user` (email, nick_name, pass, reg_time) VALUES ( 'test7@vdongli.com', 'test7', sha1('test'), now());

/* 注意，最初task_offer的单位是分，后来改成了厘，所有任务的task_offer被更新为自身的十倍，在本文件的最后 */
/* create & review tasks
INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_wid, task_offer, task_amount, task_finish_amount)values (NULL, 3, 1, 'review', '11142488880', 6, 300, 239);
INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_text, task_offer, task_amount, task_finish_amount)values (NULL, 4, 1, 'create', '介绍一下吉祥馄饨童卫路店', 5, 150, 139);
INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_wid, task_offer, task_amount, task_finish_amount)values (NULL, 2, 2, 'review', '11414288880', 4, 300, 239);
INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_text, task_offer, task_amount, task_finish_amount)values (NULL, 1, 2, 'create', '推广中山陵旅游', 5, 150, 139);
INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_wid, task_offer, task_amount, task_finish_amount)values (NULL, 3, 1, 'review', '11412488880', 8, 300, 239);
INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_text, task_offer, task_amount, task_finish_amount)values (NULL, 4, 1, 'create', '介绍一下吉祥馄饨童卫路店', 5, 150, 139);
INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_wid, task_offer, task_amount, task_finish_amount)values (NULL, 2, 2, 'review', '11412488880', 6, 300, 239);
INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_text, task_offer, task_amount, task_finish_amount)values (NULL, 1, 2, 'create', '推广中山陵旅游', 7, 150, 139);
INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_wid, task_offer, task_amount, task_finish_amount)values (NULL, 3, 1, 'review', '11142848880', 2, 300, 239);
INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_text, task_offer, task_amount, task_finish_amount)values (NULL, 4, 1, 'create', '介绍一下吉祥馄饨童卫路店', 20, 150, 139);
INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_wid, task_offer, task_amount, task_finish_amount)values (NULL, 2, 2, 'review', '11414828880', 2, 300, 239);
INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_text, task_offer, task_amount, task_finish_amount)values (NULL, 1, 2, 'create', '推广中山陵旅游', 15, 150, 139);
INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_wid, task_offer, task_amount, task_finish_amount)values (NULL, 3, 1, 'review', '11142484880', 5, 300, 239);
INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_text, task_offer, task_amount, task_finish_amount)values (NULL, 4, 1, 'create', '介绍一下吉祥馄饨童卫路店', 13, 150, 139);
INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_wid, task_offer, task_amount, task_finish_amount)values (NULL, 2, 2, 'review', '11414287880', 8, 300, 239);
INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_text, task_offer, task_amount, task_finish_amount)values (NULL, 1, 2, 'create', '推广中山陵旅游', 13, 150, 139);
*/

/* forward_tasks*/
insert into task (owner_id, publisher_id, task_type, task_sina_uid, task_screen_name, task_offer, task_amount, task_finish_amount, task_icon_url, task_sina_wid, task_thumbnail_pic_url, task_bmiddle_pic_url, task_text) values (2, 3, 'forward', 1974204995, '如洗ruxi', 50, 30, 10, 'http://tp4.sinaimg.cn/1974204995/50/1297926614/0', 3483238506588417, 'http://ww4.sinaimg.cn/thumbnail/75abfa43jw1dw9xi64p3hj.jpg', 'http://ww4.sinaimg.cn/bmiddle/75abfa43jw1dw9xi64p3hj.jpg', '再见，南锣鼓巷！再见，小菊儿胡同！如洗在南锣鼓巷三年整，见证了南锣鼓巷的风雨变迁，恍然若梦。这些照片记录了如洗南锣鼓巷店三年的点点滴滴。');
insert into task (owner_id, publisher_id, task_type, task_sina_uid, task_screen_name, task_offer, task_amount, task_finish_amount, task_icon_url, task_sina_wid, task_thumbnail_pic_url, task_bmiddle_pic_url, task_text) values (2, 3, 'forward', 1974204995, '如洗ruxi', 50, 30, 10, 'http://tp4.sinaimg.cn/1974204995/50/1297926614/0', 3476074471977047, 'http://ww2.sinaimg.cn/thumbnail/75abfa43jw1dvn2qzklpdj.jpg', 'http://ww2.sinaimg.cn/bmiddle/75abfa43jw1dvn2qzklpdj.jpg', '风青窑全手工茶器系列\'质朴的茶器\'朴素的人生。如洗国子监店有售');
insert into task (owner_id, publisher_id, task_type, task_sina_uid, task_screen_name, task_offer, task_amount, task_finish_amount, task_icon_url, task_sina_wid, task_thumbnail_pic_url, task_bmiddle_pic_url, task_text) values (2, 3, 'forward', 1974204995, '如洗ruxi', 50, 30, 10, 'http://tp4.sinaimg.cn/1974204995/50/1297926614/0', 3475729737681875, 'http://ww1.sinaimg.cn/thumbnail/75abfa43jw1dvlz5nz810j.jpg', 'http://ww1.sinaimg.cn/bmiddle/75abfa43jw1dvlz5nz810j.jpg', '可爱的莲蓬\'茶席添精神');
insert into task (owner_id, publisher_id, task_type, task_sina_uid, task_screen_name, task_offer, task_amount, task_finish_amount, task_icon_url, task_sina_wid, task_thumbnail_pic_url, task_bmiddle_pic_url, task_text) values (2, 3, 'forward', 1974204995, '如洗ruxi', 50, 30, 10, 'http://tp4.sinaimg.cn/1974204995/50/1297926614/0', 3474964139263889, 'http://ww4.sinaimg.cn/thumbnail/75abfa43jw1dvjj7uclwoj.jpg', 'http://ww4.sinaimg.cn/bmiddle/75abfa43jw1dvjj7uclwoj.jpg', '如洗夏装：香云纱拼色长裙，夏日里最舒适的衣物。 薯莨和泥浆共同作用，大自然创造出的奇特面料。 实体淘宝共同销售！');
insert into task (owner_id, publisher_id, task_type, task_sina_uid, task_screen_name, task_offer, task_amount, task_finish_amount, task_icon_url, task_sina_wid, task_thumbnail_pic_url, task_bmiddle_pic_url, task_text) values (2, 3, 'forward', 1974204995, '如洗ruxi', 50, 30, 10, 'http://tp4.sinaimg.cn/1974204995/50/1297926614/0', 3474568775825804, 'http://ww4.sinaimg.cn/thumbnail/75abfa43jw1dvi9tmv4csj.jpg', 'http://ww4.sinaimg.cn/bmiddle/75abfa43jw1dvi9tmv4csj.jpg', '阴沉了几日\'北京终于有了晴天\'一抹绿意\'换种心情');
insert into task (owner_id, publisher_id, task_type, task_sina_uid, task_screen_name, task_offer, task_amount, task_finish_amount, task_icon_url, task_sina_wid, task_thumbnail_pic_url, task_bmiddle_pic_url, task_text) values (2, 3, 'forward', 1974204995, '如洗ruxi', 50, 30, 10, 'http://tp4.sinaimg.cn/1974204995/50/1297926614/0', 3473894172773931, 'http://ww1.sinaimg.cn/thumbnail/75abfa43jw1dvg4c9edaaj.jpg', 'http://ww1.sinaimg.cn/bmiddle/75abfa43jw1dvg4c9edaaj.jpg', '如洗搭配新品：棉麻混纺的拼色布包。 两根细带子，可以单肩也可以斜挎。 内部有棉质里衬和一个小口袋。 实体淘宝同时销售');
insert into task (owner_id, publisher_id, task_type, task_sina_uid, task_screen_name, task_offer, task_amount, task_finish_amount, task_icon_url, task_sina_wid, task_thumbnail_pic_url, task_bmiddle_pic_url, task_text) values (2, 3, 'forward', 1974204995, '如洗ruxi', 50, 30, 10, 'http://tp4.sinaimg.cn/1974204995/50/1297926614/0', 3473572893004160, 'http://ww2.sinaimg.cn/thumbnail/75abfa43jw1dvf3g3k46mj.jpg', 'http://ww2.sinaimg.cn/bmiddle/75abfa43jw1dvf3g3k46mj.jpg', '国子监\'屋漏痕\'😂');
insert into task (owner_id, publisher_id, task_type, task_sina_uid, task_screen_name, task_offer, task_amount, task_finish_amount, task_icon_url, task_sina_wid, task_thumbnail_pic_url, task_bmiddle_pic_url, task_text) values (2, 3, 'forward', 1974204995, '如洗ruxi', 50, 30, 10, 'http://tp4.sinaimg.cn/1974204995/50/1297926614/0', 3473553552989639, 'http://ww1.sinaimg.cn/thumbnail/75abfa43jw1dvf185x55lj.jpg', 'http://ww1.sinaimg.cn/bmiddle/75abfa43jw1dvf185x55lj.jpg', '如洗国子监店内布局调整\'小细节');
insert into task (owner_id, publisher_id, task_type, task_sina_uid, task_screen_name, task_offer, task_amount, task_finish_amount, task_icon_url, task_sina_wid, task_thumbnail_pic_url, task_bmiddle_pic_url, task_text) values (2, 3, 'forward', 1974204995, '如洗ruxi', 50, 30, 10, 'http://tp4.sinaimg.cn/1974204995/50/1297926614/0', 3466333826505878, 'http://ww4.sinaimg.cn/thumbnail/75abfa43jw1dus01wcmifj.jpg', 'http://ww4.sinaimg.cn/bmiddle/75abfa43jw1dus01wcmifj.jpg', '北京暴雨抗洪后最适宜的歌！！！荐: 豆瓣音乐·音乐人戏班的歌曲 数人玩 http://t.cn/adWx77');
insert into task (owner_id, publisher_id, task_type, task_sina_uid, task_screen_name, task_offer, task_amount, task_finish_amount, task_icon_url, task_sina_wid, task_thumbnail_pic_url, task_bmiddle_pic_url, task_text) values (2, 3, 'forward', 1974204995, '如洗ruxi', 50, 30, 10, 'http://tp4.sinaimg.cn/1974204995/50/1297926614/0', 3466321495254535, 'http://ww4.sinaimg.cn/thumbnail/75abfa43jw1durymvwck6j.jpg', 'http://ww4.sinaimg.cn/bmiddle/75abfa43jw1durymvwck6j.jpg', '经过一天的奋战\'地面问题基本解决。明天凉一天\'后天国子监店就可营业了。所有的杂物都堆在茶室\'倒也彼此契合!');
insert into task (owner_id, publisher_id, task_type, task_sina_uid, task_screen_name, task_offer, task_amount, task_finish_amount, task_icon_url, task_sina_wid, task_thumbnail_pic_url, task_bmiddle_pic_url, task_text) values (2, 3, 'forward', 1974204995, '如洗ruxi', 50, 30, 10, 'http://tp4.sinaimg.cn/1974204995/50/1297926614/0', 3466031009724640, 'http://ww1.sinaimg.cn/thumbnail/75abfa43jw1dur19w7v5bj.jpg', 'http://ww1.sinaimg.cn/bmiddle/75abfa43jw1dur19w7v5bj.jpg', '如洗国子监店内部整修\'周二周三暂停营业\'特此公告!');
insert into task (owner_id, publisher_id, task_type, task_sina_uid, task_screen_name, task_offer, task_amount, task_finish_amount, task_icon_url, task_sina_wid, task_thumbnail_pic_url, task_bmiddle_pic_url, task_text) values (2, 3, 'forward', 1974204995, '如洗ruxi', 50, 30, 10, 'http://tp4.sinaimg.cn/1974204995/50/1297926614/0', 3465493513969404, 'http://ww1.sinaimg.cn/thumbnail/75abfa43jw1dupbjiau59j.jpg', 'http://ww1.sinaimg.cn/bmiddle/75abfa43jw1dupbjiau59j.jpg', '店内一角，铁莲蓬画意十足。');
insert into task (owner_id, publisher_id, task_type, task_sina_uid, task_screen_name, task_offer, task_amount, task_finish_amount, task_icon_url, task_sina_wid, task_thumbnail_pic_url, task_bmiddle_pic_url, task_text) values (2, 3, 'forward', 1974204995, '如洗ruxi', 50, 30, 10, 'http://tp4.sinaimg.cn/1974204995/50/1297926614/0', 3464595178306805, 'http://ww4.sinaimg.cn/thumbnail/75abfa43jw1dumgddrn9cj.jpg', 'http://ww4.sinaimg.cn/bmiddle/75abfa43jw1dumgddrn9cj.jpg', '推荐: 豆瓣音乐·音乐人莫西子诗乐队的歌曲 当风儿吹过这里 故乡已很遥远 http://t.cn/aR1waO 真过瘾！');
insert into task (owner_id, publisher_id, task_type, task_sina_uid, task_screen_name, task_offer, task_amount, task_finish_amount, task_icon_url, task_sina_wid, task_thumbnail_pic_url, task_bmiddle_pic_url, task_text) values (2, 3, 'forward', 1974204995, '如洗ruxi', 50, 30, 10, 'http://tp4.sinaimg.cn/1974204995/50/1297926614/0', 3463368234942051, 'http://ww4.sinaimg.cn/thumbnail/75abfa43jw1duijf6fsq3j.jpg', 'http://ww4.sinaimg.cn/bmiddle/75abfa43jw1duijf6fsq3j.jpg', '如洗盛夏清凉系列之绿翼篇 :最热的时候我们选用了最薄的苎麻,如蝉翼.飘逸俊朗之美! 购买请移步：http://t.cn/h9k5T3');
insert into task (owner_id, publisher_id, task_type, task_sina_uid, task_screen_name, task_offer, task_amount, task_finish_amount, task_icon_url, task_sina_wid, task_thumbnail_pic_url, task_bmiddle_pic_url, task_text) values (2, 3, 'forward', 1974204995, '如洗ruxi', 50, 30, 10, 'http://tp4.sinaimg.cn/1974204995/50/1297926614/0', 3460498848524526, 'http://ww2.sinaimg.cn/thumbnail/75abfa43jw1du9dwu3csgj.jpg', 'http://ww2.sinaimg.cn/bmiddle/75abfa43jw1du9dwu3csgj.jpg', '如洗夏装，女款麻长衫，好看的红，沉静，自然，内敛而有态度。');
insert into task (owner_id, publisher_id, task_type, task_sina_uid, task_screen_name, task_offer, task_amount, task_finish_amount, task_icon_url, task_sina_wid, task_thumbnail_pic_url, task_bmiddle_pic_url, task_text) values (2, 3, 'forward', 1974204995, '如洗ruxi', 50, 30, 10, 'http://tp4.sinaimg.cn/1974204995/50/1297926614/0', 3458965738173943, 'http://ww3.sinaimg.cn/thumbnail/75abfa43jw1du4hu4qwekj.jpg', 'http://ww3.sinaimg.cn/bmiddle/75abfa43jw1du4hu4qwekj.jpg', '如洗香云纱系列新品：疏影 国子监店和网店同时销http://t.cn/zWZuIQ3');
insert into task (owner_id, publisher_id, task_type, task_sina_uid, task_screen_name, task_offer, task_amount, task_finish_amount, task_icon_url, task_sina_wid, task_thumbnail_pic_url, task_bmiddle_pic_url, task_text) values (2, 3, 'forward', 1974204995, '如洗ruxi', 50, 30, 10, 'http://tp4.sinaimg.cn/1974204995/50/1297926614/0', 3457271915292783, 'http://ww2.sinaimg.cn/thumbnail/75abfa43jw1dtz3b0oxu0j.jpg', 'http://ww2.sinaimg.cn/bmiddle/75abfa43jw1dtz3b0oxu0j.jpg', '如洗国子监店内一角：民间黑陶罐魅力再现');
insert into task (owner_id, publisher_id, task_type, task_sina_uid, task_screen_name, task_offer, task_amount, task_finish_amount, task_icon_url, task_sina_wid, task_thumbnail_pic_url, task_bmiddle_pic_url, task_text) values (2, 3, 'forward', 1974204995, '如洗ruxi', 50, 30, 10, 'http://tp4.sinaimg.cn/1974204995/50/1297926614/0', 3456541455754714, 'http://ww1.sinaimg.cn/thumbnail/75abfa43jw1dtwrew2kr5j.jpg', 'http://ww1.sinaimg.cn/bmiddle/75abfa43jw1dtwrew2kr5j.jpg', '下雨天的好处就是可以早收工!明天见');
insert into task (owner_id, publisher_id, task_type, task_sina_uid, task_screen_name, task_offer, task_amount, task_finish_amount, task_icon_url, task_sina_wid, task_thumbnail_pic_url, task_bmiddle_pic_url, task_text) values (2, 3, 'forward', 1974204995, '如洗ruxi', 50, 30, 10, 'http://tp4.sinaimg.cn/1974204995/50/1297926614/0', 3456475827859738, 'http://ww1.sinaimg.cn/thumbnail/75abfa43jw1dtwjvjtqxij.jpg', 'http://ww1.sinaimg.cn/bmiddle/75abfa43jw1dtwjvjtqxij.jpg', '风青窑茶器系列\'手工\'自然\'值得品味。');
insert into task (owner_id, publisher_id, task_type, task_sina_uid, task_screen_name, task_offer, task_amount, task_finish_amount, task_icon_url, task_sina_wid, task_thumbnail_pic_url, task_bmiddle_pic_url, task_text) values (2, 3, 'forward', 1974204995, '如洗ruxi', 50, 30, 10, 'http://tp4.sinaimg.cn/1974204995/50/1297926614/0', 3455049085221251, 'http://ww2.sinaimg.cn/thumbnail/75abfa43jw1dts00n1s92j.jpg', 'http://ww2.sinaimg.cn/bmiddle/75abfa43jw1dts00n1s92j.jpg', '黑云翻墨');
insert into task (owner_id, publisher_id, task_type, task_sina_uid, task_screen_name, task_offer, task_amount, task_finish_amount, task_icon_url, task_sina_wid, task_thumbnail_pic_url, task_bmiddle_pic_url, task_text) values (2, 3, 'forward', 1974204995, '如洗ruxi', 50, 30, 10, 'http://tp4.sinaimg.cn/1974204995/50/1297926614/0', 3455000304909909, 'http://ww4.sinaimg.cn/thumbnail/75abfa43jw1dtruey5rn5j.jpg', 'http://ww4.sinaimg.cn/bmiddle/75abfa43jw1dtruey5rn5j.jpg', '汝州张公巷窑冰裂碗');
insert into task (owner_id, publisher_id, task_type, task_sina_uid, task_screen_name, task_offer, task_amount, task_finish_amount, task_icon_url, task_sina_wid, task_thumbnail_pic_url, task_bmiddle_pic_url, task_text) values (2, 3, 'forward', 1974204995, '如洗ruxi', 50, 30, 10, 'http://tp4.sinaimg.cn/1974204995/50/1297926614/0', 3454222848555370, 'http://ww1.sinaimg.cn/thumbnail/75abfa43jw1dtpd4h3wurj.jpg', 'http://ww1.sinaimg.cn/bmiddle/75abfa43jw1dtpd4h3wurj.jpg', '如洗新品：香云纱背心裙，简洁，气质。国子监店与淘宝同时销售.');
insert into task (owner_id, publisher_id, task_type, task_sina_uid, task_screen_name, task_offer, task_amount, task_finish_amount, task_icon_url, task_sina_wid, task_thumbnail_pic_url, task_bmiddle_pic_url, task_text) values (2, 3, 'forward', 1974204995, '如洗ruxi', 50, 30, 10, 'http://tp4.sinaimg.cn/1974204995/50/1297926614/0', 3452064036753689, 'http://ww2.sinaimg.cn/thumbnail/75abfa43jw1dtih6tosp8j.jpg', 'http://ww2.sinaimg.cn/bmiddle/75abfa43jw1dtih6tosp8j.jpg', '天津老建筑之紫竹林教堂');
insert into task (owner_id, publisher_id, task_type, task_sina_uid, task_screen_name, task_offer, task_amount, task_finish_amount, task_icon_url, task_sina_wid, task_thumbnail_pic_url, task_bmiddle_pic_url, task_text) values (2, 3, 'forward', 1974204995, '如洗ruxi', 50, 30, 10, 'http://tp4.sinaimg.cn/1974204995/50/1297926614/0', 3451395363045534, 'http://ww4.sinaimg.cn/thumbnail/75abfa43jw1dtgcd7cc7pj.jpg', 'http://ww4.sinaimg.cn/bmiddle/75abfa43jw1dtgcd7cc7pj.jpg', '难得好天气，最美的阳光从天窗而入，风青窑别有风致。');
insert into task (owner_id, publisher_id, task_type, task_sina_uid, task_screen_name, task_offer, task_amount, task_finish_amount, task_icon_url, task_sina_wid, task_thumbnail_pic_url, task_bmiddle_pic_url, task_text) values (2, 3, 'forward', 1974204995, '如洗ruxi', 50, 30, 10, 'http://tp4.sinaimg.cn/1974204995/50/1297926614/0', 3450269117959682, 'http://ww3.sinaimg.cn/thumbnail/75abfa43jw1dtcr1ll2wkj.jpg', 'http://ww3.sinaimg.cn/bmiddle/75abfa43jw1dtcr1ll2wkj.jpg', '当足够有空闲的时间的时候，如洗会开一间卖植物的店，满眼绿色总会让人心情变好。');
insert into task (owner_id, publisher_id, task_type, task_sina_uid, task_screen_name, task_offer, task_amount, task_finish_amount, task_icon_url, task_sina_wid, task_thumbnail_pic_url, task_bmiddle_pic_url, task_text) values (2, 3, 'forward', 1974204995, '如洗ruxi', 50, 30, 10, 'http://tp4.sinaimg.cn/1974204995/50/1297926614/0', 3449915197982157, 'http://ww1.sinaimg.cn/thumbnail/75abfa43jw1dtbmeanh9gj.jpg', 'http://ww1.sinaimg.cn/bmiddle/75abfa43jw1dtbmeanh9gj.jpg', '如洗初夏新品：香云纱围巾。夏天是展现香云纱魅力的季节了！如洗国子监店有售');
insert into task (owner_id, publisher_id, task_type, task_sina_uid, task_screen_name, task_offer, task_amount, task_finish_amount, task_icon_url, task_sina_wid, task_thumbnail_pic_url, task_bmiddle_pic_url, task_text) values (2, 3, 'forward', 1974204995, '如洗ruxi', 50, 30, 10, 'http://tp4.sinaimg.cn/1974204995/50/1297926614/0', 3448447996524693, 'http://ww4.sinaimg.cn/thumbnail/75abfa43jw1dt6xvsfes8j.jpg', 'http://ww4.sinaimg.cn/bmiddle/75abfa43jw1dt6xvsfes8j.jpg', '丝麻衣衫，清凉一夏;不尚华饰，质素如洗。');
insert into task (owner_id, publisher_id, task_type, task_sina_uid, task_screen_name, task_offer, task_amount, task_finish_amount, task_icon_url, task_sina_wid, task_thumbnail_pic_url, task_bmiddle_pic_url, task_text) values (2, 3, 'forward', 1974204995, '如洗ruxi', 50, 30, 10, 'http://tp4.sinaimg.cn/1974204995/50/1297926614/0', 3445557672949450, 'http://ww4.sinaimg.cn/thumbnail/75abfa43jw1dsxpxvydw1j.jpg', 'http://ww4.sinaimg.cn/bmiddle/75abfa43jw1dsxpxvydw1j.jpg', '在国子监店里酣睡的猪猪，俨然一副主人的架势。');
insert into task (owner_id, publisher_id, task_type, task_sina_uid, task_screen_name, task_offer, task_amount, task_finish_amount, task_icon_url, task_sina_wid, task_thumbnail_pic_url, task_bmiddle_pic_url, task_text) values (2, 3, 'forward', 1974204995, '如洗ruxi', 50, 30, 10, 'http://tp4.sinaimg.cn/1974204995/50/1297926614/0', 3444546165954696, 'http://ww1.sinaimg.cn/thumbnail/75abfa43jw1dsuhrqzwttj.jpg', 'http://ww1.sinaimg.cn/bmiddle/75abfa43jw1dsuhrqzwttj.jpg', '川瀬敏郎作品，几张自己很喜欢的，住到山里就可以自己侍弄花草了@石头青 @逗号163 @peipei懂');
insert into task (owner_id, publisher_id, task_type, task_sina_uid, task_screen_name, task_offer, task_amount, task_finish_amount, task_icon_url, task_sina_wid, task_thumbnail_pic_url, task_bmiddle_pic_url, task_text) values (2, 3, 'forward', 1974204995, '如洗ruxi', 50, 30, 10, 'http://tp4.sinaimg.cn/1974204995/50/1297926614/0', 3444079499192119, 'http://ww3.sinaimg.cn/thumbnail/75abfa43jw1dst06aflmqj.jpg', 'http://ww3.sinaimg.cn/bmiddle/75abfa43jw1dst06aflmqj.jpg', '有阳光的时候，来一泡老枞水仙最是惬意！');
insert into task (owner_id, publisher_id, task_type, task_sina_uid, task_screen_name, task_offer, task_amount, task_finish_amount, task_icon_url, task_sina_wid, task_thumbnail_pic_url, task_bmiddle_pic_url, task_text) values (2, 3, 'forward', 1974204995, '如洗ruxi', 50, 30, 10, 'http://tp4.sinaimg.cn/1974204995/50/1297926614/0', 3443805015158503, 'http://ww3.sinaimg.cn/thumbnail/75abfa43jw1dss4ngeysaj.jpg', 'http://ww3.sinaimg.cn/bmiddle/75abfa43jw1dss4ngeysaj.jpg', '中国美术馆的一个展览 《伯胡斯拉夫·雷聂克——捷克的现代隐士》14号结束。挺好！看后有两个启发：一是画不在大，二是艺术家要活在自己的世界里。');
insert into task (owner_id, publisher_id, task_type, task_sina_uid, task_screen_name, task_offer, task_amount, task_finish_amount, task_icon_url, task_sina_wid, task_thumbnail_pic_url, task_bmiddle_pic_url, task_text) values (2, 3, 'forward', 1974204995, '如洗ruxi', 50, 30, 10, 'http://tp4.sinaimg.cn/1974204995/50/1297926614/0', 3443791253927013, 'http://ww1.sinaimg.cn/thumbnail/75abfa43jw1dss32mlwqgj.jpg', 'http://ww1.sinaimg.cn/bmiddle/75abfa43jw1dss32mlwqgj.jpg', '野口勇，这个好');
insert into task (owner_id, publisher_id, task_type, task_sina_uid, task_screen_name, task_offer, task_amount, task_finish_amount, task_icon_url, task_sina_wid, task_thumbnail_pic_url, task_bmiddle_pic_url, task_text) values (2, 3, 'forward', 1974204995, '如洗ruxi', 50, 30, 10, 'http://tp4.sinaimg.cn/1974204995/50/1297926614/0', 3441910129476653, 'http://ww4.sinaimg.cn/thumbnail/75abfa43jw1dsm30wr3jkj.jpg', 'http://ww4.sinaimg.cn/bmiddle/75abfa43jw1dsm30wr3jkj.jpg', '棉麻布衣，清凉一夏。如洗新品。实体淘宝同时销售');
insert into task (owner_id, publisher_id, task_type, task_sina_uid, task_screen_name, task_offer, task_amount, task_finish_amount, task_icon_url, task_sina_wid, task_thumbnail_pic_url, task_bmiddle_pic_url, task_text) values (2, 3, 'forward', 1974204995, '如洗ruxi', 50, 30, 10, 'http://tp4.sinaimg.cn/1974204995/50/1297926614/0', 3437961834102885, 'http://ww2.sinaimg.cn/thumbnail/75abfa43jw1ds9hkk6lwuj.jpg', 'http://ww2.sinaimg.cn/bmiddle/75abfa43jw1ds9hkk6lwuj.jpg', '如洗半日闲茶室已经开业一月有余，是新老朋友相聚的小沙龙。于我们自己真是偷得浮生半日闲了。');
insert into task (owner_id, publisher_id, task_type, task_sina_uid, task_screen_name, task_offer, task_amount, task_finish_amount, task_icon_url, task_sina_wid, task_thumbnail_pic_url, task_bmiddle_pic_url, task_text) values (2, 3, 'forward', 1974204995, '如洗ruxi', 50, 30, 10, 'http://tp4.sinaimg.cn/1974204995/50/1297926614/0', 3436192135513483, 'http://ww3.sinaimg.cn/thumbnail/75abfa43jw1ds3ubq8syzj.jpg', 'http://ww3.sinaimg.cn/bmiddle/75abfa43jw1ds3ubq8syzj.jpg', '《东方一周》对如洗国子监的报道，感谢,感谢!');
insert into task (owner_id, publisher_id, task_type, task_sina_uid, task_screen_name, task_offer, task_amount, task_finish_amount, task_icon_url, task_sina_wid, task_thumbnail_pic_url, task_bmiddle_pic_url, task_text) values (2, 3, 'forward', 1974204995, '如洗ruxi', 50, 30, 10, 'http://tp4.sinaimg.cn/1974204995/50/1297926614/0', 3430145539152201, 'http://ww2.sinaimg.cn/thumbnail/75abfa43jw1drkjvusdwlj.jpg', 'http://ww2.sinaimg.cn/bmiddle/75abfa43jw1drkjvusdwlj.jpg', '分享夙焉的博文：不尚华饰，质素如洗。 推荐给@头条博客 http://t.cn/zOSBv09 （分享自 @头条博客）');
insert into task (owner_id, publisher_id, task_type, task_sina_uid, task_screen_name, task_offer, task_amount, task_finish_amount, task_icon_url, task_sina_wid, task_thumbnail_pic_url, task_bmiddle_pic_url, task_text) values (2, 3, 'forward', 1974204995, '如洗ruxi', 50, 30, 10, 'http://tp4.sinaimg.cn/1974204995/50/1297926614/0', 3429955197182465, 'http://ww4.sinaimg.cn/thumbnail/75abfa43jw1drjy0uuv3sj.jpg', 'http://ww4.sinaimg.cn/bmiddle/75abfa43jw1drjy0uuv3sj.jpg', '不要辜负了这么好的阳光，半日闲茶舍新到明前龙井，碧螺春。');
insert into task (owner_id, publisher_id, task_type, task_sina_uid, task_screen_name, task_offer, task_amount, task_finish_amount, task_icon_url, task_sina_wid, task_thumbnail_pic_url, task_bmiddle_pic_url, task_text) values (2, 3, 'forward', 1974204995, '如洗ruxi', 50, 30, 10, 'http://tp4.sinaimg.cn/1974204995/50/1297926614/0', 3427784141412919, '', '', '最喜欢海子的《祖国或以梦为马》 我要做远方的忠诚的儿子 和物质的短暂情人 和所有以梦为马的诗人一样 我不得不和烈士和小丑走在同一道路上 万人都要将火熄灭，我一人独将此火高高举起 此火为大，开花落英于神圣的祖国 和所有以梦为马的诗人一样 我藉此火得度一生的茫茫黑夜');
insert into task (owner_id, publisher_id, task_type, task_sina_uid, task_screen_name, task_offer, task_amount, task_finish_amount, task_icon_url, task_sina_wid, task_thumbnail_pic_url, task_bmiddle_pic_url, task_text) values (2, 3, 'forward', 1974204995, '如洗ruxi', 50, 30, 10, 'http://tp4.sinaimg.cn/1974204995/50/1297926614/0', 3426504639437582, 'http://ww2.sinaimg.cn/thumbnail/75abfa43jw1dr8xqcwe09j.jpg', 'http://ww2.sinaimg.cn/bmiddle/75abfa43jw1dr8xqcwe09j.jpg', '如洗半日闲茶舍，难得如此安静。推荐冈仓天心 Okakura Kakuzo的《茶之书》。译者: 郑夙恩。一定是这个译本的才好读！');
insert into task (owner_id, publisher_id, task_type, task_sina_uid, task_screen_name, task_offer, task_amount, task_finish_amount, task_icon_url, task_sina_wid, task_thumbnail_pic_url, task_bmiddle_pic_url, task_text) values (2, 3, 'forward', 1974204995, '如洗ruxi', 50, 30, 10, 'http://tp4.sinaimg.cn/1974204995/50/1297926614/0', 3425971992387313, 'http://ww3.sinaimg.cn/thumbnail/75abfa43jw1dr78ckl1q9j.jpg', 'http://ww3.sinaimg.cn/bmiddle/75abfa43jw1dr78ckl1q9j.jpg', '如洗国子监店和风青窑合作，展示出售他们的作品。主要是以茶器为主，都是手工拉胚高温烧制而成。从小小的茶器上面可以看到他们的执着和坚持，可以感受到他们的温度。');
insert into task (owner_id, publisher_id, task_type, task_sina_uid, task_screen_name, task_offer, task_amount, task_finish_amount, task_icon_url, task_sina_wid, task_thumbnail_pic_url, task_bmiddle_pic_url, task_text) values (2, 3, 'forward', 1974204995, '如洗ruxi', 50, 30, 10, 'http://tp4.sinaimg.cn/1974204995/50/1297926614/0', 3425421259422903, 'http://ww2.sinaimg.cn/thumbnail/75abfa43jw1dr5h57hysrj.jpg', 'http://ww2.sinaimg.cn/bmiddle/75abfa43jw1dr5h57hysrj.jpg', '如洗国子监店现已正式开业。整体分为两个区域。一个是如洗产品区，有如洗原创服饰（棉麻和香云纱）和陶艺家的手工茶器。另一个区域是半日闲茶舍，喜欢饮茶的朋友可以在茶舍品茶。欢迎大家来成贤街小坐⋯⋯');
insert into task (owner_id, publisher_id, task_type, task_sina_uid, task_screen_name, task_offer, task_amount, task_finish_amount, task_icon_url, task_sina_wid, task_thumbnail_pic_url, task_bmiddle_pic_url, task_text) values (2, 3, 'forward', 1974204995, '如洗ruxi', 50, 30, 10, 'http://tp4.sinaimg.cn/1974204995/50/1297926614/0', 3424936619891473, 'http://ww3.sinaimg.cn/thumbnail/75abfa43jw1dr3xna6axtj.jpg', 'http://ww3.sinaimg.cn/bmiddle/75abfa43jw1dr3xna6axtj.jpg', '如洗出品，简洁款的长袍子，用蓝色和灰色拼起来。春日里的好伙伴。如洗南锣店国子监店有售。网店：http://t.cn/h9k5T3');
insert into task (owner_id, publisher_id, task_type, task_sina_uid, task_screen_name, task_offer, task_amount, task_finish_amount, task_icon_url, task_sina_wid, task_thumbnail_pic_url, task_bmiddle_pic_url, task_text) values (2, 3, 'forward', 1974204995, '如洗ruxi', 50, 30, 10, 'http://tp4.sinaimg.cn/1974204995/50/1297926614/0', 3423085434371479, 'http://ww2.sinaimg.cn/thumbnail/75abfa43jw1dqy11hvkgdj.jpg', 'http://ww2.sinaimg.cn/bmiddle/75abfa43jw1dqy11hvkgdj.jpg', '经过一个月的努力，如洗国子监店定于本周末（3月17日）下午三点正式开业。敬请各位朋友到时大驾光临。我们会准备好音乐美酒在店里静候！地址：国子监55号（近安定门内）@蔡蛋挞@友雅youya @李沐夏同学_小五 i@古奇高 @pinking墨白@brandnu @狸空@石头青 @冬子-十方 @山人乐队小不点@铃木兔子@张啸吟');
insert into task (owner_id, publisher_id, task_type, task_sina_uid, task_screen_name, task_offer, task_amount, task_finish_amount, task_icon_url, task_sina_wid, task_thumbnail_pic_url, task_bmiddle_pic_url, task_text) values (2, 3, 'forward', 1974204995, '如洗ruxi', 50, 30, 10, 'http://tp4.sinaimg.cn/1974204995/50/1297926614/0', 3422319118633207, 'http://ww1.sinaimg.cn/thumbnail/75abfa43jw1dqvl10oc08j.jpg', 'http://ww1.sinaimg.cn/bmiddle/75abfa43jw1dqvl10oc08j.jpg', '如洗今年筹备的新店即将开业，位置在北京东城国子监55号。如洗将以一个全新的面貌展示给大家，敬请关注。');
insert into task (owner_id, publisher_id, task_type, task_sina_uid, task_screen_name, task_offer, task_amount, task_finish_amount, task_icon_url, task_sina_wid, task_thumbnail_pic_url, task_bmiddle_pic_url, task_text) values (2, 3, 'forward', 1974204995, '如洗ruxi', 50, 30, 10, 'http://tp4.sinaimg.cn/1974204995/50/1297926614/0', 3420524937917828, 'http://ww4.sinaimg.cn/thumbnail/75abfa43jw1dqpuz13yemj.jpg', 'http://ww4.sinaimg.cn/bmiddle/75abfa43jw1dqpuz13yemj.jpg', '如洗春装全面上新，北京如洗南锣鼓巷店有售');
insert into task (owner_id, publisher_id, task_type, task_sina_uid, task_screen_name, task_offer, task_amount, task_finish_amount, task_icon_url, task_sina_wid, task_thumbnail_pic_url, task_bmiddle_pic_url, task_text) values (2, 3, 'forward', 1974204995, '如洗ruxi', 50, 30, 10, 'http://tp4.sinaimg.cn/1974204995/50/1297926614/0', 3420168959010717, 'http://ww1.sinaimg.cn/thumbnail/75abfa43jw1dqoq34xp1rj.jpg', 'http://ww1.sinaimg.cn/bmiddle/75abfa43jw1dqoq34xp1rj.jpg', '如洗亚麻围巾，春日百搭，雅致灰');
insert into task (owner_id, publisher_id, task_type, task_sina_uid, task_screen_name, task_offer, task_amount, task_finish_amount, task_icon_url, task_sina_wid, task_thumbnail_pic_url, task_bmiddle_pic_url, task_text) values (2, 3, 'forward', 1974204995, '如洗ruxi', 50, 30, 10, 'http://tp4.sinaimg.cn/1974204995/50/1297926614/0', 3419566732018496, 'http://ww1.sinaimg.cn/thumbnail/75abfa43jw1dqmsx9lir3j.jpg', 'http://ww1.sinaimg.cn/bmiddle/75abfa43jw1dqmsx9lir3j.jpg', '如洗春装新款，如洗南锣店有售');
insert into task (owner_id, publisher_id, task_type, task_sina_uid, task_screen_name, task_offer, task_amount, task_finish_amount, task_icon_url, task_sina_wid, task_thumbnail_pic_url, task_bmiddle_pic_url, task_text) values (2, 3, 'forward', 1974204995, '如洗ruxi', 50, 30, 10, 'http://tp4.sinaimg.cn/1974204995/50/1297926614/0', 3418890803275845, '', '', '如洗新店即将开张，现招聘店员两名。 要求：1 善于沟通， 能进行简单英语交流。 2 勤奋，能吃苦耐劳。 3 诚实，善良，不撒谎，人品好。 4 认可如洗理念，能踏实的做事。 人员要求：专职一名，兼职一名。 有意者简历发至ruxixiaoba@yahoo.cn，或致电18600260114。');
insert into task (owner_id, publisher_id, task_type, task_sina_uid, task_screen_name, task_offer, task_amount, task_finish_amount, task_icon_url, task_sina_wid, task_thumbnail_pic_url, task_bmiddle_pic_url, task_text) values (2, 3, 'forward', 1974204995, '如洗ruxi', 50, 30, 10, 'http://tp4.sinaimg.cn/1974204995/50/1297926614/0', 3416697274701831, 'http://ww4.sinaimg.cn/thumbnail/75abfa43jw1dqdndffkebj.jpg', 'http://ww4.sinaimg.cn/bmiddle/75abfa43jw1dqdndffkebj.jpg', '我在听这张专辑《Explorer: Java - Court Gamelan 3》 -Various Artists http://t.cn/aBJLV6');
insert into task (owner_id, publisher_id, task_type, task_sina_uid, task_screen_name, task_offer, task_amount, task_finish_amount, task_icon_url, task_sina_wid, task_thumbnail_pic_url, task_bmiddle_pic_url, task_text) values (2, 3, 'forward', 1974204995, '如洗ruxi', 50, 30, 10, 'http://tp4.sinaimg.cn/1974204995/50/1297926614/0', 3416694074389054, 'http://ww2.sinaimg.cn/thumbnail/75abfa43jw1dqdn075lf1j.jpg', 'http://ww2.sinaimg.cn/bmiddle/75abfa43jw1dqdn075lf1j.jpg', '我在听这张专辑《Iran, Persian Classical Music》 -Faramarz Payvar http://t.cn/a9PGGM');
/* forward_tasks*/


/* follow_tasks */
INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1904350821', 70, 100, 39, '梵几', '北京', 'http://tp2.sinaimg.cn/1904350821/180/5637718103/1');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1974204995', 70, 100, 39, '如洗ruxi', '北京 东城区', 'http://tp4.sinaimg.cn/1974204995/180/1297926614/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '2452933723', 70, 100, 39, '微刊', '北京 海淀区', 'http://tp4.sinaimg.cn/2452933723/180/5636269932/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1822003135', 70, 100, 39, '-度薇年-', '辽宁 沈阳', 'http://tp4.sinaimg.cn/1822003135/180/5603891136/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1288645120', 70, 100, 39, '阿梗木叶笔记', '其他', 'http://tp1.sinaimg.cn/1288645120/180/5607787449/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1530179120', 70, 100, 39, '周小兜Illustration', '湖南 长沙', 'http://tp1.sinaimg.cn/1530179120/180/5634109485/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1678506971', 70, 100, 39, '阿布的熊熊猫-杲杲', '北京 朝阳区', 'http://tp4.sinaimg.cn/1678506971/180/5639291846/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1273380037', 70, 100, 39, '左岩', '浙江', 'http://tp2.sinaimg.cn/1273380037/180/5639053033/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1630907862', 70, 100, 39, 'EXCEPTION例外', '广东 广州', 'http://tp3.sinaimg.cn/1630907862/180/39998939441/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1258824907', 70, 100, 39, '高露', '北京', 'http://tp4.sinaimg.cn/1258824907/180/1279876374/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '2733854517', 70, 100, 39, '手绘树脂立体画', '山东 济宁', 'http://tp2.sinaimg.cn/2733854517/180/22819682951/1');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1820381745', 70, 100, 39, '小躺_', '北京', 'http://tp2.sinaimg.cn/1820381745/180/5637366004/1');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1242153997', 70, 100, 39, '莫卡Moka', '广东 广州', 'http://tp2.sinaimg.cn/1242153997/180/1295418017/1');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1217261134', 70, 100, 39, '七堇年', '其他', 'http://tp3.sinaimg.cn/1217261134/180/5610413608/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1440021635', 70, 100, 39, '水木丁', '北京 朝阳区', 'http://tp4.sinaimg.cn/1440021635/180/1299206752/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1729724227', 70, 100, 39, '老阿姨在看着你', '北京', 'http://tp4.sinaimg.cn/1729724227/180/5634307084/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1716577367', 70, 100, 39, '就是张辛苑', '北京', 'http://tp4.sinaimg.cn/1716577367/180/5636870108/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1791369761', 70, 100, 39, '猫腻酱', '广东 广州', 'http://tp2.sinaimg.cn/1791369761/180/39997564124/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1263172355', 70, 100, 39, '流浪者余师', '青海 西宁', 'http://tp4.sinaimg.cn/1263172355/180/5633315646/1');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1657202307', 70, 100, 39, '巴迪KEN', '广东 佛山', 'http://tp4.sinaimg.cn/1657202307/180/5624983690/1');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1770500327', 70, 100, 39, '鹤小白', '广东 广州', 'http://tp4.sinaimg.cn/1770500327/180/5621687256/1');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1479487041', 70, 100, 39, '芥末塔晓柒', '湖北 宜昌', 'http://tp2.sinaimg.cn/1479487041/180/39999746997/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1648309095', 70, 100, 39, '你好Mika酱', '北京', 'http://tp4.sinaimg.cn/1648309095/180/5622084720/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1528274033', 70, 100, 39, '燕子PHOTO', '北京 朝阳区', 'http://tp2.sinaimg.cn/1528274033/180/5639626220/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '2805807951', 70, 100, 39, '我在这里-天气晴', '广东 广州', 'http://tp4.sinaimg.cn/2805807951/180/22819697466/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1747567030', 70, 100, 39, 'Rainbow小绿', '浙江 温州', 'http://tp3.sinaimg.cn/1747567030/180/39997241053/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1988640044', 70, 100, 39, 'jollyyao', '海外 其他', 'http://tp1.sinaimg.cn/1988640044/180/39999907327/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1730268650', 70, 100, 39, 'Zakka_Garden杂货铺', '广东 深圳', 'http://tp3.sinaimg.cn/1730268650/180/5630302784/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1761341590', 70, 100, 39, '小金寶coco', '云南 大理', 'http://tp3.sinaimg.cn/1761341590/180/5624101560/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1747145942', 70, 100, 39, '瓶子Yuri', '广东 广州', 'http://tp3.sinaimg.cn/1747145942/180/5625427629/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1809954864', 70, 100, 39, '囧囧菜菜菜菜菜菜', '广东 广州', 'http://tp1.sinaimg.cn/1809954864/180/5637765751/1');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '2185132680', 70, 100, 39, '丸子头的夏天', '福建 厦门', 'http://tp1.sinaimg.cn/2185132680/180/39999895649/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1676681833', 70, 100, 39, '叶子LeafGreener', '上海 静安区', 'http://tp2.sinaimg.cn/1676681833/180/5637323489/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1752494900', 70, 100, 39, 'Xiaoxi-Nancy-Zhang', '海外 德国', 'http://tp1.sinaimg.cn/1752494900/180/1286072916/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1074896921', 70, 100, 39, 'Kirara屋檐下的知更鸟', '上海', 'http://tp2.sinaimg.cn/1074896921/180/5632218581/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1738535843', 70, 100, 39, '小雨爱生活', '北京 朝阳区', 'http://tp4.sinaimg.cn/1738535843/180/5637887428/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '2834923972', 70, 100, 39, 'ShibaSakura', '其他', 'http://tp1.sinaimg.cn/2834923972/180/5635313022/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1717802810', 70, 100, 39, 'littlething恋物志', '广东 深圳', 'http://tp3.sinaimg.cn/1717802810/180/5638348365/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1729714591', 70, 100, 39, '鄭裕玲', '香港', 'http://tp4.sinaimg.cn/1729714591/180/5640650388/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '2097024354', 70, 100, 39, '南京发布', '江苏 南京', 'http://tp3.sinaimg.cn/2097024354/180/5598841760/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1628281547', 70, 100, 39, 'V米吸管', '湖南 邵阳', 'http://tp4.sinaimg.cn/1628281547/180/39999974210/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '2087048623', 70, 100, 39, '小小线团团', '北京 朝阳区', 'http://tp4.sinaimg.cn/2087048623/180/5633967036/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1891624647', 70, 100, 39, '生活糖果', '河南 郑州', 'http://tp4.sinaimg.cn/1891624647/180/5630198213/1');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '2272169311', 70, 100, 39, '喵酱崽的小手工', '广西 南宁', 'http://tp4.sinaimg.cn/2272169311/180/5621758298/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1644587232', 70, 100, 39, '早安-晚安-心语', '海外', 'http://tp1.sinaimg.cn/1644587232/180/5635002595/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '2485231962', 70, 100, 39, '迷糊娃爱生活', '北京 朝阳区', 'http://tp3.sinaimg.cn/2485231962/180/5614869701/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1624315077', 70, 100, 39, 'Forest林子', '天津', 'http://tp2.sinaimg.cn/1624315077/180/22816347531/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1968203605', 70, 100, 39, '森女在路上', '北京 朝阳区', 'http://tp2.sinaimg.cn/1968203605/180/5630483022/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1697582564', 70, 100, 39, '月亮散步姐姐', '四川', 'http://tp1.sinaimg.cn/1697582564/180/1287038793/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '2111251275', 70, 100, 39, 'byebyebye--', '其他', 'http://tp4.sinaimg.cn/2111251275/180/5634696757/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '2482719877', 70, 100, 39, '悬在头上的十二把刀', '江苏 南京', 'http://tp2.sinaimg.cn/2482719877/180/5621167890/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1659253912', 70, 100, 39, '么蔻', '广东 汕头', 'http://tp1.sinaimg.cn/1659253912/180/1296665925/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1626410753', 70, 100, 39, 'MOK莫輕浮', '其他', 'http://tp2.sinaimg.cn/1626410753/180/5628917484/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1920604875', 70, 100, 39, '3e-house', '福建 泉州', 'http://tp4.sinaimg.cn/1920604875/180/5608254626/1');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1641179817', 70, 100, 39, '马良', '上海 松江区', 'http://tp2.sinaimg.cn/1641179817/180/5630318118/1');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1647706672', 70, 100, 39, '视觉风', '重庆 南岸区', 'http://tp1.sinaimg.cn/1647706672/180/5634690253/1');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1957820600', 70, 100, 39, '纯正街拍', '广东', 'http://tp1.sinaimg.cn/1957820600/180/5604733154/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1215117745', 70, 100, 39, '王小陌', '浙江 杭州', 'http://tp2.sinaimg.cn/1215117745/180/5602979150/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1886320062', 70, 100, 39, '懷秋喜欢就好', '广东', 'http://tp3.sinaimg.cn/1886320062/180/1292399122/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '2407831804', 70, 100, 39, '红花志', '四川 成都', 'http://tp1.sinaimg.cn/2407831804/180/5615541997/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1561655320', 70, 100, 39, 'Miss葵', '北京 朝阳区', 'http://tp1.sinaimg.cn/1561655320/180/5632302318/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1739781967', 70, 100, 39, '崔承俊', '山东 济南', 'http://tp4.sinaimg.cn/1739781967/180/5626155823/1');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1400722343', 70, 100, 39, '陈柏言', '北京 东城区', 'http://tp4.sinaimg.cn/1400722343/180/5624285537/1');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1506581577', 70, 100, 39, '封原', '北京 朝阳区', 'http://tp2.sinaimg.cn/1506581577/180/5634533598/1');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1667827095', 70, 100, 39, '豆腐君', '广东 广州', 'http://tp4.sinaimg.cn/1667827095/180/5634115304/1');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1460956327', 70, 100, 39, '李遥波ABBA', '北京 朝阳区', 'http://tp4.sinaimg.cn/1460956327/180/5640532481/1');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1972922122', 70, 100, 39, '番茄派-FQPAI', '江苏 苏州', 'http://tp3.sinaimg.cn/1972922122/180/5621400960/1');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '2429913044', 70, 100, 39, '七月手作', '海外', 'http://tp1.sinaimg.cn/2429913044/180/5626537118/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1730290517', 70, 100, 39, 'EdaChow', '香港 其他', 'http://tp2.sinaimg.cn/1730290517/180/5624959952/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1955673981', 70, 100, 39, 'PoMe微博杂志', '浙江 杭州', 'http://tp2.sinaimg.cn/1955673981/180/5612847288/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '2342440300', 70, 100, 39, '美乐棵MiracleGro', '广东 广州', 'http://tp1.sinaimg.cn/2342440300/180/5620409199/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '2040790475', 70, 100, 39, '张优嘉', '陕西 西安', 'http://tp4.sinaimg.cn/2040790475/180/5634091892/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '2120391283', 70, 100, 39, '你好DIY__李青', '北京 海淀区', 'http://tp4.sinaimg.cn/2120391283/180/5617079709/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1863976184', 70, 100, 39, '陈小豪Origin', '北京 朝阳区', 'http://tp1.sinaimg.cn/1863976184/180/5632222203/1');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '2021511457', 70, 100, 39, '爱燕子IYANZI摄影机构', '北京 朝阳区', 'http://tp2.sinaimg.cn/2021511457/180/5609991931/1');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '2032813471', 70, 100, 39, 'miss米娜', '上海', 'http://tp4.sinaimg.cn/2032813471/180/5597198269/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1704348731', 70, 100, 39, '轩宇同学', '北京 海淀区', 'http://tp4.sinaimg.cn/1704348731/180/5629891142/1');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1748536084', 70, 100, 39, '梁小璐童鞋', '上海 徐汇区', 'http://tp1.sinaimg.cn/1748536084/180/40000175169/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '2219125800', 70, 100, 39, 'earthmusic1999', '上海', 'http://tp1.sinaimg.cn/2219125800/180/5618220142/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1296720452', 70, 100, 39, '熊顿XD', '北京 东城区', 'http://tp1.sinaimg.cn/1296720452/180/1285484130/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1255623020', 70, 100, 39, '嗨-漫漫', '广东 深圳', 'http://tp1.sinaimg.cn/1255623020/180/5632990793/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '2045417355', 70, 100, 39, 'cherry晓晓-Akatsuki', '上海', 'http://tp4.sinaimg.cn/2045417355/180/5610001130/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1792286151', 70, 100, 39, 'vivi杂志', '海外 日本', 'http://tp4.sinaimg.cn/1792286151/180/40000485359/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1914464231', 70, 100, 39, '你放学等着', '江苏 苏州', 'http://tp4.sinaimg.cn/1914464231/180/39996041916/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1718646484', 70, 100, 39, '-小柚', '上海', 'http://tp1.sinaimg.cn/1718646484/180/5626253063/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1859419637', 70, 100, 39, '奶茶-莎莎', '北京 昌平区', 'http://tp2.sinaimg.cn/1859419637/180/5617450304/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1903550487', 70, 100, 39, '熊猫-眼睛', '云南 红河', 'http://tp4.sinaimg.cn/1903550487/180/39997146223/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1636038153', 70, 100, 39, '浩淇不二家', '浙江 杭州', 'http://tp2.sinaimg.cn/1636038153/180/5621664900/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1497337850', 70, 100, 39, '咆哮女郎柏邦妮', '北京 海淀区', 'http://tp3.sinaimg.cn/1497337850/180/5638246862/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1863809384', 70, 100, 39, '晓冬知春-视觉生活志', '上海', 'http://tp1.sinaimg.cn/1863809384/180/5607396631/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1233617290', 70, 100, 39, '呼吸不能说-breath', '北京 朝阳区', 'http://tp3.sinaimg.cn/1233617290/180/5640491137/1');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1829618667', 70, 100, 39, '象个老玮', '江苏 南京', 'http://tp4.sinaimg.cn/1829618667/180/1301235882/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1256201362', 70, 100, 39, '木偶走天涯', '广东 广州', 'http://tp3.sinaimg.cn/1256201362/180/5632797402/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1788956681', 70, 100, 39, '豆荚农庄', '北京 朝阳区', 'http://tp2.sinaimg.cn/1788956681/180/1288351333/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1795308494', 70, 100, 39, '荣佳Ashley', '江苏 无锡', 'http://tp3.sinaimg.cn/1795308494/180/39999734891/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1853850492', 70, 100, 39, '小希与阿树', '重庆 渝中区', 'http://tp1.sinaimg.cn/1853850492/180/40000496608/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1863761573', 70, 100, 39, 'Yuki莜洁', '上海', 'http://tp2.sinaimg.cn/1863761573/180/39999709733/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1577020023', 70, 100, 39, '陸根薩視民謠如生命-', '上海', 'http://tp4.sinaimg.cn/1577020023/180/5634778095/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1853949425', 70, 100, 39, '投票态小度', '北京 海淀区', 'http://tp2.sinaimg.cn/1853949425/180/5621146280/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '2344394875', 70, 100, 39, '廢材斗', '其他', 'http://tp4.sinaimg.cn/2344394875/180/5630213765/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1672350677', 70, 100, 39, 'bEnsHoP的bEn', '广东 广州', 'http://tp2.sinaimg.cn/1672350677/180/1279885852/1');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1211579422', 70, 100, 39, '嵇启来', '上海 卢湾区', 'http://tp3.sinaimg.cn/1211579422/180/1286516493/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1766053417', 70, 100, 39, 'Hera_苗苗', '北京 朝阳区', 'http://tp2.sinaimg.cn/1766053417/180/5636015488/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1650660520', 70, 100, 39, '王胜江', '北京 朝阳区', 'http://tp1.sinaimg.cn/1650660520/180/1293694739/1');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1734394197', 70, 100, 39, '舞剑舞剑', '海外 法国', 'http://tp2.sinaimg.cn/1734394197/180/5637911237/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1957386154', 70, 100, 39, '森小林-', '海外 日本', 'http://tp3.sinaimg.cn/1957386154/180/5615714079/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1766692572', 70, 100, 39, '时下', '福建 泉州', 'http://tp1.sinaimg.cn/1766692572/180/5626421358/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1420174783', 70, 100, 39, '文怡', '北京', 'http://tp4.sinaimg.cn/1420174783/180/5640385466/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1580865067', 70, 100, 39, '逃跑的小孩', '北京', 'http://tp4.sinaimg.cn/1580865067/180/5635998666/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1750540435', 70, 100, 39, '姑奶奶个熊脸巴子', '重庆 南岸区', 'http://tp4.sinaimg.cn/1750540435/180/40000444736/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1290567912', 70, 100, 39, '恩Nasin', '四川 成都', 'http://tp1.sinaimg.cn/1290567912/180/39996759389/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1260165344', 70, 100, 39, 'BTV悦悦', '北京 朝阳区', 'http://tp1.sinaimg.cn/1260165344/180/5640676244/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1635058702', 70, 100, 39, '安安-Fion', '广东 广州', 'http://tp3.sinaimg.cn/1635058702/180/5624979965/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '2153906001', 70, 100, 39, '云端时光', '其他', 'http://tp2.sinaimg.cn/2153906001/180/5601709338/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '2099450561', 70, 100, 39, '朵小萌童鞋', '湖北 武汉', 'http://tp2.sinaimg.cn/2099450561/180/5626336880/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1890841421', 70, 100, 39, '宝小珞在浪漫九龙塘', '云南 丽江', 'http://tp2.sinaimg.cn/1890841421/180/39999451540/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1808481290', 70, 100, 39, '姑娘呀你大胆滴往前走', '河南', 'http://tp3.sinaimg.cn/1808481290/180/5638923947/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '2010101707', 70, 100, 39, '鹿途乙女', '其他', 'http://tp4.sinaimg.cn/2010101707/180/39998778645/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1760893084', 70, 100, 39, 'kiki_企鹅', '浙江 宁波', 'http://tp1.sinaimg.cn/1760893084/180/5625570024/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '2087824761', 70, 100, 39, '兔子小姐在森林里游玩', '广东 广州', 'http://tp2.sinaimg.cn/2087824761/180/5621868998/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1277336725', 70, 100, 39, '_王小旭', '北京 海淀区', 'http://tp2.sinaimg.cn/1277336725/180/5634952351/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1821898647', 70, 100, 39, '微群小助手', '北京 海淀区', 'http://tp4.sinaimg.cn/1821898647/180/5638063031/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1667575473', 70, 100, 39, '谢梦Tse', '北京 朝阳区', 'http://tp2.sinaimg.cn/1667575473/180/5637669458/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1316222597', 70, 100, 39, '林水妖', '北京', 'http://tp2.sinaimg.cn/1316222597/180/5621266413/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1653578170', 70, 100, 39, '林叶亭', '台湾 台北市', 'http://tp3.sinaimg.cn/1653578170/180/5609426877/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1442378302', 70, 100, 39, '米露', '北京 朝阳区', 'http://tp3.sinaimg.cn/1442378302/180/5640099785/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1287699512', 70, 100, 39, 'L-梁渊清', '北京', 'http://tp1.sinaimg.cn/1287699512/180/5633270951/1');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1200537723', 70, 100, 39, '马一鸣', '广东', 'http://tp4.sinaimg.cn/1200537723/180/5638029789/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1720445491', 70, 100, 39, '阿孜长不大', '上海 普陀区', 'http://tp4.sinaimg.cn/1720445491/180/5632278031/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1485056922', 70, 100, 39, '战菁一', '北京 朝阳区', 'http://tp3.sinaimg.cn/1485056922/180/5639313497/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1279977242', 70, 100, 39, '左八', '浙江', 'http://tp3.sinaimg.cn/1279977242/180/5627391568/1');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1663654774', 70, 100, 39, '绿茶志渊-RainWooTheGreat', '北京', 'http://tp3.sinaimg.cn/1663654774/180/40000014974/1');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1243835340', 70, 100, 39, '醒小C陈漪璇', '海外', 'http://tp1.sinaimg.cn/1243835340/180/5631011412/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1401033762', 70, 100, 39, '顾抒', '江苏 南京', 'http://tp3.sinaimg.cn/1401033762/180/39998494774/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1771493053', 70, 100, 39, '芬理希梦网购商城', '北京 朝阳区', 'http://tp2.sinaimg.cn/1771493053/180/5629089268/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1729370543', 70, 100, 39, '郭碧婷', '台湾 台北市', 'http://tp4.sinaimg.cn/1729370543/180/5634996112/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1195366567', 70, 100, 39, '金莎', '北京', 'http://tp4.sinaimg.cn/1195366567/180/5640153353/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1082779430', 70, 100, 39, '曹三儿', '北京 海淀区', 'http://tp3.sinaimg.cn/1082779430/180/5639620936/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1507141643', 70, 100, 39, '花甲背包客', '北京', 'http://tp4.sinaimg.cn/1507141643/180/5628417787/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1661347232', 70, 100, 39, '蔡珍妮', '上海', 'http://tp1.sinaimg.cn/1661347232/180/5637686214/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1658658821', 70, 100, 39, 'Vanschina', '海外 美国', 'http://tp2.sinaimg.cn/1658658821/180/5636167209/1');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1981307823', 70, 100, 39, '另存为杂货店', '北京 东城区', 'http://tp4.sinaimg.cn/1981307823/180/5637151954/1');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1258859614', 70, 100, 39, '江小爬LOVE', '浙江 绍兴', 'http://tp3.sinaimg.cn/1258859614/180/5614667908/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '2073489193', 70, 100, 39, 'chris1304', '江苏 南京', 'http://tp2.sinaimg.cn/2073489193/180/5626185287/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1810000670', 70, 100, 39, 'MiCmIcMiC-LbX', '广东 韶关', 'http://tp3.sinaimg.cn/1810000670/180/5625753320/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '2236768547', 70, 100, 39, 'SY小馒头', '福建 龙岩', 'http://tp4.sinaimg.cn/2236768547/180/5632908576/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1949409105', 70, 100, 39, 'wintervolet', '北京 朝阳区', 'http://tp2.sinaimg.cn/1949409105/180/5640492118/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1804241764', 70, 100, 39, '純说给你听', '浙江 宁波', 'http://tp1.sinaimg.cn/1804241764/180/39999486468/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1886466485', 70, 100, 39, '陈菁仪', '北京 朝阳区', 'http://tp2.sinaimg.cn/1886466485/180/5639967152/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1776255607', 70, 100, 39, 'opa的草莓', '上海 徐汇区', 'http://tp4.sinaimg.cn/1776255607/180/1293386044/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '2156677434', 70, 100, 39, 'Muse丶颜蹊_谁说学不了微风', '重庆 万州区', 'http://tp3.sinaimg.cn/2156677434/180/40000473271/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '2339140841', 70, 100, 39, '林青霞', '香港', 'http://tp2.sinaimg.cn/2339140841/180/5609896498/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1748426297', 70, 100, 39, 'DadA-NaKo', '上海 黄浦区', 'http://tp2.sinaimg.cn/1748426297/180/5614437589/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1765367054', 70, 100, 39, '火箭筒_aTU', '福建 厦门', 'http://tp3.sinaimg.cn/1765367054/180/5635260993/1');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1980923321', 70, 100, 39, '达人', '北京 海淀区', 'http://tp2.sinaimg.cn/1980923321/180/5613461891/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '2143550005', 70, 100, 39, '微影迷', '北京', 'http://tp2.sinaimg.cn/2143550005/180/5605424368/1');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '2044957395', 70, 100, 39, '微摄友', '北京 海淀区', 'http://tp4.sinaimg.cn/2044957395/180/5605425936/1');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1728860841', 70, 100, 39, '微博同城会', '北京', 'http://tp2.sinaimg.cn/1728860841/180/5601275359/1');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1787433323', 70, 100, 39, '武汉同城会', '湖北 武汉', 'http://tp4.sinaimg.cn/1787433323/180/5620730504/1');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '2189608911', 70, 100, 39, '微驴友', '其他', 'http://tp4.sinaimg.cn/2189608911/180/5605424417/1');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1767221295', 70, 100, 39, '时尚日本', '北京', 'http://tp4.sinaimg.cn/1767221295/180/5621755025/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1822457221', 70, 100, 39, '日剧进行时', '北京', 'http://tp2.sinaimg.cn/1822457221/180/5617159089/1');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1890782911', 70, 100, 39, '每天学点爱情法', '北京', 'http://tp4.sinaimg.cn/1890782911/180/1292227353/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1712825542', 70, 100, 39, '日本流行音乐', '海外 日本', 'http://tp3.sinaimg.cn/1712825542/180/5608512082/1');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1885894827', 70, 100, 39, '林夕经典歌词', '香港', 'http://tp4.sinaimg.cn/1885894827/180/5618204206/1');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1691680934', 70, 100, 39, '幾米的童話王國_', '台湾 台北市', 'http://tp3.sinaimg.cn/1691680934/180/5611536628/1');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1685492742', 70, 100, 39, '米师奈', '广东 珠海', 'http://tp3.sinaimg.cn/1685492742/180/1279887044/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1660584061', 70, 100, 39, '蘑菇爱家居', '浙江 金华', 'http://tp2.sinaimg.cn/1660584061/180/5606868276/1');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1642343290', 70, 100, 39, '乐活制造', '海外 美国', 'http://tp3.sinaimg.cn/1642343290/180/1293787277/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1866914101', 70, 100, 39, '时尚英语', '海外 美国', 'http://tp2.sinaimg.cn/1866914101/180/1290415248/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1900594410', 70, 100, 39, '旅行志', '上海', 'http://tp3.sinaimg.cn/1900594410/180/5632926516/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1661550774', 70, 100, 39, '女人-我最大', '湖南', 'http://tp3.sinaimg.cn/1661550774/180/5626440206/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1832447572', 70, 100, 39, '一块去旅行', '西藏', 'http://tp1.sinaimg.cn/1832447572/180/5635002893/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1629810574', 70, 100, 39, 'veggieg', '北京 朝阳区', 'http://tp3.sinaimg.cn/1629810574/180/5623150807/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1743938470', 70, 100, 39, '陶晶莹', '台湾 台北市', 'http://tp3.sinaimg.cn/1743938470/180/1274261943/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1681213010', 70, 100, 39, '刘若英', '台湾 台北市', 'http://tp3.sinaimg.cn/1681213010/180/5630482516/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1722656062', 70, 100, 39, 'Karen莫文蔚', '香港', 'http://tp3.sinaimg.cn/1722656062/180/5611718581/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1855719771', 70, 100, 39, '我爱轻松熊', '广东 深圳', 'http://tp4.sinaimg.cn/1855719771/180/1289617420/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1778181861', 70, 100, 39, '日本流行每日速报', '海外 日本', 'http://tp2.sinaimg.cn/1778181861/180/1283205623/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1732701841', 70, 100, 39, '日本潮流最前线', '其他', 'http://tp2.sinaimg.cn/1732701841/180/1284765130/1');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1742642477', 70, 100, 39, '爱情是从餃子开始的', '上海 浦东新区', 'http://tp2.sinaimg.cn/1742642477/180/40000307359/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1781828064', 70, 100, 39, '猫科大怪', '四川', 'http://tp1.sinaimg.cn/1781828064/180/5632823707/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1966563115', 70, 100, 39, '苏雅琪_', '湖南 岳阳', 'http://tp4.sinaimg.cn/1966563115/180/5640673375/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1817853793', 70, 100, 39, 'Chitty就是姿大言', '河南 郑州', 'http://tp2.sinaimg.cn/1817853793/180/5640174277/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '2107920212', 70, 100, 39, '摩豆时光', '上海', 'http://tp1.sinaimg.cn/2107920212/180/5601711759/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1867323824', 70, 100, 39, 'SheClub', '香港', 'http://tp1.sinaimg.cn/1867323824/180/5600151226/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1744462394', 70, 100, 39, 'Missliu-angela', '河南 郑州', 'http://tp3.sinaimg.cn/1744462394/180/5639648669/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1863173987', 70, 100, 39, '糖果花sweet', '山东 枣庄', 'http://tp4.sinaimg.cn/1863173987/180/5636440697/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1736559627', 70, 100, 39, '可惜我是王小七', '广东', 'http://tp4.sinaimg.cn/1736559627/180/40000427581/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1598745964', 70, 100, 39, 'A-SIR-', '浙江 杭州', 'http://tp1.sinaimg.cn/1598745964/180/39999034990/1');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '2138692353', 70, 100, 39, '村上隆_KaikaiKiki', '海外 日本', 'http://tp2.sinaimg.cn/2138692353/180/5602332997/1');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1735089604', 70, 100, 39, '湛藍深海的米', '台湾 其他', 'http://tp1.sinaimg.cn/1735089604/180/5638533328/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1617703833', 70, 100, 39, '吴微的微是微笑的微', '其他', 'http://tp2.sinaimg.cn/1617703833/180/39999112295/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1791325381', 70, 100, 39, '刘梓璇刘梓璇', '广东 东莞', 'http://tp2.sinaimg.cn/1791325381/180/22817016376/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1909660057', 70, 100, 39, '阿树-tree', '广东 惠州', 'http://tp2.sinaimg.cn/1909660057/180/39999794992/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1737370647', 70, 100, 39, '哈茶', '浙江 温州', 'http://tp4.sinaimg.cn/1737370647/180/39998071260/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1634133791', 70, 100, 39, 'Angel-Kwon', '海外 其他', 'http://tp4.sinaimg.cn/1634133791/180/39999812959/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1798483740', 70, 100, 39, '最不懂事的阿Sir', '福建 厦门', 'http://tp1.sinaimg.cn/1798483740/180/5632467996/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1821771954', 70, 100, 39, '谢小鬼niceday', '广东 汕尾', 'http://tp3.sinaimg.cn/1821771954/180/5635865804/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '1838171940', 70, 100, 39, 'super小笼包', '浙江 杭州', 'http://tp1.sinaimg.cn/1838171940/180/5606392955/0');
/* follow_tasks */



INSERT INTO `ader` (email, nick_name, task_amount) values('ad1@ad.ad', 'ad1', 1);
INSERT INTO `ader` (email, nick_name, task_amount) values('ad2@ad.ad', 'ad2', 1);
INSERT INTO `ader` (email, nick_name, task_amount) values('ad3@ad.ad', 'ad3', 1);
INSERT INTO `ader` (email, nick_name, task_amount) values('ad4@ad.ad', 'ad4', 1);

/* 测试用户都没有绑定微博， 所以下面这些 do_task 数据不合逻辑 故注释掉*/
/*
INSERT INTO `do_task` (task_id, user_id, status, time) values(111, 1, 'finish', now());
INSERT INTO `do_task` (task_id, user_id, status, time) values(111, 2, 'finish', now());
INSERT INTO `do_task` (task_id, user_id, status, time) values(111, 3, 'finish', now());
INSERT INTO `do_task` (task_id, user_id, status, time) values(111, 4, 'finish', now());
INSERT INTO `do_task` (task_id, user_id, status, time) values(112, 1, 'finish', now());
INSERT INTO `do_task` (task_id, user_id, status, time) values(112, 2, 'finish', now());
INSERT INTO `do_task` (task_id, user_id, status, time) values(112, 3, 'finish', now());
INSERT INTO `do_task` (task_id, user_id, status, time) values(112, 4, 'finish', now());
INSERT INTO `do_task` (task_id, user_id, status, time) values(113, 1, 'finish', now());
INSERT INTO `do_task` (task_id, user_id, status, time) values(113, 2, 'finish', now());
INSERT INTO `do_task` (task_id, user_id, status, time) values(113, 3, 'finish', now());
INSERT INTO `do_task` (task_id, user_id, status, time) values(113, 4, 'finish', now());
INSERT INTO `do_task` (task_id, user_id, status, time) values(114, 1, 'finish', now());
INSERT INTO `do_task` (task_id, user_id, status, time) values(114, 2, 'finish', now());
INSERT INTO `do_task` (task_id, user_id, status, time) values(114, 3, 'finish', now());
INSERT INTO `do_task` (task_id, user_id, status, time) values(114, 4, 'finish', now());
*/
update task set task_offer = task_offer*10;
