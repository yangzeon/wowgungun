
TD_DB_BATTLEPETSCRIPT_GLOBAL = {
	["global"] = {
		["version"] = 80100.01,
		["scripts"] = {
			["AllInOne"] = {
			},
			["FirstEnemy"] = {
			},
			["Base"] = {
			},
			["Rematch"] = {
				["残忍的托米"] = {
					["name"] = "残忍的托米",
					["code"] = "ability(困惑叮刺:632) [round = 1]\nability(蟲群:706) [!enemy(『殘暴』湯米:2603).aura(粉碎防禦:542).exists]\nability(抓傷:119)",
				},
				["船難俘虜3"] = {
					["name"] = "船難俘虜3",
					["code"] = "change(#3) [enemy.aura(不死生物).exists]\nchange(next) [self.dead]\n\nif [self(#1).active]\nuse(#2)\nuse(#1) [round=2]\nuse(#3)\nchange(#2)\nendif\n\nif [self(#2).active]\nuse(#2) [self.round=1]\nuse(#3) [enemy.hp<443]\nuse(#1)\nendif\n\nif [self(#3).active]\nuse(#3)\nuse(#2)\nendif\nquit",
				},
				[150914] = {
					["name"] = "游荡幻影",
					["code"] = "change(next) [self.dead]\nability(困惑叮刺:632) [!enemy(#1).aura(困惑叮刺:633).exists]\nability(蟲群:706)\nability(鑽地:159) [enemy.aura(亡靈:242).exists]\nif [self(棕毛兔:1943).hpp < 33]\nability(躲閃:312)\nendif\nability(亂舞:360)\nability(偏斜:490) [enemy(潰爛食腐者:2598).aura(亡靈:242).exists]\nability(#1)\nability(#3)",
				},
				[150918] = {
					["name"] = "残忍的托米",
					["code"] = "ability(困惑叮刺:632) [round = 1]\nability(蟲群:706) [!enemy(『殘暴』湯米:2603).aura(粉碎防禦:542).exists]\nability(抓傷:119)",
				},
				[150922] = {
					["name"] = "淤泥噴射者",
					["code"] = "ability(躲閃:312)\nability(奔竄:163) [!enemy.aura(粉碎防禦).exists]\nability(亂舞:360) [enemy.aura(粉碎防禦:542).exists]\nability(#3)\nability(#1)",
				},
				["船難俘虜2"] = {
					["name"] = "船難俘虜2",
					["code"] = "change(#3) [enemy.aura(不死生物).exists]\nchange(next) [self.dead]\n\nif [self(#1).active]\nuse(#2)\nuse(#1) [round=2]\nuse(#3)\nchange(#2)\nendif\n\nif [self(#2).active]\nuse(#2) [self.round=1]\nuse(#3) [enemy.hp<443]\nuse(#1)\nendif\n\nif [self(#3).active]\nuse(#3)\nuse(#2)\nendif\nquit",
				},
				[150858] = {
					["name"] = "黑鬃",
					["code"] = "ability(極凍之寒:786)\nability(劈砍:943) [!enemy(黑鬃:2592).aura(流血:491).exists]\nchange(伊奇:1532)\nability(黑爪:919) [!enemy(黑鬃:2592).aura(黑爪:918).exists]\nability(群聚攻擊:581)\nchange(next) [self.dead]\nability(#3)\nability(#1)",
				},
				["船難俘虜7"] = {
					["name"] = "船難俘虜5",
					["code"] = "quit [self(小鋼鐵之星二).active &round=1] \nquit [self(暹羅貓).active &round=1] \nchange(next) [self.dead] \nif [self(#1).active ] \nstandby [round=2] \nability(黑爪) [ !enemy.aura(黑爪).exists ] \nability(群聚攻擊) [round=3] \nability(群聚攻擊) [round=7] \nstandby \nendif \nif [self(#2).active & enemy(#2).active] \nability(#2) \nendif \nif [self(#2).active & enemy(#3).active] \nability(#1) [enemy.round=1] \nability(#2) [enemy.speed.fast] \nability(#3) [self.aura(上緊發條).exists &enemy.round=2] \nability(#1) [enemy.round=3 & enemy.speed.slow & self.aura(超級充能).exists ] \nability(#3) [self.aura(上緊發條).exists &enemy.round=4] \nability(#1) [enemy.round=5] \nstandby \nendif \nability(#1)",
				},
				["船難俘虜1"] = {
					["name"] = "船難俘虜1",
					["code"] = "change(#3) [enemy.aura(不死生物).exists]\nchange(next) [self.dead]\n\nif [self(#1).active]\nuse(#2)\nuse(#1) [round=2]\nuse(#3)\nchange(#2)\nendif\n\nif [self(#2).active]\nuse(#2) [self.round=1]\nuse(#3) [enemy.hp<443]\nuse(#1)\nendif\n\nif [self(#3).active]\nuse(#3)\nuse(#2)\nendif\nquit",
				},
				[150911] = {
					["name"] = "地穴恶魔",
					["code"] = "change(小撕掠者:514) [enemy.type= 龍類]\nability(困惑叮刺:632) [!enemy(地穴惡蛛:2597).aura(困惑叮刺:633).exists]\nability(蟲群:706) [!enemy(#2)).aura(粉碎防禦:542).exists]\nability(抓傷:119)\nif [self(螢火蟲:747).active & !enemy(痛苦的靈魂:2611).aura(粉碎防禦:542).exists]\nability(蜂擁:706)\nendif\nchange(next) [self.dead]\nability(躲閃:312) [self(寒地野兔:1943).hpp < 33 ]\nability(鑽地:159) [enemy.aura(亡靈:242).exists]\nability(亂舞:360)\nability(腳踢:307)\nability(閃擊:713)\nability(偏斜:490)",
				},
				[66733] = {
					["name"] = "4莫鲁克",
					["code"] = "if [enemy(#3).hp=1850 & enemy(螢光潛獵蝶:1000).dead ]\nability(生命交換)\nendif\nability(蔓延真菌) [ !enemy.aura(蔓延真菌).exists ]\nability(奔竄) [ !enemy.aura(粉碎防禦).exists ]\nability(吞噬)\nchange(#2) [ !self(#2).played ]\nchange(#3)\nability(月火術) [ !weather(月光) ]\nuse(#1)",
				},
				[150929] = {
					["name"] = "邪惡的泰瑞",
					["code"] = "ability(極凍之寒:786) [round = 1]\nability(劈砍:943) [round =2]\nchange(伊奇:1532)\nability(黑爪:919) [!enemy(邪惡的泰瑞:2613).aura(黑爪:918).exists]\nability(群聚攻擊:581)\nchange(next) [self.dead]\nability(#2)\nability(#3)\nability(#1)",
				},
				["船難俘虜5"] = {
					["name"] = "船難俘虜5",
					["code"] = "change(#3) [enemy.aura(不死生物).exists]\nstandby [enemy.aura(不死生物).exists]\nchange(next) [self.dead]\nquit [self(#2).dead & enemy(#2).hp>1000]\nif [self(#1).active]\nchange(#2) [round=3]\nuse(#2)\nuse(#3)\nendif\n\nif [self(#2).active]\nuse(#3) [round=4]\nuse(#2)\nendif\n\nif [self(#3).active]\nquit [self(#2).active]\nuse(#3)\nuse(#2)\nendif",
				},
				[155267] = {
					["name"] = "復活的守衛",
					["code"] = "ability(毒牙:152) [!enemy(復復活的守衛:2751).aura(中毒:379).exists]\nability(躲閃:312) [enemy.aura(亡靈:242).exists]\nability(奔竄:163) [!enemy.aura(粉碎防禦:542).exists]\nchange(小兔子:729)\nability(亂舞:360)\nchange(next) [self.dead]\nability(#2)\nability(狩獵團隊:921)\nability(#3)",
				},
				[66741] = {
					["name"] = "8天选者亚济",
					["code"] = "if [enemy(#3).hp>579 ]\nuse(#1) [!self.aura(上緊發條).exists]\nuse(#2) [ round = 2 ]\nuse(#3) [ round = 3 ]\nuse(#1)\nchange(#2)\nendif\nif [enemy(#3).hp=578]\nuse(#3)\nendif",
				},
				[150925] = {
					["name"] = "『折磨者』莉姿",
					["code"] = "ability(尖刺皮膚:315) [round = 1]\nability(釘刺:359) [round =2]\nability(爆炸:282) [round =3]\nchange(伊奇:1532)\nability(黑爪:919) [!enemy(『折磨者』莉姿:2612).aura(黑爪:918).exists]\nability(群毆:581)\nability(偏斜:490)\nability(暴怒:124)\nability(快速三連擊:355)",
				},
				[98489] = {
					["name"] = "船難俘虜0",
					["code"] = "change(#3) [enemy.aura(不死生物).exists]\nstandby [enemy.aura(不死生物).exists]\nchange(next) [self.dead]\nquit [self(#2).dead & enemy(#2).hp>1000]\nif [self(#1).active]\nchange(#2) [round=3]\nuse(#2)\nuse(#3)\nendif\n\nif [self(#2).active]\nuse(#3) [round=4]\nuse(#2)\nendif\n\nif [self(#3).active]\nquit [self(#2).active]\nuse(#3)\nuse(#2)\nendif",
				},
				["船難俘虜4"] = {
					["name"] = "滾000",
					["code"] = "quit [round = 1 & self.hpp < 100]\nchange(#2) [round = 3]\nchange(#3) [enemy.aura(不死生物).exists]\nability(穩紮穩打) [enemy(#2).active]\nability(超級充能) [enemy.aura(地下).exists]\nability(地雷區)\nability(格林奇的禮物) \nability(#1)\nquit",
				},
				["船難俘虜99121"] = {
					["name"] = "阿苏纳：海难俘虏00",
					["code"] = "quit [round = 1 & self.hpp < 100] \nchange(next) [self.dead] \nchange(#3) [enemy.aura(不死生物).exists] \nstandby [self(#3).active & enemy.aura(不死生物).exists] \nability(黑爪) [round = 1]\nstandby [round = 2]\nability(706) [round = 3]\nability(超級充能) [enemy.aura(地下).exists] \nability(#1) \nquit",
				},
				["讯问者莉兹"] = {
					["name"] = "讯问者莉兹",
					["code"] = "ability(尖刺皮膚:315) [round = 1]\nability(釘刺:359) [round =2]\nability(爆炸:282) [round =3]\nchange(伊奇:1532)\nability(黑爪:919) [!enemy(『折磨者』莉姿:2612).aura(黑爪:918).exists]\nability(群毆:581)\nability(偏斜:490)\nability(暴怒:124)\nability(快速三連擊:355)",
				},
				["船難俘虜9"] = {
					["name"] = "船難俘虜4",
					["code"] = "quit [round = 1 & self.hpp < 100]\nchange(#2) [round = 7]\nchange(next) [self.dead]\nstandby [!self.aura(超級充能).exists & enemy.aura(地下).exists]\nability(理毛) [round = 2]\nability(穩紮穩打) [enemy(#2).active]\nability(爆炸) \nability(超級充能) [self.aura(旋紧发条).exists]\nability(#1)\nquit",
				},
				["船難俘虜999"] = {
					["name"] = "船難俘虜1",
					["code"] = "use(原始尖嘯) [enemy.aura(不死生物).exists]\nstandby [enemy.aura(不死生物).exists]\nchange(next) [self.dead]\n\nif [self(#1).active]\nuse(#2)\nuse(#1) [round=2]\nuse(#3)\nchange(#2)\nendif\n\nif [self(#2).active]\nuse(#2) [self.hp>899&enemy(#1).hp>496]\nuse(#3) [!enemy(#2).active]\nuse(#2) [self.round=5]\nuse(#1)\nendif\n\nif [self(#3).active]\nuse(#1) [!self(#3).active]\nuse(#2) [self.speed.fast]\nuse(#2) [enemy.aura(地下).exists]\nstandby\nendif\nquit",
				},
				[87124] = {
					["name"] = "影月谷：阿什雷",
					["code"] = "if [ enemy(小伊萊克).hp > 650 ]\n    ability(地雷區) [ !enemy.aura(地雷區).exists ]\n    ability(猛烈打擊)\nendif\nif [ enemy(小伊萊克).hp < 650 ]\n    ability(爆炸)\nendif",
				},
				[68464] = {
					["name"] = "2熊猫人微风之灵",
					["code"] = "ability(月火術) [ !weather(月光) ]\nquit [self.aura(昏迷).exists]\nuse(生命交換) [enemy(細語小龍:1136).played]\nuse(秘法衝擊)\nchange(#3) [ !self(#3).played ]\nchange(#2)\nability(秘法風暴:589) [ !weather(秘法之風:590) ]\nuse(法力澎湃:489)",
				},
				[66730] = {
					["name"] = "3圣地的俞娜",
					["code"] = "use(翡翠領域:597) [ round=1 ] \nuse(翡翠撕咬:525) [ !enemy(#1).dead ]\nuse(翡翠撕咬:525) [ enemy.hp.full ]\nuse(元龍之擊:612) \nuse(翡翠撕咬:525) [ enemy.hp < 1000 ]\nchange(#2) [ !self(#2).played ]\nchange(#3)\nuse(黑爪:919) [ !enemy.aura(黑爪).exists ]\nuse(群聚攻擊:581)",
				},
				[66918] = {
					["name"] = "~11探索者祖",
					["code"] = "ability(蔓延真菌) [ !enemy.aura(蔓延真菌).exists ]\nability(奔竄) [ !enemy.aura(粉碎防禦).exists ]\nability(吞噬)\nchange(#2) [ !self(#2).played ]\nchange(#3)\nability(搶先攻擊)\nability(誘餌) [ !enemy.aura(潛水).exists ]",
				},
				[150917] = {
					["name"] = "阿怪",
					["code"] = "ability(困惑叮刺:632)\nability(奔竄:163) [!enemy(阿怪:2602).aura(粉碎防禦:542).exists]\nability(重整旗鼓:253)\nability(#1)",
				},
				["船難俘虜9122"] = {
					["name"] = "船難俘虜7",
					["code"] = "quit [self(紅尾鸚鵡).active &round=1] \nchange(next) [self.dead] \nchange(#2) [enemy(#2).hp<=179] \nchange(#2) [enemy(#2).active &enemy.aura(不死生物).exists] \nif [self(#1).active ] \nstandby [enemy(#2).hp<=358 ] \nability(#3) [ round=2] \nability(#2) [enemy(#2).active & enemy.round=3] \nability(#1) \nendif \nif [self(#2).active & enemy(#2).active] \nability(#2) [enemy.aura(不死生物).exists] \nability(#1) \nendif \nif [self(#2).active & enemy(#3).active] \nability(#3) [enemy.round=2] \nstandby \nendif \nif [self(#3).active & enemy(#3).active] \nstandby [self.round=1] \nability(#3) \nability(#1) \nendif",
				},
				["船難俘虜8"] = {
					["name"] = "船難俘虜5",
					["code"] = "quit [self(小鋼鐵之星).active &round=1] \nquit [self(暹羅貓).active &round=1] \nchange(next) [self.dead] \nif [self(#1).active ] \nstandby [round=2] \nability(黑爪) [ !enemy.aura(黑爪).exists ] \nability(群聚攻擊) [round=3] \nability(群聚攻擊) [round=7] \nstandby \nendif \nif [self(#2).active & enemy(#2).active] \nability(#2) \nendif \nif [self(#2).active & enemy(#3).active] \nability(#1) [enemy.round=1] \nability(#2) [enemy.speed.fast] \nability(#3) [self.aura(上緊發條).exists &enemy.round=2] \nability(#1) [enemy.round=3 & enemy.speed.slow & self.aura(超級充能).exists ] \nability(#3) [self.aura(上緊發條).exists &enemy.round=4] \nability(#1) [enemy.round=5] \nstandby \nendif \nability(#1)",
				},
				[155145] = {
					["name"] = "染疫小動物",
					["code"] = "ability(費洛蒙:1063)\nability(硬殼甲:1380)\nability(毒牙:152) [!enemy.aura(中毒:379).exists]\nchange(#2)\nability(末日決戰:1025)\nchange(暮光雛龍女:2677)\nability(暮光之火:792)\nability(暮光隕星:1960)\nability(#1)",
				},
				[150923] = {
					["name"] = "噴泥",
					["code"] = "ability(吐息:115) [enemy.type = 魔法]\nchange(春兔:200) [enemy.type = 不死]\nability(閃躲:312)\nability(亂舞:360)\nchange(next) [self.dead]\nability(#3)\nability(#1)\nability(#2)",
				},
				["船難俘虜9912"] = {
					["name"] = "船難俘虜6",
					["code"] = "quit [self(小鋼鐵之星三).active &round=1] \nquit [self(暹羅貓).active &round=1] \nchange(next) [self.dead] \nif [self(#1).active ] \nstandby [enemy(#2).hp<=420] \nability(#2) [round=2] \nability(#3) [enemy(#2).active &enemy.round=3] \nability(#1) \nendif \nif [self(#2).active & enemy(#2).active] \nability(#2) \nendif \nif [self(#2).active & enemy(#3).active] \nability(#1) [enemy.round=1] \nability(#2) [enemy.speed.fast] \nability(#3) [self.aura(上緊發條).exists &enemy.round=2] \nability(#1) [enemy.round=3 & enemy.speed.slow & self.aura(超級充能).exists ] \nability(#3) [self.aura(上緊發條).exists &enemy.round=4] \nability(#1) [enemy.round=5] \nstandby \nendif \nability(#1)",
				},
			},
		},
	},
	["profileKeys"] = {
		["安妮羅斯 - 天空之牆"] = "Default",
		["吐血舞魂 - 水晶之刺"] = "Default",
		["遠光狗 - 水晶之刺"] = "Default",
		["錢多踏實 - 水晶之刺"] = "Default",
		["啊花贊 - 銀翼要塞"] = "Default",
		["楊英傑 - 水晶之刺"] = "Default",
		["啊迪怒 - 水晶之刺"] = "Default",
		["Okcc - 天空之牆"] = "Default",
		["硝酸咪康唑 - 水晶之刺"] = "Default",
		["瑪米亞六七 - 水晶之刺"] = "Default",
		["黑人樹莓派 - 水晶之刺"] = "Default",
		["百本夏實 - 水晶之刺"] = "Default",
	},
	["profiles"] = {
		["Default"] = {
			["settings"] = {
				["autoButtonHotKey"] = "[",
			},
			["position"] = {
				["y"] = -4.999908447265625,
				["x"] = -182.9993896484375,
				["point"] = "RIGHT",
				["scale"] = 1,
			},
			["pluginOrders"] = {
				"Rematch", -- [1]
				"Base", -- [2]
				"FirstEnemy", -- [3]
				"AllInOne", -- [4]
			},
		},
	},
}
