local TOCNAME,GBB=...

GBB.locales = {
	enGB = {
		["lfg_channel"]="LookingForGroup", -- must be the default chat-name!
		["world_channel"]="World", -- must be the default chat-name!
		["GuildChannel"]="Guild Channel",
				
		["msgNbRequest"]="%d request(s) - click to whisper - shift+click to 'who' - ctrl+click to 'invite'",
		["msgStartWho"]="request who on %s...",
		["msgNewRequest"]="New request by %s for dungeon %s.",
		["msgInit"]="GroupBulletinBoard %s is loaded. Type '/gbb help' to get started.",
		["msgTimeFormat"]="%dm %02ds",
		["msgLevelRange"]="(Level %d - %d)",
		["msgLevelRangeShort"]="(%d-%d)",
		["msgTotalTime"]="Total time %s",
		["msgLastTime"]="Last update %s",
		["msgLocalRestart"]="The setting is not transferred until after a restart (/reload)",
		["msgCustomList"]="Enter your own unique search patterns here. If there is nothing, the English patterns are displayed as a grayed out example.",
		["msgAddNote"]="%s note",
		["msgLastSeen"]="Last Seen:",
		["heroicAbr"]="H",
		["normalAbr"]="N",
		["raidAbr"]="R",
		
		-- option panel
		
		["HeaderSettings"]="Settings",
		["PanelFilter"]="Vanilla Filter",
		["TBCPanelFilter"]="Filter",
		["HeaderTags"]="Search patterns",	
		["HeaderTagsCustom"]="Custom search patterns",
		["PanelTags"]="Search patterns",
		["PanelLocales"]="Localization",
		["HeaderChannel"]="Channel",
		["PanelAbout"]="About",
		["HeaderSlashCommand"]="Slash Commands",
		["HeaderCredits"]="Credits",
		["HeaderInfo"]="Information",
		["HeaderUsage"]="Usage",
		["HeaderDungeon"]="Dungeon",
		
		["Cboxshowminimapbutton"]="Show minimap button",	
		["CboxLockMinimapButton"]="Lock minimap button position",		
		["CboxLockMinimapButtonDistance"]="Minimize minimap button distance",
		["CboxShowTotalTime"]="Show total time instead last update",
		["CboxOnDebug"]="Show debug information",
		["CboxNotifyChat"]="On new request make a chat notification",
		["CboxNotifySound"]="On new request make a sound notification",
		["CboxCharFilterLevel"]="Filter on recommended level ranges",
		["CboxColorOnLevel"]="Highlight dungeons on recommended level ranges",
		["CboxTagsEnglish"]="English",
		["CboxTagsGerman"]="German",
		["CboxTagsRussian"]="Russian",
		["CboxTagsFrench"]="French",
		["CboxTagsCustom"]="Custom",
		["CboxRemoveRaidSymbols"]="Remove raid symbols like {rt1}",
		["CboxOrderNewTop"]="Sort new requests above",
		["CboxColorByClass"]="Colorize name by class",
		["CboxShowClassIcon"]="and show icon",
		["CboxUseAllInLFG"]="Show all messages from lfg-channel",
		["CboxEscapeQuit"]="ESC close main window (Restart needed)",
		["CboxEnableShowOnly"]="Show a fixed number of requests per dungeon",
		["CboxChatStyle"]="Use more chat style design",
		["CboxCharDontFilterOwn"]="Don't filter own request",		 
		["CboxCharHeroicOnly"]="Heroic only filter",	
		["CboxCharNormalOnly"]="Normal only filter",  
		["CboxDontTrunicate"]="Don't truncate message",
		["CboxOneLineNotification"]="Small one line chat notification",
		["CboxCompactStyle"]="Use two line design",
		["CboxEnableGroup"]="Remember past group members",
		["CboxEnableGuild"]="Add guild in player tooltip",
		["CboxCombineSubDungeons"]="Combine sub-dungeons like Dire Maul (only new request)",
		["CboxAdditionalInfo"]="Add more info to chat on /who and when somebody comes online",
		
		["CboxNotfiyInnone"]="Enable on overworld",
		["CboxNotfiyInpvp"]="Enable in battleground",
		["CboxNotfiyInparty"]="Enable in dungeon",
		["CboxNotfiyInraid"]="Enable in raid dungeon",
		
		["EditShowOnlyNb"]="Number of requests:",
		["EditTimeOut"]="Time before removing (sec):",	
		["EditCustom_Search"]="Search words (lfg, lfm,...)",
		["EditCustom_Bad"]="Blacklist words",
		["EditCustom_Suffix"]="Suffixes",
		["EditCustom_Heroic"] = "Heroic",
		
		["BtnUnselectAll"]="Unselect all",
		["BtnSelectAll"]="Select all",
		
		["BtnWispher"]="Wispher %s",
		["BtnInvite"]="Invite %s",
		["BtnWho"]="Who %s",
		["BtnIgnore"]="Ignore %s",
		["BtnFold"]="Fold",
		["BtnFoldAll"]="Fold all",
		["BtnUnFoldAll"]="Unfold all",
		["BtnCancel"]="Cancel",
		["BtnEntryColor"]="Color of the message",
		["BtnHeroicDungeonColor"]="Color of heroic dungeon tooltip",
		["BtnNormalDungeonColor"]="Color of normal dungeon tooltip",
		["BtnTimeColor"]="Color of the time",
		["BtnNotifyColor"]="Color of the notification message",
		["BtnPlayerNoteColor"]="Color of the player note",
		["BtnColorGuild"]="Colour of the guild text",
		["BtnHistoryColor"]="Colour of the history of message",
		
		["SlashReset"]="Reset main window position",
		["SlashConfig"]="Open configuration",
		["SlashDefault"]="open main window",
		["SlashAbout"]="open about",
		["SlashChatOrganizer"]="Creates a new chat tab if one doesn't already exist, named \"LFG\" with all channels subscribed. Removes LFG heavy spam channels from default chat tab",
		
		["TabRequest"]="Requests",
		["TabGroup"]="Members",
		
		["AboutUsage"]="GBB searches the chat messages for dungeon requests in the background. To whisper a person, simply click on the entry with the left mouse button. For a '/who' a shift + left click is enough. The dungeon list can be filtered in the settings. You can also fold this by left-clicking on the dungeon name.|nOld entries are filtered out after 150 seconds.",
			
		["AboutSlashCommand"]="<value> can be true, 1, enable, false, 0, disable. If <value> is omitted, the current status switches.",
		
		
		["AboutInfo"]="GBB provides an overview of the endless requests in the chat channels. It detects all requests to the classic dungeons, sorts them and presents them clearly way. Numerous filtering options reduce the gigantic number to exactly the dungeons that interest you. And if that's not enough, GBB will let you know about any new request via a sound or chat notification. And finally, GBB can post your request repeatedly.",
		
		
	},
	
	deDE =   {
	["AboutInfo"] = "GBB verschafft euch den Überblick über die endlosen Anfragen in den Chat-Channels. Es erkennt alle Anfragen zu den klassischen Instanzen, sortiert sie und stellt sie übersichtlich da. Filtermöglichkeiten reduziert die gigantische Anzahl auf genau die Instanzen, die dich interessieren. Und falls das nicht reicht, informiert GBB dich über jede neue Anfrage mittels eines Sounds oder Chat-Benachrichtigung. Und abschließend kann GBB deine persönliche Anfrage wiederholt veröffentlichen.",
	["AboutSlashCommand"] = "<value> kann true,1,enable,false,0,disable sein. Wird <value> weggelassen, schaltet der aktuelle Status um.",
	["AboutUsage"] = "GBB durchsucht im Hintergrund die Chat-Nachrichten nach Instanz-Anfragen. Um eine Person anzuflüstern, einfach den Eintrag mit links anklicken. Für ein '/who' genügt ein Shift + links klick. Die Instanz-Liste lässt sich in den Einstellungen filtern. Zudem kann man mit einen Linksklick auf den Instanz-Namen diesen falten.|nAlte Einträge werden nach 150 Sekunden rausgefiltert.",
	["BtnCancel"] = "Abbruch",
	["BtnColorGuild"] = "Farbe der Gildentextes",
	["BtnEntryColor"] = "Farbe der Anfrage",
	["BtnHeroicDungeonColor"]="Color of heroic dungeon tooltip",
	["BtnNormalDungeonColor"]="Color of normal dungeon tooltip",
	["heroicAbr"]="H",
	["normalAbr"]="N",
	["raidAbr"]="R",
	["BtnFold"] = "Falten",
	["BtnFoldAll"] = "Alle falten",
	["BtnHistoryColor"] = "Farbe des Nachrichtenverlaufs",
	["BtnIgnore"] = "%s ignorieren",
	["BtnNotifyColor"] = "Farbe der Nachricht",
	["BtnPlayerNoteColor"] = "Farbe der Spielernotizen",
	["BtnSelectAll"] = "Alles auswählen",
	["BtnStartShout"] = "Announce",
	["BtnStopShout"] = "Stop",
	["BtnStopShoutMsg"] = "Stop automatic announcement",
	["BtnTimeColor"] = "Farbe der Zeit",
	["BtnUnFoldAll"] = "Alle entfalten",
	["BtnUnselectAll"] = "Alles abwählen",
	["BtnWho"] = "Who %s",
	["BtnWispher"] = "%s anflüstern",
	["CboxAdditionalInfo"] = "Mehr Informationen bei /who und wenn jemand online kommt.",
	["CboxCharDontFilterOwn"] = "Eigene Anfragen nicht filtern",
	["CboxCharHeroicOnly"]= "Nur heroischer filter",
	["CboxCharNormalOnly"]="Nur normaler Filter", 
	["CboxCharFilterLevel"] = "Anhand der Levelempfehlung filtern",
	["CboxChatStyle"] = "Design mehr an Chat anpassen",
	["CboxColorByClass"] = "Name in Klassenfarbe",
	["CboxColorOnLevel"] = "Färbe Instanzen anhand der Levelempfehlung ein",
	["CboxCombineSubDungeons"] = "Fasse Unter-Instanzen, wie Düsterbruch, zusammen (nur neue Anfragen)",
	["CboxCompactStyle"] = "Design zweizeilig",
	["CboxDontTrunicate"] = "Nachricht nicht abkürzen",
	["CboxEnableGroup"] = "Letzte Gruppenmitglieder merken",
	["CboxEnableGuild"] = "Füge Gilde in Spieler-Tooltip hinzu.",
	["CboxEnableShoutBox"] = "Enable automatic announcement",
	["CboxEnableShowOnly"] = "Zeige eine feste Anzahl von Anfragen pro Instanz",
	["CboxEscapeQuit"] = "ESC schließt Fenster (Neustart notwendig)",
	["CboxLockMinimapButton"] = "Minimap-Icon-Position sperren",
	["CboxLockMinimapButtonDistance"] = "Minimap-Icon-Entfernung minimieren",
	["CboxNotfiyInnone"] = "Aktiv auf der Welt",
	["CboxNotfiyInparty"] = "Aktiv in Instanzen",
	["CboxNotfiyInpvp"] = "Aktiv in Schlachtfeldern",
	["CboxNotfiyInraid"] = "Aktiv in Schlachtzuginstanzen",
	["CboxNotifyChat"] = "Bei neuer Anfrage eine Nachricht senden",
	["CboxNotifySound"] = "Bei neuer Anfrage ein Geräusch abspielen",
	["CboxOnDebug"] = "Debug-Informationen anzeigen",
	["CboxOneLineNotification"] = "Kurze einzeilige Chatnachricht",
	["CboxOrderNewTop"] = "Sortiere neue Anfragen nach oben",
	["CboxRemoveRaidSymbols"] = "Entferne Raid-Zeichen wie {rt1}",
	["CboxShowClassIcon"] = "und zeige Icon",
	["Cboxshowminimapbutton"] = "Minimap-Icon anzeigen",
	["CboxShowTotalTime"] = "Zeige Gesamt-Zeit anstatt vom letzten Update",
	["CboxTagsCustom"] = "Eigene",
	["CboxTagsEnglish"] = "Englisch",
	["CboxTagsGerman"] = "Deutsch",
	["CboxTagsRussian"] = "Russisch",
	["CboxTagsFrench"] = "Französisch",
	["CboxUseAllInLFG"] = "Alle Nachrichten vom LFG-Kanal anzeigen",
	["EditCustom_Bad"] = "Blacklist Wörter",
	["EditCustom_Search"] = "Suchwörter (lfg, lfm,...)",
	["EditCustom_Suffix"] = "Suffixes",
	["EditCustom_Heroic"] = "Heroic",
	["EditShowOnlyNb"] = "Anzahl der Anfragen:",
	["EditTimeOut"] = "Zeit bis zum entfernen (sek):",
	["GuildChannel"] = "Gildenchat",
	["HeaderChannel"] = "Channel",
	["HeaderCredits"] = "Credits",
	["HeaderDungeon"] = "Instanz",
	["HeaderInfo"] = "Information",
	["HeaderSettings"] = "Einstellungen",
	["HeaderSlashCommand"] = "Befehle",
	["HeaderTags"] = "Wörterlisten",
	["HeaderTagsCustom"] = "Eigene Wörterlisten",
	["HeaderUsage"] = "Benutzung",
	["lfg_channel"] = "SucheNachGruppe",
	["world_channel"] = "Welt",
	["msgAddNote"] = "Notiz von %s",
	["msgCustomList"] = "Hier die eigenen eindeutigen Suchbegriffe eingeben. Wenn nichts vorhanden ist, werden die englischen als ausgegraues Beispiel angezeigt.",
	["msgDoShout"] = "Request announced.",
	["msgInit"] = "GroupBulletinBoard %s geladen. Zum Starten '/gbb help' eingeben.",
	["msgLastSeen"] = "Zuletzt gesehen:",
	["msgLastTime"] = "Letztes Update %s",
	["msgLevelRange"] = "(Level %d - %d)",
	["msgLevelRangeShort"] = "(%d-%d)",
	["msgLocalRestart"] = "Die Lokalisierung wird erst nach einem Neustart übernommen (/reload)",
	["msgNbRequest"] = "%d Anfrage(n) - Anklicken zum Flüstern - shift + anklicken für /who ",
	["msgNewRequest"] = "Neue Anfrage von %s für Instanz %s.",
	["msgRequestHere"] = "Enter here your lfg message.",
	["msgShoutError"] = "No request for a dungeon found!",
	["msgShoutErrorChannel"] = "Channel '%s' not found.",
	["msgStartWho"] = "Sende /who für %s...",
	["msgStopShout"] = "Automatic announcement stopped.",
	["msgTimeFormat"] = "%dm %02ds",
	["msgTotalTime"] = "Gesamtzeit %s",
	["PanelAbout"] = "Über",
	["PanelFilter"] = "Vanilla Filter",
	["TBCPanelFilter"]="Filter",
	["PanelLocales"] = "Lokalisierung",
	["PanelTags"] = "Wörterlisten",
	["SlashAbout"] = "'Über' öffnen",
	["SlashConfig"] = "Konfiguration öffnen",
	["SlashDefault"] = "Hauptfenster öffnen",
	["SlashReset"] = "Hauptfenster zurücksetzen",
	["TabGroup"] = "Mitglieder",
	["TabRequest"] = "Anfragen"
},
	esMX = {
		["lfg_channel"]="BuscarGrupo",
		["world_channel"] = "Mundo",
	},
	frFR = {
		["lfg_channel"]="RechercheDeGroupe",
		["world_channel"] = "Monde"
	},
	ruRU = {	
		["AboutInfo"]="GBB обеспечивает группировку нескончаемых запросов в каналах чата. Он обнаруживает все сообщения про поиск группы в классические подземелья, сортирует и удобно представляет их. Многочисленные опции фильтрации уменьшают гигантское число сообщений и оставляют только те подземелья, которые вас интересуют. А если этого недостаточно, GBB сообщит вам о любом новом запросе через звуковое или чат-уведомление. И, наконец, GBB может публиковать ваш запрос повторно.",
		["AboutSlashCommand"]="<значение> может быть true, 1, enable, false, 0, disable. Если <значение> опущено, текущий статус будет переключен.",
		["AboutUsage"]="GBB ищет в сообщениях чата запросы на поиск группы в подземелья в фоновом режиме. Чтобы шепнуть человеку, просто нажмите на строку ЛКМ. Для '/кто' достаточно ШИФТ + ЛКМ. Список подземелий можно отфильтровать в настройках. Вы также можете свернуть это, нажав ЛКМ по названию подземелья.|nСтарые записи отфильтровываются через 150 секунд (по-умолчанию).",
		["heroicAbr"]="H",
		["normalAbr"]="N",
		["raidAbr"]="R",
		["BtnCancel"]="Отмена",
		["BtnEntryColor"]="Цвет сообщения",
		["BtnHeroicDungeonColor"]="Цвет подсказки для героического подземелья",
		["BtnNormalDungeonColor"]="Цвет подскази для обычного подземелья",
		["BtnFold"]="Свернуть",
		["BtnFoldAll"]="Свернуть все",
		["BtnIgnore"]="Игнорировать %s",
		["BtnNotifyColor"]="Цвет уведомительного сообщения",
		["BtnSelectAll"]="Выбрать все",
		["BtnStartShout"]="Объявить",
		["BtnStopShout"]="Стоп",
		["BtnStopShoutMsg"]="Остановить автоматическое объявление",
		["BtnTimeColor"]="Цвет времени",
		["BtnHistoryColor"]="Цвет сообщения из истории",
		["BtnPlayerNoteColor"]="Цвет заметки об игроке",
		["BtnColorGuild"]="Цвет текста гильдии",
		["BtnUnFoldAll"]="Развернуть все",
		["BtnUnselectAll"]="Снять все",
		["BtnWho"]="Кто %s",
		["BtnWispher"]="Шепот %s",
		["CboxCharDontFilterOwn"]="Не фильтровать собственный запрос",
		["CboxCharHeroicOnly"]="Показывать только героические",
		["CboxCharNormalOnly"]="Только нормальный фильтр",
		["CboxCharFilterLevel"]="Фильтр по рекомендуемым диапазонам уровней",
		["CboxChatStyle"]="Уведомления более похожие на чат",
		["CboxColorByClass"]="Раскрасить имя по классу",
		["CboxColorOnLevel"]="Подсветить подземелья рекомендуемого диапазона уровней",
		["CboxCompactStyle"]="Использовать двухстрочный дизайн",
		["CboxDontTrunicate"]="Не обрезать сообщения",
		["CboxEnableShoutBox"]="Включить автоматическое объявление",
		["CboxEnableShowOnly"]="Показать фиксированное количество запросов в подземелье",
		["CboxEscapeQuit"]="Закрывать главное окно при нажатии ESC (требуется перезагрузка)",
		["CboxLockMinimapButton"]="Блокировка положения кнопки у миникарты",
		["CboxLockMinimapButtonDistance"]="Минимизировать расстояние до миникарты",
		["CboxNotfiyInnone"]="Включить в мире",
		["CboxNotfiyInparty"]="Включить в подземелье",
		["CboxNotfiyInpvp"]="Включить на полях битвы",
		["CboxNotfiyInraid"]="Включить в рейдовом подземелье",
		["CboxNotifyChat"]="Уведомлять о новых запросах в чате",
		["CboxNotifySound"]="Звуовое уведомление о новых событиях",
		["CboxOnDebug"]="Показать отладочную информацию",
		["CboxOneLineNotification"]="Маленькое однострочное уведомление в чате",
		["CboxOrderNewTop"]="Показывать сначала новые запросы",
		["CboxRemoveRaidSymbols"]="Удалить символы рейда, такие как {rt1}",
		["CboxEnableGroup"]="Запоминать участников группы",
		["CboxEnableGuild"]="Добавить название гильдии в подсказку",
		["CboxCombineSubDungeons"]="Объединить похожие подземелья, как наример Забытый город (только для новых запросов)",
		["CboxAdditionalInfo"]="Показывать больше информации в чате при /кто и когда другие игроки входят в игру",
		["CboxShowClassIcon"]="и показать значок класса",
		["Cboxshowminimapbutton"]="Показать кнопку у миникарты",
		["CboxShowTotalTime"]="Показывать общее время вместо времени последнего обновления",
		["CboxTagsCustom"]="Пользовательский",
		["CboxTagsEnglish"]="Английский",
		["CboxTagsGerman"]="Немецкий",
		["CboxTagsRussian"]="Русский",
		["CboxTagsFrench"]="Французский",
		["CboxUseAllInLFG"]="Показывать все сообщения из канала ПоискСпутников",
		["EditCustom_Bad"]="Список плохих слов",
		["EditCustom_Search"]="Поиск слов (lfg, lfm,...)",
		["EditCustom_Suffix"]="Суффиксы",
		["EditCustom_Heroic"]="Героический",
		["EditShowOnlyNb"]="Количество запросов:",
		["EditTimeOut"]="Время до удаления (сек):",
		["GuildChannel"]="Канал гильдии",
		["HeaderChannel"]="Канал",
		["HeaderCredits"]="Авторы",
		["HeaderDungeon"]="Подземелья",
		["HeaderInfo"]="Информация",
		["HeaderSettings"]="Настройки",
		["HeaderSlashCommand"]="/ Команды",
		["HeaderTags"]="Шаблоны поиска",
		["HeaderTagsCustom"]="Пользовательские шаблоны поиска",
		["HeaderUsage"]="Использование",
		["lfg_channel"]="ПоискСпутников",
		["world_channel"]="Мир",
		["msgCustomList"]="Введите здесь свои уникальные шаблоны для поиска. Если занчение не заполнено, английские шаблоны отображаются в виде примера серым цветом.",
		["msgDoShout"]="Запрос объявлен.",
		["msgInit"]="GroupBulletinBoard %s загружен. Введите '/gbb help' для получения информации.",
		["msgLastTime"]="Последнее обновление %s",
		["msgLevelRange"]="(Уровень %d - %d)",
		["msgLevelRangeShort"]="(%d-%d)",
		["msgLocalRestart"]="Настройки не сохраняться до перезагрузки интерфейса (/reload)",
		["msgNbRequest"]="%d запрос(ов) - нажмите, чтобы шепнуть - ШИФТ + ЛКМ для \"/кто\"",
		["msgNewRequest"]="Новый запрос от %s для подземелья %s.",
		["msgRequestHere"]="Введите ваше сообщение для поиска.",
		["msgShoutError"]="Запрос на подземелье не найден!",
		["msgShoutErrorChannel"]="Канал '%s' не найден.",
		["msgStartWho"]="Запросить /кто на %s...",
		["msgStopShout"]="Автоматическое объявление остановлено.",
		["msgTimeFormat"]="%dm %02ds",
		["msgTotalTime"]="Общее время %s",
		["PanelAbout"]="Информация",
		["PanelFilter"]="Фильтр Classic",
		["TBCPanelFilter"]="Фильтр",
		["PanelLocales"]="Перевод",
		["PanelTags"]="Пользовательские шаблоны",
		["SlashAbout"]="открыть информацию",
		["SlashConfig"]="Открыть конфигурацию",
		["SlashDefault"]="открыть главное окно",
		["SlashReset"]="Сбросить положение главного окна",
	},

}
		
GBB.locales.esES=GBB.locales.esMX
GBB.locales.enUS=GBB.locales.enGB

function GBB.LocalizationInit()
	L = GBB.locales[GetLocale()] or {}

	if GroupBulletinBoardDB and GroupBulletinBoardDB.CustomLocales and type(GroupBulletinBoardDB.CustomLocales) == "table" then
		for key,value in pairs(GroupBulletinBoardDB.CustomLocales) do
			if value~=nil and value ~="" then
				L[key.."_org"]=L[key] or GBB.locales.enGB[key]
				L[key]=value
			end
		end
	end
	
end
