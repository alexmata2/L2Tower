-- L2TOWER: LUA - TinyISS Buff v.03 RC1| rORUMI
-----------------------------------------------

--[[ History

-- v.03
-- OOP BUFF Mode Single ISS + Your Char. Just Active Follow at GUI, Config the Char Name an set "true" in OOP
-- OOP HEAL Clan Members
-- OOP HEAL Any Char in Range
-- Buff time Check to avoid loose Buff in Solo, Party or OOP mode
-- Check only one time some part of code

-- v.02
- fix Dancer ID
- Iss Heal in party
- Iss Ress in Party
- MpStop
- Party Range
- Buff Only if char is Alive

-- v.01
- Iss Buff in party using macros
--]]

-- Solo + Party Buff + Iss Heal + Iss Ress + Check Range Party + Mp Low Stop + OOP ISS-DD + Buff Time Check

-- Put in 1,1 macro -> sonatas: Drag your Sonatas Skills in the macro list
-- Put in 1,2 macro -> Buff: Drag your Buffer Skills in the macro slots
-- Put in 1,3 macro -> /target your char name, then drag the Harmony in next slot for you and next do the same to all your chars

-- Note: OOP Mode: Add yout ISS Name L2Tower GUI in Party -> Auto Accept ON -> Add Player
------------------------------------------------------
ShowToClient("Script", "TinyISS v.03 RC1 ACTIVE", 3);

--ID's-TinyISS----------------------------------------

--Config----------------------------------------------
MPStop = 30; -- MP % To Stop Some Actions
partyRangeCheck = 900; -- Max Range to check party buff
issHealRangeCheck = 400; -- Max Range to check Iss Heal

mustRessPT = true; -- Must I do ISS Ress in party?
mustHealPT = true; -- Must I do ISS Heal in party?
mustHealOOPClan = true; -- Must I do ISS Heal out of party clan member (Nice to Power Leveling Clan Members)
mustHealOOPAny = false; -- Must I do ISS Heal out of party ANY member (Your ISS heal ANY char in Range)
------------------------------------------------------
-- OOP-MODE-------------------------------------------
IssOOP = false; -- if true, iss will invite another char and leave, SET false to ISS in Party
CharName = "NCBot" -- Your Char Name to invite
--Config END------------------------------------------
------------------------------------------------------

--Skills-ID-------------------------------------------
ressSkillIssID = 11564; -- Angel's Resurrection
healingMelodyID = 11570; -- Healing Melody
--flags--(Please Dont Change)-------------------------
flagCheckMyBuff = true; -- true 1st check time, then false | We want check our class only 1 time.
flagCheckMyClass = false; -- false 1st check time when check to avoid repeat

------------------------------------------------------
-- CHANGE HERE IF YOU HAVE ANOTHER ISS AND THIS SCRIPT DONT WORK
------------------------------------------------------
--Self-Buff-------------------------------------------[ISS+85 DOMINATOR]
HornFrenzyDomiID = 11589; -- Horn Frenzy
DrumFrenzyDomiID = 11590; -- Drum Frenzy

PrevailingSonataDomiID = 11600; -- Frenzied Prevailing Sonata
DaringSonataDomiID = 11601; -- Frenzied Daring Sonata

--Self-Buff-------------------------------------------[ISS+85 SPECTRAL DANCER] (Melody id = Doomcryer)

HornMelodyDancerID = 11517; -- Horn Melody
DrumMelodyDancerID = 11518; -- Drum Melody

PrevailingDanceDancerID = 11610; -- Prevailing Dance
DaringDanceDancerID = 11611; -- Daring Dance

--Self-Buff-------------------------------------------[ISS+85 DOOMCRYER]
HornMelodyDoomID = 11517; -- Horn Melody
DrumMelodyDoomID = 11518; -- Drum Melody

PrevailingSonataDoomID = 11529; -- Prevailing Sonata
DaringSonataDoomID = 11530; -- Daring Sonata
------------------------------------------------------

------------------------------------------------------
--CastOnTarget() [OK]| Autocast de skills
function CastOnTarget(id,target)
	if id then
local MySkills = GetSkills():FindById(id)
		if MySkills and (MySkills:CanBeUsed()) then
			Target(target)
			UseSkillRaw(id,false,false)
			Sleep(500)
			ClearTarget();
			CancelTarget(false);
			CancelTarget(false);
			CancelTarget(false);
			return true
		end
	end
return false
end
------------------------------------------------------

------------------------------------------------------
------------------------------------------------------
function CheckIssBuff()

-- Solo
		if (GetMe() ~= nil) and not (GetMe():IsAlikeDeath()) then
			if not (GetMe():GotBuff(CheckSonataID1)) or not (GetMe():GotBuff(CheckSonataID2)) then DoBuff() end;
			Sleep(1000)
			if not (GetMe():GotBuff(CheckSonataID1)) or not (GetMe():GotBuff(CheckSonataID2)) then DoSonatas() end;
			Sleep(1000)
		end
-- in Party
local partyList = GetPartyList();
		for member in partyList.list do
			if (member ~= nil) and not (member:IsAlikeDeath()) 
				and (GetMe() ~= nil) and not (GetMe():IsAlikeDeath()) and (GetMe():GetRangeTo(member) < partyRangeCheck) then
				ISSSonata(member); -- Sonatas Party
				Sleep(1000)
				ISSBuff(member); -- Buff + Harmony Party
				Sleep(1000)
			end
		end
end

function ISSSonata(member)
		if (GetMe() ~= nil) and not (GetMe():IsAlikeDeath()) then
			if not (member:GotBuff(CheckSonataID1)) or not (member:GotBuff(CheckSonataID2)) then
			Command("/useshortcut 1 1");
			Sleep(5*1000); -- 5sec
			ClearTarget();
			CancelTarget(true);
			end
		end	
end

function ISSBuff(member)
		if (GetMe() ~= nil) and not (GetMe():IsAlikeDeath()) then
			if not (member:GotBuff(CheckBuffID1)) or not (member:GotBuff(CheckBuffID2))  then
			Command("/useshortcut 1 2");
			Sleep(15*1000); -- 15sec
			ISSHarmony();
			Sleep(1000);
			end
		end
end

function ISSHarmony()
		if (GetMe() ~= nil) and not (GetMe():IsAlikeDeath()) then
			Command("/useshortcut 1 3");
			Sleep(15*1000); -- 15 sec
			ClearTarget();
			CancelTarget(true);

		end	
end

function DoSonatas() -- Solo + oop
		if (GetMe() ~= nil) and not (GetMe():IsAlikeDeath()) then
			if IssOOP then OOPInvite();
			Command("/useshortcut 1 1");
			Sleep(5*1000); -- 5sec
			OOPLeave();
			else 
			Command("/useshortcut 1 1");
			Sleep(5*1000); -- 5sec
			end
		end
end --fn

function DoBuff() -- Solo + oop
		if (GetMe() ~= nil) and not (GetMe():IsAlikeDeath()) then
			if IssOOP then 
				OOPInvite();
				Command("/useshortcut 1 2");
				Sleep(15*1000); -- 15sec
				ISSHarmony();
				Sleep(5*1000);
				OOPLeave();
			else
				Command("/useshortcut 1 2");
				Sleep(15*1000); -- 15sec
				ISSHarmony();
				Sleep(5*1000);			
			end
		end
end --fn

function TimeCheck()

	local sonataTime = GetMe():GetBuff(CheckSonataID1);
	local buffTime = GetMe():GetBuff(CheckBuffID1);

	local timeToSonatas = (60*1000); -- 1 min
	local timeToBuff = (3*60*1000); -- 5 min
	
		if sonataTime then
			timeLeftS = sonataTime.endTime - GetTime();

			if (tonumber(timeLeftS) < timeToSonatas) then
				DoSonatas();
			end
		end
	
		if buffTime then
			timeLeftB = buffTime.endTime - GetTime();
			if (tonumber(timeLeftB) < timeToBuff) then
				DoBuff();
			end
		end	

end -- fn
--END-BUFF--------------------------------------------

------------------------------------------------------
function IssRessParty() -- |r: true|false if any dead

	local partyList = GetPartyList(); -- No Global
	for member in partyList.list do -- partyList: Ress para party - playerList: ress para cualquiera cerca
		if (member:IsAlikeDeath()) and (GetMe():GetRangeTo(member) < partyRangeCheck) then
			
			Sleep (20*1000) -- 20sec w8 healer Ress | in party, maybe you have a Haler Better
			CastOnTarget(ressSkillIssID, member); -- Ress
			Sleep (5*1000) -- 5sec
			DoBuff();
		end
	end

end --fn
------------------------------------------------------
function IssHealParty()

		local partyList = GetPartyList();
		for member in partyList.list do
			if (member ~= nil) and not (member:IsAlikeDeath()) and (member:GetHpPercent() < 80)
						   and (GetMe():GetRangeTo(member) < partyRangeCheck) and (GetMe():GetMpPercent() > MPStop) then
				CastOnTarget(healingMelodyID, member); -- ISS HP Heal
				Sleep (500)
			end
		end
end -- fn

function IssHealClanOOPClan()

	local players = GetPlayerList();
	for player in players.list do
		if (player ~= nil) and (player:GetClanName() == GetMe():GetClanName()) and not(player:IsMyPartyMember())
						   and not (player:IsAlikeDeath()) and (player:GetHpPercent() < 80)		
						   and (player:GetDistance() < issHealRangeCheck)
						   and (GetMe() ~= nil) and not (GetMe():IsAlikeDeath()) and (GetMe():GetMpPercent() > MPStop) then		

				CastOnTarget(healingMelodyID, player); -- ISS HP Heal OOP Clan members
				Sleep (1000)
		end
	end
end -- fn

function IssHealClanOOPAny()

	local players = GetPlayerList();
	for player in players.list do
		if (player ~= nil) and not (player:IsAlikeDeath()) and (player:GetHpPercent() < 80) and not(player:IsMyPartyMember())
						   and (player:GetDistance() < issHealRangeCheck)
						   and (GetMe() ~= nil) and not (GetMe():IsAlikeDeath()) and (GetMe():GetMpPercent() > MPStop) then		

				CastOnTarget(healingMelodyID, player); -- ISS HP Heal OOP Any Near
				Sleep (1000)
		end
	end
end -- fn

--OOP-------------------------------------------------
function OOPInvite()
		if (CharName ~= nil) then
		Command("/invite "..CharName)
		Sleep(5*1000) -- 5 sec
		else
		ShowToClient("TinyISS", "Bad Char Name, or too Far. ISS cant Invite...", 3);
		Sleep(30*1000) -- 30 sec
		end
end --fn

function OOPLeave()
		Sleep(1000) -- 1 sec
		Command("/leave")
		Sleep(1000) -- 1 sec
end --fn
--end-OOP---------------------------------------------


function CheckMyBuff() -- flag: 1 time check

 -- IssDominator = 174 
			if (GetMe():GetClass() == 174) then

				CheckBuffID1 = HornFrenzyDomiID;
				CheckBuffID2 = DrumFrenzyDomiID;
	
				CheckSonataID1 = PrevailingSonataDomiID;
				CheckSonataID2 = DaringSonataDomiID;
-- IssSpectralDancer = 173
			elseif (GetMe():GetClass() == 173) then
				CheckBuffID1 = HornMelodyDancerID;
				CheckBuffID2 = DrumMelodyDancerID;
	
				CheckSonataID1 = PrevailingDanceDancerID;
				CheckSonataID2 = DaringDanceDancerID;
 -- IssDoomcryer = 175 or Any
			else
				CheckBuffID1 = HornMelodyDoomID;
				CheckBuffID2 = DrumMelodyDoomID;
	
				CheckSonataID1 = PrevailingSonataDoomID;
				CheckSonataID2 = DaringSonataDoomID;
		
			end

flagCheckMyBuff = false;

end --fn

-------------------------------------------------------
function MainTinyIss()

		if flagCheckMyBuff then CheckMyBuff() end;
		----------------------------------------------
		if mustRessPT then IssRessParty() end;
		----------------------------------------------
		if mustHealPT then IssHealParty() end;
		if mustHealOOPClan then IssHealClanOOPClan() end;
		if mustHealOOPAny then IssHealClanOOPAny() end;
		----------------------------------------------
		CheckIssBuff(); -- Let Check Buff
		TimeCheck(); -- Let Check the time of Buff
		Sleep(5*1000)
end -- fn
	
--End-TinyIss-----------------------------------------

function CheckMyClass()
	if not flagCheckMyClass then
--Check Clase: | IssHierophant = 171 | IssSwordMuse = 172 | IssSpectralDancer = 173 | IssDominator = 174 | IssDoomcryer = 175
		if (GetMe():GetClass() == 171) or (GetMe():GetClass() == 172) or (GetMe():GetClass() == 173) or (GetMe():GetClass() == 174) or (GetMe():GetClass() == 175) then
			flagCheckMyClass = true;
		end
	end
end -- fn


repeat
	if not IsPaused() then
		CheckMyClass(); -- 1 time
		if flagCheckMyClass then	
			if not (GetMe():IsBlocked(true)) then
				MainTinyIss();
			end
		else
			ShowToClient("ERROR", "BAD SCRIPT: YOU ARE NOT ISS", 3);
			Sleep(60*1000);			
		end
	else
		Sleep(10*1000); -- paused
	end --not paused

until false;