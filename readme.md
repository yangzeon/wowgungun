# wow小宠物滚滚升级20200830


我这就是为了 **释放双手**. 自动换队.在埃苏纳用玩具道具反复刷

因为我自己被永久封了2个账号了。所以我用了特别的方式。

![独立环境](https://github.com/yangzeon/wowgungun/raw/master/20190809175239.png)

主机A（常用主机）

虚拟机（在主机A里开一个HYPER-V。建个虚拟机）教程 [https://cloud.tencent.com/developer/article/1334301](https://cloud.tencent.com/developer/article/1334301)

主机B（挂机用/我这是一台没显卡的迷你主机.反正画质全关。能跑的动就行）

找个远程软件.比如MultiDesk

主机A开MultiDesk软件。连接到虚拟机。虚拟机开AHK或者按键精灵反复按。然后开MultiDesk软件连接到主机B。主机B登陆WOW

建议用[ahk](https://www.autohotkey.com/).按键精灵被捆绑了一堆乱七八糟的东西.

我的AHK(xiaochongwu.exe)也放上来了.运行后按F2键.它会间隔1秒来按 【 和 】键.一直到退出

这样主机B就是一个干净的环境.WOW就无法识别到非法软件.

虚拟机开自动按键.不耽误主机A玩别的。。。如果HYPER-V那里麻烦的话。就需要两个电脑来完成我这个动作。


## 利用游戏机制获取利益都将被封号 **真爱自己的账号**


# 插件和按鍵

有个ADDONS.ZIP的文件 **建议跟常用插件分开两个文件夹**

解压缩放到 **World of Warcraft\retail_\Interface**

有个Rematch和tdBattlePetScript。如果懒的用我的配置。可以直接拷贝进去。记得备份。记得备份。记得备份。

Rematch&tdBattlePetScript文件放到 **X:\World of Warcraft\retail_\WTF\Account\你的游戏ID\SavedVariables**

在游戲設置裏.給宏設置一個快捷鍵 ] 再給 游戲選項-插件管理-tdBattlePetScript 裏設置 自動按鍵(auto button hotkey) 設置成 [ 
因爲我的AHK是這兩個按鍵

>  ## ps:所以请关闭所有自动交接任务的插件
##請下載最新的20200830那個版本.有個函數更新了.之前的用不了.

# 准备道具和宏

	/施放 復活戰寵(戰寵)
	/target 冰脊寶寶

如何去紅圈地址.最上面那個60.31是刷的最快的.人也最多.

法爺開門過去.然後跑尸體.要麽找朋友雙人飛過去.

![地點](https://github.com/yangzeon/wowgungun/raw/master/shuanghuolin.png)
<details>
  <summary>船難俘虜  地點和道具(這個就別點開看了.已經沒經驗了)</summary>

任务道具的位置：阿苏纳(坐标49.4；45.3)

    /use 斯騰法索的寵物日誌
    /施放 復活戰寵(戰寵)
    /target 船難俘虜
    /script SelectGossipOption(1)
    /click tdBattlePetScriptAutoButton

# 太多了。懒的写了

教程请移步 [https://bbs.nga.cn/read.php?tid=15193943](https://bbs.nga.cn/read.php?tid=15193943)

下面的优化版

[http://nga.178.com/read.php?tid=16753294](http://nga.178.com/read.php?tid=16753294)

[http://nga.178.com/read.php?tid=17908680](http://nga.178.com/read.php?tid=17908680)

[http://nga.178.com/read.php?tid=17889097](http://nga.178.com/read.php?tid=17889097)

## 关于滚尾锚位置及不容易被打死的地点 我喜欢用里面倒数第7和倒数第9.因为达拉然跳下去就是了.[https://bbs.nga.cn/read.php?tid=17429619](https://bbs.nga.cn/read.php?tid=17429619)

![配置](https://github.com/yangzeon/wowgungun/raw/master/20190809180525.png)
</details>


# 我的配置

<details>
  <summary>船難俘虜   <--已經被暴雪砍了.沒經驗了.現在都是冰寶寶了 不用點開這個了</summary>
  

	船難俘虜0:305P:222415R:2125L7:212417I:
	船難俘虜1::11242CM:12242A8:212417I:
	船難俘虜2::11242CM:12242A8:212417I:
	船難俘虜3::11242CM:12242A8:212417I:
	船難俘虜4::21141A5:11272CK:12202KT:
	船難俘虜5::222415R:2125L7:12152FB:
	船難俘虜6::21141A5:11272CK:12202KT:
	船難俘虜7::11181FS:11171BB:21151C:
	船難俘虜8::21181FS:111A1BB:21151C:
	船難俘虜9::11172CK:21292L:111A1BB:

前面6个平均70秒。后面几个都是120秒的。努力凑宠物吧。

船難俘虜0

    change(#3) [enemy.aura(不死生物).exists]
    standby [enemy.aura(不死生物).exists]
    change(next) [self.dead]
    quit [self(#2).dead & enemy(#2).hp>1000]
    if [self(#1).active]
    change(#2) [round=3]
    use(#2)
    use(#3)
    endif
    if [self(#2).active]
    use(#3) [round=4]
    use(#2)
    endif
    if [self(#3).active]
    quit [self(#2).active]
    use(#3)
    use(#2)
    endif

船難俘虜123一样的

    change(#3) [enemy.aura(不死生物).exists]
    change(next) [self.dead]
    if [self(#1).active]
    use(#2)
    use(#1) [round=2]
    use(#3)
    change(#2)
    endif
    if [self(#2).active]
    use(#2) [self.round=1]
    use(#3) [enemy.hp<443]
    use(#1)
    endif
    if [self(#3).active]
    use(#3)
    use(#2)
    endif
    quit

船難俘虜4&6

	quit [round = 1 & self.hpp < 100]
	change(#2) [round = 3]
	change(#3) [enemy.aura(不死生物).exists]
	standby [self(#3).active & enemy.aura(不死生物).exists]
	ability(穩紮穩打) [enemy(#2).active]
	ability(地雷區)
	ability(格林奇的禮物)
	ability(超級充能) [enemy(#3).active]
	ability(離子砲:209)[self.aura(超級充能:207).exists]
	ability(#1)
	quit

船難俘虜5

    change(#3) [enemy.aura(不死生物).exists]
    standby [enemy.aura(不死生物).exists]
    change(next) [self.dead]
    quit [self(#2).dead & enemy(#2).hp>1000]
    if [self(#1).active]
    change(#2) [round=3]
    use(#2)
    use(#3)
    endif
    if [self(#2).active]
    use(#3) [round=4]
    use(#2)
    endif
    if [self(#3).active]
    quit [self(#2).active]
    use(#3)
    use(#2)
    endif

船難俘虜78

    quit [self(小鋼鐵之星).active &round=1] 
    quit [self(暹羅貓).active &round=1] 
    change(next) [self.dead] 
    if [self(#1).active ] 
    standby [round=2] 
    ability(黑爪) [ !enemy.aura(黑爪).exists ] 
    ability(群聚攻擊) [round=3] 
    ability(群聚攻擊) [round=7] 
    standby 
    endif 
    if [self(#2).active & enemy(#2).active] 
    ability(#2) 
    endif 
    if [self(#2).active & enemy(#3).active] 
    ability(#1) [enemy.round=1] 
    ability(#2) [enemy.speed.fast] 
    ability(#3) [self.aura(上緊發條).exists &enemy.round=2] 
    ability(#1) [enemy.round=3 & enemy.speed.slow & self.aura(超級充能).exists ] 
    ability(#3) [self.aura(上緊發條).exists &enemy.round=4] 
    ability(#1) [enemy.round=5] 
    standby 
    endif 
    ability(#1)

</details>
	冰脊寶寶 (NPC#85003)

	1: 艾諾瑪路斯 (2,2,1)
	2: 熔焰小貓 (2,1,2)
	3: 暮光幼龍 (1,1,1)

	冰脊寶寶:2J0B:22142OQ:212514A:11172JL:

換隊參數為 

	有效血綫 25%
	忽略屬性
	最高血量

冰脊寶寶 的自動代碼

	quit [ self.count <3 ]
	change(next) [ self.dead ]
	change(#2) [round=3 & enemy(#1).hp > 517]
	change(#2) [round=3 & enemy(#2).hp > 728 & enemy(#3).hp > 728]
	use(奔流:923)
	change(#3) [enemy(#1).hp <= 517 & enemy(#1).aura(中毒:379).exists]
	change(#3) [enemy(#1).hp <= 422 & !enemy(#1).aura(中毒:379).exists]
	use(毒殺計畫:1954)
	use(虛無新星:2356)
	use(#1) [enemy.aura(格擋:759).exists]
	use(暮光隕星:1960) [self(#3).aura(龍類).exists]
	use(暮光隕星:1960) [enemy(#1).hp <= 281.3 & enemy(#2).hp <= 281.3]
	use(暮光隕星:1960) [enemy(#1).hp <= 281.3 & enemy(#3).hp <= 281.3]
	use(暮光隕星:1960) [enemy(#2).hp <= 281.3 & enemy(#3).hp <= 281.3]
	use(暮光隕星:1960) [enemy(#1).dead & enemy(#2).hp <= 422]
	use(暮光隕星:1960) [enemy(#1).dead & enemy(#3).hp <= 422]
	use(暮光隕星:1960) [enemy(#2).dead & enemy(#1).hp <= 422]
	use(暮光隕星:1960) [enemy(#2).dead & enemy(#3).hp <= 422]
	use(暮光隕星:1960) [enemy(#3).dead & enemy(#1).hp <= 422]
	use(暮光隕星:1960) [enemy(#3).dead & enemy(#2).hp <= 422]
	use(暮光隕星:1960) [enemy(#1).dead & enemy(#3).dead]
	use(暮光隕星:1960) [enemy(#2).dead & enemy(#3).dead]
	use(暮光隕星:1960) [enemy(#3).active]
	use(黑暗烈焰:792) [enemy.type!=小動物]
	use(#1)
	standby

更多小寵物配置在https://nga.178.com/read.php?tid=22318561
