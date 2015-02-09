statEnabled = true;		-- enable|disable stat at startup
autoDump = 600;		 	-- do autodump of extended statistics to file every N seconds (minimum 60 seconds), set 0 to disable
statDirectory = GetDir();
-- don't forget to mask slashes and trailing slash
-- i.e. c:\l2tower\stat\ shoul be written as "c:\\l2tower\\stat\\"
-- statDirectory = "";		-- absolute path to directory there stats will be dumped (default: GetDir())

dropTable = {};
adenaGained = 0;
monstersTable = {};
monstersKilled = 0;
monstersSpoiled = 0;
xpTable = { XP=0, SP=0 };
dmgTable = { Dealt=0, Recieved=0 };
startDate = {};

allInfoRecieved = false;
charName = "";	-- to save charname on login, cuz in OnLogout hook GetMe():GetName()==""
charLvl = 0;
charExp = 0;

-- auto dump related
lastDumpTime = 0;

-- exp table
exp = {};
exp[1] = {Total=0,ToUp=0};
exp[2] = {Total=68,ToUp=68};
exp[3] = {Total=363,ToUp=295};
exp[4] = {Total=1168,ToUp=805};
exp[5] = {Total=2884,ToUp=1716};
exp[6] = {Total=6038,ToUp=3154};
exp[7] = {Total=11287,ToUp=5249};
exp[8] = {Total=19423,ToUp=8136};
exp[9] = {Total=31378,ToUp=11955};
exp[10] = {Total=48229,ToUp=16851};
exp[11] = {Total=71202,ToUp=22973};
exp[12] = {Total=101677,ToUp=30475};
exp[13] = {Total=141193,ToUp=39516};
exp[14] = {Total=191454,ToUp=50261};
exp[15] = {Total=254330,ToUp=62876};
exp[16] = {Total=331867,ToUp=77537};
exp[17] = {Total=426288,ToUp=94421};
exp[18] = {Total=540000,ToUp=113712};
exp[19] = {Total=675596,ToUp=135596};
exp[20] = {Total=835862,ToUp=160266};
exp[21] = {Total=920357,ToUp=84495};
exp[22] = {Total=1015431,ToUp=95074};
exp[23] = {Total=1123336,ToUp=107905};
exp[24] = {Total=1246808,ToUp=123472};
exp[25] = {Total=1389235,ToUp=142427};
exp[26] = {Total=1554904,ToUp=165669};
exp[27] = {Total=1749413,ToUp=194509};
exp[28] = {Total=1980499,ToUp=231086};
exp[29] = {Total=2260321,ToUp=279822};
exp[30] = {Total=2634751,ToUp=374430};
exp[31] = {Total=2844287,ToUp=209536};
exp[32] = {Total=3093068,ToUp=248781};
exp[33] = {Total=3389496,ToUp=296428};
exp[34] = {Total=3744042,ToUp=354546};
exp[35] = {Total=4169902,ToUp=425860};
exp[36] = {Total=4683988,ToUp=514086};
exp[37] = {Total=5308556,ToUp=624568};
exp[38] = {Total=6074376,ToUp=765820};
exp[39] = {Total=7029248,ToUp=954872};
exp[40] = {Total=8342182,ToUp=1312934};
exp[41] = {Total=8718976,ToUp=376794};
exp[42] = {Total=12842357,ToUp=4123381};
exp[43] = {Total=14751932,ToUp=1909575};
exp[44] = {Total=17009030,ToUp=2257098};
exp[45] = {Total=19686117,ToUp=2677087};
exp[46] = {Total=22875008,ToUp=3188891};
exp[47] = {Total=26695470,ToUp=3820462};
exp[48] = {Total=31312332,ToUp=4616862};
exp[49] = {Total=36982854,ToUp=5670522};
exp[50] = {Total=44659561,ToUp=7676707};
exp[51] = {Total=48128727,ToUp=3469166};
exp[52] = {Total=52277875,ToUp=4149148};
exp[53] = {Total=57248635,ToUp=4970760};
exp[54] = {Total=63216221,ToUp=5967586};
exp[55] = {Total=70399827,ToUp=7183606};
exp[56] = {Total=79078300,ToUp=8678473};
exp[57] = {Total=89616178,ToUp=10537878};
exp[58] = {Total=102514871,ToUp=12898693};
exp[59] = {Total=118552044,ToUp=16037173};
exp[60] = {Total=140517709,ToUp=21965665};
exp[61] = {Total=153064754,ToUp=12547045};
exp[62] = {Total=168231664,ToUp=15166910};
exp[63] = {Total=186587702,ToUp=18356038};
exp[64] = {Total=208840245,ToUp=22252543};
exp[65] = {Total=235877658,ToUp=27037413};
exp[66] = {Total=268833561,ToUp=32955903};
exp[67] = {Total=309192920,ToUp=40359359};
exp[68] = {Total=358998712,ToUp=49805792};
exp[69] = {Total=421408669,ToUp=62409957};
exp[70] = {Total=493177635,ToUp=71768966};
exp[71] = {Total=555112374,ToUp=61934739};
exp[72] = {Total=630494192,ToUp=75381818};
exp[73] = {Total=722326994,ToUp=91832802};
exp[74] = {Total=834354722,ToUp=112027728};
exp[75] = {Total=971291524,ToUp=136936802};
exp[76] = {Total=1139165674,ToUp=167874150};
exp[77] = {Total=1345884863,ToUp=206719189};
exp[78] = {Total=1602331019,ToUp=256446156};
exp[79] = {Total=1902355477,ToUp=300024458};
exp[80] = {Total=2288742870,ToUp=386387393};
exp[81] = {Total=2703488268,ToUp=414745398};
exp[82] = {Total=3174205601,ToUp=470717333};
exp[83] = {Total=3708727539,ToUp=534521938};
exp[84] = {Total=4316300702,ToUp=607573163};
exp[85] = {Total=5008025097,ToUp=691724395};
exp[86] = {Total=10985069426,ToUp=5977044329};
exp[87] = {Total=19192594397,ToUp=8207524971};
exp[88] = {Total=33533938399,ToUp=14341344002};
exp[89] = {Total=44373087147,ToUp=10839148748};
exp[90] = {Total=63751938490,ToUp=19378851343};
exp[91] = {Total=88688523458,ToUp=24936584968};
exp[92] = {Total=120224273113,ToUp=31535749655};
exp[93] = {Total=157133602347,ToUp=36909329234};
exp[94] = {Total=208513860393,ToUp=51380258046};
exp[95] = {Total=266769078393,ToUp=58255218000};
exp[96] = {Total=377839508352,ToUp=111070429959};
exp[97] = {Total=592791113370,ToUp=214951605018};
exp[98] = {Total=1016243369039,ToUp=423452255669};
exp[99] = {Total=1956916677389,ToUp=940673308350};
exp[100] = {Total=6178380725000,ToUp=4221464047611};

function OnCreate()
	this:RegisterCommand("statshow", CommandChatType.CHAT_ALLY, CommandAccessLevel.ACCESS_ME);
	this:RegisterCommand("statdump", CommandChatType.CHAT_ALLY, CommandAccessLevel.ACCESS_ME);
	this:RegisterCommand("statreset", CommandChatType.CHAT_ALLY, CommandAccessLevel.ACCESS_ME);
	this:RegisterCommand("stat", CommandChatType.CHAT_ALLY, CommandAccessLevel.ACCESS_ME);
	this:RegisterCommand("stathelp", CommandChatType.CHAT_ALLY, CommandAccessLevel.ACCESS_ME);
	-- start time of collecting stats
	startDate = os.date("*t");
	lastDumpTime = os.time();
end;

function OnCommand_stat(vCommandChatType, vNick, vCommandParam)
	if statEnabled then
		statEnabled = false;
		ShowToClient("STAT", "Stats collecting PAUSED.");
	else
		statEnabled = true;
		ShowToClient("STAT", "Stats collecting RESUMED.");
	end
end;

function OnCommand_stathelp(vCommandChatType, vNick, vCommandParam)
		ShowToClient("/stat", "Pause/Resume stats collecting.");
		ShowToClient("/statreset", "Resets current statistics.");
		ShowToClient("/statshow", "Show current statistics in system chat.");
		ShowToClient("/statdump", "Dump extended statistics to file "..GetMe():GetName().."_stat.txt. File will be placed in L2Tower folder.");
		ShowToClient("/stathelp", "Show this help.");
		ShowToClient("NiceStat", "created by @Botter100");
end;

function OnCommand_statshow(vCommandChatType, vNick, vCommandParam)
	local timeStart = os.time(startDate);
	local timeNow = os.time();
	local timeDiff = os.difftime(timeNow, timeStart);
	
	local eHours = math.floor(timeDiff/3600);
	timeDiff = timeDiff - eHours*3600;
	local eMins = math.floor(timeDiff/60);
	local eSecs = timeDiff - eMins*60;
	
	ShowToClient("Start time", os.date("%x %X", timeStart));
	ShowToClient("Now time", os.date("%x %X", timeNow));
	ShowToClient("Elapsed time", string.format("%d:%02d:%02d", eHours, eMins, eSecs));
	ShowToClient("Adena gained", tostring(adenaGained));
	ShowToClient("XP gained", tostring(xpTable.XP));
	ShowToClient("SP gained", tostring(xpTable.SP));
	ShowToClient("Damage dealt", tostring(dmgTable.Dealt));
	ShowToClient("Damage recieved", tostring(dmgTable.Recieved));
	ShowToClient("Monsters killed/spoiled", tostring(monstersKilled).."/"..tostring(monstersSpoiled));
end;

function FillUserTable(df)
	local userTable = {};
	local userCount = 0;
	local inParty = 0;
	
	uList = GetPlayerList();
	
	for user in uList.list do
		if user:IsPlayer() then
			userTable[user:GetName()] = {};
			
			userTable[user:GetName()].ClanName = user:GetClanName();
			if user:IsPvPFlag() or user:IsPvPFlagBlink() then
				userTable[user:GetName()].PvPFlag = "■";
			else
				userTable[user:GetName()].PvPFlag = "";
			end
			userTable[user:GetName()].Distance = user:GetDistance();
			
			userCount = userCount + 1;

			if user:IsMyPartyMember() then
				inParty = inParty + 1;
			end;
		end;
	end;

	df:write(" Total users near:\t\t"..tostring(userCount).."\r\n");
	df:write(" Your party users:\t\t"..tostring(inParty).."\r\n");
	df:write("┌───────────────────────┬───────────────────┬─────┬──────────┐\r\n");
	df:write("│     Character         │     Clan          │ PvP │ Distance │\r\n");
	df:write("├───────────────────────┼───────────────────┼─────┼──────────┤\r\n");

		for name, data in pairs(userTable) do
			df:write(string.format("│ %21s │ %17s │  %1s  │ %8s │\r\n", name, data.ClanName, data.PvPFlag, data.Distance));
		end
	df:write("└───────────────────────┴───────────────────┴─────┴──────────┘\r\n\r\n");
end;

function calcLvlPercent(exp_, lvl)
	if lvl==0 then
		return "no info";
	end;
	
--	ShowToClient("LVL",tostring(lvl));
--	ShowToClient("TTL EXP",tostring(exp[lvl].Total));
--	ShowToClient("NOW EXP",tostring(exp_));
	expAboveLvl = (exp_) - exp[lvl].Total;
--	ShowToClient("EXP ABOVE",tostring(expAboveLvl));
	expToLvlUp = exp[lvl+1].ToUp;
--	ShowToClient("LVL EXP",tostring(expToLvlUp));
	
	return (100*expAboveLvl/expToLvlUp);
end;

function DumpStat(filename)
	local df = io.open(filename, "wt");
	
	if df~=nil then
		ShowToClient("STAT", "Dumped to file ["..filename.."]");

		local timeStart = os.time(startDate);
		local timeNow = os.time();
		local timeDiff = os.difftime(timeNow, timeStart);
		
		local eHours = math.floor(timeDiff/3600);
		local tempDiff = timeDiff - eHours*3600;
		local eMins = math.floor(tempDiff/60);
		local eSecs = tempDiff - eMins*60;

		df:write("■■■■■■■■■■■■■■■■■■■■■■■■■ Common Info ■■■■■■■■■■■■■■■■■■■■■■■■\r\n\r\n");
		
		df:write(" Stats for:\t\t"..GetMe():GetName().."\r\n");
		df:write(" Start time:\t\t"..os.date("%x %X", timeStart).."\r\n");
		df:write(" Now time:\t\t"..os.date("%x %X", timeNow).."\r\n");
		df:write(" Elapsed time:\t\t"..string.format("%d:%02d:%02d", eHours, eMins, eSecs).."\r\n\r\n");

		df:write("■■■■■■■■■■■■■■■■■■■■■■■■■ Adena Info ■■■■■■■■■■■■■■■■■■■■■■■■■\r\n\r\n");
		df:write(" Adena gained:\t\t"..tostring(adenaGained).."\r\n");
		df:write(" Adena per hour:\t"..tostring(math.floor(3600*adenaGained/(timeDiff+1))).."\r\n\r\n");
		
		df:write("■■■■■■■■■■■■■■■■■■■■■■■■■ XP&SP Info ■■■■■■■■■■■■■■■■■■■■■■■■■\r\n\r\n");
		df:write(" XP gained:\t\t"..tostring(xpTable.XP).."\r\n");
		df:write(" SP gained:\t\t"..tostring(xpTable.SP).."\r\n");
		df:write(" Start lvl % :\t\t"..string.format("%d + %.2f%%", charLvl, calcLvlPercent(charExp, charLvl)).."\r\n");
		df:write(" Now lvl % :\t\t"..string.format("%d + %.2f%%", GetMe():GetLevel(), calcLvlPercent(GetMe():GetEXP(), GetMe():GetLevel())).."\r\n");
		df:write(" XP per hour:\t\t"..tostring(math.floor(3600*xpTable.XP/(timeDiff+1))).."\r\n");
		df:write(" SP per hour:\t\t"..tostring(math.floor(3600*xpTable.SP/(timeDiff+1))).."\r\n\r\n");
		df:write("■■■■■■■■■■■■■■■■■■■■■■■■ Damage Info ■■■■■■■■■■■■■■■■■■■■■■■■■\r\n\r\n");
		df:write(" Damage inflict:\t"..tostring(dmgTable.Dealt).."\r\n");
		df:write(" Damage per sec:\t"..string.format("%.2f", dmgTable.Dealt/(timeDiff+1)).."\r\n");
		df:write(" Damage recieve:\t"..tostring(dmgTable.Recieved).."\r\n\r\n");
		df:write("■■■■■■■■■■■■■■■■■■■■■■■■■ Drop Info ■■■■■■■■■■■■■■■■■■■■■■■■■■\r\n\r\n");

		for character, drop in pairs(dropTable) do
		df:write("┌────────────────────────────────────────────────────────────┐\r\n");

			df:write(string.format("│ %-58s │\r\n", character));
			df:write("├────────────────────────────────────────────────────────────┤\r\n");
			for item, count in pairs(drop) do
				df:write(string.format("│ %47s : %8s │\r\n", item, count));
			end
			df:write("└────────────────────────────────────────────────────────────┘\r\n\r\n");
		end
		
		df:write("■■■■■■■■■■■■■■■■■■■■■■■■ Monster Info ■■■■■■■■■■■■■■■■■■■■■■■■\r\n\r\n");

		df:write(" Mons killed:\t\t"..tostring(monstersKilled).."\r\n");
		df:write(" Mons spoiled:\t\t"..tostring(monstersSpoiled).."\r\n");
		df:write("┌────────────────────────────────────────────────────────────┐\r\n");
		for monster, count in pairs(monstersTable) do
			df:write(string.format("│ %47s : %8s │\r\n", monster, count));
		end
		df:write("└────────────────────────────────────────────────────────────┘\r\n\r\n");

		df:write("■■■■■■■■■■■■■■■■■■■■■■■■■ Users Info ■■■■■■■■■■■■■■■■■■■■■■■■■\r\n\r\n");

		-- file handle passed as agrument
		FillUserTable(df);

		df:write("■■■■■■■■■■■■■■■■■■■ Created by @Botter100 ■■■■■■■■■■■■■■■■■■■■");
		df:close();
	end;
end

function OnCommand_statdump(vCommandChatType, vNick, vCommandParam)
	local filename = statDirectory..GetMe():GetName().."_stat.txt";
	DumpStat(filename);
end;

function OnCommand_statreset(vCommandChatType, vNick, vCommandParam)
	ShowToClient("STAT", "Current stats resetted.");
	-- start time of collecting stats
	startDate = os.date("*t");
	-- reset last dump time to current time
	lastDumpTime = os.time();

	-- clear drop
	for k,v in pairs(dropTable) do dropTable[k]=nil end;
	adenaGained = 0;
	-- clear monsters
	for k,v in pairs(monstersTable) do monstersTable[k]=nil end;
	monstersKilled = 0;
	monstersSpoiled = 0;
	-- clear xp
	xpTable = { XP=0, SP=0 };
	-- clear dmg
	dmgTable = { Dealt=0, Recieved=0 };
	-- clear start char lvl and exp
	allInfoRecieved = false;
	charLvl = 0;
	charExp = 0;
end;

function AddItemToStat(character, item, count)
	if item=="Adena" then
		adenaGained = adenaGained + count;
		return;
	end
	
	if dropTable[character]==nil then
		dropTable[character] = {};
	end
	
	if dropTable[character][item]==nil then
		dropTable[character][item] = count;
	else	
		dropTable[character][item] = dropTable[character][item] + count;
	end	
	
	-- ShowToClient("STAT", item.." "..tostring(dropTable[character][item]));
end;

function AddXPAndSPToStat(xp, sp)
	xpTable.XP = xpTable.XP + xp;
	xpTable.SP = xpTable.SP + sp;
	--ShowToClient("STAT", "Added "..tostring(xpTable.XP).." xp and "..tostring(xpTable.SP).." sp.");
end;

function OnChatSystemMessage(id, msg)
	if GetMe()==nil then
		return;
	end;
	
	if not statEnabled then
		return;
	end;
	
	-- store all needed startup info
	if not allInfoRecieved then
		charName = GetMe():GetName();
		charLvl = GetMe():GetLevel();
		charExp = GetMe():GetEXP();
		allInfoRecieved = true;
	end;
	
	local character = GetMe():GetName();
	local cnt = "1";
	local name = "";

	if id==52 then	-- You have earned $s1 Adena.
		msg = string.gsub(msg, ",", "");
		cnt = string.match(msg, "You have earned (%d+) Adena.");
		name = "Adena";
	end;

	if id==53 then	-- You have earned $s2 $s1(s).
		msg = string.gsub(msg, ",", "");
		cnt, name = string.match(msg, "You have earned (%d+) (.+)%(s%)%.");
	end;

	if id==54 then	-- You have earned $s1.
		name = string.match(msg, "You have earned (.+)%.");
	end;
	
	if id==28 then	-- You have obtained $s1 Adena.
		msg = string.gsub(msg, ",", "");
		cnt = string.match(msg, "You have obtained (%d+) Adena%.");
		name = "Adena";
	end;

	if id==29 then	-- You have obtained $s2 $s1.
		msg = string.gsub(msg, ",", "");
		cnt, name = string.match(msg, "You have obtained (%d+) (.+)%.");
	end;

	if id==30 then	-- You have obtained $s1.
		name = string.match(msg, "You have obtained (.+)%.");
	end;
	
	if id==299 then	-- $c1 has obtained $s3 $s2.
		msg = string.gsub(msg, ",", "");
		character, cnt, name = string.match(msg, "(.+) has obtained (%d+) (.+)%.");
	end;
	
	if id==300 then	-- $c1 has obtained $s2.
		character, name = string.match(msg, "(.+) has obtained (.+)%.");
	end;

	if id==1661 then	-- $c1 has obtained $s3 $s2(s).
		msg = string.gsub(msg, ",", "");
		character, cnt, name = string.match(msg, "(.+) has obtained (%d+) (.+)%(s%)%.");
	end;

	if id==608 then	-- $c1 has obtained $s3 $s2(s) by using sweeper.
		msg = string.gsub(msg, ",", "");
		character, cnt, name = string.match(msg, "(.+) has obtained (%d+) (.+)%(s%) by using sweeper%.");
	end;

	if id==609 then	-- $c1 has obtained $s2 by using sweeper.
		character, name = string.match(msg, "(.+) has obtained (.+) by using sweeper%.");
	end;

	if name~="" then
		AddItemToStat(character, name, tonumber(cnt));
	end;
	
-- XP & SP stats
	if id==45 then	-- You have earned $s1 XP.
		msg = string.gsub(msg, ",", "");
		xp = string.match(msg, "You have earned (%d+) XP%.");
		AddXPAndSPToStat(xp, 0);
	end;

	if id==95 then	-- You have earned $s1 XP and $s2 SP.
		msg = string.gsub(msg, ",", "");
		xp, sp = string.match(msg, "You have earned (%d+) XP and (%d+) SP%.");
		AddXPAndSPToStat(xp, sp);
	end;

	if id==3259 then	-- You have acquired $s1 XP (Bonus: $s2) and $s3 SP (Bonus: $s4).
		msg = string.gsub(msg, ",", "");
		xp, sp = string.match(msg, "You have acquired (%d+) XP %(Bonus: %d+%) and (%d+) SP %(Bonus: %d+%)%.");
		if xp==nil or sp==nil then
			ShowToClient("STAT", "Failed to parse XP and SP. Check sysmsg format.");
		else
			AddXPAndSPToStat(xp, sp);
		end;
	end;
-- Damage stats	
	if id==2261 then	-- $c1 has inflicted $s3 damage on $c2.
		msg = string.gsub(msg, ",", "");
		deal = string.match(msg, ".+ has inflicted (%d+) damage on .+%.");
		dmgTable.Dealt = dmgTable.Dealt + deal;
	end;

	if id==2262 then	-- $c1 has inflicted $s3 damage on $c2.
		msg = string.gsub(msg, ",", "");
		recieve = string.match(msg, ".+ has received (%d+) damage from .+%.");
		dmgTable.Recieved = dmgTable.Recieved + recieve;
	end;
end;

-- some replacement for IsAttacked() function (is it premium?)
function IsTargetedByParty(id)
	-- check party targets
	local ptList = GetPartyList();
	for user in ptList.list do
		if user:GetTarget() == id then
			-- ShowToClient("STAT", "Targeted by "..user:GetName());
			return true;
		end
	end;
	-- check my target
	if GetMe():GetTarget() == id then
		-- ShowToClient("STAT", "Targeted by "..GetMe():GetName());
		return true;
	end

	return false;
end;

function OnDie(user, spoiled)
	if not statEnabled then
		return;
	end;

	if user:IsMe() then
		local filename = statDirectory..GetMe():GetName().."_death.txt";
		DumpStat(filename);
		return;
	end;
	
--	if user~=nil and user:IsMonster() and user:IsAttacked() then
	if user~=nil and user:IsMonster() and IsTargetedByParty(user:GetId()) then
		if monstersTable[user:GetName()]~=nil then
			monstersTable[user:GetName()] = monstersTable[user:GetName()] + 1;
		else
			monstersTable[user:GetName()] = 1;
		end;
		
		monstersKilled = monstersKilled + 1;

		if spoiled then
			monstersSpoiled = monstersSpoiled + 1;
		end;
	
	end
end;

function OnLTick1s()
	if not statEnabled or autoDump==0 or GetMe():IsAlikeDeath() then
		return;
	end;
	
	if autoDump<60 then
		autoDump = 60;
	end;
	
	if (os.time()-lastDumpTime) >= autoDump then
		local filename = statDirectory..GetMe():GetName().."_auto.txt";
		DumpStat(filename);
		lastDumpTime = os.time();
	end;
end;

function OnLogout()
	if not statEnabled then
		return;
	end;
	
	local filename = statDirectory..charName.."_logout.txt";
	DumpStat(filename);
end;

function OnDisconnect(mode)
	if not statEnabled then
		return;
	end;
	
	local filename = statDirectory..charName.."_dc.txt";
	DumpStat(filename);
end;