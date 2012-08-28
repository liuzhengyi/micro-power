USE vdl;

INSERT INTO `user` (email, nick_name, pass, reg_time) VALUES ( 'test1@vdongli.com', 'test1', sha1('test'), now());
INSERT INTO `user` (email, nick_name, pass, reg_time) VALUES ( 'test2@vdongli.com', 'test2', sha1('test'), now());
INSERT INTO `user` (email, nick_name, pass, reg_time) VALUES ( 'test3@vdongli.com', 'test3', sha1('test'), now());
INSERT INTO `user` (email, nick_name, pass, reg_time) VALUES ( 'test4@vdongli.com', 'test4', sha1('test'), now());
INSERT INTO `user` (email, nick_name, pass, reg_time) VALUES ( 'test5@vdongli.com', 'test5', sha1('test'), now());
INSERT INTO `user` (email, nick_name, pass, reg_time) VALUES ( 'test6@vdongli.com', 'test6', sha1('test'), now());
INSERT INTO `user` (email, nick_name, pass, reg_time) VALUES ( 'test7@vdongli.com', 'test7', sha1('test'), now());

/* 注意，最初task_offer的单位是角，后来改成了分，所有任务的task_offer被更新为自身的十倍，在本文件的最后 */
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

/* forward tasks */
INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_sina_wid, task_offer, task_amount, task_finish_amount, task_screen_name, task_icon_url, task_thumbnail_pic_url, task_bmiddle_pic_url, task_text) values(NULL, 1, 1, 'forward', 1852055737, 3482583008838318, 60, 123, 121, 'L小星子I', 'http://tp2.sinaimg.cn/1852055737/50/5613564515/1', 'http://ww1.sinaimg.cn/thumbnail/6e6420b9jw1dw7u8u1l1fj.jpg', '', '拉萨再见，西宁等我！');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_sina_wid, task_offer, task_amount, task_finish_amount, task_screen_name, task_icon_url, task_thumbnail_pic_url, task_bmiddle_pic_url, task_text) values(NULL, 1, 1, 'forward', 1251632630, 3482583008838301, 60, 123, 121, '海南国际旅游岛的美好生活', 'http://tp3.sinaimg.cn/1251632630/50/5633100227/1', '', '', 'www.chinadjba.com');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_sina_wid, task_offer, task_amount, task_finish_amount, task_screen_name, task_icon_url, task_thumbnail_pic_url, task_bmiddle_pic_url, task_text) values(NULL, 1, 1, 'forward', 2286412292, 3482583008838266, 60, 123, 121, '-楚儿楚儿-请叫俄多啦C梦', 'http://tp1.sinaimg.cn/2286412292/50/5632991870/0', '', '', '在家做猫咪*～喵呜[奥特曼][奥特曼] 我在:http://t.cn/zWnPa4E');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_sina_wid, task_offer, task_amount, task_finish_amount, task_screen_name, task_icon_url, task_thumbnail_pic_url, task_bmiddle_pic_url, task_text) values(NULL, 1, 1, 'forward', 1798763124, 3482583008838263, 60, 123, 121, '懒惰君快点离开我', 'http://tp1.sinaimg.cn/1798763124/50/5637600629/0', 'http://ww2.sinaimg.cn/thumbnail/6b36f274jw1dw7u8thbrzj.jpg', '', '红绿灯🚥 #拼图#');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_sina_wid, task_offer, task_amount, task_finish_amount, task_screen_name, task_icon_url, task_thumbnail_pic_url, task_bmiddle_pic_url, task_text) values(NULL, 1, 1, 'forward', 1971756923, 3482583008837958, 60, 123, 121, '小欢faerie', 'http://tp4.sinaimg.cn/1971756923/50/40000174800/0', 'http://ww1.sinaimg.cn/thumbnail/75869f7bgw1dw7u8bzulnj.jpg', '', 'vcruan HIGH-END高端粉红流苏成衣 http://t.cn/zWnPa45');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_sina_wid, task_offer, task_amount, task_finish_amount, task_screen_name, task_icon_url, task_thumbnail_pic_url, task_bmiddle_pic_url, task_text) values(NULL, 1, 1, 'forward', 1928190885, 3482583008837918, 60, 123, 121, '陈嘉敏Kaman', 'http://tp2.sinaimg.cn/1928190885/50/22820092947/0', 'http://ww2.sinaimg.cn/thumbnail/72eddba5jw1dw7u8tditgj.jpg', '', '👻👻👻funny');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_sina_wid, task_offer, task_amount, task_finish_amount, task_screen_name, task_icon_url, task_thumbnail_pic_url, task_bmiddle_pic_url, task_text) values(NULL, 1, 1, 'forward', 1261424854, 3482583008837912, 60, 123, 121, '性格撒旦', 'http://tp3.sinaimg.cn/1261424854/50/1287283179/0', '', '', '很多中学老师他没收学生的武侠小说，他的理由就是不许看武打的，意思是看这个书，孩子会经常打架。但是在我看来，小孩子打架未必就全是坏事。如果一个民族的小孩子从小都不打架，这个民族必将会灭亡。');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_sina_wid, task_offer, task_amount, task_finish_amount, task_screen_name, task_icon_url, task_thumbnail_pic_url, task_bmiddle_pic_url, task_text) values(NULL, 1, 1, 'forward', 1743123243, 3482583008837629, 60, 123, 121, 'Foo_Yiu', 'http://tp4.sinaimg.cn/1743123243/50/39999618207/0', 'http://ww2.sinaimg.cn/thumbnail/67e5f32bjw1dw7u8t2qqzj.jpg', '', '@Mr_Rabbit1001 [心][心][心] 我對你唔住啊，辛苦你啦');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_sina_wid, task_offer, task_amount, task_finish_amount, task_screen_name, task_icon_url, task_thumbnail_pic_url, task_bmiddle_pic_url, task_text) values(NULL, 1, 1, 'forward', 1805407122, 3482583008837628, 60, 123, 121, '晓晓无敌卷', 'http://tp3.sinaimg.cn/1805407122/50/5632287991/0', '', '', '求会员卡呀！！！！！没地方打癌古而地类！');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_sina_wid, task_offer, task_amount, task_finish_amount, task_screen_name, task_icon_url, task_thumbnail_pic_url, task_bmiddle_pic_url, task_text) values(NULL, 1, 1, 'forward', 2171925841, 3482583008709054, 60, 123, 121, '小鸡崽子-J', 'http://tp2.sinaimg.cn/2171925841/50/5618017155/1', 'http://ww1.sinaimg.cn/thumbnail/8174f551jw1dw7u8ttfc4j.jpg', '', '口袋插个旗子，就被这么多人认成导游，有那么像吗？');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_sina_wid, task_offer, task_amount, task_finish_amount, task_screen_name, task_icon_url, task_thumbnail_pic_url, task_bmiddle_pic_url, task_text) values(NULL, 1, 1, 'forward', 1865826352, 3482583008708947, 60, 123, 121, '亂小妖', 'http://tp1.sinaimg.cn/1865826352/50/1288583271/0', '', '', '爛編劇、爛演技、爛臺詞。完全不知所雲，河東獅2，這點票錢爺給你買糖吃了。張姐姐現在又黑又醜，真是無法形容。[抓狂][抓狂]');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_sina_wid, task_offer, task_amount, task_finish_amount, task_screen_name, task_icon_url, task_thumbnail_pic_url, task_bmiddle_pic_url, task_text) values(NULL, 1, 1, 'forward', 1794379130, 3482583008708906, 60, 123, 121, '向日葵小寶唄兒', 'http://tp3.sinaimg.cn/1794379130/50/0/0', 'http://ww3.sinaimg.cn/thumbnail/6af40d7ajw1dw7u8trflej.jpg', '', '我爱红包，撕撕就好。。一撕一个，好多红包！【天猫2012新品发布，首页撕惊喜】http://t.cn/zWnPa4o');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_sina_wid, task_offer, task_amount, task_finish_amount, task_screen_name, task_icon_url, task_thumbnail_pic_url, task_bmiddle_pic_url, task_text) values(NULL, 1, 1, 'forward', 2824292795, 3482583008708898, 60, 123, 121, 'lhdjfhd', 'http://tp4.sinaimg.cn/2824292795/50/5639223323/1', '', '', '打扰一下，@生活健康养生保健 ，帮朋友问个问题：“介不给我找事儿吗！昨天让人给我拿会包，洒了一下子蜡油！万能的微博 ...”http://t.cn/zWnPa4K，能不能帮忙回答一下？～～～辛苦了！谢谢！ (本求助信息由问我应用自动发出，如打扰请点击设置http://t.cn/zWxO0pe )');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_sina_wid, task_offer, task_amount, task_finish_amount, task_screen_name, task_icon_url, task_thumbnail_pic_url, task_bmiddle_pic_url, task_text) values(NULL, 1, 1, 'forward', 1915792900, 3482583008708876, 60, 123, 121, '黄炽勋steven', 'http://tp1.sinaimg.cn/1915792900/50/5628433619/1', '', '', '今天和一个身高不足160有长长的头发而且发尾还是紫色的喜欢吃葡萄口味的糖斗地主很厉害眼睛大大的光额头的大美女去看《河东狮吼2》[鼓掌][鼓掌]唔知点解本来很煽情的段子我居然看到笑了 烂片的反效果吧。。[黑线][黑线][钱]');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_sina_wid, task_offer, task_amount, task_finish_amount, task_screen_name, task_icon_url, task_thumbnail_pic_url, task_bmiddle_pic_url, task_text) values(NULL, 1, 1, 'forward', 1758406513, 3482583008708750, 60, 123, 121, 'ar菲', 'http://tp2.sinaimg.cn/1758406513/50/5628940513/0', '', '', '人微言轻，如履薄冰。');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_sina_wid, task_offer, task_amount, task_finish_amount, task_screen_name, task_icon_url, task_thumbnail_pic_url, task_bmiddle_pic_url, task_text) values(NULL, 1, 1, 'forward', 2817820923, 3482583008708692, 60, 123, 121, '杨杨杨杨杨倩茹euq', 'http://tp4.sinaimg.cn/2817820923/50/0/0', 'http://ww1.sinaimg.cn/thumbnail/741c62d0tw1dqqyihyey1g.gif', '', '一位女士给火车站打电话：“我的一瓶洋酒丢在车上了，请问有没有人将它送到你们失物招领处？” 服务人员回答说，“没有，倒是那位拾到洋酒的先生，睡在我们招领处还没醒呢！” 开心笑话集：你爆笑料，我发奖金！http://t.cn/74RX3');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_sina_wid, task_offer, task_amount, task_finish_amount, task_screen_name, task_icon_url, task_thumbnail_pic_url, task_bmiddle_pic_url, task_text) values(NULL, 1, 1, 'forward', 2549733063, 3482583008708499, 60, 123, 121, '移动搜索专家', 'http://tp4.sinaimg.cn/2549733063/50/5619596481/1', 'http://ww4.sinaimg.cn/thumbnail/97f9d6c7jw1dw7u8t53crj.jpg', '', '“看神马看！！！我这是头发！！！不是帽子！！！”');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_sina_wid, task_offer, task_amount, task_finish_amount, task_screen_name, task_icon_url, task_thumbnail_pic_url, task_bmiddle_pic_url, task_text) values(NULL, 1, 1, 'forward', 2805769100, 3482583008708498, 60, 123, 121, 'Laura_珅_', 'http://tp1.sinaimg.cn/2805769100/50/5632119881/0', 'http://ww2.sinaimg.cn/thumbnail/a73ca38cjw1dw7u8tfr3ij.jpg', '', '一个人、一首歌。高速前进…很好。');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_sina_wid, task_offer, task_amount, task_finish_amount, task_screen_name, task_icon_url, task_thumbnail_pic_url, task_bmiddle_pic_url, task_text) values(NULL, 1, 1, 'forward', 2874838173, 3482583008370207, 60, 123, 121, '秦佳83913', 'http://tp2.sinaimg.cn/2874838173/50/5639261673/0', '', '', '现在的我们只能以每天吃啥为话题。 我在:http://t.cn/zWnPa4c');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_sina_wid, task_offer, task_amount, task_finish_amount, task_screen_name, task_icon_url, task_thumbnail_pic_url, task_bmiddle_pic_url, task_text) values(NULL, 1, 1, 'forward', 1976006743, 3482583008370199, 60, 123, 121, '满天星欢乐云谷', 'http://tp4.sinaimg.cn/1976006743/50/5635138827/1', 'http://ww2.sinaimg.cn/thumbnail/6cc71308gw1dw2ty8wjqij.jpg', '', '“粉丝加加加！#关注田嘉林#免费领取古古美美iPad3保护套”，这个活动推荐给大家。 地址：http://t.cn/zWQs6ZS');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_sina_wid, task_offer, task_amount, task_finish_amount, task_screen_name, task_icon_url, task_thumbnail_pic_url, task_bmiddle_pic_url, task_text) values(NULL, 1, 1, 'forward', 2369533401, 3482583008370181, 60, 123, 121, 'mobiledu2369533401', 'http://tp2.sinaimg.cn/2369533401/50/0/1', '', '', '我已下载了《诉衷情》很好看，和好朋友一下分享下http://t.cn/heiN38');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_sina_wid, task_offer, task_amount, task_finish_amount, task_screen_name, task_icon_url, task_thumbnail_pic_url, task_bmiddle_pic_url, task_text) values(NULL, 1, 1, 'forward', 2536479897, 3482583008370177, 60, 123, 121, '下雪见晴川唯爱幂', 'http://tp2.sinaimg.cn/2536479897/50/39996522293/0', 'http://ww3.sinaimg.cn/thumbnail/972f9c99jw1dw7u8tfk4uj.jpg', '', '炎炎夏日已经渐行进远，是时候开始选购秋装了~！把握今秋流行趋势，你就会成为这一季的换装达人~！ [给力] http://t.cn/zWnPaUs');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_sina_wid, task_offer, task_amount, task_finish_amount, task_screen_name, task_icon_url, task_thumbnail_pic_url, task_bmiddle_pic_url, task_text) values(NULL, 1, 1, 'forward', 2716467141, 3482583008370124, 60, 123, 121, '我爱童颜', 'http://tp2.sinaimg.cn/2716467141/50/5632788012/1', '', '', '【双鱼座最拽的地方】最会胡思乱想、直觉最准、最常作鬼脸、最善良、最温柔、最没有金钱观念、最有女人味、最念旧、最有牺牲精神、最善解人意、最天真、最爱哭、记忆力最好、最有书卷味、最易被骗、最浪漫、最好辩、最乐观、最不势利眼、最有服务精神、最多夜猫族#双鱼座#');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_sina_wid, task_offer, task_amount, task_finish_amount, task_screen_name, task_icon_url, task_thumbnail_pic_url, task_bmiddle_pic_url, task_text) values(NULL, 1, 1, 'forward', 2015367807, 3482583008163705, 60, 123, 121, 'Tanya-7', 'http://tp4.sinaimg.cn/2015367807/50/5638922679/0', 'http://ww4.sinaimg.cn/thumbnail/7820127fjw1dw7u8t1dvoj.jpg', '', '祝你 霸气外露~ 我在:http://t.cn/zWnPayM');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_sina_wid, task_offer, task_amount, task_finish_amount, task_screen_name, task_icon_url, task_thumbnail_pic_url, task_bmiddle_pic_url, task_text) values(NULL, 1, 1, 'forward', 2047102217, 3482583008163700, 60, 123, 121, '易允儿', 'http://tp2.sinaimg.cn/2047102217/50/5638464991/0', '', '', '超級度爛 被念了一個下午心情全被破壞了');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_sina_wid, task_offer, task_amount, task_finish_amount, task_screen_name, task_icon_url, task_thumbnail_pic_url, task_bmiddle_pic_url, task_text) values(NULL, 1, 1, 'forward', 1496133800, 3482583008163687, 60, 123, 121, '海棠芳馆', 'http://tp1.sinaimg.cn/1496133800/50/5634201087/1', 'http://ww4.sinaimg.cn/thumbnail/592d30a8jw1dw7u8tj6i8j.jpg', '', '新作.「一往情深」3.5X3.6X3.6Cm.房山石.');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_sina_wid, task_offer, task_amount, task_finish_amount, task_screen_name, task_icon_url, task_thumbnail_pic_url, task_bmiddle_pic_url, task_text) values(NULL, 1, 1, 'forward', 2039927374, 3482583008163663, 60, 123, 121, '蛋旺', 'http://tp3.sinaimg.cn/2039927374/50/39997509894/1', '', '', '突然就觉得这间教室里好挤 然后我好累 坐在这间觉得喘不上气 好多人都在学习 可我大多数时候只是坐着发呆');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_sina_wid, task_offer, task_amount, task_finish_amount, task_screen_name, task_icon_url, task_thumbnail_pic_url, task_bmiddle_pic_url, task_text) values(NULL, 1, 1, 'forward', 1685786923, 3482583008163662, 60, 123, 121, '不叫natwo叫什么', 'http://tp4.sinaimg.cn/1685786923/50/22819282727/0', 'http://ww3.sinaimg.cn/thumbnail/647b112btw1dw7u8enrxvj.jpg', '', '完败[亲一口]');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_sina_wid, task_offer, task_amount, task_finish_amount, task_screen_name, task_icon_url, task_thumbnail_pic_url, task_bmiddle_pic_url, task_text) values(NULL, 1, 1, 'forward', 2272989953, 3482583008163634, 60, 123, 121, '倪雪儿t', 'http://tp2.sinaimg.cn/2272989953/50/5618126123/0', '', '', '1凡事第一反应找方法,不是找借口.2永远不说不可能.3养成记录习惯,不太依赖脑袋.4每天出门照镜子,给自己自信的微笑.5每天自我反省.6用心倾听,不打断别人的话,作个倾听高手.7节俭定期存钱.8遵守诚信,说到做到.9开会坐前排.10时刻微笑待人处事.');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_sina_wid, task_offer, task_amount, task_finish_amount, task_screen_name, task_icon_url, task_thumbnail_pic_url, task_bmiddle_pic_url, task_text) values(NULL, 1, 1, 'forward', 2243875427, 3482583004643228, 60, 123, 121, 'unique_芊', 'http://tp4.sinaimg.cn/2243875427/50/40000337311/0', 'http://ww2.sinaimg.cn/thumbnail/85bed263gw1dw7u8lk2g8j.jpg', '', '说看就看./.童年的电视剧就是好看.就是值得回忆[兔子][兔子][兔子]');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_sina_wid, task_offer, task_amount, task_finish_amount, task_screen_name, task_icon_url, task_thumbnail_pic_url, task_bmiddle_pic_url, task_text) values(NULL, 1, 1, 'forward', 2168415294, 3482583004643101, 60, 123, 121, 'ZHANGJIALULULU', 'http://tp3.sinaimg.cn/2168415294/50/5638536060/0', 'http://ww1.sinaimg.cn/thumbnail/813f643ejw1dw7u8szm0aj.jpg', '', '凤凰岛假日酒店 [哈哈] 美~期待晚上各种节目[哈哈][爱你][偷笑]我在这里: http://t.cn/zWnPayx');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_sina_wid, task_offer, task_amount, task_finish_amount, task_screen_name, task_icon_url, task_thumbnail_pic_url, task_bmiddle_pic_url, task_text) values(NULL, 1, 1, 'forward', 2394947733, 3482583004642769, 60, 123, 121, '黄--小小贤贤贤贤', 'http://tp2.sinaimg.cn/2394947733/50/5640670435/0', 'http://ww2.sinaimg.cn/thumbnail/8ec00095jw1dw7u8t41czj.jpg', '', '嗯 加糖比较好喝');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_sina_wid, task_offer, task_amount, task_finish_amount, task_screen_name, task_icon_url, task_thumbnail_pic_url, task_bmiddle_pic_url, task_text) values(NULL, 1, 1, 'forward', 2822851377, 3482583004642731, 60, 123, 121, '-213团团长莫舒耀78703', 'http://tp2.sinaimg.cn/2822851377/50/5638669892/1', '', '', '打扰了，@鲤鱼潭 ，我的朋友【waterpurple】想问问你：“求助万能的微博，有人知道拿着比利时驾照可以在国内开车么？或者国内 ...”http://t.cn/zWnPaL5，能帮助他回答一下嘛？在线等，谢谢！  (本求助信息由问我应用自动发出，如打扰请点击设置http://t.cn/zWxO0pe )');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_sina_wid, task_offer, task_amount, task_finish_amount, task_screen_name, task_icon_url, task_thumbnail_pic_url, task_bmiddle_pic_url, task_text) values(NULL, 1, 1, 'forward', 2925258534, 3482583004642659, 60, 123, 121, '一个人丶小姐和没有人小姐_', 'http://tp3.sinaimg.cn/2925258534/50/39999601421/1', 'http://ww1.sinaimg.cn/thumbnail/ae5be726jw1dw7u8ssdyfj.jpg', '', '人生得来不易，还能在路上忙碌着奔波着应该庆幸，至少我们还有这个资本和气力拼搏。');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_sina_wid, task_offer, task_amount, task_finish_amount, task_screen_name, task_icon_url, task_thumbnail_pic_url, task_bmiddle_pic_url, task_text) values(NULL, 1, 1, 'forward', 2164121050, 3482583004642586, 60, 123, 121, '羽com_海豹', 'http://tp3.sinaimg.cn/2164121050/50/5627789133/1', 'http://ww1.sinaimg.cn/thumbnail/80fddddagw1dw7u8ijgxjj.jpg', '', 'happy过分了，换一个…[嘻嘻]');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_sina_wid, task_offer, task_amount, task_finish_amount, task_screen_name, task_icon_url, task_thumbnail_pic_url, task_bmiddle_pic_url, task_text) values(NULL, 1, 1, 'forward', 2909728943, 3482583004642528, 60, 123, 121, '以爱为伤的开始', 'http://tp4.sinaimg.cn/2909728943/50/0/0', 'http://ww2.sinaimg.cn/thumbnail/ad6ef0afjw1dw7u8sksfxj.jpg', '', '#悦读中国#宅小花的这本《捉王子有氧运动》 是本值得推荐的好书! 独乐乐不如众乐乐，与大家分享!http://t.cn/zWnPa2J @中国移动手机阅读');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_sina_wid, task_offer, task_amount, task_finish_amount, task_screen_name, task_icon_url, task_thumbnail_pic_url, task_bmiddle_pic_url, task_text) values(NULL, 1, 1, 'forward', 2230501065, 3482583004642405, 60, 123, 121, '孔悦peacock', 'http://tp2.sinaimg.cn/2230501065/50/5640611442/0', 'http://ww2.sinaimg.cn/thumbnail/84f2bec9jw1dw7u8sdkdlj.jpg', '', '死样，装可怜咩?～[偷笑][偷笑]');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_sina_wid, task_offer, task_amount, task_finish_amount, task_screen_name, task_icon_url, task_thumbnail_pic_url, task_bmiddle_pic_url, task_text) values(NULL, 1, 1, 'forward', 2091463182, 3482583004642400, 60, 123, 121, '同伴到底去嗨皮', 'http://tp3.sinaimg.cn/2091463182/50/5615904906/1', '', '', '下午心情郁闷，这看了会爱情公寓，好多的啦。谢谢这调味剂！');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_sina_wid, task_offer, task_amount, task_finish_amount, task_screen_name, task_icon_url, task_thumbnail_pic_url, task_bmiddle_pic_url, task_text) values(NULL, 1, 1, 'forward', 2730451697, 3482583004513889, 60, 123, 121, '乌龟哥_哥', 'http://tp2.sinaimg.cn/2730451697/50/5634127444/0', 'http://ww1.sinaimg.cn/thumbnail/80097224jw1dt3qufpx6ej.jpg', '', '- - 儿童漫画么...');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_sina_wid, task_offer, task_amount, task_finish_amount, task_screen_name, task_icon_url, task_thumbnail_pic_url, task_bmiddle_pic_url, task_text) values(NULL, 1, 1, 'forward', 2471216494, 3482583004513831, 60, 123, 121, 'lambiguity', 'http://tp3.sinaimg.cn/2471216494/50/22820480022/0', 'http://ww2.sinaimg.cn/thumbnail/934bc56ejw1dw7u8tebehj.jpg', '', '原谅我这一生不羁放纵爱自由 也会怕有一天会跌倒');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_sina_wid, task_offer, task_amount, task_finish_amount, task_screen_name, task_icon_url, task_thumbnail_pic_url, task_bmiddle_pic_url, task_text) values(NULL, 1, 1, 'forward', 1800770597, 3482583004513462, 60, 123, 121, '懒包雪', 'http://tp2.sinaimg.cn/1800770597/50/39997824241/0', '', '', '今日好累，企到脚趾痛埋。太内无做过瑜珈了，所以无晒精神……[睡觉]好想训觉。今晚仲要去瑜珈。[haha]');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_sina_wid, task_offer, task_amount, task_finish_amount, task_screen_name, task_icon_url, task_thumbnail_pic_url, task_bmiddle_pic_url, task_text) values(NULL, 1, 1, 'forward', 1756965543, 3482583004513426, 60, 123, 121, '王佳怡小名叫六六', 'http://tp4.sinaimg.cn/1756965543/50/5632057603/0', 'http://ww4.sinaimg.cn/thumbnail/68b92aa7jw1dw7u8sig5ej.jpg', '', '蒋吟风送我的！');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_sina_wid, task_offer, task_amount, task_finish_amount, task_screen_name, task_icon_url, task_thumbnail_pic_url, task_bmiddle_pic_url, task_text) values(NULL, 1, 1, 'forward', 1842564981, 3482583004513422, 60, 123, 121, '二八青年小骚丹-pzD', 'http://tp2.sinaimg.cn/1842564981/50/5638834210/0', 'http://ww4.sinaimg.cn/thumbnail/6dd34f75jw1dw7u8sqg6aj.jpg', '', '炎炎夏日，我又要去学车咯[悲伤]好彩稳左个阴凉既地方坐下~');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_sina_wid, task_offer, task_amount, task_finish_amount, task_screen_name, task_icon_url, task_thumbnail_pic_url, task_bmiddle_pic_url, task_text) values(NULL, 1, 1, 'forward', 1733645190, 3482583004513308, 60, 123, 121, '850小涛', 'http://tp3.sinaimg.cn/1733645190/50/5637838825/1', 'http://ww3.sinaimg.cn/thumbnail/67555386jw1dw7u8sxbv8j.jpg', '', '我擦！T75列车居然没有空调，车内温度30[哼] @北京铁路 是开车后才开吗？');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_sina_wid, task_offer, task_amount, task_finish_amount, task_screen_name, task_icon_url, task_thumbnail_pic_url, task_bmiddle_pic_url, task_text) values(NULL, 1, 1, 'forward', 1940891965, 3482583004513151, 60, 123, 121, '小小Fung', 'http://tp2.sinaimg.cn/1940891965/50/5629284431/1', 'http://ww1.sinaimg.cn/thumbnail/73afa93djw1dw7u8skvwuj.jpg', '', '一分耕耘，一分收获！//@小小Fung 在德克萨斯扑克 获得了成就同花.，获取速度超过了微博99%的玩家，你想和TA比试一下吗？http://t.cn/zONgtcr');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_sina_wid, task_offer, task_amount, task_finish_amount, task_screen_name, task_icon_url, task_thumbnail_pic_url, task_bmiddle_pic_url, task_text) values(NULL, 1, 1, 'forward', 1950311005, 3482583004175701, 60, 123, 121, '蜜糖小恶魔', 'http://tp2.sinaimg.cn/1950311005/50/22818448496/0', '', '', '“你想干什么！不要再这样祸害人类了！可以的话请把房间门关上不要让我再看到你！我连开冰箱的力气都没有了真是瞎了我的狗眼！”——我妹妹在我试穿豹纹图案的新鞋子之后对我狂吼。');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_sina_wid, task_offer, task_amount, task_finish_amount, task_screen_name, task_icon_url, task_thumbnail_pic_url, task_bmiddle_pic_url, task_text) values(NULL, 1, 1, 'forward', 1930709645, 3482583004175688, 60, 123, 121, '彭世超', 'http://tp2.sinaimg.cn/1930709645/50/5633609094/1', '', '', '3482583003969216');

INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_sina_wid, task_offer, task_amount, task_finish_amount, task_screen_name, task_icon_url, task_thumbnail_pic_url, task_bmiddle_pic_url, task_text) values(NULL, 1, 1, 'forward', 2804845970, 3482583004175631, 60, 123, 121, '倩女兔基斯', 'http://tp3.sinaimg.cn/2804845970/50/5637263533/1', '', '', '[音乐盒] #我正在听# Wonderful http://t.cn/zWnPaLp （分享自 @新浪乐库）');

/* follow tasks */
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
