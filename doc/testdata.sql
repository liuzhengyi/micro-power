USE vdl;
INSERT INTO `user` (email, nick_name, pass, reg_time) VALUES ( 'test1@vdongli.com', 'test1', sha1('test'), now());
INSERT INTO `user` (email, nick_name, pass, reg_time) VALUES ( 'test2@vdongli.com', 'test2', sha1('test'), now());
INSERT INTO `user` (email, nick_name, pass, reg_time) VALUES ( 'test3@vdongli.com', 'test3', sha1('test'), now());
INSERT INTO `user` (email, nick_name, pass, reg_time) VALUES ( 'test4@vdongli.com', 'test4', sha1('test'), now());
INSERT INTO `user` (email, nick_name, pass, reg_time) VALUES ( 'test5@vdongli.com', 'test5', sha1('test'), now());
INSERT INTO `user` (email, nick_name, pass, reg_time) VALUES ( 'test6@vdongli.com', 'test6', sha1('test'), now());
INSERT INTO `user` (email, nick_name, pass, reg_time) VALUES ( 'test7@vdongli.com', 'test7', sha1('test'), now());

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount)values (NULL, 3, 1, 'review', '11142488880', 6, 300, 239);
INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount)values (NULL, 4, 1, 'create', '介绍一下吉祥馄饨童卫路店', 5, 150, 139);
INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount)values (NULL, 2, 2, 'review', '11414288880', 4, 300, 239);
INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount)values (NULL, 1, 2, 'create', '推广中山陵旅游', 5, 150, 139);
INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount)values (NULL, 3, 1, 'review', '11412488880', 8, 300, 239);
INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount)values (NULL, 4, 1, 'create', '介绍一下吉祥馄饨童卫路店', 5, 150, 139);
INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount)values (NULL, 2, 2, 'review', '11412488880', 6, 300, 239);
INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount)values (NULL, 1, 2, 'create', '推广中山陵旅游', 7, 150, 139);
INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount)values (NULL, 3, 1, 'review', '11142848880', 2, 300, 239);
INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount)values (NULL, 4, 1, 'create', '介绍一下吉祥馄饨童卫路店', 20, 150, 139);
INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount)values (NULL, 2, 2, 'review', '11414828880', 2, 300, 239);
INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount)values (NULL, 1, 2, 'create', '推广中山陵旅游', 15, 150, 139);
INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount)values (NULL, 3, 1, 'review', '11142484880', 5, 300, 239);
INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount)values (NULL, 4, 1, 'create', '介绍一下吉祥馄饨童卫路店', 13, 150, 139);
INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount)values (NULL, 2, 2, 'review', '11414287880', 8, 300, 239);
INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount)values (NULL, 1, 2, 'create', '推广中山陵旅游', 13, 150, 139);
/* forward tasks */
INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_icon_url, task_thumbnail_pic_url, task_bmiddle_pic_url, task_text) values(NULL, 1, 1, 'forward', '3481492850540173', 6, 123, 121, '献给天蝎座999封信', 'http://tp3.sinaimg.cn/2540670570/50/5617277288/0', 'http://ww1.sinaimg.cn/thumbnail/976f8e6ajw1dw4d1i41m9j.jpg', '', '天蝎座喜欢一个人待着，想自己的心事，做自己的事情，沉醉于自己的世界。天蝎座情绪波动较大，为一件事情可以心情突然就阴翳下来，有时候无由来的烦躁、忧郁。但天蝎座心地很善良，同情弱者，常常喜欢打抱不平，敢爱敢恨。讨厌虚伪做作、华而不实、虚情假意、玩弄心计，搬弄是非。 ');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_icon_url, task_thumbnail_pic_url, task_bmiddle_pic_url, task_text) values(NULL, 1, 1, 'forward', '3481492850540043', 6, 123, 121, '返利帮您网官网微博', 'http://tp2.sinaimg.cn/2278965953/50/5634052064/0', 'http://ww1.sinaimg.cn/thumbnail/87d642c1jw1dw4d1i4ctsj.jpg', '', '【7个部位的祛痘攻略】①鼻头-少吃冰冷的食物 ②鼻翼两侧-不要过度的纵欲或禁欲 ③印堂-避免烟、酒等刺激性食品 ④左侧脸颊-不要让身体处于过度的闷热环境中 ⑤右边脸颊-避免芋头、海鲜类易过敏食物 ⑥侧面下颌骨-可用刮痧方法帮助身体排毒 ⑦发髻边上-加强卸妆和清洁。');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_icon_url, task_thumbnail_pic_url, task_bmiddle_pic_url, task_text) values(NULL, 1, 1, 'forward', '3481492850540041', 6, 123, 121, '花蜜FLOWERMI', 'http://tp3.sinaimg.cn/2742672290/50/39998347149/0', 'http://ww4.sinaimg.cn/thumbnail/a379dba2jw1dw4d1ieaaoj.jpg', '', '客人喜歡飽滿的大花');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_icon_url, task_thumbnail_pic_url, task_bmiddle_pic_url, task_text) values(NULL, 1, 1, 'forward', '3481492850371297', 6, 123, 121, 'beyaki', 'http://tp2.sinaimg.cn/1820726677/50/39998165798/1', '', '', 'ダンガンロンパ２クリア。なんかすっきりしなさすぎ、ラスボスもダメダメ。pixvへ気分転換');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_icon_url, task_thumbnail_pic_url, task_bmiddle_pic_url, task_text) values(NULL, 1, 1, 'forward', '3481492850371147', 6, 123, 121, 'CeCi姐妹', 'http://tp1.sinaimg.cn/1749281944/50/5638574888/0', 'http://ww3.sinaimg.cn/thumbnail/6843ec98jw1dw4d1ho5okj.jpg', '', '【选对饮用水 给细胞洗个澡】这些水之所以受到欢迎是因为它们多数源自高海拔天然雪山冰川或地壳深处，矿物质含量丰富、远离人为污染，具备安全、健康的双重好水品质，对人体生理机能以及生命质量具有重要的提升作用。矿物质水是在纯净水的基础上添加了矿物质类食品添加剂而制成的，绝对不等同于矿泉水');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_icon_url, task_thumbnail_pic_url, task_bmiddle_pic_url, task_text) values(NULL, 1, 1, 'forward', '3481492849949946', 6, 123, 121, '人儿fischman', 'http://tp1.sinaimg.cn/2808591304/50/5632466361/0', 'http://ww3.sinaimg.cn/thumbnail/5373ca23jw1doaha7rjbjj.jpg', '', '小米手机MIUI V4 来了！ 数字尾巴');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_icon_url, task_thumbnail_pic_url, task_bmiddle_pic_url, task_text) values(NULL, 1, 1, 'forward', '3481492849949944', 6, 123, 121, 'evontam206', 'http://tp1.sinaimg.cn/2543375124/50/0/0', '', '', '感情就好比这水，一旦泼出去了就收不回来了……');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_icon_url, task_thumbnail_pic_url, task_bmiddle_pic_url, task_text) values(NULL, 1, 1, 'forward', '3481492846345682', 6, 123, 121, '武汉吃了冇', 'http://tp2.sinaimg.cn/2410424073/50/39997813279/0', 'http://ww2.sinaimg.cn/thumbnail/8fac2709jw1dw4d1ifmvij.jpg', '', '【江汉路“仨锅居”焖锅】是吃焖锅的，点的鲶鱼锅，肉质很嫩，综合锅点了鸡翅，牛蛙，基围虾，都满新鲜的，和同类黄记煌比，味道偏甜但也不会差呢，生意超好价钱也很公道。他家的炒年糕味道超赞。地址：江汉路万达，电影院那栋面对宝丽金。（icciBiteU 分享）');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_icon_url, task_thumbnail_pic_url, task_bmiddle_pic_url, task_text) values(NULL, 1, 1, 'forward', '3481492846345677', 6, 123, 121, '蛇栗教教主日曜日_Akira专业户', 'http://tp4.sinaimg.cn/2732696127/50/5632199024/1', '', '', '呜呜呜果然没人理我【悲桑地继续写作业');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_icon_url, task_thumbnail_pic_url, task_bmiddle_pic_url, task_text) values(NULL, 1, 1, 'forward', '3481492846345626', 6, 123, 121, '起个什么名字好呢-u-', 'http://tp4.sinaimg.cn/2663916063/50/5636102362/0', '', '', '3481492846345524');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_icon_url, task_thumbnail_pic_url, task_bmiddle_pic_url, task_text) values(NULL, 1, 1, 'forward', '3481492846345621', 6, 123, 121, '-朱珮珍', 'http://tp1.sinaimg.cn/2237530292/50/5640313464/0', 'http://ww4.sinaimg.cn/thumbnail/855e00b4jw1dw4d1iczzmj.jpg', '', '俄不知道你哪句真 俄到底应该信你什么[伤心]');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_icon_url, task_thumbnail_pic_url, task_bmiddle_pic_url, task_text) values(NULL, 1, 1, 'forward', '3481492846345553', 6, 123, 121, '上海青年志愿者', 'http://tp4.sinaimg.cn/1920301571/50/39997129251/1', 'http://ww3.sinaimg.cn/thumbnail/72757a03jw1dw4d1ibcjyj.jpg', '', '#暑期志愿行动#7天的书展8月21日就要闭幕了，那些驻守在书展各个展馆里、身穿橘黄服装的志愿者脸上，既有连续6天工作的疲惫，也有对书展的依依不舍。他们每天早上8时30分就来到展馆，为读者提供服务。“连续3个夜场，都说不出话了。”吃完金嗓子喉宝，志愿者又迅速回到自己岗位，坚持为读者排疑解惑。');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_icon_url, task_thumbnail_pic_url, task_bmiddle_pic_url, task_text) values(NULL, 1, 1, 'forward', '3481492846345519', 6, 123, 121, '搜鞋客', 'http://tp3.sinaimg.cn/2243624114/50/5615700398/0', 'http://ww1.sinaimg.cn/thumbnail/85bafcb2jw1dw4d1ia7u7j.jpg', '', '七夕情人节要到了。看喵星人教你怎么拆散情侣。。。');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_icon_url, task_thumbnail_pic_url, task_bmiddle_pic_url, task_text) values(NULL, 1, 1, 'forward', '3481492846345506', 6, 123, 121, '海南安骅别克', 'http://tp1.sinaimg.cn/1447735432/50/1301370893/1', 'http://ww2.sinaimg.cn/thumbnail/564ab088jw1dw4d1i2vt6j.jpg', '', '【低落时看看这些】1.失败是正常的；成功是侥幸的；付出是应该的；得到是暂时的；2.幸福是相对的；痛苦是经常的；生命是倒计时的；日子是顺着过的；3.人生是说不清的；命运是猜不透的；辉煌总会来的；霉头总会有的；4.命是必须信的；运是可以开的；人生是需要悟的；生命是需要爱的。');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_icon_url, task_thumbnail_pic_url, task_bmiddle_pic_url, task_text) values(NULL, 1, 1, 'forward', '3481492846345493', 6, 123, 121, '畅享欧美潮流', 'http://tp2.sinaimg.cn/2706017137/50/5629158993/0', 'http://ww1.sinaimg.cn/thumbnail/a14a8b71jw1dw4d1id6adj.jpg', '', '想知道最近韩国的最新潮流方向吗？~~http://t.cn/zW8gBeb');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_icon_url, task_thumbnail_pic_url, task_bmiddle_pic_url, task_text) values(NULL, 1, 1, 'forward', '3481492846345149', 6, 123, 121, '蓝色风铃叮叮当', 'http://tp3.sinaimg.cn/2174190342/50/5606137024/1', '', '', '有些事，明知是错的，也要去坚持，因为不甘心；有些人，明知是爱的，也要去放弃，因为没结局；有时候，明知没路了，却还在前行，因为习惯了。所以，凡事都有缘起缘灭，强求不得。学着想开，看淡，如果你不给自己烦恼，别人也永远不可能给你烦恼。');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_icon_url, task_thumbnail_pic_url, task_bmiddle_pic_url, task_text) values(NULL, 1, 1, 'forward', '3481492846345107', 6, 123, 121, 'LZ--鱼仔', 'http://tp4.sinaimg.cn/2896956455/50/5640105177/0', '', '', '[呵呵][嘻嘻][哈哈][爱你][晕][泪][馋嘴][抓狂][哼][可爱][怒][汗][害羞][睡觉][钱][偷笑][酷][衰][吃惊][闭嘴][鄙视][挖鼻屎][花心][鼓掌][悲伤][思考][生病][嘘][亲亲][怒骂][委屈][吐][太开心][懒得理你][可怜][打哈气][右哼哼][左哼哼][猪头][做鬼脸][熊猫][兔子]无聊没事做！');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_icon_url, task_thumbnail_pic_url, task_bmiddle_pic_url, task_text) values(NULL, 1, 1, 'forward', '3481492846345103', 6, 123, 121, 'Miss丝蜜达', 'http://tp2.sinaimg.cn/1921606021/50/5604150917/0', 'http://ww2.sinaimg.cn/thumbnail/72896185jw1dw4d1hsi5nj.jpg', '', '随便一个就上千万[闪电]，这玩意比车厉害@宅女懒妞丶');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_icon_url, task_thumbnail_pic_url, task_bmiddle_pic_url, task_text) values(NULL, 1, 1, 'forward', '3481492846345088', 6, 123, 121, '钟育标', 'http://tp1.sinaimg.cn/2584368592/50/5617905342/1', 'http://ww1.sinaimg.cn/thumbnail/9a0a55d0jw1dw4d1i5m9ej.jpg', '', '七夕、情人劫');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_icon_url, task_thumbnail_pic_url, task_bmiddle_pic_url, task_text) values(NULL, 1, 1, 'forward', '3481492846344977', 6, 123, 121, '爱鹿晗-麋鹿', 'http://tp4.sinaimg.cn/2077974963/50/39999122938/0', '', '', ' 我参与了【SM的俩头鹿，你更爱那一头？】，投给了 \"EXO-LU HAN\" 这个选项。 http://t.cn/zW8hi0h');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_icon_url, task_thumbnail_pic_url, task_bmiddle_pic_url, task_text) values(NULL, 1, 1, 'forward', '3481492846344976', 6, 123, 121, '天空-云彩和生命', 'http://tp4.sinaimg.cn/1063598771/50/5609306237/0', '', '', '人，存活世间，可以很平凡，生活可以很平淡，但不能没有精神的寄托与滋养。——博文片段来自逍遥子：人最好要有一点精神寄托 http://t.cn/aWzMJb');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_icon_url, task_thumbnail_pic_url, task_bmiddle_pic_url, task_text) values(NULL, 1, 1, 'forward', '3481492846344939', 6, 123, 121, '_天堂之门_', 'http://tp2.sinaimg.cn/2517340177/50/5627392961/1', '', '', '3481492846176026');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_icon_url, task_thumbnail_pic_url, task_bmiddle_pic_url, task_text) values(NULL, 1, 1, 'forward', '3481492846344817', 6, 123, 121, 'ABC书库', 'http://tp1.sinaimg.cn/2869875964/50/5638323189/0', 'http://ww3.sinaimg.cn/thumbnail/ab0ed4fcjw1dw4d1hh1aoj.jpg', '', '深情的王子每天都塔下面喊＂莴苣莴苣把你的头发垂下来＂，然后莴苣姑娘就放下长长的头发让王子爬上来幽会。但是有一天王子摔死了。因为巫婆送了她一瓶护发素。');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_icon_url, task_thumbnail_pic_url, task_bmiddle_pic_url, task_text) values(NULL, 1, 1, 'forward', '3481492846344813', 6, 123, 121, '__陳陳陳陳拉ling', 'http://tp2.sinaimg.cn/2118251793/50/39999789874/0', '', '', '原来哥哥都有玩微博噶[震惊][震惊]好惊有一日比距搜到我噶微博！甘就.....无自由失自由[抠鼻屎][抠鼻屎]');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_icon_url, task_thumbnail_pic_url, task_bmiddle_pic_url, task_text) values(NULL, 1, 1, 'forward', '3481492846344650', 6, 123, 121, '孔三狗110', 'http://tp2.sinaimg.cn/1416290517/50/5598189133/1', '', '', '帝王之死031{有声下吧www.Ysx8.com} http://t.cn/zW8eoYN (来 @土豆网 关注我 http://t.cn/SPTqTD )');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_icon_url, task_thumbnail_pic_url, task_bmiddle_pic_url, task_text) values(NULL, 1, 1, 'forward', '3481492846176827', 6, 123, 121, '铖欹', 'http://tp3.sinaimg.cn/1303694382/50/5633402322/1', 'http://ww4.sinaimg.cn/thumbnail/4db4cc2ejw1dw4d1i1ifgj.jpg', '', '那我能上诉么？！');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_icon_url, task_thumbnail_pic_url, task_bmiddle_pic_url, task_text) values(NULL, 1, 1, 'forward', '3481492846176706', 6, 123, 121, '单单就是双', 'http://tp1.sinaimg.cn/2853396732/50/5635776223/1', '', '', '好困啊！ 我在:http://t.cn/zW8eoHl');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_icon_url, task_thumbnail_pic_url, task_bmiddle_pic_url, task_text) values(NULL, 1, 1, 'forward', '3481492846176701', 6, 123, 121, '时尚人生微博', 'http://tp2.sinaimg.cn/2629097217/50/5628239409/0', 'http://ww2.sinaimg.cn/thumbnail/9cb4d701jw1dw4d1ihhe7j.jpg', '', '【食疗养生：健康吃海鲜3不宜与3禁忌】三不宜：1、吃海鲜时不宜喝啤酒，海鲜啤酒同吃惹痛风；2、海鲜忌与有鞣酸的水果同食，同吃会腹痛；3、吃海鱼避免服维生素C，同食会中毒。三禁忌：1、关节炎患者忌多吃海鲜；2、患有哮喘等过敏性疾病的患者忌食海鲜；3、吃海鲜后忌喝茶。@时尚人生微博');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_icon_url, task_thumbnail_pic_url, task_bmiddle_pic_url, task_text) values(NULL, 1, 1, 'forward', '3481492846176439', 6, 123, 121, 'Pop袁妞妞', 'http://tp3.sinaimg.cn/2923880082/50/39999805607/0', '', '', '8月1日讯，日本女子天团AKB48的中国姐妹团@SNH48 正在招募中，昨日有网友爆料称，国内某一线老牌明星之女也已经报名，将正式进军娱乐圈。此名人还委托上海熟人牵线搭桥希望促成女儿入团。详情 http://t.cn/zWHtvQw @安慰有时捉襟见肘 @屁颠屁颠的小莲花 @小肉丸子G嘉 ');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_icon_url, task_thumbnail_pic_url, task_bmiddle_pic_url, task_text) values(NULL, 1, 1, 'forward', '3481492846176355', 6, 123, 121, 'old5mok', 'http://tp1.sinaimg.cn/1715033104/50/5620310891/0', '', '', '同一个姨甥在东山某coffee shop等女儿，另两个姨甥致电说正在我家楼下同一品牌coffee shop等我并表示木有带我家锁匙!唉，周身姨甥债，还极都还吾晒!');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_icon_url, task_thumbnail_pic_url, task_bmiddle_pic_url, task_text) values(NULL, 1, 1, 'forward', '3481492846176352', 6, 123, 121, 'Jia-------Jia', 'http://tp2.sinaimg.cn/1790303385/50/39998713299/0', '', '', '3481492846345077');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_icon_url, task_thumbnail_pic_url, task_bmiddle_pic_url, task_text) values(NULL, 1, 1, 'forward', '3481492846176351', 6, 123, 121, '梁快不凉快', 'http://tp3.sinaimg.cn/1792707202/50/39998576266/1', '', '', '聪哥@站台1892 ，这位@嗨。草帽小姐 你晓得不？');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_icon_url, task_thumbnail_pic_url, task_bmiddle_pic_url, task_text) values(NULL, 1, 1, 'forward', '3481492846176319', 6, 123, 121, 'Mc豪', 'http://tp2.sinaimg.cn/1792604361/50/5630076860/1', 'http://ww4.sinaimg.cn/thumbnail/6ad8f8c9jw1dw4d1hvp4dj.jpg', '', '一只便秘的瘸子乌龟和一只健康强壮的速龙。。');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_icon_url, task_thumbnail_pic_url, task_bmiddle_pic_url, task_text) values(NULL, 1, 1, 'forward', '3481492846176231', 6, 123, 121, 'I_am_tanek', 'http://tp4.sinaimg.cn/2705538583/50/5629124918/1', 'http://ww4.sinaimg.cn/thumbnail/a1433e17jw1dw4d1i08ezj.jpg', '', '韩版短裤年韩版热裤 [闪电] 102元 http://t.cn/zW8eoTn爱返吧-精品推荐[音乐盒]【更多精品推荐尽在“爱返吧”http://t.cn/zO9JMY6】');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_icon_url, task_thumbnail_pic_url, task_bmiddle_pic_url, task_text) values(NULL, 1, 1, 'forward', '3481492846176230', 6, 123, 121, '物泰科技', 'http://tp1.sinaimg.cn/1807456080/50/5606296267/1', 'http://ww1.sinaimg.cn/thumbnail/6bbb9750jw1dw4d1hsam8j.jpg', '', '彭新叶：深圳加快培育和发展#物联网#产业——近日，在2012深圳国际物联网产业学术发展论坛上，深圳市经贸信息化委彭新叶副主任表示面对全球竞相发展物联网产业的历史机遇，深圳必须紧紧依靠自身的产业优势和创新能力，抓住核心、突破重点，加快培育和发展物联网产业。');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_icon_url, task_thumbnail_pic_url, task_bmiddle_pic_url, task_text) values(NULL, 1, 1, 'forward', '3481492846176142', 6, 123, 121, 'Sa大佩', 'http://tp4.sinaimg.cn/1784240055/50/5640159618/0', 'http://ww4.sinaimg.cn/thumbnail/6a5957b7jw1dw4d1eezzlj.jpg', '', '在陌生人那里受到的委屈，却在爱人的身上发泄出来。这是不对的，要改。');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_icon_url, task_thumbnail_pic_url, task_bmiddle_pic_url, task_text) values(NULL, 1, 1, 'forward', '3481492846176082', 6, 123, 121, '贤Yan-----', 'http://tp2.sinaimg.cn/2268277001/50/39999657267/0', 'http://ww1.sinaimg.cn/thumbnail/87332909jw1dw4d1houypj.jpg', '', '这是一个蛋糕~#美图秀秀Android版#');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_icon_url, task_thumbnail_pic_url, task_bmiddle_pic_url, task_text) values(NULL, 1, 1, 'forward', '3481492846176076', 6, 123, 121, '大头儿子love小头爸爸', 'http://tp3.sinaimg.cn/1873267914/50/5640499669/0', '', '', ' @流浪的小熊仔快快看过来啊[偷笑] //@love暮色森林: 同同版《听海》，第一句出来我就不淡定了啊[抓狂] [抓狂] [抓狂] 不先听一下绝对是一大遗憾啊亲们！http://t.cn/zW8OYvi - 原文地址：http://t.cn/zW8Ehcj');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_icon_url, task_thumbnail_pic_url, task_bmiddle_pic_url, task_text) values(NULL, 1, 1, 'forward', '3481492846176072', 6, 123, 121, '我会在你', 'http://tp3.sinaimg.cn/1810591762/50/39998439170/1', 'http://ww4.sinaimg.cn/thumbnail/6beb7012jw1dw4d1hiwtkj.jpg', '', '“你儿子…很像你。”“嗯”“几岁？”“六岁，已经小一了。”“小朋友，你叫什么啊？”“叔叔好，我叫安一心”“嗯，真乖~给你糖吃。你儿子很乖…”沉默…“咱们…下次再见，请你吃饭”“好，再见。”“爸爸，为什么在这个叔叔面前，我要叫安一心呢？我不是叫张一心吗？”抱住儿子，潸然泪下。');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_icon_url, task_thumbnail_pic_url, task_bmiddle_pic_url, task_text) values(NULL, 1, 1, 'forward', '3481492846176026', 6, 123, 121, '_天堂之门_', 'http://tp2.sinaimg.cn/2517340177/50/5627392961/1', 'http://ww4.sinaimg.cn/thumbnail/960b9011jw1dw4d1i05hdj.jpg', '', '全新模式三国塔防游戏，抛开魏蜀吴，自创新势力，过关斩将收名将，紧张刺激有木有？ 好游戏，齐分享全新模式三国塔防游戏，抛开魏蜀吴，自创新势力，过关斩将收名将，紧张刺激有木有？http://t.cn/zW8XdTw');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_icon_url, task_thumbnail_pic_url, task_bmiddle_pic_url, task_text) values(NULL, 1, 1, 'forward', '3481492846175995', 6, 123, 121, '细路女之丽芳', 'http://tp2.sinaimg.cn/1904477025/50/5608098300/0', 'http://ww1.sinaimg.cn/thumbnail/71840361jw1dw4d1hz24uj.jpg', '', '【你未来老公是什么样的】http://t.cn/zWTEfgv经常有人说“一朵鲜花又插到牛粪上了”，可是在现在这个化肥物资极大丰富的社会，牛粪就显得极为珍贵了，被插到牛粪上的鲜花，更是有着中彩票一样的运气！你未来的牛粪是什么样的呢？　');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_icon_url, task_thumbnail_pic_url, task_bmiddle_pic_url, task_text) values(NULL, 1, 1, 'forward', '3481492846175960', 6, 123, 121, '威维', 'http://tp3.sinaimg.cn/1871744950/50/5603945301/1', 'http://ww3.sinaimg.cn/thumbnail/6f908fb6jw1dw4d1hwj2pj.jpg', '', ' @Contador_猪帮 你的背包，让我走的好缓慢。 我在#嘉湖銀座# http://t.cn/zOgsj31');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_icon_url, task_thumbnail_pic_url, task_bmiddle_pic_url, task_text) values(NULL, 1, 1, 'forward', '3481492846175933', 6, 123, 121, '芷欣宝贝1', 'http://tp2.sinaimg.cn/2657032417/50/5626413456/0', '', '', '3481492841981533');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_icon_url, task_thumbnail_pic_url, task_bmiddle_pic_url, task_text) values(NULL, 1, 1, 'forward', '3481492846175930', 6, 123, 121, '余周洁yzj-_-', 'http://tp2.sinaimg.cn/2416315437/50/5637734853/0', 'http://ww3.sinaimg.cn/thumbnail/90060c2djw1dw4d1hx5gyj.jpg', '', '看我爸这傻B划船笑死我了[哈哈][哈哈]');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_icon_url, task_thumbnail_pic_url, task_bmiddle_pic_url, task_text) values(NULL, 1, 1, 'forward', '3481492845848574', 6, 123, 121, '郜禄', 'http://tp4.sinaimg.cn/2914805271/50/5639493288/0', '', '', 'Real freedom does not mean that you can do anything you want, rather you can reject what you do not want to do.~~~真正的自由不是想做什么就做什么，而是不想做什么就可以不做什么。');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_icon_url, task_thumbnail_pic_url, task_bmiddle_pic_url, task_text) values(NULL, 1, 1, 'forward', '3481492845848539', 6, 123, 121, '韩颜至', 'http://tp2.sinaimg.cn/1461275013/50/5604482815/1', '', '', '由于缺乏制度约束与监督，中国依靠政府投资拉动的增长方式只能造成两种局面：1.投资越来越呈现毒品上瘾状，一旦经济下滑影响指标数据，第一反应就是把超规增发、规模举债进行硬件拉动当成救命稻草。2.投资越来越低效，收益越来越低下，大量现金沉淀在固定资产上，造成利用率不足，后续维护资金巨大。');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_icon_url, task_thumbnail_pic_url, task_bmiddle_pic_url, task_text) values(NULL, 1, 1, 'forward', '3481492845848538', 6, 123, 121, 'Bluesky宇', 'http://tp2.sinaimg.cn/1639166957/50/39997750568/1', '', '', '我在手机里新建了一个相册，然后把相机胶卷里的相片都移到新建的相册了，为什么照片图库里也有我刚刚移到新建相册的相片？而且从电脑上删照片图库里的相片的同时新建相册里的相片也跟着被删除了。求高人帮忙啊[泪]');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_icon_url, task_thumbnail_pic_url, task_bmiddle_pic_url, task_text) values(NULL, 1, 1, 'forward', '3481492845848445', 6, 123, 121, '出售苹果', 'http://tp1.sinaimg.cn/1696619340/50/5637594195/0', '', '', '知“因果”即知进退。知佛法，即得开心果。');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_icon_url, task_thumbnail_pic_url, task_bmiddle_pic_url, task_text) values(NULL, 1, 1, 'forward', '3481492845848411', 6, 123, 121, '努力工作的尤小艺', 'http://tp4.sinaimg.cn/2245711787/50/5638543945/0', '', '', '我妈居然给你撑腰，都把你当自家人咯，还说早点回家不打扰我们。[哈哈][嘻嘻]，');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_icon_url, task_thumbnail_pic_url, task_bmiddle_pic_url, task_text) values(NULL, 1, 1, 'forward', '3481492845755553', 6, 123, 121, '芃芃小乖乖', 'http://tp4.sinaimg.cn/1984488603/50/5625019444/0', '', '', ' //@YY-Catherine6688: 原来窗台还可以这样设计，好好保存起来以作将来用~~ - 查看原文：http://t.cn/zW8eoHU');

/* follow tasks */
INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1822003135', 6, 100, 39, '-度薇年-', '辽宁 沈阳', 'http://tp4.sinaimg.cn/1822003135/180/5603891136/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1288645120', 6, 100, 39, '阿梗木叶笔记', '其他', 'http://tp1.sinaimg.cn/1288645120/180/5607787449/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1530179120', 6, 100, 39, '周小兜Illustration', '湖南 长沙', 'http://tp1.sinaimg.cn/1530179120/180/5634109485/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1678506971', 6, 100, 39, '阿布的熊熊猫-杲杲', '北京 朝阳区', 'http://tp4.sinaimg.cn/1678506971/180/5639291846/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1273380037', 6, 100, 39, '左岩', '浙江', 'http://tp2.sinaimg.cn/1273380037/180/5639053033/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1630907862', 6, 100, 39, 'EXCEPTION例外', '广东 广州', 'http://tp3.sinaimg.cn/1630907862/180/39998939441/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1258824907', 6, 100, 39, '高露', '北京', 'http://tp4.sinaimg.cn/1258824907/180/1279876374/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '2733854517', 6, 100, 39, '曹强316', '山东 济宁', 'http://tp2.sinaimg.cn/2733854517/180/22819682951/1');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1820381745', 6, 100, 39, '小躺_', '北京', 'http://tp2.sinaimg.cn/1820381745/180/5637366004/1');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1242153997', 6, 100, 39, '莫卡Moka', '广东 广州', 'http://tp2.sinaimg.cn/1242153997/180/1295418017/1');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1217261134', 6, 100, 39, '七堇年', '其他', 'http://tp3.sinaimg.cn/1217261134/180/5610413608/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1440021635', 6, 100, 39, '水木丁', '北京 朝阳区', 'http://tp4.sinaimg.cn/1440021635/180/1299206752/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1729724227', 6, 100, 39, '老阿姨在看着你', '北京', 'http://tp4.sinaimg.cn/1729724227/180/5634307084/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1716577367', 6, 100, 39, '就是张辛苑', '北京', 'http://tp4.sinaimg.cn/1716577367/180/5636870108/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1791369761', 6, 100, 39, '猫腻酱', '广东 广州', 'http://tp2.sinaimg.cn/1791369761/180/39997564124/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1263172355', 6, 100, 39, '流浪者余师', '青海 西宁', 'http://tp4.sinaimg.cn/1263172355/180/5633315646/1');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1657202307', 6, 100, 39, '巴迪KEN', '广东 佛山', 'http://tp4.sinaimg.cn/1657202307/180/5624983690/1');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1770500327', 6, 100, 39, '鹤小白', '广东 广州', 'http://tp4.sinaimg.cn/1770500327/180/5621687256/1');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1479487041', 6, 100, 39, '芥末塔晓柒', '湖北 宜昌', 'http://tp2.sinaimg.cn/1479487041/180/39999746997/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1648309095', 6, 100, 39, '你好Mika酱', '北京', 'http://tp4.sinaimg.cn/1648309095/180/5622084720/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1528274033', 6, 100, 39, '燕子PHOTO', '北京 朝阳区', 'http://tp2.sinaimg.cn/1528274033/180/5639626220/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '2805807951', 6, 100, 39, '我在这里-天气晴', '广东 广州', 'http://tp4.sinaimg.cn/2805807951/180/22819697466/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1747567030', 6, 100, 39, 'RainbowBeanbean', '浙江 温州', 'http://tp3.sinaimg.cn/1747567030/180/39997241053/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1988640044', 6, 100, 39, 'jollyyao', '海外 其他', 'http://tp1.sinaimg.cn/1988640044/180/39999907327/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1730268650', 6, 100, 39, 'Zakka_Garden杂货铺', '广东 深圳', 'http://tp3.sinaimg.cn/1730268650/180/5630302784/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1761341590', 6, 100, 39, '小金寶coco', '云南 大理', 'http://tp3.sinaimg.cn/1761341590/180/5624101560/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1747145942', 6, 100, 39, '瓶子Yuri', '广东 广州', 'http://tp3.sinaimg.cn/1747145942/180/5625427629/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1809954864', 6, 100, 39, '囧囧菜菜菜菜菜菜', '广东 广州', 'http://tp1.sinaimg.cn/1809954864/180/5637765751/1');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '2185132680', 6, 100, 39, '丸子头的夏天', '福建 厦门', 'http://tp1.sinaimg.cn/2185132680/180/39999895649/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1676681833', 6, 100, 39, '叶子LeafGreener', '上海 静安区', 'http://tp2.sinaimg.cn/1676681833/180/5637323489/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1752494900', 6, 100, 39, 'Xiaoxi-Nancy-Zhang', '海外 德国', 'http://tp1.sinaimg.cn/1752494900/180/1286072916/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1074896921', 6, 100, 39, 'Kirara屋檐下的知更鸟', '上海', 'http://tp2.sinaimg.cn/1074896921/180/5632218581/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1738535843', 6, 100, 39, '小雨爱生活', '北京 朝阳区', 'http://tp4.sinaimg.cn/1738535843/180/5637887428/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '2834923972', 6, 100, 39, 'ShibaSakura', '其他', 'http://tp1.sinaimg.cn/2834923972/180/5635313022/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1717802810', 6, 100, 39, 'littlething恋物志', '广东 深圳', 'http://tp3.sinaimg.cn/1717802810/180/5638348365/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1729714591', 6, 100, 39, '鄭裕玲', '香港', 'http://tp4.sinaimg.cn/1729714591/180/1279892525/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '2097024354', 6, 100, 39, '南京发布', '江苏 南京', 'http://tp3.sinaimg.cn/2097024354/180/5598841760/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1628281547', 6, 100, 39, 'V米吸管', '湖南 邵阳', 'http://tp4.sinaimg.cn/1628281547/180/39999974210/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '2087048623', 6, 100, 39, '小小线团团', '北京 朝阳区', 'http://tp4.sinaimg.cn/2087048623/180/5633967036/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1891624647', 6, 100, 39, '生活糖果', '河南 郑州', 'http://tp4.sinaimg.cn/1891624647/180/5630198213/1');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '2272169311', 6, 100, 39, '喵酱崽的小手工', '广西 南宁', 'http://tp4.sinaimg.cn/2272169311/180/5621758298/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1644587232', 6, 100, 39, '早安-晚安-心语', '海外', 'http://tp1.sinaimg.cn/1644587232/180/5635002595/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '2485231962', 6, 100, 39, '迷糊娃爱生活', '北京 朝阳区', 'http://tp3.sinaimg.cn/2485231962/180/5614869701/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1624315077', 6, 100, 39, 'Forest林子', '天津', 'http://tp2.sinaimg.cn/1624315077/180/22816347531/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1968203605', 6, 100, 39, '森女在路上', '北京 朝阳区', 'http://tp2.sinaimg.cn/1968203605/180/5630483022/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1697582564', 6, 100, 39, '月亮散步姐姐', '四川', 'http://tp1.sinaimg.cn/1697582564/180/1287038793/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '2111251275', 6, 100, 39, 'byebyebye--', '其他', 'http://tp4.sinaimg.cn/2111251275/180/5634696757/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '2482719877', 6, 100, 39, '悬在头上的十二把刀', '江苏 南京', 'http://tp2.sinaimg.cn/2482719877/180/5621167890/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1659253912', 6, 100, 39, '么蔻', '广东 汕头', 'http://tp1.sinaimg.cn/1659253912/180/1296665925/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1626410753', 6, 100, 39, 'MOK莫輕浮', '其他', 'http://tp2.sinaimg.cn/1626410753/180/5628917484/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1920604875', 6, 100, 39, '3e-house', '福建 泉州', 'http://tp4.sinaimg.cn/1920604875/180/5608254626/1');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1641179817', 6, 100, 39, '马良', '上海 松江区', 'http://tp2.sinaimg.cn/1641179817/180/5630318118/1');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1647706672', 6, 100, 39, '视觉风', '重庆 南岸区', 'http://tp1.sinaimg.cn/1647706672/180/5634690253/1');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1957820600', 6, 100, 39, '纯正街拍', '广东', 'http://tp1.sinaimg.cn/1957820600/180/5604733154/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1215117745', 6, 100, 39, '王小陌', '浙江 杭州', 'http://tp2.sinaimg.cn/1215117745/180/5602979150/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1886320062', 6, 100, 39, '懷秋喜欢就好', '广东', 'http://tp3.sinaimg.cn/1886320062/180/1292399122/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '2407831804', 6, 100, 39, '红花志', '四川 成都', 'http://tp1.sinaimg.cn/2407831804/180/5615541997/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1561655320', 6, 100, 39, 'Miss葵', '北京 朝阳区', 'http://tp1.sinaimg.cn/1561655320/180/5632302318/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1739781967', 6, 100, 39, '崔承俊', '山东 济南', 'http://tp4.sinaimg.cn/1739781967/180/5626155823/1');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1400722343', 6, 100, 39, '陈柏言', '北京 东城区', 'http://tp4.sinaimg.cn/1400722343/180/5624285537/1');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1506581577', 6, 100, 39, '封原', '北京 朝阳区', 'http://tp2.sinaimg.cn/1506581577/180/5634533598/1');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1667827095', 6, 100, 39, '豆腐君', '广东 广州', 'http://tp4.sinaimg.cn/1667827095/180/5634115304/1');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1460956327', 6, 100, 39, '李遥波ABBA', '北京 朝阳区', 'http://tp4.sinaimg.cn/1460956327/180/1287421638/1');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1972922122', 6, 100, 39, '番茄派-FQPAI', '江苏 苏州', 'http://tp3.sinaimg.cn/1972922122/180/5621400960/1');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '2429913044', 6, 100, 39, '七月手作', '海外', 'http://tp1.sinaimg.cn/2429913044/180/5626537118/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1730290517', 6, 100, 39, 'EdaChow', '香港 其他', 'http://tp2.sinaimg.cn/1730290517/180/5624959952/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1955673981', 6, 100, 39, 'PoMe微博杂志', '浙江 杭州', 'http://tp2.sinaimg.cn/1955673981/180/5612847288/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '2342440300', 6, 100, 39, '美乐棵MiracleGro', '广东 广州', 'http://tp1.sinaimg.cn/2342440300/180/5620409199/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '2040790475', 6, 100, 39, '张优嘉', '陕西 西安', 'http://tp4.sinaimg.cn/2040790475/180/5634091892/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '2120391283', 6, 100, 39, '你好DIY__李青', '北京 海淀区', 'http://tp4.sinaimg.cn/2120391283/180/5617079709/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1863976184', 6, 100, 39, '陈小豪Origin', '北京 朝阳区', 'http://tp1.sinaimg.cn/1863976184/180/5632222203/1');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '2021511457', 6, 100, 39, '爱燕子IYANZI摄影机构', '北京 朝阳区', 'http://tp2.sinaimg.cn/2021511457/180/5609991931/1');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '2032813471', 6, 100, 39, 'miss米娜', '上海', 'http://tp4.sinaimg.cn/2032813471/180/5597198269/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1704348731', 6, 100, 39, '轩宇同学', '北京 海淀区', 'http://tp4.sinaimg.cn/1704348731/180/5629891142/1');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1748536084', 6, 100, 39, '梁小璐童鞋', '上海 徐汇区', 'http://tp1.sinaimg.cn/1748536084/180/40000175169/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '2219125800', 6, 100, 39, 'earthmusic1999', '上海', 'http://tp1.sinaimg.cn/2219125800/180/5618220142/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1296720452', 6, 100, 39, '熊顿XD', '北京 东城区', 'http://tp1.sinaimg.cn/1296720452/180/1285484130/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1255623020', 6, 100, 39, '嗨-漫漫', '广东 深圳', 'http://tp1.sinaimg.cn/1255623020/180/5632990793/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '2045417355', 6, 100, 39, 'cherry晓晓-Akatsuki', '上海', 'http://tp4.sinaimg.cn/2045417355/180/5610001130/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1792286151', 6, 100, 39, 'vivi杂志', '海外 日本', 'http://tp4.sinaimg.cn/1792286151/180/39997400284/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1914464231', 6, 100, 39, '你放学等着', '江苏 苏州', 'http://tp4.sinaimg.cn/1914464231/180/39996041916/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1718646484', 6, 100, 39, '-小柚', '上海', 'http://tp1.sinaimg.cn/1718646484/180/5626253063/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1859419637', 6, 100, 39, '奶茶-莎莎', '北京 昌平区', 'http://tp2.sinaimg.cn/1859419637/180/5617450304/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1903550487', 6, 100, 39, '熊猫-眼睛', '云南 红河', 'http://tp4.sinaimg.cn/1903550487/180/39997146223/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1636038153', 6, 100, 39, '浩淇不二家', '浙江 杭州', 'http://tp2.sinaimg.cn/1636038153/180/5621664900/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1497337850', 6, 100, 39, '咆哮女郎柏邦妮', '北京 海淀区', 'http://tp3.sinaimg.cn/1497337850/180/5638246862/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1863809384', 6, 100, 39, '晓冬知春-视觉生活志', '上海', 'http://tp1.sinaimg.cn/1863809384/180/5607396631/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1233617290', 6, 100, 39, '呼吸不能说-breath', '北京 朝阳区', 'http://tp3.sinaimg.cn/1233617290/180/5640491137/1');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1829618667', 6, 100, 39, '象个老玮', '江苏 南京', 'http://tp4.sinaimg.cn/1829618667/180/1301235882/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1256201362', 6, 100, 39, '木偶走天涯', '广东 广州', 'http://tp3.sinaimg.cn/1256201362/180/5632797402/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1788956681', 6, 100, 39, '豆荚农庄', '北京 朝阳区', 'http://tp2.sinaimg.cn/1788956681/180/1288351333/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1795308494', 6, 100, 39, '荣佳Ashley', '江苏 无锡', 'http://tp3.sinaimg.cn/1795308494/180/39999734891/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1853850492', 6, 100, 39, '小希与阿树', '重庆 渝中区', 'http://tp1.sinaimg.cn/1853850492/180/39996896079/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1863761573', 6, 100, 39, 'Yuki莜洁', '上海', 'http://tp2.sinaimg.cn/1863761573/180/39999709733/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1577020023', 6, 100, 39, '陸根薩視民謠如生命-', '上海', 'http://tp4.sinaimg.cn/1577020023/180/5634778095/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1853949425', 6, 100, 39, '投票态小度', '北京 海淀区', 'http://tp2.sinaimg.cn/1853949425/180/5621146280/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '2344394875', 6, 100, 39, '廢材斗', '其他', 'http://tp4.sinaimg.cn/2344394875/180/5630213765/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1672350677', 6, 100, 39, 'bEnsHoP的bEn', '广东 广州', 'http://tp2.sinaimg.cn/1672350677/180/1279885852/1');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1211579422', 6, 100, 39, '嵇启来', '上海 卢湾区', 'http://tp3.sinaimg.cn/1211579422/180/1286516493/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1766053417', 6, 100, 39, 'Hera_苗苗', '北京 朝阳区', 'http://tp2.sinaimg.cn/1766053417/180/5636015488/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1650660520', 6, 100, 39, '王胜江', '北京 朝阳区', 'http://tp1.sinaimg.cn/1650660520/180/1293694739/1');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1734394197', 6, 100, 39, '舞剑舞剑', '海外 法国', 'http://tp2.sinaimg.cn/1734394197/180/5637911237/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1957386154', 6, 100, 39, '森小林-', '海外 日本', 'http://tp3.sinaimg.cn/1957386154/180/5615714079/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1766692572', 6, 100, 39, '时下', '福建 泉州', 'http://tp1.sinaimg.cn/1766692572/180/5626421358/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1420174783', 6, 100, 39, '文怡', '北京', 'http://tp4.sinaimg.cn/1420174783/180/5640385466/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1580865067', 6, 100, 39, '逃跑的小孩', '北京', 'http://tp4.sinaimg.cn/1580865067/180/5635998666/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1750540435', 6, 100, 39, '姑奶奶个熊脸巴子', '重庆 南岸区', 'http://tp4.sinaimg.cn/1750540435/180/39998604787/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1290567912', 6, 100, 39, '恩Nasin', '四川 成都', 'http://tp1.sinaimg.cn/1290567912/180/39996759389/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1260165344', 6, 100, 39, 'BTV悦悦', '北京 朝阳区', 'http://tp1.sinaimg.cn/1260165344/180/5639873873/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1635058702', 6, 100, 39, '安安-Fion', '广东 广州', 'http://tp3.sinaimg.cn/1635058702/180/5624979965/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '2153906001', 6, 100, 39, '云端时光', '其他', 'http://tp2.sinaimg.cn/2153906001/180/5601709338/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '2099450561', 6, 100, 39, '朵小萌童鞋', '湖北 武汉', 'http://tp2.sinaimg.cn/2099450561/180/5626336880/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1890841421', 6, 100, 39, '宝小珞在浪漫九龙塘', '云南 丽江', 'http://tp2.sinaimg.cn/1890841421/180/39999451540/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1808481290', 6, 100, 39, '姑娘呀你大胆滴往前走', '河南', 'http://tp3.sinaimg.cn/1808481290/180/5638923947/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '2010101707', 6, 100, 39, '鹿途乙女', '其他', 'http://tp4.sinaimg.cn/2010101707/180/39998778645/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1760893084', 6, 100, 39, 'kiki_企鹅', '浙江 宁波', 'http://tp1.sinaimg.cn/1760893084/180/5625570024/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '2087824761', 6, 100, 39, '兔子小姐在森林里游玩', '广东 广州', 'http://tp2.sinaimg.cn/2087824761/180/5621868998/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1277336725', 6, 100, 39, '_王小旭', '北京 海淀区', 'http://tp2.sinaimg.cn/1277336725/180/5634952351/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1821898647', 6, 100, 39, '微群小助手', '北京 海淀区', 'http://tp4.sinaimg.cn/1821898647/180/5638063031/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1667575473', 6, 100, 39, '谢梦Tse', '北京 朝阳区', 'http://tp2.sinaimg.cn/1667575473/180/5637669458/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1316222597', 6, 100, 39, '林水妖', '北京', 'http://tp2.sinaimg.cn/1316222597/180/5621266413/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1653578170', 6, 100, 39, '林叶亭', '台湾 台北市', 'http://tp3.sinaimg.cn/1653578170/180/5609426877/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1442378302', 6, 100, 39, '米露', '北京 朝阳区', 'http://tp3.sinaimg.cn/1442378302/180/5640099785/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1287699512', 6, 100, 39, 'L-梁渊清', '北京', 'http://tp1.sinaimg.cn/1287699512/180/5633270951/1');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1200537723', 6, 100, 39, '马一鸣', '广东', 'http://tp4.sinaimg.cn/1200537723/180/5638029789/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1720445491', 6, 100, 39, '阿孜长不大', '上海 普陀区', 'http://tp4.sinaimg.cn/1720445491/180/5632278031/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1485056922', 6, 100, 39, '战菁一', '北京 朝阳区', 'http://tp3.sinaimg.cn/1485056922/180/5639313497/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1279977242', 6, 100, 39, '左八', '浙江', 'http://tp3.sinaimg.cn/1279977242/180/5627391568/1');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1663654774', 6, 100, 39, '绿茶志渊-RainWooTheGreat', '北京', 'http://tp3.sinaimg.cn/1663654774/180/40000014974/1');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1243835340', 6, 100, 39, '醒小C陈漪璇', '海外', 'http://tp1.sinaimg.cn/1243835340/180/5631011412/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1401033762', 6, 100, 39, '顾抒', '江苏 南京', 'http://tp3.sinaimg.cn/1401033762/180/39998494774/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1771493053', 6, 100, 39, '芬理希梦网购商城', '北京 朝阳区', 'http://tp2.sinaimg.cn/1771493053/180/5629089268/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1729370543', 6, 100, 39, '郭碧婷', '台湾 台北市', 'http://tp4.sinaimg.cn/1729370543/180/5634996112/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1195366567', 6, 100, 39, '金莎', '北京', 'http://tp4.sinaimg.cn/1195366567/180/5640153353/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1082779430', 6, 100, 39, '曹三儿', '北京 海淀区', 'http://tp3.sinaimg.cn/1082779430/180/5639620936/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1507141643', 6, 100, 39, '花甲背包客', '北京', 'http://tp4.sinaimg.cn/1507141643/180/5628417787/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1661347232', 6, 100, 39, '蔡珍妮', '上海', 'http://tp1.sinaimg.cn/1661347232/180/5637686214/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1658658821', 6, 100, 39, 'Vanschina', '海外 美国', 'http://tp2.sinaimg.cn/1658658821/180/5636167209/1');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1981307823', 6, 100, 39, '另存为杂货店', '北京 东城区', 'http://tp4.sinaimg.cn/1981307823/180/5637151954/1');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1258859614', 6, 100, 39, '江小爬LOVE', '浙江 绍兴', 'http://tp3.sinaimg.cn/1258859614/180/5614667908/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '2073489193', 6, 100, 39, 'chris1304', '江苏 南京', 'http://tp2.sinaimg.cn/2073489193/180/5626185287/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1810000670', 6, 100, 39, 'MiCmIcMiC-LbX', '广东 韶关', 'http://tp3.sinaimg.cn/1810000670/180/5625753320/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '2236768547', 6, 100, 39, 'SY小馒头', '福建 龙岩', 'http://tp4.sinaimg.cn/2236768547/180/5632908576/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1949409105', 6, 100, 39, 'wintervolet', '北京 朝阳区', 'http://tp2.sinaimg.cn/1949409105/180/5640492118/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1804241764', 6, 100, 39, '純说给你听', '浙江 宁波', 'http://tp1.sinaimg.cn/1804241764/180/39999486468/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1886466485', 6, 100, 39, '陈菁仪', '北京 朝阳区', 'http://tp2.sinaimg.cn/1886466485/180/5639967152/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1776255607', 6, 100, 39, 'opa的草莓', '上海 徐汇区', 'http://tp4.sinaimg.cn/1776255607/180/1293386044/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '2156677434', 6, 100, 39, 'Muse丶颜蹊_谁说学不了微风', '重庆 万州区', 'http://tp3.sinaimg.cn/2156677434/180/40000083936/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '2339140841', 6, 100, 39, '林青霞', '香港', 'http://tp2.sinaimg.cn/2339140841/180/5609896498/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1748426297', 6, 100, 39, 'DadA-NaKo', '上海 黄浦区', 'http://tp2.sinaimg.cn/1748426297/180/5614437589/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1765367054', 6, 100, 39, '火箭筒_aTU', '福建 厦门', 'http://tp3.sinaimg.cn/1765367054/180/5635260993/1');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1980923321', 6, 100, 39, '达人', '北京 海淀区', 'http://tp2.sinaimg.cn/1980923321/180/5613461891/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '2143550005', 6, 100, 39, '微影迷', '北京', 'http://tp2.sinaimg.cn/2143550005/180/5605424368/1');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '2044957395', 6, 100, 39, '微摄友', '北京 海淀区', 'http://tp4.sinaimg.cn/2044957395/180/5605425936/1');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1728860841', 6, 100, 39, '微博同城会', '北京', 'http://tp2.sinaimg.cn/1728860841/180/5601275359/1');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1787433323', 6, 100, 39, '武汉同城会', '湖北 武汉', 'http://tp4.sinaimg.cn/1787433323/180/5620730504/1');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '2189608911', 6, 100, 39, '微驴友', '其他', 'http://tp4.sinaimg.cn/2189608911/180/5605424417/1');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1767221295', 6, 100, 39, '时尚日本', '北京', 'http://tp4.sinaimg.cn/1767221295/180/5621755025/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1822457221', 6, 100, 39, '日剧进行时', '北京', 'http://tp2.sinaimg.cn/1822457221/180/5617159089/1');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1890782911', 6, 100, 39, '每天学点爱情法', '北京', 'http://tp4.sinaimg.cn/1890782911/180/1292227353/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1712825542', 6, 100, 39, '日本流行音乐', '海外 日本', 'http://tp3.sinaimg.cn/1712825542/180/5608512082/1');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1885894827', 6, 100, 39, '林夕经典歌词', '香港', 'http://tp4.sinaimg.cn/1885894827/180/5618204206/1');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1691680934', 6, 100, 39, '幾米的童話王國_', '台湾 台北市', 'http://tp3.sinaimg.cn/1691680934/180/5611536628/1');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1685492742', 6, 100, 39, '米师奈', '广东 珠海', 'http://tp3.sinaimg.cn/1685492742/180/1279887044/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1660584061', 6, 100, 39, '蘑菇爱家居', '浙江 金华', 'http://tp2.sinaimg.cn/1660584061/180/5606868276/1');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1642343290', 6, 100, 39, '乐活制造', '海外 美国', 'http://tp3.sinaimg.cn/1642343290/180/1293787277/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1866914101', 6, 100, 39, '时尚英语', '海外 美国', 'http://tp2.sinaimg.cn/1866914101/180/1290415248/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1900594410', 6, 100, 39, '旅行志', '上海', 'http://tp3.sinaimg.cn/1900594410/180/5632926516/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1661550774', 6, 100, 39, '女人-我最大', '湖南', 'http://tp3.sinaimg.cn/1661550774/180/5626440206/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1832447572', 6, 100, 39, '一块去旅行', '西藏', 'http://tp1.sinaimg.cn/1832447572/180/5635002893/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1629810574', 6, 100, 39, 'veggieg', '北京 朝阳区', 'http://tp3.sinaimg.cn/1629810574/180/5623150807/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1743938470', 6, 100, 39, '陶晶莹', '台湾 台北市', 'http://tp3.sinaimg.cn/1743938470/180/1274261943/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1681213010', 6, 100, 39, '刘若英', '台湾 台北市', 'http://tp3.sinaimg.cn/1681213010/180/5630482516/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1722656062', 6, 100, 39, 'Karen莫文蔚', '香港', 'http://tp3.sinaimg.cn/1722656062/180/5611718581/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1855719771', 6, 100, 39, '我爱轻松熊', '广东 深圳', 'http://tp4.sinaimg.cn/1855719771/180/1289617420/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1778181861', 6, 100, 39, '日本流行每日速报', '海外 日本', 'http://tp2.sinaimg.cn/1778181861/180/1283205623/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1732701841', 6, 100, 39, '日本潮流最前线', '其他', 'http://tp2.sinaimg.cn/1732701841/180/1284765130/1');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1742642477', 6, 100, 39, '爱情是从餃子开始的', '上海 浦东新区', 'http://tp2.sinaimg.cn/1742642477/180/40000164244/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1781828064', 6, 100, 39, '猫科大怪', '四川', 'http://tp1.sinaimg.cn/1781828064/180/5632823707/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1966563115', 6, 100, 39, '苏雅琪_', '湖南 岳阳', 'http://tp4.sinaimg.cn/1966563115/180/5637825660/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1817853793', 6, 100, 39, 'Chitty就是姿大言', '河南 郑州', 'http://tp2.sinaimg.cn/1817853793/180/5640174277/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '2107920212', 6, 100, 39, '摩豆时光', '上海', 'http://tp1.sinaimg.cn/2107920212/180/5601711759/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1867323824', 6, 100, 39, 'SheClub', '香港', 'http://tp1.sinaimg.cn/1867323824/180/5600151226/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1744462394', 6, 100, 39, 'Missliu-angela', '河南 郑州', 'http://tp3.sinaimg.cn/1744462394/180/5639648669/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1863173987', 6, 100, 39, '糖果花sweet', '山东 枣庄', 'http://tp4.sinaimg.cn/1863173987/180/5636440697/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1736559627', 6, 100, 39, '可惜我是王小七', '广东', 'http://tp4.sinaimg.cn/1736559627/180/40000081805/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1598745964', 6, 100, 39, 'A-SIR-', '浙江 杭州', 'http://tp1.sinaimg.cn/1598745964/180/39999034990/1');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '2138692353', 6, 100, 39, '村上隆_KaikaiKiki', '海外 日本', 'http://tp2.sinaimg.cn/2138692353/180/5602332997/1');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1735089604', 6, 100, 39, '湛藍深海的米', '台湾 其他', 'http://tp1.sinaimg.cn/1735089604/180/5638533328/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1617703833', 6, 100, 39, '吴微的微是微笑的微', '其他', 'http://tp2.sinaimg.cn/1617703833/180/39999112295/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1791325381', 6, 100, 39, '刘梓璇刘梓璇', '广东 东莞', 'http://tp2.sinaimg.cn/1791325381/180/22817016376/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1909660057', 6, 100, 39, '阿树-tree', '广东 惠州', 'http://tp2.sinaimg.cn/1909660057/180/39999794992/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1737370647', 6, 100, 39, '哈茶', '浙江 温州', 'http://tp4.sinaimg.cn/1737370647/180/39998071260/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1634133791', 6, 100, 39, 'Angel-Kwon', '海外 其他', 'http://tp4.sinaimg.cn/1634133791/180/39999812959/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1798483740', 6, 100, 39, '最不懂事的阿Sir', '福建 厦门', 'http://tp1.sinaimg.cn/1798483740/180/5632467996/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1821771954', 6, 100, 39, '谢小鬼niceday', '广东 汕尾', 'http://tp3.sinaimg.cn/1821771954/180/5635865804/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1838171940', 6, 100, 39, 'super小笼包', '浙江 杭州', 'http://tp1.sinaimg.cn/1838171940/180/5606392955/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1731161961', 6, 100, 39, '陈格子晴', '广东 广州', 'http://tp2.sinaimg.cn/1731161961/180/5635232631/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '1876992064', 6, 100, 39, '叶屁爱生活', '广东 梅州', 'http://tp1.sinaimg.cn/1876992064/180/39997027188/0');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)values (NULL, 1, 1, 'follow', '2266145410', 6, 100, 39, '游乐场里的北极熊', '江苏 无锡', 'http://tp3.sinaimg.cn/2266145410/180/5637588454/0');



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
