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
})

GBB.searchTagsLoc =langSplit({
	enGB = "group lfg lf lfm lftank lfheal lfhealer lfdps lfdd dd heal healer tank dps xdd xheal xhealer xtank druid hunter mage pala paladin priest rogue rouge shaman warlock warrior elite quest elitequest elitequests",				

	deDE = "gesucht suche suchen sucht such gruppe grp sfg sfm druide dudu jäger magier priester warri schurke rschami schamane hexer hexenmeister hm krieger heiler xheiler go run",

	ruRU = "лфг ищет ищу нид нужны лфм лф2м ищем пати похилю лф танк хил нужен дд рдд мдд ршам рога вар прист армс пал",
	frFR = "groupe cherche chasseur druide mage paladin pretre voleur chaman quete",
})

GBB.badTagsLoc = langSplit({
	enGB = "layer",
	deDE = "fc",
	ruRU = "гильдию гильдия слой",
	frFR = "",
})

GBB.heroicTagsLoc=langSplit({
	enGB ="h hc heroic",
	deDE ="h hc heroic",
	ruRU ="h hc heroic",
	frFR = "h hc heroic",
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
		["NAX"] = 	"naxxramas nax naxx",
		["WSG"] = 	"wsg warsong ws",
		["AB"]  = 	"basin",
		["AV"]  = 	"av valley",	
		["EOTS"] =  "storm eots",
		["TRADE"] = "buy buying sell selling wts wtb hitem henchant htrade enchanter", --hlink
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
		["RAMPS"] = "bm bollwerk höllenfeuerbollwerk",
		["BF"] = "bk kessel blutkessel",
		["SP"] = 	"sklaven sklavenunterkünfte",
		["UB"] = 	"ts sumpf tiefensumpf",
		["MT"] = 	"mg gruft managruft",
		["CRYPTS"] = "krypta auchenaikrypta",
		["SETH"] = 	"sh sethekhallen seth sethek",
		["OHB"] = 	"hdz1 hillsbrad",
		["MECH"] = 	"mecha mechanar",
		["BM"] = 	"hdz2 morast",
		["MGT"] = 	"tdm terasse",
		["SH"] = 	"zh zerschmetterte hallen",
		["BOT"] = 	"bota botanika",
		["SL"] = 	"sl schlabby",
		["SV"] = 	"dk dampfkammer",
		["ARC"] = 	"arca",
		--["KARA"] = {},
		--["GL"] = 	{},
		["MAG"] = 	"maggi",
		["SSC"] = 	"ssc vashi schlangenschrein",
		--["ZA"] = 	{},
		["EYE"] = 	"auge tk",
		["HYJAL"] = "hdz3",
		["BT"] = 	"tempel",
		--["SWP"] = {},
 
		["WSG"] = 	"warsongschlucht schlucht",
		--["AB"]  = 	{},
		--["AV"]  = 	{},
		["EOTS"] =  "ads",	
		["TRADE"] =	"kaufe verkauf kauf verkaufe ah vk tg trinkgeld trinkgold vz schneider verzauberer verzaubere schliesskassetten schließkassetten kassetten schlossknacken schloßknacken alchimie",
	}),	
 	ruRU = langSplit({
		["AB"] = "низина арати",
		["AQ20"] = "руины ра20",
		["AQ40"] = "ан40",
		["AV"] = "ад альтеракская долина ",
		["BFD"] = "нп непроглядная пучина пучину",
		["BRD"] = "брд гчг глубины генерал арена ран глубины черной горы",
		["BWL"] = "логово крыла тьмы лкт",
		["DM"] = "мк мертвые копи ванклиф",
		["DM2"] = "дм забытый город",
		["DME"] = "восток вдм дмвосток джампран",
		["DMN"] = "дмн дмсевер север трибут трибьют",
		["DMW"] = "дмв запад дмзапад",
		["GNO"] = "гномреган гномер гномрег гномериган гномерган",
		["LBRS"] = "лбрс нвчг нпчг нижний низ",
		["MAR"] = "мар мара марадон мараудон мару мародон мароудон мродон мородон",
		["MC"] = "недра",
		["NAX"] = "наксрамас накс",
		["ONY"] = "ониксия оня ониксию",
		["RFC"] = "оп огненная пропасть",
		["RFD"] = "ки курганы",
		["RFK"] = "ли лабиринты",
		["SCH"] = "шоло некроситет некр",
		["SFK"] = "ктк темного клыка",
		["SM2"] = "мао монастырь",
		["SMA"] = "оружейная армори арм оружейка",
		["SMC"] = "собор",
		["SMG"] = "кладбон кладбище",
		["SML"] = "библиотека библиотеку библу библа",
		["ST"] = "зх затанувший храм санкен сункен темпл",
		["STK"] = "тюрьма тюрьму тюрягу",
		["STR"] = "ст страт стратхольм",
		["RAMPS"] = "бастион бастионы бап бастеон",
		["BF"] = "кузня крови кк кузню кузни",
		["SP"] = "узилище узилише улилище узилища узилеще узлще",
		["UB"] = "нижетопь нт нежитопь нижнетопь",
		["MT"] = "маны гм манатомбс манатомбы томбы мана томбс манатобс манатомб манатомс ману",
		["CRYPTS"] = "аукенайские аг аукенские аукинайские аук аукен",
		["SETH"] = "сетеккские залы сз сетеки сеттек сетекские сетеков сетеккскиезалы сеттекские",
		["OHB"] = "Старые предгорья Хилсбрада спх пв хилсбрад хилбсрад",
		["MECH"] = "механар кбм механар мех меха меху",
		["BM"] = "Черные топи",
		["MGT"] = "Терраса магистров тм",
		["SH"] = "разрушенные рз разрушенных",
		["BOT"] = "ботаника кбб ботанику бот боту",
		["SL"] = "темный тёмный  лаберинт лабиринт шл лаба",
		["SV"] = "резервуар паровое паравое паровые пп парового",
		["ARC"] = "аркатрац кба алькатрац аркатрас алькатрас алькатраз арка аркатраз",
		["TRADE"] = "куплю продам втс втб чантера чант энчантера скрафчу сделаю",
		["UBRS"] = "убрс ввчг вчвчг впчг вчпчг верх верхний",
		["ULD"] = "ульд ульда ульдаман ульду ульдман улдаман ульдуман",
		["WC"] = "пс стенаний пещеры",
		["WSG"] = "упв ущелье песни войны варсонг всг",
		["ZF"] = "зф фарак фаррак зул'фаррак зулфарак зулфаррак зульфарак",
		["ZG"] = "зг гуруб зул'гуруб  зулгуруб  зул´гуруб зул`гуруб зул'гуруба",
		["KARA"] = "каражан кара караджан кару",
		["GL"] = "грул груула",
	}),		
	frFR = langSplit({
		["RFC"] = "ragefeu",
		["DM"] = "mortemines",
		["WC"] = "lams lamentations",
		["SFK"] = "ombrecroc",
		["STK"] = "prison",
		["BFD"] = "brassenoire",
		--["GNO"] = "",
		["RFK"] = "kraal",
		--["SM2"] =	"",
		["SMG"] = "cimetière cim",
		["SML"] = "bibli bibliothèque",
		["SMA"] = "armu armurerie",
		["SMC"] = "cathé",
		["RFD"] = "souille souilles",
		--["ULD"] = "",
		--["ZF"]  = "",
		--["MAR"] = "",
		--["ST"]  = "",
		["BRD"] = "profondeur profondeurs",
		["DM2"] = "ht hache-tripes hachetripes",
		["DME"] = "htest",
		["DMN"] = "tribut nord",
		["DMW"] = "ouest",
		--["STR"] = "",
		--["SCH"] = "",
		--["LBRS"] = "",
		--["UBRS"] = "",
		["RAMPS"] = "remparts rempart",
		["BF"] = "fournaise",
		["SP"] = "enclos",
		["UB"] = "bt basse tourbière",
		["MT"] = "tombe mana tm manatomb",
		["CRYPTS"] = "crypte",
		["SETH"] = "sethekk seth sethek",
		["OHB"] = "gt1",
		["MECH"] = "méca",
		["BM"] = "gt2",
		--["MGT"] = "",
		["SH"] = "salles salle brisées",
		--["BOT"] = "",
		["SL"] = "laby shadowlab",
		["SV"] = "caveau",
		--["ARC"] = "",
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
		--["EOTS"] = "",
		["TRADE"] = "achete vends enchanteur",
	}),
}

GBB.dungeonTagsLoc.enGB["DEADMINES"]={"dm"}

GBB.dungeonSecondTags = {
	["DEADMINES"] = {"DM","-DMW","-DME","-DMN"},
	["SM2"] = {"SMG","SML","SMA","SMC"},
	["DM2"] = {"DMW","DME","DMN","-DM"},
}
