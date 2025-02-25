local TOCNAME,GBB=...

-- IMPORTANT, everything must be in low-case and with now space!

local function langSplit(source)
	local ret={}
	for lang,pat in pairs(source) do
		if pat~="-" then
			ret[lang]=GBB.Tool.Split(pat," ")
		end
	end
	return ret
end

GBB.suffixTagsLoc=langSplit({
	enGB ="s group run runs",
	deDE ="gruppe",
	ruRU ="группран фарм фарма фармить",
	frFR = "groupe",
	zhTW = "",
	zhCN = "",
})

GBB.searchTagsLoc =langSplit({
	enGB = "group lfg lf lfm lftank lfheal lfhealer lfdps lfdd dd heal healer tank dps xdd xheal xhealer xtank druid hunter mage pala paladin priest rogue rouge shaman warlock warrior elite quest elitequest elitequests",

	deDE = "gesucht suche suchen sucht such gruppe grp sfg sfm druide dudu jäger magier priester warri schurke rschami schamane hexer hexenmeister hm krieger heiler xheiler go run",

	ruRU = "лфг ищет ищу нид нужны лфм лф2м ищем пати похилю лф танк хил нужен дд рдд мдд ршам рога вар прист армс пал",
	frFR = "groupe cherche chasseur druide mage paladin pretre voleur chaman quete",

	zhTW = "缺 來 找 徵 坦 補 DD 輸出 戰 聖 薩 獵 德 賊 法 牧 術",
	zhCN = "= 缺 来 找 德 T N ND DZ FS SS SM",
})

GBB.badTagsLoc = langSplit({
	enGB = "layer",
	deDE = "fc",
	ruRU = "гильдию гильдия слой",
	frFR = "",
	zhTW = "影布 回流",
	zhCN = "影布 回流",
})

GBB.heroicTagsLoc=langSplit({
	enGB ="h hc heroic",
	deDE ="h hc heroic",
	ruRU ="гер героик",
	frFR = "h hc heroic hm hero heroique",
	zhTW = "h 英雄",
	zhCN = "h H 英雄",
})



GBB.dungeonTagsLoc={
	enGB = langSplit({
		["RFC"] = 	"rfc ragefire chasm" ,
		["DM"]  = 	"deadmines vc vancleef dead mines mine" ,
		["WC"]  = 	"wc wailing caverns" ,
		["SFK"] = 	"sfk shadowfang" ,
		["STK"] = 	"stk stock stockade stockades" ,
		["BFD"] = 	"bfd blackfathom fathom" ,
		["GNO"] =  	"gnomer gno gnomeregan gnomeragan gnome gnomregan gnomragan gnom gnomergan" ,
		["RFK"] = 	"rfk kraul" ,
		["SM2"] =	"sm scarlet monastery mona",
		["SMG"] = 	"smgy smg gy graveyard" ,
		["SML"] = 	"smlib sml lib library" ,
		["SMA"] = 	"smarm sma arm armory herod armoury arms" ,
		["SMC"] =  	"smcath smc cath cathedral",
		["RFD"] = 	"rfd downs" ,
		["ULD"] = 	"uld ulda uldaman ulduman uldman uldama udaman" ,
		["ZF"]  = 	"zf zul farrak zul'farrak zulfarrak zulfarak zul´farrak zul`farrak zulfa zulf" ,
		["MAR"] = 	"mar mara maraudon mauradon mauro maurodon princessrun maraudin maura marau mauraudon" ,
		["ST"]  = 	"st sunken atal temple" ,
		["BRD"] = 	"brd emperor emp arenarun angerforge blackrockdepth",
		["DM2"] =	"dire maul diremaul",
		["DME"] =  	"dme dmeast east puzilin jumprun",
		["DMN"] = 	"dmn dmnorth north tribute",
		["DMW"] = 	"dmw dmwest west",
		["STR"] = 	"stratlive live living stratUD undead ud baron stratholme stath stratholm strah strath strat starth",
		["SCH"] = 	"scholomance scholo sholo sholomance",
		["LBRS"] = 	"lower lbrs lrbs",
		["UBRS"] =	"upper ubrs urbs rend",
		["RAMPS"] = "ramparts rampart ramp ramps",
		["BF"] = "furnace furn bf",
		["SP"] = 	"slavepens pens sp",
		["UB"] = 	"underbog ub",
		["MT"] = 	"manatombs mana mt tomb tombs",
		["CRYPTS"] = "crypts crypt auchenai ac acrypts acrypt",
		["SETH"] = 	"sethekk seth sethek",
		["OHB"] = 	"ohb oh ohf durnholde hillsbrad escape",
		["MECH"] = 	"mech mechanar",
		["BM"] = 	"morass bm black",
		["MGT"] = 	"mgt mrt terrace magisters magister",
		["SH"] = 	"sh shattered shatered shaterred",
		["BOT"] = 	"botanica bot",
		["SL"] = 	"sl slab labyrinth lab",
		["SV"] = 	"sv steamvault steamvaults steam vault valts",
		["ARC"] = 	"arc arcatraz alcatraz",

		["UK"] = 	"uk utk utgarde",
		["NEX"] = 	"nexus nex",
		["AZN"] = 	"azn an nerub",
		["ANK"] = 	"ank old ako ok kingdom",
		["DTK"] = 	"dtk drak draktharon drak'tharon",
		["VH"] = 	"vh violet hold",
		["GD"] = 	"gd gundrak",
		["HOS"] = 	"hos stone",
		["HOL"] = 	"hol lightning",
		["COS"] = 	"culling cos",
		["OCC"] = 	"occ oculus",
		["UP"] = 	"up pinnacle",
		["FOS"] = 	"fos forge soul",
		["POS"] = 	"pos pit saron",
		["HOR"] = 	"hor reflection",
		["CHAMP"] = "champ toc champion",

		["OS"]   =  "sarth obsidian sanctum",
		["VOA"] = 	"voa vault archavon",
		["EOE"] = 	"eoe maly eternity",
		["ULDAR"] = "uld ulduar",
		["TOTC"] = 	"tc totc totc10 totc25 toc10 toc25 togc",
		["RS"] = 	"rs ruby sanctum hal hal10 hal25",
		["ICC"] = 	"icc icecrown citadel",

		["KARA"] = 	"kara kz karazhan",
		["GL"] = 	"gl gruul gruuls gruul's",
		["MAG"] = 	"mag magtheridon magtheridon's magth",
		["SSC"] = 	"ssc serpentshrine serpentshine",
		["ZA"] = 	"za zulaman zul-aman zaman aman zul'aman",
		["EYE"] = 	"eye tk",
		["HYJAL"] = "hyjal hs hyj",
		["BT"] = 	"bt",
		["SWP"] = 	"swp sunwell plateau plataeu sunwel",
		["ONY"] = 	"onyxia ony",
		["MC"]  = 	"molten core mc",
		["ZG"]  = 	"zg gurub zul'gurub zulgurub zul´gurub zul`gurub zulg",
		["AQ20"] = 	"ruins aq20",
		["BWL"] = 	"blackwing bwl",
		["AQ40"] = 	"aq40" ,
		["NAX"] = 	"placeholdernax",
		["NAXX"] = 	"naxxramas nax naxx nax10 naxx10 nax25 naxx25",
		["WSG"] = 	"wsg warsong ws",
		["AB"]  = 	"basin ab",
		["AV"]  = 	"av valley",
		["EOTS"] =  "storm eots",
		["ARENA"] = "2s 3s 5s 3v3 5v5 2v2 2vs2 3vs3 5vs5",
		["WG"]    = "wg wintergrasp",
		["SOTA"]  = "sota strand ancient",
		["BREW"] =  "brewfest brew coren dire direbrew beerfest",
		["HOLLOW"] = "headless horseman hollow",
		["TRADE"] = "buy buying sell selling wts wtb hitem henchant htrade enchanter", --hlink
		["TRAVEL"] = "sum summ summon summons summoning port portal travel"
	}),
	deDE =langSplit({
		["RFC"] = 	"rfa ragefireabgrund flammenschlund flamenschlund rf rfg" ,
		["DM"]  = 	"todesminen todesmine tm" ,
		["WC"]  = 	"hdw wehklagens" ,
		["SFK"] = 	"burg bsf schattenfang" ,
		["STK"] = 	"verlies verließ verliess" ,
		["BFD"] = 	"bft blackfathomtiefen tiefschwarze grotte tsg" ,
		--["GNO"] =  	{} ,
		["RFK"] = 	"kral krall karl" ,
		["SMG"] = 	"friedhof hof fh freidhof" ,
		["SML"] = 	"bibli bibi bibliothek bib bücherei bibo biblio biblo bibl" ,
		["SM2"]	=	"kloster",
		["SMA"] = 	"wk waffenkammer arsenal" ,
		["SMC"] =  	"kathe kathedrale kath katha kahte",
		["RFD"] = 	"hügel huegel" ,
		["ULD"] = 	"uldamann" ,
		--["ZF"]  = 	{} ,
		["MAR"] = 	"prinzessinnenrun prinzessinenrun prinzessinrun prinzessrun" ,
		["ST"]  = 	"tempel" ,
		["BRD"] = 	"blackrocktiefen blackrock brt imperator imp",
		["DM2"] =	"düsterbruch duesterbruch db",
		["DME"] =  	"ost dbo dbost",
		["DMN"] = 	"tribut dbn nord dbnord",
		["DMW"] = 	"dbw dbwest",
		["STR"] = 	"lebend untot",
		--["SCH"] = 	{},
		--["LBRS"] = 	{},
		--["UBRS"] =	{},
		--["ONY"] = 	{},
		["MC"]  = 	"kern",
		--["ZG"]  = 	{},
		--["AQ20"] = 	{},
		--["BWL"] = 	{},
		--["AQ40"] = 	{} ,
		--["NAX"] = 	{},
		["RAMPS"] = 	"bm bollwerk höllenfeuerbollwerk bw" ,
		["BF"] = 	"bk kessel blutkessel" ,
		["SP"] = 	"sp sklaven sklavenunterkünfte" ,
		["UB"] = 	"ts sumpf tiefensumpf tiefen" ,
		["MT"] = 	"mg gruft managruft manatomb tomb mana" ,
		["CRYPTS"] = 	"krypta auchenaikrypta auchen" ,
		["SETH"] = 	"sh sethekhallen seth sethek" ,
		["OHB"] = 	"hdz1 hillsbrad" ,
		["MECH"] = 	"mecha mechanar mech" ,
		["BM"] = 	"hdz2 morast" ,
		["MGT"] = 	"tdm terasse" ,
		["SH"] = 	"zh zerschmetterte hallen" ,
		["BOT"] = 	"bota botanika botanica" ,
		["SL"] = 	"sl schlabby schattenlab shadow schattenlaby shadowlab" ,
		["SV"] = 	"dk dampfkammer" ,
		["ARC"] = 	"arca arka arkatraz arcatraz" ,
		["KARA"] = 	"kara karazahn"  ,
		["GL"] = 	"grull grul gruul"  ,
		["MAG"] = 	"maggi magi magtheridons magtheridon" ,
		["SSC"] = 	"ssc vashi schlangenschrein" ,
		["ZA"] = 	"za zulaman aman zul" ,
		["EYE"] = 	"auge tk fds" ,
		["HYJAL"] = 	"hdz3 mount hyjal mounthyjal " ,
		["BT"] = 	"tempel bt black blacktempel blacktemple temple" ,
		--["SWP"] = {},

		["WSG"] = 	"warsongschlucht schlucht",
		--["AB"]  = 	{},
		--["AV"]  = 	{},
		["EOTS"] =  "ads",
		["ARENA"] = "2s 3s 5s 3v3 5v5 2v2 2vs2 3vs3 5vs5",
		["TRADE"] =	"kaufe verkauf kauf verkaufe ah vk tg trinkgeld trinkgold vz schneider verzauberer verzaubere schliesskassetten schließkassetten kassetten schlossknacken schloßknacken alchimie",
	}),
 	 ruRU = langSplit({
		["AB"] = "низина арати",
		["ANK"] = "анкахет акнахет анк кахет",
		["AQ20"] = "руины ра20 ак20 аку20",
		["AQ40"] = "ан40 ак40 аку40",
		["ARC"] = "аркатрац кба алькатрац аркатрас алькатрас алькатраз арка аркатраз",
		["ARENA"] = "2s 3s 5s 2с 3с 5с 2x2 3x3 5x5 2х2 3х3 5х5 2на2 3на3 5на5 кап",
		["AV"] = "ад альтеракская долина ",
		["AZN"] = "азжол ажзол азжолнеруб ажзолнеруб",
		["BF"] = "крови кк",
		["BFD"] = "нп непроглядная пучина пучину",
		["BM"] = "черные топи",
		["BOT"] = "ботаника кбб ботанику бот боту",
		["BRD"] = "брд гчг глубины генерал ран глубины черной горы",
		["BREW"] = "хмельной фестиваль корен худовар",
		["BT"] = "бт иллидан илидан",
		["BWL"] = "логово крыла тьмы лкт",
		["CHAMP"] = "чемпиона ич",
		["COS"] = "очищение страт стратхольм",
		["CRYPTS"] = "аукенайские аг аукенские аукинайские аук аукен",
		["DM"] = "мк мертвые копи ванклиф",
		["DM2"] = "дм забытый город",
		["DME"] = "восток вдм дмвосток джампран",
		["DMN"] = "дмн дмсевер север трибут трибьют",
		["DMW"] = "дмв запад дмзапад",
		["DTK"] = "драк'тарон драктарон",
		["EOE"] = "око вечности малигос малигоса",
		["EOTS"] = "бури",
		["EYE"] = "бурь фениксом",
		["FOS"] = "кузня душ кузню кяз",
		["GD"] = "гундрак гуднрак гун драк",
		["GL"] = "грул груула",
		["GNO"] = "гномреган гномер гномрег гномериган гномерган",
		["HOL"] = "молний чм",
		["HOLLOW"] = "всадник",
		["HOR"] = "залы отражений кяз",
		["HOS"] = "камня чк",
		["HYJAL"] = "хиджал",
		["ICC"] = "цлк",
		["KARA"] = "каражан кара караджан кару",
		["LBRS"] = "лбрс нвчг нпчг нижний низ",
		["MAG"] = "мага магтеридон",
		["MAR"] = "мар мара марадон мараудон мару мародон мароудон мродон мородон",
		["MC"] = "недра",
		["MECH"] = "механар кбм механар мех меха меху",
		["MGT"] = "тераса терраса магистров тм",
		["MT"] = "маны гм манатомбс манатомбы томбы мана томбс манатобс манатомб манатомс ману",
		["NAX"] = "",
		["NAXX"] = "наксрамас накс наксарамас",
		["NEX"] = "нексус",
		["OCC"] = "окулус",
		["OHB"] = "cтарые предгорья хилсбрада спх старый хилсбрад хилсбард побег дарнхольд",
		["ONY"] = "ониксия оня ониксию",
		["OS"] = "ос обсидиановое святилище сарт сартарион сартариона",
		["POS"] = "яма яму сарона кяз",
		["RAMPS"] = "бастионы адского пламени цап бастион бап рампы",
		["RFC"] = "оп огненная пропасть",
		["RFD"] = "ки курганы",
		["RFK"] = "ли лабиринты",
		["RS"] = "рубиновое святилище рс",
		["SCH"] = "шоло некроситет некр",
		["SETH"] = "сетеккские залы сз сетеки сеттек сетекские сетеков сетеккскиезалы сеттекские",
		["SFK"] = "ктк темного клыка",
		["SH"] = "разрушенные рз разрушенных разрушеные",
		["SL"] = "темный тёмный  лаберинт лабиринт шл лаба",
		["SM2"] = "мао монастырь",
		["SMA"] = "оружейная армори арм оружейка",
		["SMC"] = "собор",
		["SMG"] = "кладбон кладбище",
		["SML"] = "библиотека библиотеку библу библа",
		["SOTA"] = "берег древних",
		["SP"] = "узилище узилише улилище узилища узилеще узлще",
		["SSC"] = "резервуар Кривого Клыка змеиное святилище зс",
		["ST"] = "зх затанувший храм санкен сункен темпл",
		["STK"] = "тюрьма тюрьму тюрягу",
		["STR"] = "ст",
		["SV"] = "резервуар паровое паравое паровые пп парового",
		["SWP"] = "плато свп санвел санвэл",
		["TOTC"] = "крестоносца ик",
		["TRADE"] = "куплю продам втс втб чантера чант энчантера скрафчу сделаю чарю чары",
		["UB"] = "нижетопь нт нежитопь нижнетопь",
		["UBRS"] = "убрс ввчг вчвчг впчг вчпчг верх верхний",
		["UK"] = "крепость",
		["ULD"] = "ульда ульдаман ульдман улдаман ульдуман",
		["WC"] = "пс стенаний пещеры",
		["ULDAR"] = "ульдуар ульд ульда йог",
		["UP"] = "вершина верх",
		["VH"] = "аметистовая амк",
		["VOA"] = "склеп аркавона аркавон",
		["WG"] = "оло озеро",
		["WSG"] = "упв ущелье песни войны варсонг всг",
		["ZA"] = "зул'аман зуламан ЗА",
		["ZF"] = "зф фарак фаррак зул'фаррак зулфарак зулфаррак зульфарак",
		["ZG"] = "зг гуруб зул'гуруб  зулгуруб  зул?гуруб зул`гуруб зул'гуруба",
	}),

	frFR = langSplit({
		["RFC"] = "rfc ragefeu",
		["DM"] = "mm mortemines mine mortemine",
		["WC"] = "lams lam lamentations",
		["SFK"] = "ombrecroc",
		["STK"] = "prison",
		["BFD"] = "brassenoire",
		--["GNO"] = "",
		["RFK"] = "kraal",
		--["SM2"] =	"",
		["SMG"] = "cimetière cimetiere cim",
		["SML"] = "bibli bibliothèque bibliotheque librairie",
		["SMA"] = "armu armurerie",
		["SMC"] = "cathé cathe",
		["RFD"] = "souille souilles",
		--["ULD"] = "",
		--["ZF"]  = "",
		--["MAR"] = "",
		["ST"]  = "st sunken englouti atal",
		["BRD"] = "brd profondeur profondeurs",
		["DM2"] = "ht hache-tripes hachetripes hache tripe tripes",
		["DME"] = "htest",
		["DMN"] = "tribut nord",
		["DMW"] = "ouest",
		--["STR"] = "",
		--["SCH"] = "",
		--["LBRS"] = "",
		--["UBRS"] = "",
		["RAMPS"] = "remparts rempart renpart ranpart renparts rampart ramparts",
		["BF"] = "fournaise",
		["SP"] = "enclos enclo",
		["UB"] = "bt basse tourbière tourbiere",
		["MT"] = "tombe mana tm manatomb",
		["CRYPTS"] = "crypte cryptes crypts crypt auchenaï auchenai",
		["SETH"] = "sethekk seth sethek setthek settek",
		["OHB"] = "gt1",
		["MECH"] = "méca mech mechanar méchanar",
		["BM"] = "gt2",
		--["MGT"] = "",
		["SH"] = "salles salle brisées brisees brise brisés brisé sb brisée halls",
		["BOT"] = "botanica bota",
		["SL"] = "labyrinth lab laby shadowlab",
		["SV"] = "steam vault réservoir reservoir caveau caveaux",
		["ARC"] = "arca",
		--["UK"] = 	"",
		["NEX"] = 	"nexus nex",
		["AZN"] = 	"azjol nerub az azol azjob",
		["ANK"] = 	"ank ahn",
		["DTK"] = 	"dtk drak draktharon drak'tharon drak",
		["VH"] = 	"fp fort",
		["GD"] = 	"gd gundrak",
		["HOS"] = 	"sdp",
		["HOL"] = 	"sdf",
		["COS"] = 	"gt4",
		["OCC"] = 	"occulus oculus",
		["UP"] = 	"cime",
		--["FOS"] = 	"",
		--["POS"] = 	"",
		--["HOR"] = 	"",
		["CHAMP"] = "champ toc champion",

		["OS"]   =  "sarth sart sanctum sartha sartha10 sartha25 sarta10 sarta25",
		["VOA"] = 	"archa acha archavon",
		["EOE"] = 	"maly malygos may",
		["ULDAR"] = "uldu uld uldu10 uldu25 ulduar ulduar10 ulduar25",
		["TOTC"] = 	"tc totc totc10 totc25 toc10 toc25 togc",
		--["RS"] = 	"rs ruby sanctum hal hal10 hal25",
		["ICC"] = 	"icc icecrown citadel icc10 icc25",
		["NAXX"] = 	"naxxramas nax naxx nax10 naxx10 nax25 naxx25",

		--["KARA"] = "",
		--["GL"] = "",
		--["MAG"] = "",
		--["SSC"] = "",
		--["ZA"] = "",
		--["EYE"] = "",
		--["HYJAL"] = "",
		--["BT"] = "",
		--["SWP"] = "",
		--["ONY"] = "",
		--["MC"] = "",
		--["ZG"] = "",
		--["AQ20"] = "",
		--["BWL"] = "",
		--["AQ40"] = "" ,
		--["NAX"] = "",
		--["WSG"] = "",
		["AB"] = "arathi",
		["AV"] = "alterac",
		["ARENA"] = "2s 3s 5s 3v3 5v5 2v2 2vs2 3vs3 5vs5",
		--["EOTS"] = "",
		["TRADE"] = "achete vends enchanteur vend",
	}),
	zhTW = langSplit({
		["RFC"] = 	"怒焰裂谷 怒驗 怒焰" ,
		["DM"]  = 	"死亡礦坑 死況 死礦" ,
		["WC"]  = 	"哀嚎洞穴 哀號 哀嚎" ,
		["SFK"] = 	"影牙城堡 影牙" ,
		-- ["STK"] = 	"" ,
		["BFD"] = 	"黑暗深淵" ,
		["GNO"] =  	"諾姆瑞根" ,
		["RFK"] = 	"剃刀沼澤" ,
		["SM2"] =	"血色",
		["SMG"] = 	"血色墓地" ,
		["SML"] = 	"血色圖書館" ,
		["SMA"] = 	"軍械" ,
		["SMC"] =  	"教堂",
		["RFD"] = 	"剃刀高地" ,
		["ULD"] = 	"奧達曼" ,
		["ZF"]  = 	"ZF 組爾法 祖爾法" ,
		["MAR"] = 	"馬拉 瑪拉" ,
		["ST"]  = 	"神廟 阿塔哈卡" ,
		["BRD"] = 	"黑深 深淵",
		["DM2"] =	"厄運 惡運 噩運",
		["DME"] =  	"厄東 惡東 噩東",
		["DMN"] = 	"厄北 惡北 噩北 完美厄運 完美惡運 完美噩運",
		["DMW"] = 	"厄西 惡西 噩西",
		["STR"] = 	"斯坦",
		["SCH"] = 	"通靈",
		["LBRS"] = 	"黑下 黑石塔下",
		["UBRS"] =	"黑上 黑石塔上",
		["RAMPS"] = 	"堡壘 壁壘 火堡 火壘 火堡壘 火壁壘",
		["BF"] = 	"血熔爐 熔爐 融爐 血熔盧 熔盧 融盧",
		["SP"] = 	"奴隸 監獄 奴監",
		["UB"] = 	"深幽 泥沼",
		["MT"] = 	"法力 墓地 法墓",
		["CRYPTS"] = 	"地穴",
		["SETH"] = 	"鳥廳 塞斯克 塞司克 賽司克 賽斯克 鳥聽 烏鴉",
		["OHB"] = 	"索爾 丘陵",
		["MECH"] = 	"麥克",
		["BM"] = 	"18波 黑色沼澤 黑沼 沼澤",
		["MGT"] = 	"博學",
		["SH"] = 	"破碎",
		["BOT"] = 	"波塔 波卡",
		["SL"] = 	"迷宮 暗影 暗宮",
		["SV"] = 	"蒸氣 蒸汽",
		["ARC"] = 	"亞克",
		["KARA"] = 	"卡拉 卡啦",
		["GL"] = 	"戈魯 魯爾 戈乳 哥魯 哥乳",
		["MAG"] = 	"馬肥 瑪色 馬瑟 瑪瑟",
		["SSC"] = 	"毒蛇",
		["ZA"] = 	"ZA 阿曼",
		["EYE"] = 	"風暴 要塞 鳳凰",
		["HYJAL"] = 	"海珊 海山 海加爾",
		["BT"] = 	"黑暗神廟 黑廟",
		["SWP"] = 	"太陽",
		["ONY"] = 	"黑妹 龍妹 奧妮 ONYX",
		["MC"]  = 	"MC 熔火 螺絲",
		["ZG"]  = 	"ZG 祖爾格 組爾格 龍虎",
		["AQ20"] = 	"RAQ AQ20 廢墟",
		["BWL"] = 	"BWL 黑翼",
		["AQ40"] = 	"TAQ AQ40 安琪拉 安其拉" ,
		["NAX"] = 	"NAXX 老克 納克",
		["WSG"] = 	"戰哥 戰歌",
		["AB"]  = 	"阿拉溪 阿拉希 阿拉西",
		["AV"]  = 	"奧山 奧特蘭",
		["EOTS"] = 	"暴風眼 暴風之眼",
		["ARENA"] =	"競技 22 33 3v3 5v5 2v2 2vs2 3vs3 5vs5",
		["TRADE"] = 	"買 賣 售 收 代工 出售 附魔 COD", --hlink
	}),
	zhCN = langSplit({
		["UK"] = 	"乌特加德城堡 乌堡",
		["NEX"] = 	"魔枢",
		["AZN"] = 	"艾卓",
		["ANK"] = 	"安卡赫特：古代王国 王国",
		["DTK"] = 	"达克萨隆要塞 达克萨隆",
		["VH"] = 	"紫罗兰监狱 监狱",
		["GD"] = 	"古达克",
		["HOS"] = 	"岩石大厅",
		["HOL"] = 	"闪电大厅",
		["COS"] = 	"净化斯坦索姆 stsm STSM",
		["OCC"] = 	"魔环",
		["UP"] = 	"乌特加德之巅 乌巅",
		["FOS"] = 	"灵魂洪炉",
		["POS"] = 	"萨隆深渊",
		["HOR"] = 	"映像大厅",
		["CHAMP"] = "冠军的试炼",
		["NAXX"] = 	"naxx NAXX 纳克萨玛斯",

		["OS"]   =  "黑曜石圣殿 红龙",
		["VOA"] = 	"阿尔卡冯的宝库 宝库 色球",
		["EOE"] = 	"永恒之眼 蓝龙",
		["ULDAR"] = "奥杜尔",
		["TOTC"] = 	"十字军的试炼",
		["RS"] = 	"红玉圣殿",
		["ICC"] = 	"冰冠碉堡",

		["RFC"] = 	"怒焰峡谷 怒焰" ,
		["DM"]  = 	"死亡矿坑 死矿" ,
		["WC"]  = 	"哀嚎洞穴 哀嚎" ,
		["SFK"] = 	"影牙城堡 影牙" ,
		-- ["STK"] = 	"监狱" ,
		["BFD"] = 	"黑暗深渊" ,
		["GNO"] =  	"诺莫瑞根" ,
		["RFK"] = 	"剃刀沼泽" ,
		["SM2"] =	"血色",
		["SMG"] = 	"血色墓地" ,
		["SML"] = 	"血色图书馆" ,
		["SMA"] = 	"武器库" ,
		["SMC"] =  	"教堂",
		["RFD"] = 	"剃刀高地" ,
		["ULD"] = 	"奥达曼" ,
		["ZF"]  = 	"ZLF 祖尔法拉克" ,
		["MAR"] = 	"玛拉顿" ,
		["ST"]  = 	"神庙" ,
		["BRD"] = 	"黑石深渊",
		["DM2"] =	"厄运",
		["DME"] =  	"厄运东",
		["DMN"] = 	"厄运北 完美厄运",
		["DMW"] = 	"厄运西",
		["STR"] = 	"stsm 斯坦索姆",
		["SCH"] = 	"通灵",
		["LBRS"] = 	"黑下 黑石塔下",
		["UBRS"] =	"黑上 黑石塔上",
		["RAMPS"] = "碉堡",
		["BF"] = 	"熔炉",
		["SP"] = 	"围栏",
		["UB"] = 	"幽暗 泥沼",
		["MT"] = 	"法力 陵墓 法墓",
		["CRYPTS"] = "地穴",
		["SETH"] = 	"鸟厅",
		["OHB"] = 	"索尔",
		["MECH"] = 	"能源舰",
		["BM"] = 	"18波 黑色沼澤 黑沼 沼澤",
		["MGT"] = 	"博学",
		["SH"] = 	"破碎",
		["BOT"] = 	"生态船",
		["SL"] = 	"迷宮",
		["SV"] = 	"蒸汽 地窖",
		["ARC"] = 	"禁魔监狱",
		["KARA"] = 	"KLZ 卡拉赞",
		["GL"] = 	"格鲁尔",
		["MAG"] = 	"马肥 玛瑟里顿",
		["SSC"] = 	"毒蛇",
		["ZA"] = 	"ZA 祖阿曼",
		["EYE"] = 	"风暴 要塞",
		["HYJAL"] = "海山 海加尔",
		["BT"] = 	"黑暗神庙 黑庙",
		["SWP"] = 	"太阳井",
		["ONY"] = 	"黑龙 奧妮克希亞",
		["MC"]  = 	"MC 熔火",
		["ZG"]  = 	"ZG 祖格",
		["AQ20"] = 	"FX 废墟",
		["BWL"] = 	"BWL 黑翼",
		["AQ40"] = 	"TAQ 安其拉" ,
		["NAX"] = 	"NAXX 纳克萨玛斯",
		["WSG"] = 	"战歌",
		["AB"]  = 	"阿拉希",
		["AV"]  = 	"奧山 奥特兰",
		["EOTS"] = 	"风暴之眼",
		["ARENA"] =	"竞技 22 33 3v3 5v5 2v2 2vs2 3vs3 5vs5",
		["TRADE"] = "买 卖 收 代工 出售 附魔",
	}),
}

GBB.dungeonTagsLoc.enGB["DEADMINES"]={"dm"}

GBB.dungeonSecondTags = {
	["DEADMINES"] = {"DM","-DMW","-DME","-DMN"},
	["SM2"] = {"SMG","SML","SMA","SMC"},
	["DM2"] = {"DMW","DME","DMN","-DM"},
}
