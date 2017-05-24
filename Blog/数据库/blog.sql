CREATE DATABASE `blog` DEFAULT CHARACTER SET gbk COLLATE gbk_chinese_ci;

USE `blog`;

/*Table structure for table `articles` */

DROP TABLE IF EXISTS `articles`;

CREATE TABLE `articles` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(255) default NULL,
  `cont` mediumtext,
  `pdate` datetime default NULL,
  `isleaf` int(11) default NULL,
  `rootid` int(11) default NULL,
  `point` int(11) default '0',
  `uid` int(11) default NULL,
  PRIMARY KEY  (`id`)
)ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=53 ;
insert  into `articles` (`id`,`title`,`cont`,`pdate`,`isleaf`,`rootid`,`point`,`uid`)values (1,'首都机场轨道线票价

初定每人每次25元或30元','<p style="text-indent: 2em"><strong>新华网北京<!--{12144353568800}--></strong><!--

{12144353568801}--><strong>6月25日电 题：新闻分析：首都机场轨道线25元和30元两价格方案从何而来 </strong></p>\r\n<p 

style="text-indent: 2em">新华社记者李志勇</p>\r\n<p>北京首都机场轨道线票制票价听证会将于7月2日召开，初步拟定的方案

为采取单一票制，每人每次25元或30元。相对于目前北京5条在运地铁线路的2元一票制，机场轨道线的25元和30元的价格方案是如

何制定的成为人们关心的一个话题。</p>\r\n<p style="text-indent: 2em">对此，北京机场快速轨道有限公司负责人介绍，机场

轨道线是连接市区与首都机场的客运专线，主要服务对象是航空旅客，与主要服务于市民日常出行的公共交通线路有所不同。同时

，机场线的建设和运营是按照市场化原则进行，票价的制定在考虑目标乘客群承受能力的同时，还要兼顾企业经营成本。</p>\r

\n<p style="text-indent: 2em">另外一个重要原因是与到机场的其他交通工具相比，机场轨道线应该有一个合理的价格定位。目

前进出首都机场主要有3种方式，分别是机场大巴、出租车和自驾车。以东直门为起点，行车里程约23公里，机场大巴费用为16元，

出租车费用为67元，自驾车的费用如果加上机场高速路通行费超过40元。机场轨道线25元和30元的定价略高于机场大巴而明显低于

出租车和自驾车，而与机场大巴相比在快捷、准时方面，轨道交通机场线更有着明显的优势。</p>\r\n<p style="text-indent: 

2em">机场轨道线与其他交通方式之间形成一定的差价竞争，采取价格杠杆调整出行结构，给去往机场的旅客增加了一种出行选择，

这将吸引一部分乘坐私人小汽车和出租车的客流，缓解进出首都机场道路的交通拥堵，促进绿色出行。</p>\r\n<p style="text-

indent: 2em">而机场轨道线实行单一票价则是由于机场线的站点设置不适用计程票制。机场轨道线共设4站，自东直门到机场共有3

个站间区段，东直门至三元桥3．01公里，三元桥经机场3号航站楼至2号航站楼25．56公里，从2号航站楼至三元桥20．6公里。站间

区段的里程差异很大，不适合计程。</p>\r\n<p style="text-indent: 2em">同时，机场线的定位决定了该线主要的特定服务对象

是从市区到首都国际机场的航空旅客，这些乘客出行目的单一，对快捷、方便的要求高，但乘坐的频度较低，适用较为简捷的票制

形式。</p>\r\n<p style="text-indent: 2em">据预测，采用25元方案，机场轨道线中远期客运量最高可达到每年1220万人次，大

体分担当年首都机场吞吐量的16．1％；采用30元方案，中远期客运量可达到每年1032万人次，分担当年首都机场吞吐量的13．6％

。</p>', '2008-06-26 07:12:16',0, 1,86,1),
(2, '北大光华本科毕业生平均年薪超15万','<p style="text-indent: 2em">本报讯 (记者周逸梅)昨天，北京<!--keyword--><a 

href="http://weather.qq.com/preend.htm?dc125.htm" target="_blank"><img alt="点击查看北京及更多城市天气预报" 

src="http://img1.qq.com/weather/pics/5619/5619723.gif" border="0" /></a><!--/keyword-->大学光华管理学院公布了今年的

毕业生就业情况，毕业后直接就业的本科生，平均起薪超过了15万元/年。</p>\r\n<p style="text-indent: 2em">光华管理学院

2008届本科133名毕业生中，有46人继续深造，毕业后直接就业的人数略低于去年，但平均起薪超过15万元/年。接近50%的毕业生选

择到金融机构工作。被全球顶尖投资银行和金融机构录用的有21人。应届硕士毕业生中直接就业的平均起薪约17万元/年。</p>', 

'2009-01-04 19:15:15',0,2,146,1),
(3,'我很高兴','呵呵  评论功能终于做完了','2009-01-04 22:02:38',1,2,0,1),
(4,'天使爱我','你的博客很不错哦！！！！！！！！！！！','2009-01-04 22:03:00',1,1,0,1),
(5,'证监会：叫停“不良”上市公司再融资申请', '<p style="text-indent: 2em">对于治理结构尚存在未完成整改事项及其他公

司治理问题的&ldquo;不良&rdquo;上市公司，证监会将不再受理其股权激励及再融资申请。</p>\r\n<p style="text-indent: 

2em">继6月13日和6月23日两次强调&ldquo;坚决打击损害上市公司利益行为，切实维护投资者合法权益&rdquo;后，证监会昨晚再次

发出2008年第27号公告&mdash;&mdash;在2007年上市公司专项治理活动取得一定成果的基础上，今年将对上市公司治理结构中的普

遍问题，比如上市公司因控股股东越位干涉而导致的独立性缺失、独立董事职责不明、董事会下属专业委员会运作流于形式等问题

进行治理。</p>\r\n<p style="text-indent: 2em">公告要求，上市公司应进一步健全内部控制制度，完善问责机制，规范关联交

易，建立防止大股东及其附属企业占用上市公司资金、侵害上市公司利益的长效机制。各公司应进一步完善制止股东或者实际控制

人侵占上市公司资产的具体措施，并向公司董事、监事和高级管理人员明确其维护上市公司资金安全的法定义务。上市公司董事会

应强化对大股东所持股份&ldquo;占用即冻结&rdquo;的机制。</p>\r\n<p style="text-indent: 2em">根据公告，上市公司应定期

向当地派出机构上报与关联方资金往来情况。发生占用的上市公司应立即收回占用资金，监管机构将启动立案稽查程序。对于纵容

、帮助大股东占用上市公司资金的董事、监事和高级管理人员，涉嫌犯罪的，将移送公安机关追究其刑事责任。</p>\r\n<p 

style="text-indent: 2em">按照规定，上市公司应于今年11月30日前，完成对公司治理整改报告所列全部事项的整改工作。此后，

对于治理结构尚存在未完成整改事项及其他公司治理问题的上市公司，证监会将不再受理其股权激励及再融资申请。对于已受理申

请材料的，证监会将在审核过程中予以重点关注。</p>\r\n<p style="text-indent: 2em">公告还加强了上市公司的信息披露制度

，要求上市公司进一步明确重大事项的报告、传递、审核、披露程序以及信息披露的责任追究机制等，要求上市公司强化敏感信息

排查、归集、保密及披露制度，减少内幕交易、股价操纵行为，切实保护中小投资者利益。</p>','2008-06-26 

07:51:20',0,5,90,3),
(6,'四大民间股神论股市：还有很大很暴利的行情','<p style="text-indent: 2em"><strong>&quot;深圳</strong><a 

href="http://weather.qq.com/preend.htm?dc296.htm" target="_blank"></a><strong>推手&quot;王先春 </strong></p>\r\n<p 

style="text-indent: 2em"><strong>本周若量价配合好可入场</strong></p>\r\n<p style="text-indent: 2em">操盘感悟：先做

人，后做票，重趋势，敢纠错；宠辱不惊平常对之。</p>\r\n<p style="text-indent: 2em">提高银行存款准备金率等，提高油电

价格，从紧货币政策一直坚持到现在，这说明国家对后面把控心中有数，有提前应对措施，仅仅在人民币对美元的升值中暂时处于

被动。在股权分制改革之后，杀出去的都是散户。而现在，当利空逐渐明朗之后，底部也就出现了。目前，已经到了投资的区域。

在中国，稳定压倒一切，奥运类龙头股可关注，另外是金融类的龙头股。本周如果量价关系配合比较好，便可入场操作。</p>\r

\n<p style="text-indent: 2em"><strong>&quot;炒新大王&quot;铑钿 </strong></p>\r\n<p style="text-indent: 

2em"><strong>破发新股随便买都能赚</strong></p>\r\n<p style="text-indent: 2em">操盘感悟：暴利只留给第一个吃螃蟹的人

。大机会出现时没有重仓介入，那是一种耻辱。</p>\r\n<p style="text-indent: 2em">我认为新股最有爆发力，最有成长性，最

可以盈利，而且没有系统风险。现在跌破发行价的新股，只要暴跌就买入，反弹5个点就卖出，随便买都能赚到钱。2007年买股票打

死也不卖赚钱，2008年买股票打死也不卖就亏钱。如果2008年想赚钱，第一要放弃价值投资理念。第二退出公募<!--keyword--><a 

href="http://finance.qq.com/fund/" target="_blank"><!--/keyword--><font color="#0000ff">基金<!--keyword--

></font></a><!--/keyword-->。</p>\r\n<p style="text-indent: 2em"><strong>&quot;猎庄大鳄&quot;钟麟 </strong></p>\r

\n<p style="text-indent: 2em"><strong>何时有政策，何时就上涨</strong></p>\r\n<p style="text-indent: 2em">操盘感悟：

介入的股票必须活跃，重趋势不重价格是操盘技巧中的精华所在，更是短线技巧的灵魂。宁可错失千次机会，不可冲动一次持仓！

</p>\r\n<p style="text-indent: 2em">如果现在中国的经济出现风险的话，全球经济都可能要崩溃。没有一个人希望中国经济出

现危机，未来的发展是可期的。每个人不要去问中国股市为何会跌。中国股市不能用牛市和熊市来讨论。中国的股市就是政策市，

它从来不缺资金，也不缺信心，缺的就是政策。什么时候有政策，什么时候股票就上涨。其他的要靠大家把握。</p>\r\n<p 

style="text-indent: 2em"><strong>&quot;股市神算&quot;赵中胜 </strong></p>\r\n<p style="text-indent: 2em"><strong>调

整后还有很大很暴利的行情</strong></p>\r\n<p style="text-indent: 2em">操盘感悟：天下事，只有知其然，才能真正知其所以

然。</p>\r\n<p style="text-indent: 2em">做人学《论语》，炒股学《周易》；股市的主要矛盾解决了就是底，没有解决就不是

底。大盘跌破30日月线后，我统计过，要跌4至5个月。但是中国要开奥运会，所以这次下跌还不太一样。国际油价近一段时期的上

涨可能在下个月结束。粮食上涨可能需要两三年。中国股市未来3年还要用牛市的观点来看待。现在跌下来，稍微调整以后，后面还

有一个很大很暴利的行情。(南方都市报)</p>','2008-06-26 07:55:17',0,6,2,4),
(7,'四川盆地局部因地震下降60厘米', '<p>　　5月12日四川汶川发生8级强烈地震，造成了极其巨大的人员伤亡和经济损失。这场

特大地震具有哪些特征？地表破裂带在哪里？大区域地表如何变形？地震的根本原因是什么？</p>\r\n<p>　　就此，中国地震局地

质研究所所长、国家汶川地震专家委员会南北带地震构造研究组组长张培震26日向全国人大常委会组成人员作了详细讲解。</p>\r

\n<p>　　张培震介绍，中国地震台网测定&ldquo;5&middot;12&rdquo;汶川大地震的震级为8级，震源深度约为14公里，地震主要能

量的释放是在一分多钟内完成的。</p>\r\n<p>　　到目前为止，已发生余震1．3万余次，并且还会持续相当长的一段时间，其中最

大强余震震级达6．4级。这些余震主要分布在从映秀镇到青川县的龙门山断裂带的中北段，形成长达300公里的余震带。</p>\r

\n<p>　　这次地震释放出巨大的能量以地震弹性波的形式传遍中国大陆乃至整个地球。张培震表示，5月12日突然发生的汶川8级地

震是一次低速率、长周期和高强度的巨大地震。这次地震的特点是能量积累慢、复发周期长、影响范围大、破坏强度高、次生灾害

重。</p>\r\n<p>　　<strong>【动力来源】</strong></p>\r\n<p><strong>　　青藏高原和华南地块相对运动</strong></p>\r

\n<p>　　张培震说，汶川地震发生在四川龙门山逆冲推覆断裂带上。该断裂带是青藏高原和华南地块的边界构造带，经历了长期的

地质演化，具有十分复杂的地质结构和演化历史。</p>\r\n<p>　　张培震指出，这次巨大地震的最根本动力来源还是青藏高原和华

南地块之间相对运动在断裂带上产生的能量积累和释放。</p>\r\n<p>　　印度大陆向北推挤，形成了&ldquo;世界屋脊&rdquo;青藏

高原，其平均海拔高度超过5000米，地下的地壳厚度达60&mdash;70公里，比四川盆地厚40公里的地壳多出20&mdash;30公里。在这

种状态下，青藏高原不可能再向上升高和向下增厚，高原内部的地壳物质只能向东和向北扩展，导致高原在这两个方向上的增生。

由于强硬四川盆地的阻挡，在青藏高原东部与四川盆地交界地带就形成了南起泸定和天全，北达广元和陕西勉县、长近500公里、宽

40&mdash;50公里、北东走向的龙门山脉。构成龙门山山脉的重要岩石单元是古老的杂岩体，这种岩石抵抗破坏和断裂的强度特别大

，能够积累很大的能量在瞬间释放形成强烈地震。</p>\r\n<p>　　<strong>【地壳破裂】</strong></p>\r\n<p><strong>　　一分

钟内形成长300公里、深30公里大断裂</strong></p>\r\n<p>　　张培震说，考察结果显示，这次地震是龙门山断裂带内映秀

&mdash;北川断裂活动的结果。</p>\r\n<p>　　在地震发生的短短一分多钟时间内，地壳深部的岩石中形成了一条长约300公里、深

达30公里的大断裂，其中的200余公里出露地表，形成沿映秀&mdash;北川断裂分布的地表破裂带。另外，龙门山与成都平原交界的

都江堰&mdash;江油断裂也发生了60多公里的破裂。</p>\r\n<p>　　地震地表破裂带延伸方向是从西南到东北，断裂面向西北方向

倾斜，相对于四川盆地，龙门山沿这条地表破裂带既有向上的运动，又有向东北方向的运动，其最大垂直错距和水平错距分别达到5

米和4．8米，沿整个破裂带的平均错距可达2米左右。</p>\r\n<p>　　张培震表示，由于地震的能量主要沿断裂释放，造成地震破

坏在垂直于断裂的方向上衰减很快，所以这次地震对成都平原没有造成太大的破坏。</p>\r\n<p>　　<strong>【地表变形】

</strong></p>\r\n<p><strong>　　四川盆地下降60厘米 龙门山大幅度上升</strong></p>\r\n<p>　　张培震指出，这次地震还引

起了大区域的地表变形。震后的全球定位系统ＧＰＳ观测表明，龙门山和四川盆地除了在水平方向上发生大幅度的相向运动外，龙

门山大幅度上升，其幅度正在测算过程中。</p>\r\n<p>　　四川盆地相对下降，下降幅度在沿龙门山前的安县、都江堰一带最大，

达30&mdash;60厘米，向东迅速变小，到重庆一带反而表现出数毫米的上升现象，但误差较大。</p>\r\n<p>　　这种大尺度的地表

变形图像是地震引起的弹性暂态形变，随着时间的推移会逐渐停息，恢复到原来的稳定运动状态。</p>\r\n<p>　　<strong>【破坏

程度】</strong></p>\r\n<p><strong>　　四大原因致北川遭到毁灭性破坏</strong></p>\r\n<p>　　张培震表示，这次地震的破

裂起始点在地面的投影对应着汶川县，所以被称为&ldquo;5&middot;12&rdquo;汶川大地震。</p>\r\n<p>　　他特地分析指出，北

川县城遭到毁灭性破坏的原因有四条：映秀&mdash;北川发震断裂从整个县城通过；县城附近的地震破裂位移量大，地震在这里释放

的能量也大；县城坐落在河滩松散堆积物之上，场地效应和地基失效使破坏加剧；大量的山体滑坡和岩石崩塌使得灾害雪上加霜。

</p>\r\n<p>　　<strong>【复发间隔】</strong></p>\r\n<p><strong>　　8级强震复发间隔在3000至5000年以上</strong></p>

\r\n<p>　　龙门山断裂带滑动速率的缓慢还导致强震复发周期的加长，估计龙门山断裂带8级强震的复发间隔至少在

3000&mdash;5000年以上，这就是为什么在几千年的历史记录中龙门山断裂带上没有发生过强震的原因。</p>\r\n<p>　　据新华社

电</p>','2008-06-27 09:43:57',0,7,2,5),
(8,'建国以来最大宗可卡因走私案告破(图)', '<div align="center"><img alt="建国以来最大宗可卡因走私案告破(图)" 

src="http://i0.sinaimg.cn/dy/c/l/2008-06-27/U2494P1T1D15823700F21DT20080627014831.jpg" border="1" /></div>\r\n<div 

class="f12" align="center">警方展示缴获的可卡因。时报记者 任传富 摄</div>\r\n<p><br />\r\n&nbsp;</p>\r\n<p>　　时报

讯 (记者 童丹 通讯员 龚宣) 530包可卡因满满摆在一张长桌上，每一包都净重1千克，530包可卡因共530公斤，价值5亿人民币，

我国建国以来最大宗可卡因走私案告破，价值为全国所破毒品案中&ldquo;最贵&rdquo;。</p>\r\n<p>　　广州市公安局昨日下午召

开新闻发布会表示，&ldquo;6&middot;14&rdquo;特大跨国走私可卡因案已破获，先后抓获9名犯罪嫌疑人(其中2名为外籍犯罪嫌疑

人)。</p>\r\n<p><strong>　　策划走私毒品入境被盯</strong></p>\r\n<p>　　警方昨日表示，今年6月4日，在公安部、广东省

公安厅禁毒局的指导协调下，在黄埔海关、安全等部门以及香港、澳门、我省有关地市警方的协助下，经过近一年的艰苦侦查，广

州市公安局成功破获公安部督办的&ldquo;6&middot;14&rdquo;特大跨国走私可卡因案, 先后抓获9名犯罪嫌疑人(其中2名为外籍犯

罪嫌疑人)，缴获毒品可卡因共约530公斤及作案汽车3辆，成功切断了一条从南美洲到中国的可卡因运输线。据介绍，

&ldquo;6&middot;14&rdquo;案是我国建国以来破获的最大宗可卡因走私案。</p>\r\n<p>　　2007年，广州市公安局缉毒情报部门

发现某国际贩毒团伙骨干人员活动异常，频繁活动于巴拿马、哥伦比亚、加拿大和我国香港、广东等地，极有可能策划从境外走私

大批毒品入境。广州市公安局立即抽调各警种骨干力量，成立专案组，秘密展开调查工作，并将此案定为

&ldquo;6&middot;14&rdquo;专案。</p>\r\n<p><strong>　　从巴拿马运夹毒木材至穗</strong></p>\r\n<p>　　今年6月初，经过

长达一年的艰苦侦查，专案组发现该团伙成员活动加剧，并从巴拿马运输一批木材到广州市，综合情况分析，专案组推断，该团伙

企图利用木材夹藏毒品，实施走私犯罪。</p>\r\n<p>　　6月3日晚，专案组民警发现该团伙成员已将夹藏有毒品的木材运抵广州市

某区一物流仓库，负责接取毒品的团伙成员正在仓库内将毒品从伪装木材中取出装入事前准备的蛇皮袋中，准备次日装车运走。

</p>\r\n<p>　　6月4日上午，专案指挥部下达命令，兵分两路进行抓捕。第一抓捕组当场在仓库内抓获正在装毒品的犯罪嫌疑人3

名，现场缴获可卡因530块，重约530千克(价值￥1000元／克)；在仓库周围抓获该团伙另外3名犯罪嫌疑人。第二抓捕组在广州市区

抓获该团伙犯罪嫌疑人1名，于6月13日再次抓获该案2名准备逃逸的犯罪嫌疑人。</p>\r\n<p>　　至此，该团伙成员全部落网。广

州警方表示，目前该案正在进一步审理中。</p>\r\n<p>&nbsp;&nbsp; （来源：信息时报）</p>\r\n<p>　<strong>　贩毒外国人员

和形式</strong></p>\r\n<p>　　非洲、金新月地区的外国人</p>\r\n<p>　　主要是人体藏毒到广州，再中转到发达国家</p>\r

\n<p>　　南美人</p>\r\n<p>　　主要是通过走私可卡因到广州，然后再中转到经济发达国家</p>\r\n<p><strong>　　举报毒品犯

罪分级奖励</strong></p>\r\n<p>　　查获制毒工厂 奖10万～30万元</p>\r\n<p>　　缴获海洛因、冰毒、可卡因10克以下的 每案

奖500元</p>\r\n<p>　　(去年广州市公安机关共发放奖励金100多万元。)</p>','2008-06-27 09:51:07',0,8,2,6),
(9,'中消协新章程规定经费以政府拨款为主', '<p>　　本报讯 （记者廖爱玲）中消协在昨天召开的第四届一次理事会上，迎来了

新一任会长&mdash;&mdash;&mdash;原国家工商总局局长王众孚。为确保消协代表消费者权益的公信力，中消协此次在新修改章程中

特别明确经费&ldquo;主要由政府拨款资助&rdquo;。</p>\r\n<p>　　中消协副秘书长武高汉公布，新《中国消费者协会章程》对经

费来源进行了修改，明确表述为&ldquo;经费来源主要由政府资助，同时在不影响公正性的前提下接受社会捐赠及取得其他合法性收

入&rdquo;。此前的老章程里规定中消协经费来源是政府资助、社会捐赠、在核准的业务范围内开展的活动或服务的合法收入、其他

合法收入四部分构成。在经历了&ldquo;3&middot;15&rdquo;认证标志的争议风波后，中消协的活动经费及由此带来的公信力问题也

受到社会关注。</p>\r\n<p>　　新章程里同时还表示，未来中消协将设立若干消费者保护专门委员会，让消费维权走向专业化，以

适应维权形势的发展。据介绍，专门委员会根据不同领域设立，邀请权威专家参与，专门处理某一重要领域的消费投诉，对该领域

商品服务专业化监督。北京市消协就在今年3月成立了通信、航空、留学、商品房、商品检测5个专业委员会。</p>','2008-06-27 

09:54:45',0,9,2,7),
(10,'雅虎新成立三大团队 直接向总裁德克尔汇报','<p>　　新浪科技讯 北京时间6月27日消息，据国外媒体报道，雅虎周四宣布

，为提升公司产品、技术和执行能力，决定对公司组织架构做出调整。此举与雅虎&ldquo;成为大多数用户出发地、大多数广告主目

的地，以及开发者所选平台&rdquo;的战略相一致。</p>\r\n<p>　　雅虎此次整改的核心是消费者产品开发，旨在强化雅虎在全球

范围内发布新产品的能力。新成立了&ldquo;Insights Strategy&rdquo;团队，负责监管利用雅虎所收集的数据；强化技术基础设施

，优化数据利用；提升产品与工程团队间的协调能力。</p>\r\n<p>　　雅虎CEO杨致远称：&ldquo;这些措施有助于提升庞大优秀的

雅虎团队开发出伟大产品、赢得新用户，并在全球范围内增加营收的能力。此举旨在提升雅虎的竞争力，以更好地服务于用户，抓

住搜索和显示广告等领域的新机会。&rdquo;</p>\r\n<p>　　<strong>商业及产品调整</strong></p>\r\n<p>　　雅虎将创建三个

新团队，直接向总裁苏珊&middot;德克尔(Sue Decker)汇报。其中，用户产品部门负责雅虎的产品战略与产品管理，由前平台与基

础设施部门主管埃什&middot;帕特尔(Ash Patel)领导。</p>\r\n<p>　　美国广告部门，负责雅虎在美国的广告业务，由雅虎前全

球合作伙伴解决方案部门负责人希拉里&middot;斯基内德(Hilary Schneider)带队。另外，Insights Strategy团队主要负责监管和

利用雅虎的数据，负责人将在未来几周内宣布。</p>\r\n<p>　　雅虎总裁苏珊&middot;德克尔(Sue Decker)说：&ldquo;此次调整

将提升雅虎为全球用户提供产品的能力，雅虎可以以更快的速度做出更准确的决定。事实上，经过了去年的集中化整改成功后，此

次整改是理所当然。而且，在过去的几个月中，我们一直在筹划此次整改，希望能够利用我们的规模优势更好地满足当地市场的需

求。&rdquo;</p>\r\n<p>　　<strong>技术与基础设施调整</strong></p>\r\n<p>　　雅虎对公司的技术架构进行了调整，以确保

公司顺利执行各项业务战略。最主要的调整是开发世界级的云计算和存储基础设施，在产品与工程团队之间建立起紧密的合作关系

。</p>\r\n<p>　　雅虎CTO埃瑞&middot;巴罗赫(Ari Balogh)称：&ldquo;自从年初加盟雅虎以来，我就一直在评估技术部门，希望

达到最佳配置，以支持公司的业务战略。我对公司的技术团队相当满意，在新的架构下，相信会运作地更加完美。&rdquo;</p>\r

\n<p>　　为了强化云计算能力，雅虎将组建一个云计算与数据基础设施部门，致力于开发云计算基础设施。另外，雅虎还重新分配

了三名搜索业务高管温卡特&middot;潘卡帕克森(Venkat Panchapakesan)、托克&middot;隆(Tuoc Luong)和大卫&middot;库(David 

Ku)的职责。</p>\r\n<p>　　调整后，潘卡帕克森负责搜索战略，托克&middot;隆临时负责搜索产品团队。该二人此前分别负责的

雅虎搜索和雅虎工程职责保持不变。而大卫&middot;库将负责广告技术部门。(李明)</p>', '2008-06-27 09:58:21',0,10,2,8),
(11,'盖茨今日退休 计划赴北京看奥运会(组图)','<div align="center"><img alt="盖茨今日退休计划赴北京看奥运会(组图)" 

src="http://i3.sinaimg.cn/dy/w/p/2008-06-27/U2494P1T1D15823907F21DT20080627022704.jpg" border="1" /></div>\r\n<div 

class="f12" align="center">2000年9月，盖茨对员工发表讲话。告别微软后的他，还是会将部分精力花在公司上</div>\r

\n<p><br />\r\n&nbsp;</p>\r\n<div align="center"><img alt="盖茨今日退休计划赴北京看奥运会(组图)" 

src="http://i1.sinaimg.cn/dy/w/p/2008-06-27/U2494P1T1D15823907F23DT20080627022704.jpg" border="1" /></div>\r\n<div 

class="f12" align="center">盖茨夫妇在非洲参加慈善活动</div>\r\n<p><br />\r\n&nbsp;</p>\r\n<div align="center"><img 

alt="盖茨今日退休计划赴北京看奥运会(组图)" src="http://i1.sinaimg.cn/dy/w/p/2008-06-

27/U2494P1T1D15823907F1394DT20080627022704.jpg" border="1" /></div>\r\n<div class="f12" align="center">保罗&middot;

艾伦与盖茨创业初的合影</div>\r\n<p><br />\r\n&nbsp;</p>\r\n<div align="center"><img alt="盖茨今日退休计划赴北京看奥

运会(组图)" src="http://i2.sinaimg.cn/dy/w/p/2008-06-27/U2494P1T1D15823907F1395DT20080627022704.jpg" border="1" 

/></div>\r\n<div class="f12" align="center">鲍尔默与盖茨</div>\r\n<p><br />\r\n&nbsp;</p>\r\n<p>　　今天，微软公司

创始人兼董事长、52岁的比尔&middot;盖茨将结束他在微软的全职工作，正式交棒。执掌微软30多年的盖茨终于&ldquo;归隐山林

&rdquo;，全身心投入慈善事业。这对微软意味着一个时代即将结束，但对世界却意味着多了一个身家580亿美元的全职慈善家。

</p>\r\n<p>　　盖茨表示，他将今年慈善活动的第一站定为中国，并且计划参加北京奥运会。</p>\r\n<p><strong>　　一朝退隐

不复出</strong></p>\r\n<p>　　早在2006年6月15日，微软联合创始人兼董事长比尔&middot;盖茨就宣布，他将逐步移交其日常工

作，以便将更多时间投入到&ldquo;比尔与梅琳达&middot;盖茨基金会&rdquo;所从事的慈善事业。2008年7月1日之后，盖茨将放弃

全部日常管理工作。盖茨表示，尽管他准备远离微软的日常事务，但他坚信公司的前途将与以往一样光明。</p>\r\n<p>　　盖茨早

在2000年就已经卸去了微软首席执行官的职务，交棒给史蒂夫&middot;鲍尔默。美国CGC咨询公司CEO约翰&middot;查林杰表示，鉴

于如此严密的任命计划，盖茨此次退出后将不会再次复出。他说：&ldquo;盖茨的复出几乎是不可能的，他不是一位永远不放权的老

板。&rdquo;</p>\r\n<p>　　<strong>集体智慧扛起微软</strong></p>\r\n<p>　　目前，微软正处在一个面临激烈竞争的关键时

刻，谷歌、雅虎这样的网络公司拥有了越来越多的支持者。但盖茨认为，公司面临的新竞争对手和挑战不会影响他的决定，&ldquo;

在微软的历史上，就从来没有过风平浪静的时候&rdquo;。</p>\r\n<p>　　盖茨也对担任首席执行官的鲍尔默信心十足，称他是

&ldquo;历史上最伟大的合作伙伴之一&rdquo;，此外，盖茨对担任微软首席软件架构师的奥兹也赞赏有加。前微软副总裁萨姆

&middot;贾达拉透露，盖茨曾经打算到60岁离开微软，而他在50岁那年就做出了&ldquo;收山&rdquo;的决定，很重要的原因之一可

能是他找到了合适的接班人。</p>\r\n<p><strong>　　20％时间花在微软</strong></p>\r\n<p>　　早在今年5月，比尔&middot;

盖茨就向媒体透露了一些&ldquo;退休&rdquo;后的细节。</p>\r\n<p>　　盖茨称，目前的时间分配将倒转过来，从80%时间花在微

软和20%时间花在基金会，改为20%时间花在微软，其余时间投入到慈善事业。不过他依然保留有自己的办公室，他表示，每月花2-3

天在公司，另外花4-6天写东西、思考和研究各种产品项目，包括下一代Office、自然用户界面及搜索。盖茨表示，他对搜索技术非

常投入，将建造世界上最好的搜索。</p>\r\n<p>　<strong>　慈善第一站中国</strong></p>\r\n<div style="border-right: 

#cbd8eb 1px solid; padding-right: 5px; border-top: #cbd8eb 1px solid; padding-left: 5px; background: #fff; float: 

left; padding-bottom: 5px; margin: 3px 5px 0px 0px; border-left: #cbd8eb 1px solid; padding-top: 5px; border-

bottom: #cbd8eb 1px solid; text-align: center"><a style="padding-right: 0px; display: block; padding-left: 0px; 

background: url(http://i2.sinaimg.cn/cctv/deco/2007/1221/content_video_btn_bg_ws_006.gif) #f00 no-repeat 0px 0px; 

padding-bottom: 0px; margin: 0px auto 5px; width: 89px; padding-top: 0px; height: 80px; text-align: center" 

href="http://video.sina.com.cn/news/w/v/2008-06-23/204817826.shtml" target="_blank"><img style="border-right: 

medium none; border-top: medium none; margin-top: 2px; border-left: medium none; border-bottom: medium none" 

height="60" alt="盖茨捐出所有财产" src="http://p.v.iask.com/849/82/14544996_0.jpg" width="83" /></a>\r\n<p 

style="display: block; font-weight: bold; font-size: 12px; margin: 0px; color: #f00; line-height: 14px; text-align: 

center"><a style="color: #f00; text-decoration: none" href="http://video.sina.com.cn/news/w/v/2008-06-

23/204817826.shtml" target="_blank">盖茨捐出所有财产</a></p>\r\n</div>\r\n<p>　　今年夏季开始，盖茨将成为全职慈善家

，他表示将今年慈善活动的第一站定为中国。比尔与美琳达盖茨基金会将在中国推行几个关键的健康计划，包括HIV/艾滋病预防、

乙肝疫苗接种和戒烟等，并设法将中国农业知识带到非洲去，改善非洲的农业。</p>\r\n<p>　　盖茨说：&ldquo;中国是个有趣的

国家，它一方面接受其他国家的援助，另一方面它也援助其他更贫穷国家。他们有能力这么做，他们的经济已经改善了很多，他们

能够为帮助更贫穷国家出一分力。&rdquo;</p>\r\n<p>　　中国的烟民也很多。盖茨基金会打算推出一项新计划，帮助中国人戒烟

。盖茨还表示，他计划参加奥运会。</p>\r\n<p>　　<strong>盖茨善举 美国人不吃惊</strong></p>\r\n<p>　　不得不承认，盖

茨&ldquo;千金散尽不在乎&rdquo;的气概颠覆了许多中国人的财富理念。不过，记者发现，盖茨全数捐出580亿美元的消息虽然在许

多国家引起不小的轰动，但在美国却议论很少。</p>\r\n<p>　　美国人大都以一种平常心看待此事，可能是因为他们对富豪们

&ldquo;大把撒钱&rdquo;扶贫济困早已司空见惯。一位美国商人说，美国有钱人多如牛毛，美国乐善好施的人也数不胜数，动不动

就捐出上亿美元的人比比皆是，盖茨无非是因为钱比其他人多所以捐得也多罢了。</p>\r\n<p>　　不把财富留给子女，这是美国许

多富人奉行的原则。在现实生活中，美国人并不十分重视富人们谁比谁钱多，而更看重谁比谁捐钱多。是否能以一种超脱的心态看

待财富，这是检验生活品位高低的试金石。数字显示，美国的企业和个人，每年通过各类基金会进行的慈善公益捐助达6700多亿美

元，占美国GDP的9%。除了富人外，美国平民百姓在捐款方面也不甘落后，钱多多捐，钱少少捐，无钱捐赠便做义工。可以说，乐善

好施的品德已渗入许多美国人的骨髓，融入了美国文化之中。</p>\r\n<p>　　当然，美国人并不否认，他们积极捐款既有自愿因素

，也有&ldquo;被迫&rdquo;的成分。所谓&ldquo;被迫&rdquo;是指美国制定了严格的捐赠制度，这种制度&ldquo;迫使&rdquo;个人

和企业积极捐赠。美国的税收制度非常严格，美国人认为，与其挖空心思&ldquo;偷税漏税&rdquo;，不如乐施行善来造福于社会。

</p>\r\n<p><strong>　　媒体疯狂想象盖茨退休生活</strong></p>\r\n<p><strong>　　建立第三大党 竞选美国总统

</strong></p>\r\n<p>　　《福布斯》杂志日前邀请了多名投资专家对盖茨退休后做什么提出建议。</p>\r\n<p>　　Horizon投资

服务公司首席执行官Chuck Carlson说，他愿意说服盖茨将部分资金交由其公司管理，并将制定专项投资计划确保盖茨资金的安全。

预算盖茨每天可以支配630万美元的资金，或是每分钟4375美元。</p>\r\n<p>　　&ldquo;福布斯国际投资报告&rdquo;编辑John 

Christy提议盖茨启动自己的非洲风险投资基金或私募股权基金，以保持其财产继续增长。</p>\r\n<p>　　《Professional Timing 

Service》编辑Curtis Hesler则认为，盖茨需把医疗放在首位，提议盖茨应当自己建一所医院，并找来真正的内科医师。</p>\r

\n<p>　　&ldquo;福布斯收入证券投资者&rdquo;编辑Richard Lehmann的建议更为疯狂，建议盖茨建立美国第三大政党，并以

&ldquo;重启&rdquo;为口号竞选美国总统。</p>\r\n<p><strong>　　众论</strong></p>\r\n<p>　　★盖茨是伟大的企业家，更是

懂得如何爱子女的好父亲。盖茨的财富都是通过智慧和劳动赚取的，既然这样的钱都不能留给子女，中国一些父母更不能把&ldquo;

不清不白&rdquo;的钱留给子女！从这个角度看，盖茨给我们上了一堂生动的财富教育课。</p>\r\n<p>　　&mdash;&mdash;网友

flypig1974</p>\r\n<p>　　★对比尔&middot;盖茨的慷慨，当然可以从宗教的、文化的诸方面原因去分析，但我认为社会环境是最

值得关注的。一个社会相对公平，人们凭个人的能力都能有尊严地生活，做父母的才可能有&ldquo;赤条条来去无牵挂&rdquo;的洒

脱。</p>\r\n<p>　　&mdash;&mdash;十年砍柴（北京 媒体从业者）</p>\r\n<p>　　★我们没必要把盖茨神化，但他作为企业家的

魄力，作为慈善家的胸怀，却很值得国内富豪们学习。我们也没必要刻意研究美国的遗产税是如何逼迫盖茨们捐出身家，但如何以

制度规定催生慈善文化，以法律之严监控财产的代际转移，也很值得我们深思。</p>\r\n<p>　　&mdash;&mdash;李龙</p>\r\n<p>

　　★&ldquo;达则兼济天下&rdquo;，中国人并不缺少慈善的文化传统，但如今的富人普遍缺失将巨额财富回报社会的慈善文化和

心理认同。中国需要盖茨精神。</p>\r\n<p>　　&mdash;&mdash;美国《侨报》</p>\r\n<p>　　★盖茨的潇洒和稀缺，在于中国的

发展还没有进入到那个阶段。改变是必然的，但须假以时日，几十年后回眸，情形当大不相同了。</p>\r\n<p>　　&mdash;&mdash;

鲁宁</p>\r\n<p><strong>　　盖茨名言</strong></p>\r\n<p>　　■生活是不公平的，你要去适应它。</p>\r\n<p>　　■这个世

界并不会在意你的自尊，而是要求你在自我感觉良好之前先有所成就。</p>\r\n<p>　　■如果你认为学校里的老师过于严厉，那么

等你有了老板再回头想一想。</p>\r\n<p>　　■卖汉堡包并不会有损于你的尊严。</p>\r\n<p>　　■如果你陷入困境，那不是你

父母的过错，不要将你理应承担的责任转嫁给他人，而要学着从中吸取教训。</p>\r\n<p>　　■善待你所厌恶的人，因为说不定哪

一天你就会为这样的一个人工作。</p>\r\n<p>　　■我希望我不是首富。这个虚名并没有为我带来任何好处，因为它，你会变得毫

无隐私可言。 本版稿件据本报综合(来源：重庆晚报)</p>\r\n<p><style type="text/css">\r\n.pb{zoom:1;}\r\n.pb textarea

{font-size:14px; margin:10px; font-family:"宋体"; background:#FFFFEE; color:#000066}\r\n.pb_t{line-height:30px; 

font-size:14px; color:#000; text-align:center;}\r\n\r\n/* 分页 */\r\n.pagebox{zoom:1;overflow:hidden; font-

size:12px; font-family:"宋体",sans-serif;}\r\n.pagebox span{float:left; margin-right:2px; overflow:hidden; text-

align:center; background:#fff;}\r\n.pagebox span a{display:block; zoom:1; overflow:hidden; _float:left;}\r

\n.pagebox span.pagebox_pre_nolink{border:1px #ddd solid; width:53px; height:21px; *height:21px; line-height:21px; 

text-align:center; color:#999; cursor:default;}\r\n.pagebox span.pagebox_pre{color:#3568b9; height:23px;}\r

\n.pagebox span.pagebox_pre a,.pagebox span.pagebox_pre a:visited,.pagebox span.pagebox_next a,.pagebox 

span.pagebox_next a:visited{border:1px #9aafe5 solid; color:#3568b9; text-decoration:none; text-align:center; 

width:53px; cursor:pointer; height:21px; line-height:21px;}\r\n.pagebox span.pagebox_pre a:hover,.pagebox 

span.pagebox_pre a:active,.pagebox span.pagebox_next a:hover,.pagebox span.pagebox_next a:active{color:#363636; 

border:1px #2e6ab1 solid;}\r\n.pagebox span.pagebox_num_nonce{padding:0 8px; height:23px; line-height:23px; 

_height:21px; _line-height:21px; color:#fff; cursor:default; background:#296cb3; font-weight:bold;}\r\n.pagebox 

span.pagebox_num{color:#3568b9; height:23px;}\r\n.pagebox span.pagebox_num a,.pagebox span.pagebox_num a:visited

{border:1px #9aafe5 solid; color:#3568b9; text-decoration:none; padding:0 8px; cursor:pointer; height:21px; 

*height:21px; line-height:21px;}\r\n.pagebox span.pagebox_num a:hover,.pagebox span.pagebox_num a:active{border:1px 

#2e6ab1 solid;color:#363636;}\r\n.pagebox span.pagebox_num_ellipsis{color:#393733; width:22px; background:none; 

line-height:23px;}\r\n.pagebox span.pagebox_next_nolink{border:1px #ddd solid; width:53px; height:21px; 

*height:21px; line-height:21px; text-align:center; color:#999; cursor:default;}</style></p>','2008-06-27 

10:00:16',0,11,2,9),
(12,'胡锦涛主持会议部署奥运筹办最后阶段工作', '<p>　　中新网6月27日电 中共中央政治局27日召开会议，听取<a 

class="akey" href="http://2008.sina.com.cn/" target="_blank"><font color="#0000ff">北京奥运会</font></a>、残奥会筹

办工作进展情况汇报，研究部署北京奥运会筹办最后阶段重点工作。中共中央总书记胡锦涛主持会议。</p>\r\n<p>　　会议认为，

今年以来，在全国各族人民和海内外中华儿女坚定支持下，在国际奥委会和国际社会积极帮助下，北京奥运会组委会同北京市及京

外分赛区城市紧密配合，认真贯彻落实中央关于做好北京奥运会、残奥会筹办工作的指示精神，做了大量富有成效的工作，取得了

重要阶段性成果。北京奥运会火炬境外接力传递胜利结束，境内传递正有序进行；奥运场馆及基础设施建设基本完成；奥运城市运

行和奥运安全保卫、新闻宣传、外事、运动员训练等工作进一步加强；残奥会筹备工作同步进行。当前，北京奥运会筹办形势总的

很好，各项筹办工作基本就绪。</p>\r\n<p>　　会议强调，现在距北京奥运会开幕只有1个多月时间，筹办工作进入最后关键阶段

。全党全国要坚持一手抓抗震救灾工作、一手抓经济社会发展，把在抗震救灾斗争中焕发出来的伟大精神转化为办好北京奥运会的

实际行动，坚定办好北京奥运会的信心和决心，更加奋发努力、更加深入细致地做好各项筹办工作。要围绕举办一届有特色、高水

平奥运会的目标，切实履行我们对国际社会的庄严承诺，以最大热情、尽最大努力把北京奥运会办好，做到让国际社会满意，让各

国运动员满意，让人民群众满意。</p>\r\n<p>　　会议要求，要认真实施北京奥运会、残奥会赛时运行指挥体制，充分发挥统筹协

调作用，确保指挥通畅、运转高效，使各方面既分工负责又相互配合。要继续做好北京奥运会火炬境内传递工作，进一步凝聚广大

人民群众支援灾区、奉献爱心和迎接奥运、支持奥运的强大力量。要着力做好开幕式、闭幕式筹备工作。要扎实做好北京和京外分

赛区城市运行保障工作，实现城市运行与奥运运行紧密衔接，为办好北京奥运会提供坚实基础。要全力加强奥运安全保卫工作，积

极开展奥运安保国际合作，努力实现平安奥运目标。要深入开展奥运宣传工作，加大新闻报道力度，营造浓厚社会氛围，按照国际

通行规则为境外记者采访北京奥运会提供便利。要抓好训练工作，提高为国争光意识，鼓励我国<a class="akey" 

href="http://sports.sina.com.cn/" target="_blank"><font color="#0000ff">体育</font></a>健儿夺取运动成绩和精神文明双

丰收。要切实做好残奥会各项筹办工作，实现两个奥运同样精彩的目标。要广泛开展迎奥运、讲文明、树新风活动和丰富多彩的群

众性文化体育活动，继续以为祖国争光、为奥运添彩为主题开展当好东道主、热情迎嘉宾活动，深化文明礼仪教育，形成讲文明、

重礼仪、团结友善、热情好客的良好风尚，各行各业要以做好本职工作的实际行动迎接北京奥运会，在全社会形成迎接北京奥运会

的热烈气氛。</p>\r\n<p>　　会议还研究了其他事项。</p>','2008-06-27 17:34:45',0,12,2,10),
(13,'俄罗斯欧盟峰会开幕拟制定新合作协议', '<p>　　中新网6月27日电 俄罗斯-欧盟峰会工作会议27日在汉特-曼西斯克开幕。

与会的有俄罗斯总统德米特利&middot;梅德韦杰夫、欧盟上半年轮值主席国斯洛文尼亚总理亚内兹&middot;扬沙、欧盟委员会主席

若泽&middot;曼努埃尔&middot;巴罗佐和欧盟负责外交和安全政策的高级代表哈维尔&middot;索拉纳。</p>\r\n<p>　　据俄新网报

道，俄罗斯和欧盟领导人将启动制定新基础文件工作。这份文件应取代现行的莫斯科与欧洲之间伙伴关系与合作协议。</p>\r\n<p>

　　俄罗斯总统助理谢尔盖&middot;普里霍季科向记者表示，峰会上将讨论三项问题：俄罗斯和欧盟关系现状与发展、全球经济挑

战与俄罗斯和欧盟合作以及国际问题。但是，启动新协议制定工作将是主要议题。</p>','2008-06-27 17:38:16', 0,13,2,11),

(14,'rar压缩文件CRC缺失的解决办法','<p>本人最近MMC卡的压缩文件总是提示CRC缺失解压失败，痛苦不已，努力研究，查找资料

，终于解决此问题！公布出来！</p>\r\n<p>WinRAR CRC校验失败,文件被破坏的解决办法<br />\r\n&nbsp;</p>\r

\n<p>&nbsp;&nbsp;&nbsp;&nbsp; 我采用的方法很简单：在没有解压完（提示出错的情况下）拷贝文件到其它目录，等解压完成，

OK，文件依然好用，这个方法应该是有针对性地，还是枚举一下网络的做法。<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp; 网络的方法：

<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 办法一：WinRAR本身就带有压缩包修复功能。点击菜单&ldquo;工具&rdquo;下的

&ldquo;修复压缩文件&rdquo;即可，快捷键是&ldquo;ALT+R&rdquo;。此法可修复一部分压缩包的常规错误，但是成功率不高。你可

以试着连续修复几次。WinRAR的这个功能对压缩包里有很多文件且文件容量都比较小的情况比较适用。<br />\r

\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 办法二：打开压缩包（不是解压，而是用WinRAR打开），选中你要解压缩的文件，单击鼠标右

键，在弹出的菜单里选择&ldquo;无需确认直接解压缩&rdquo;，快捷键是&ldquo;ALT+W&rdquo;。用此方法，不管是好的压缩包还是

坏的压缩包，统统畅行无阻，成功率100%！<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp; 办法三：釜底抽薪法！</p>\r\n<p>　　其原理

就是让RAR压缩包内损坏的文件解压缩出来，不理会WinRAR的警告，能解压多少就解压多少。解压缩软件还是用WinRAR，不过要做小

小的设置。</p>\r\n<p>&nbsp;</p>\r\n<p><br />\r\n在右键点击解压缩文件后跳出的窗口里，把&ldquo;保留被损坏的文件

&rdquo;复选框选中，点击确定开始解压缩。不要理会解压缩出错的信息，解压缩结束之后你会发现损坏的文件被解压出来了。经过

这样解压出来的损坏文件能正常使用的几率还是非常高的。</p>\r\n<p>&nbsp;</p>\r\n<p>做好保险工作<br />\r\n　　1.做好恢

复记录<br />\r\n　　原始RAR压缩包在压缩时，如果选择放置恢复记录，这样用户下载后即使CRC出错也有自己修复的机会！</p>

\r\n<p>　　2.采取分卷压缩<br />\r\n　　采取分卷压缩的方法便可较大地减少因为出现不可恢复的错误带来的损失。</p>\r

\n<p>　　3.老文件也加恢复记录<br />\r\n　　有人也许会问，新压缩的RAR压缩包可以加入恢复记录，那么已经压缩过的RAR包有

没有办法也加上恢复记录呢？给已经压缩好的RAR压缩包加上恢复纪录是有办法的。</p>\r\n<p>　　只需要打开压缩包，在&ldquo;

命令&rdquo;菜单中选择&ldquo;保护档案文件&rdquo;即可。</p>','2009-01-06 08:28:24',0,14,1,12),
(15,'计算机开始运行命令','<p>进入注册表:开始--运行----输入regedit<br />\r\n进入启动项:开始--运行----输入msconfig<br 

/>\r\n进入主策略:开始--运行----输入gpedit.msc<br />\r\n进入用户帐户策略:开始--运行----输入control userpasswords2<br 

/>\r\n进入保证Windows XP帐户数据库安全:开始--运行----输入syskey<br />\r\n进入IP地址侦测器:开始--运行----输入

Nslookup<br />\r\n进入资源管理器:开始--运行----输入explorer<br />\r\n进入注销命令:开始--运行----输入logoff<br />\r

\n进入60秒倒计时关机命令:开始--运行----输入tsshutdn<br />\r\n进入本机用户和组:开始--运行----输入lusrmgr.msc<br />

\r\n进入本地服务设置:开始--运行----输入services.msc<br />\r\n进入检查XP是否激活:开始--运行----输入oobe/msoobe /a<br 

/>\r\n进入打开记事本:开始--运行----输入notepad<br />\r\n进入垃圾整理:开始--运行----输入cleanmgr<br />\r\n进入开始信

使服务:<br />\r\n开始--运行----输入net start messenger<br />\r\n进入停止信使服务:开始--运行----输入net stop 

messenger<br />\r\n进入计算机管理:开始--运行----输入compmgmt.msc<br />\r\n进入启动 netmeeting:开始--运行----输入

conf<br />\r\n进入DVD播放器:开始--运行----输入dvdplay<br />\r\n进入启动字符映射表:开始--运行----输入charmap<br />

\r\n进入磁盘管理实用程序:开始--运行----输入diskmgmt.msc<br />\r\n进入启动计算器:开始--运行----输入calc<br />\r\n进

入磁盘碎片整理程序:开始--运行----输入dfrg.msc<br />\r\n进入Chkdsk磁盘检查:开始--运行----输入chkdsk.exe<br />\r\n进

入设备管理器:开始--运行----输入devmgmt.msc<br />\r\n进入停止dll文件运行:开始--运行----输入regsvr32 /u *.dll<br />

\r\n进入系统医生:开始--运行----输入drwtsn32<br />\r\n进入15秒关机:开始--运行----输入rononce -p<br />\r\n进入检查

DirectX信息:开始--运行----输入dxdiag<br />\r\n进入显示内存使用情况:开始--运行----输入mem.exe<br />\r\n进入注册表编

辑器:开始--运行----输入regedt32<br />\r\n进入XP自带局域网聊天:开始--运行----输入winchat<br />\r\n进入程序管理器:<br 

/>\r\n开始--运行----输入progman<br />\r\n进入系统信息:<br />\r\n开始--运行----输入winmsd<br />\r\n进入计算机性能监

测程序:<br />\r\n开始--运行----输入perfmon.msc<br />\r\n进入检查Windows版本:<br />\r\n开始--运行----输入winver<br 

/>\r\n进入扫描错误并复原:<br />\r\n开始--运行----输入sfc /scannow<br />\r\n进入任务管理器2000/xp/2003:<br />\r\n开

始--运行----输入taskmgr</p>','2009-01-06 08:35:16',0,36,2,13),
(16,'windows使用技巧大集合','<p>系统修复不求人<br />\r\n以管理员身份登录WinXP，将WinXP光盘放入光驱，在命令提示符窗

口键入：SFC/SCANNOW命令后回车，&ldquo;系统文件检测器&rdquo;自动开始扫描系统文件，而且不需要你的任何干预，不过要注意

：1、在运行SFC之前必须先将WinXP安装光盘放入光驱，否则系统会显示出错，即使再放入光驱也不行。2、在Win2000/XP下使用系

统文件检查器，必须加上正确的参数才能正确运行，我们可以在&ldquo;命令提示符&rdquo;窗口中键入&ldquo;SFC&rdquo;命令，查

看这些参数。3、由于Win2000/XP下的SFC命令是自动执行的，因此我们无法直接知道修复了那些系统文件，不过我们可以通过一下

方法间接知道系统文件的修复情况，依次打开&ldquo;控制面板――管理工具――事件查看器――系统&rdquo;根据时间提示，从列

表中选定运行&ldquo;SFC&rdquo;时的事件，右击该事件并查看其属性即可。<br />\r\n<br />\r\n批量修改成统一格式<br />\r\n

有时候需要在word中对多处文本进行统一格式修改，如果一处处地进行修改实在是太麻烦，在这里有一种简便方法：打开&ldquo;编

辑――查找或替换――高级――格式――宋体&rdquo;输入被替换的统一格式信息，单击&ldquo;确定&rdquo;，接着用鼠标单击

&ldquo;替换为&rdquo;文本框，按相同的方法输入新的统一格式信息，并单击&ldquo;确定&rdquo;按钮，最后点击&ldquo;全部替换

&rdquo;按钮就完成批量修改格式了。<br />\r\n<br />\r\nWinXP下磁盘格式转换高招<br />\r\n从Win2000/XP开始系统中便自带

了用控制台命令：CONVERT 来帮你进行磁盘属性的转换。但只能将FAT32格式转换为NTFS格式，在&ldquo;开始――运行&rdquo;里输

入&ldquo;CMD&rdquo;回车，进入命令提示符，输入convert/?，回车后就会看到对此命令的简单介绍，稍有经验的用户都能轻松掌

握。在命令提示符后输入convert&nbsp;&nbsp;/fs:ntfs 回车，系统会提示在当前状态下无法完成，这时需要重启动，输入

&ldquo;Y&rdquo;然后WinXP会自动关机，在重启两次后，再&ldquo;C&rdquo;盘的属性，已经时NTFS了，整个过程还不到4分钟。<br 

/>\r\n<br />\r\n系统问题请他来帮忙<br />\r\n系统出了毛病，重新启动你的电脑，按住shift键，电脑会直接进入Windows安全

模式，点击&ldquo;开始――程序――附件――系统工具――磁盘扫描程序&rdquo;启动磁盘扫描程序，如果系统错误不是很严重，

笔者建议选择&ldquo;标准扫描&rdquo;，这样扫描速度会快一点，然后勾选&ldquo;自动修复错误&rdquo;复选框，程序在扫描磁盘

的同时会自动修复系统的错误。扫描结束后，程序会报告&ldquo;磁盘扫描结果，磁盘扫描程序在此驱动器找到错误并全部修复

&rdquo;而更多的情况可能会告诉你，&ldquo;磁盘扫描程序，在此驱动器没有找到任何错误&rdquo;你不要认为程序在瞎折腾，它是

做了好事不留名，在扫描磁盘的同时它已经默默地把系统错误修复好了。<br />\r\n<br />\r\n去掉磁盘扫描等待时间<br />\r\n

但WinXP非正常关机时，重新开机需要等待10秒左右，才会开始磁盘扫描，如果你觉得这10秒钟太长，那就干脆让它变成0秒，按下

&ldquo;开始――所有程序――附件――命令提示符&rdquo;在提示符下输入chkntfs/t:0然后回车，这样下次就不用等那漫长的10秒

了。<br />\r\n<br />\r\n释放系统备份所占用的空间<br />\r\nWindowsXP在安装完毕后会自动备份一些重要的系统文件，如果你

想把这些空间腾出来，那好，按&ldquo;开始――运行&rdquo;输入 sfc/purgecache回车，稍等片刻，你会发现硬盘的空间又多出不

少。<br />\r\n<br />\r\n删除预读文件以提升系统效能<br />\r\nWinXP有个专门储存安装过的软件的预读文件的文件夹，以便预

先读取以加快软件运行速度，但WinXP并不会自动将已卸载软件的预读文件删除，所以只有手动来删除了，进入X：\\windows\

\Prefetch（X表示WinXP所在的分区）文件夹。删除除了&ldquo;Layout.ini&rdquo;以外的所有文件。<br />\r\n<br />\r\n全方位

的了解你的计算机<br />\r\n想不想全方位的了解你的计算机软件、硬件信息和使用状况呢？WinXP已带有强大的系统信息收集程序

，按下&ldquo;开始――帮助和支持&rdquo;弹出&ldquo;帮助和支持中心&rdquo;窗口，在右边选择&ldquo;使用工具查看你的计算机

信息并分析问题&rdquo;，然后在左边的列表中选择&ldquo;我的计算机信息&rdquo;，好了你可以在右边选择你想知道的信息了。

<br />\r\n<br />\r\n瞬间锁定计算机<br />\r\n突然有事要离开片刻，但又不想关机，为了不让别人动你的电脑，你只要按下

Windows徽标键+L,即可快速锁定计算机，除非知道密码，谁也别想动。<br />\r\n<br />\r\n在命令模式下还原系统<br />\r\n在

WindowsXP启动时，按下F8键，显示启动菜单，在启动菜单中选择&ldquo;带命令行提示的安全模式&rdquo;，并以管理员身份登陆，

在命令提示符后输入：&ldquo;％systemroot%\\system32\\restore\\rstrui.exe&rdquo;回车后即可根据屏幕上的向导将系统恢复

到正常状态。<br />\r\n<br />\r\n回收站无法清空<br />\r\n启动到带命令行的安全模式下，然后对每一个分区下的Recycled目

录执行Attrib-s-r-h命令，去除特殊属性，然后使用Del命令删除每一个分区下的Recycled目录，操作完毕后重启进入正常模式，问

题一般能解决。<br />\r\n<br />\r\nWindows2000系统下巧用DOS<br />\r\n在安装Win2000系统之前，先用Win98启动盘（或Win98

光盘）引导进入DOS在A:\\提示符下，键入formant&nbsp;&nbsp;c:/s（如果是光盘引导，需要进入光盘目标下的Win98目标）然后键

入formant&nbsp;&nbsp;c:/s，格式完成后，按正常顺序安装Win2000系统（注意在安装过程中，不能再格式化C盘）系统安装完成后

，在多重启动菜单中选择Microsoft Windows怎样，屏幕显示C:\\已进入DOS系统了。<br />\r\n<br />\r\n在Windows中怎样寻找自

启动程序<br />\r\n通过&ldquo;系统配置实用程序&rdquo;寻找。按&ldquo;开始――运行&rdquo;键入msconfig.exe回车，启动

&ldquo;系统配置实用程序&rdquo;选择&ldquo;启动&rdquo;选项卡，即可查看随系统启动的程序名称和位置。<br />\r\n<br />\r

\n在WindowsXP运行DOS程序<br />\r\n可以采用start命令来运行。在WinXP命令提示符后输入start/separate&nbsp;&nbsp;&lt;要

运行的程序&gt;，即可运行相应的DOS程序，其中参数separate的作用是在单独的内存空间启动16位程序，当DOS运行后，我们还可

以按Alt+Enter键在全屏幕和窗口之间进行切换。<br />\r\n<br />\r\n怎样才能真正删除软件<br />\r\n1、直接删除。2、软件自

身删除。3、系统功能法。4、注册表运行法。如果在安装时没有建立程序项，还可以借助注册表删除软件，方法是，单击&ldquo;开

始――运行&rdquo;输入&ldquo;regedit&rdquo;回车，打开注册表编辑器，在左窗口中展开&rdquo;<br />\r

\nHKEY&mdash;LOCAL&mdash;MACHINE\\Software\\Microsoft\\Windows\\CurrentVersion\\Uninstall分支，在Uninstall下找到并

单击要删除的软件，再在右窗格中找到并双击&ldquo;Uninstall string&rdquo;或&ldquo;QuietUninstallstring&rdquo;的字符串

值，选中键值（Win98/me）或数值数据（Win2000/XP）框中的全部内容，复制后，关闭注册表编辑器，再次单击&ldquo;开始――运

行&rdquo;将刚才复制的内容粘贴到&ldquo;打开&ldquo;框中回车即可。<br />\r\n<br />\r\n打开DMA模式<br />\r\n右键单击

&ldquo;我的电脑――属性――硬件――设备管理器&rdquo;然后点击展开&ldquo;IDE ATA/ATPI控制器&rdquo;分支，双击&ldquo;主

要IDE通道&rdquo;，点击&ldquo;高级设置&rdquo;，在&ldquo;传送模式&rdquo;中<br />\r\n选择&ldquo;DMA(若可用)&rdquo;即可

。<br />\r\n<br />\r\nIE6.0的重装有两种方法<br />\r\n1、打开注册表编辑器，找到HKEY&mdash;LOCAL&mdash;MACHINE\

\SOFTWARE\\Microsoft\\Active setup\\InstalledComponents\\{89820200-ECBD-11CF-81385-00AA005B4383}将IsInstalled的

DWORD值改为0就可以了。<br />\r\n2、放入WinXP光盘，在开始――运行中键入rundll32.exe setupapi, InstallHinfSection 

DefaultInstall 132 %windir%INF\\ie.inf<br />\r\n<br />\r\n防止IE主页被修改又一招<br />\r\n首先找到桌面或快速启动栏

相应浏览器的快捷方式图标，然后用鼠标右击该图标，选择&ldquo;属性&rdquo;，接着在弹出的界面中切换到&ldquo;快捷方式

&rdquo;选项卡，在&ldquo;目标&rdquo;路径后加上一个空格，再添上以前默认的主页地址，最后点&ldquo;确定&rdquo;就大官告成

了。这种方法可以对付那些恶意修改。<br />\r\n<br />\r\n3秒钟找到DLL文件的罪魁祸首<br />\r\n我们经常会看到一些文章介

绍用regsvr32命令注册DLL文件，从而解决一些问题，比如&ldquo;添加/删除&rdquo;程序打不开，网页连接打不开等，不过对于一

些菜鸟来讲，只有把所有看到过的这样的技巧一条一条的记下来，以后遇到问题时再拿来用才行，如果一时想不起来，或者遇到新

问题，对于该注册那些DLL文件，就一无所知，要是自己也能掌握这样的技巧就好了。突然想起所有DLL文件一般都在system32目录

下，如果能把system32目录下所有的DLL文件都注册一下，那么不就可以解决大多数的由DLL文件引起的问题吗？怎样才能把

system32目录下的所以DLL文件都注册一遍呢？其实实现起来很简单，只要运行下面这个命令即可：for % in (%WinDir%\

\SYSTEM32\\*.DLL) DO Regsvr32.EXE /s %1&nbsp;&nbsp;（注意以上命令与参数之间的空格）只要在命令提示符下输入上面命令，

就能起到注册system32目录下所有DLL文件的作用，为了便于使用，建议将其保存为&ldquo;注册DLL.Bat&rdquo;批处理文件，以后

再遇到一些由DLL文件引起的问题，一运行它，问题一般就能解决。<br />\r\n<br />\r\n让子菜单听令后再启动<br />\r\n打开注

册表编辑器，找到[HKEY&mdash;CURRENT&mdash;USER\\ContnlPanel\\Desktop]在右侧窗格中找到名为MenuShowDelay的字符串值，

其默认的数值数据为1，意思是延迟时间为1毫秒，双击，在弹出的编辑窗口中将其数值数据设为&ldquo;50000&rdquo;点击确定后，

关闭注册表编辑器，这样当鼠标指向下拉菜单后，只有点击了相应的选项，其子菜单才会显示出来，做到了让菜单听令行动，这样

就可以有效避免误操作带来的麻烦。<br />\r\n<br />\r\n永远消失在对方的QQ中<br />\r\n用TM模式登录QQ，然后在好友列表中

找到不想让自己的QQ号出现在对方的好友列表中的人，然后右击其头像，选择&ldquo;将自己从对方的联系人名单列表中删除

&rdquo;，然后在弹出的对话框中选择&ldquo;是&rdquo;即可。<br />\r\n<br />\r\nSnag It抓窗口时不要箭头<br />\r\n我们在

论坛发帖时，常需要用到Snagit抓图，有时会将鼠标的箭头留在图中，为了不留下这个箭头，很多朋友采用ctrl+shift+p(默认设置

)热键来抓图解决这个问题，其实有更好的办法：在Snagit经典视图模式下，选择菜单input取消IndudeCuyso的勾选状态即可。<br 

/>\r\n<br />\r\n让管理员出现在欢迎屏幕<br />\r\n平时我们使用&ldquo;欢迎屏幕&rdquo;方式登陆时，Administrator（管理员

）帐号并不显示在其中，如果要以此帐号登录，需要按两次Ctrl+Alt+Del然后输入帐号和密码，非常不方便。有一个非常方便的方

法，可以解决这个问题。运行注册表编辑器，找到【HKEY&mdash;LOCAL&mdash;MACHINE\\SOFTARE\\microsoft\\WindowsNT\

\CurrenVersion\\winlogon\\SpecialAccounts\\UserList】在下面新建一个dword值，键名为帐户名（Administrator）再修改其值

即可（&ldquo;1&rdquo;为显示还迎屏幕，&ldquo;0&rdquo;为不显示。）<br />\r\n<br />\r\n用ACD See7.0快速抓图<br />\r\n

打开ACDSee7.0选择菜单中的&ldquo;工具――选项&rdquo;，在窗口左侧选择&ldquo;浏览器&rdquo;，勾选右侧窗格中的&ldquo;在

系统栏显示图标&rdquo;及&ldquo;退出后继续运行于系统栏&rdquo;，这样以后可以随时右击系统栏内的ACDSee图标，选择&ldquo;

屏幕捕捉&rdquo;项，然后在&ldquo;屏幕捕捉&rdquo;窗口中进行抓图的设置即可，经过这样处理，以后打开图片的速度也会快很多

。<br />\r\n<br />\r\nVfloppy让你丢掉软盘<br />\r\n软盘是上个世纪的东西了，用起来很不方便，推荐各位菜鸟使用&ldquo;

虚拟启动软盘&rdquo;（Vfloppy）在硬盘中虚拟一个软驱。下载http://onlinedown.net/down/vfloppy.rar下载后将其解压缩到D：

\\vfloppy15&rdquo;文件夹，然后双击运行&ldquo;vfloppy.exe&rdquo;，单击&ldquo;映像文件&rdquo;最后面的选择映像文件路径

图标，选择D：\\vfloopy15中的&ldquo;BOOTDISK.IMG&rdquo;文件，打开，最后单击&rdquo;应用&ldquo;按钮即可，这样在电脑启

动到启动菜单时，会出现一个&rdquo;由虚拟启动软盘启动&ldquo;的项，（如果是英文版的XP，此项显示为乱码，但不影像操作）

选择它即可启动到DOS。</p>','2009-01-06 08:42:06',0,15,2,14);
CREATE TABLE `users` (
  `id` int(11) NOT NULL auto_increment,
  `username` varchar(12) NOT NULL,
  `password` varchar(12) NOT NULL,
  `blogtitle` varchar(20) NOT NULL,
  `truename` varchar(15) default NULL,
  `sex` int(11) default NULL,
  `age` int(11) default NULL,
  `email` varchar(255) default NULL,
  `point` int(11) default '0',
  PRIMARY KEY  (`id`)
)  ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=20 ;

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`blogtitle`,`truename`,`sex`,`age`,`email`,`point`) values 

(1,'xujinbin','xujinbin','天使爱我','许金斌',0,23,'595706705@qq.com',3000),
(2,'mingming','mingming','明明的博客','明明',1,25,'mingming@126.com',54),
(3,'lixiang','lixiang','梦想成就未来的博客','梦想',2,25,'mengxiang@qq.com',73),
(4,'jianyi','jianyi','简易博客','吴同',0,21,'282622893@qq.com',42),
(5,'wangli','wangli','王丽的漂亮空间','王丽',1,22,'wl1945@163.com',152),
(6,'liqiang','liqiang','我的精彩世界','李强',0,33,'liqiang1128@163.com',45),
(7,'ccitsoft','ccitsoft','长春工程学院校园博客','长春工程学院',0,70,'ccitsoft@ct.com',33),
(8,'liming','liming','我的精彩世界','黎明',1,29,'liming@lm.com',20),
(9,'wangbo','wangbo','哈哈哈博客','王勃',0,22,'wangbo@sina.com',29),
(10,'duoyonghu','duoyonghu','做一个自由人','自由人',0,55,'zyr@126.com',18),
(11,'libai','libai','李白诗的世界','李白',0,99,'libai@126.com',20),
(12,'lihua','lihua','李华的心得体会','李华',1,35,'lihua@sohu.com',25),
(13,'tangxing','tangxing','唐星个人博客','唐星',0,32,'tx1728@yahoo.com.cn',56),
(14,'liuxiang','liuxiang','刘翔的个人博客','刘翔',0,32,'liuxiang@126.com',32);

