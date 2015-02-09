AlarmStatus = false;
AlarmpvpStatus = false;
CheckSoundDC = "D:/Svalka/dc.wav";
CheckSoundDead = "D:/Svalka/dead.wav";
CheckSoundPVP = "D:/Svalka/pvp.wav";
PeopleInPartyCount = 7;


function OnCreate()
	this:RegisterCommand("alarm", CommandChatType.CHAT_ALLY, CommandAccessLevel.ACCESS_ME);
	this:RegisterCommand("alarmpvp", CommandChatType.CHAT_ALLY, CommandAccessLevel.ACCESS_ME);
end;


function OnCommand_alarmpvp(vCommandChatType, vNick, vCommandParam)
	if (AlarmpvpStatus == false) then
		AlarmpvpStatus = true;
		ShowToClient("ALARM IF ATTACKED","Plugin ON");
	else
		AlarmpvpStatus = false;
		ShowToClient("ALARM IF ATTACKED","Plugin OFF");
	end;
end;



function OnCommand_alarm(vCommandChatType, vNick, vCommandParam)
	if (AlarmStatus == false) then
		AlarmStatus = true;
		ShowToClient("ALARM IF DC or DEAD","Plugin ON");
	else
		AlarmStatus = false;
		ShowToClient("ALARM IF DC or DEAD","Plugin OFF");
	end;
end;


function OnTick1s()
	if (AlarmStatus == true) then
		if not IsLogedIn() then
			PlaySound(CheckSoundDC);
		elseif IsLogedIn() then
			if CheckPartyDC() then
				PlaySound(CheckSoundDC);
			elseif CheckPartyDEAD() then
				PlaySound(CheckSoundDead);
			end;

		end;
	end;
end;


function OnAttack(user, target)
	if (AlarmpvpStatus == true) then
		if (target:IsMe() or target:IsMyPartyMember()) and (user:IsPlayer()) then
			PlaySound(CheckSoundPVP);
		end;							
	end;							
end;


function CheckPartyDC()
local MyParty = GetPartyList();
local PeopleInParty = 1; -- coz counting pt members, not self
	for member in MyParty.list do
		if (member:GetDistance() < 3000) then
            		PeopleInParty = PeopleInParty + 1;
		end;
	end;

	if (PeopleInParty < PeopleInPartyCount) then
		--ShowToClient("ALARM IF DC or DEAD","PARTY MEMBER GET DC or not in range 3000");
		return true;
	end;
return false
end;


function CheckPartyDEAD()
local MyParty = GetPartyList();

	for member in MyParty.list do
		if (member:IsAlikeDeath() == true) then
			--ShowToClient("ALARM IF DC or DEAD","PARTY MEMBER DOWN");
			return true;
		end;
	end;
	
	if GetMe():IsAlikeDeath() then
		--ShowToClient("ALARM IF DC or DEAD","I AM DOWN");
		return true;
	end;

return false
end;
