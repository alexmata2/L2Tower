HoldCtrl = false; -- set true if u want skills to be used as holding ctrl.

SkillIDlist = {} ;
TempSkillIDlist = {} ;
RequestUse = GetTime();
requesttimes = 0;
candidateskill = nil;
targetproccesed = 0;
NukeConfig = false;
function OnCreate()
	this:RegisterCommand("addnuke", CommandChatType.CHAT_ALLY, CommandAccessLevel.ACCESS_ME);
end;

function OnCommand_addnuke(vCommandChatType, vNick, vCommandParam)
	if (NukeConfig == false) then
		NukeConfig = true;
		SkillIDlist = {} ;
		TempSkillIDlist = {} ;
		ShowToClient("Nuker Fix","Now cast yhe Skills you want in the ORDER YOU WANT, and when you are done type again /addnuke");
	else 		
		NukeConfig = false;	
		ShowToClient("Nuker Fix","Skills are saved, and ready to be used!");			
	end;
end;

function OnMagicSkillUse(user, target, skillId, skillvl, skillHitTime, skillReuse)
	if (user:IsMe()) then
		local skillbeingcast = skillId;
		if (NukeConfig == true) then
			table.insert(TempSkillIDlist,skillbeingcast);
		elseif (NukeConfig == false) and (GetTarget() ~= nil) and (GetTarget():IsAlikeDeath() == false) and (GetTarget():IsMonster()) then
			for a in pairs(SkillIDlist) do
				if (SkillIDlist[a] ~= nil) and (SkillIDlist[a] == skillbeingcast) then
					if (SkillIDlist[a+1] == nil) then
						candidateskill = SkillIDlist[1];
					else
						candidateskill = SkillIDlist[a+1];
					end;
					if (candidateskill ~= nil) then
						RequestUse = GetTime();
						requesttimes = 0;
						targetproccesed = GetTarget():GetId();
						if CheckIfInsideList(candidateskill,{11012,11013,11014,11015,11016}) then
							candidateskill = 11011;
						elseif CheckIfInsideList(candidateskill,{11018,11019,11020,11021,11022}) then
							candidateskill = 11017;
						elseif CheckIfInsideList(candidateskill,{11024,11025,11026,11027,11028}) then
							candidateskill = 11023;
						elseif CheckIfInsideList(candidateskill,{11035,11036,11037,11038,11039}) then
							candidateskill = 11034;
						elseif CheckIfInsideList(candidateskill,{11041,11042,11043,11044,11045}) then
							candidateskill = 11040;
						end;
						UseSkillRaw(candidateskill,false,false);
					end;
				end;
			end;
		end;
	end;
end;

function OnMagicSkillLaunched(user, target, skillId, skillLvl)
	if (user:IsMe()) and (NukeConfig) then
		local skilllaunched = skillId;
		if (CheckIfInsideList(skilllaunched,TempSkillIDlist)) then
			TempSkillIDlist = {} ;
			SkillIDlist[#SkillIDlist+1] = skilllaunched;
			ShowToClient("Nuker Fix","Nuke Id " .. tostring(skilllaunched) .. " has been added.");	
		end;
	end;
end;

function CheckIfInsideList(value,tablelist) 
	for x=1,#tablelist do
		if (tablelist[x] == value) then
			return true;
		end;
	end;
	return false;
end;

function OnLogin(username) 
	NukeConfig = false;
	SkillIDlist = {} ;
	RequestUse = GetTime();
	requesttimes = 0;
	candidateskill = nil;
end;

function OnLTick()
	if not (NukeConfig) and not (IsPaused()) then
		MyTarget = GetTarget();
		if (MyTarget ~= nil) and not (MyTarget:IsMe()) and (MyTarget:IsMonster()) and not (MyTarget:IsAlikeDeath()) and (candidateskill ~= nil) and (requesttimes < 7) and (RequestUse +550 < GetTime()) and (MyTarget:GetId() == targetproccesed) and (targetproccesed ~= 0) then
			requesttimes = requesttimes + 1;
			UseSkillRaw(candidateskill,HoldCtrl,false);
		end;
	end;
end;