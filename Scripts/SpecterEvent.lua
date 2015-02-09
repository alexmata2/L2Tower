EventStatus = false;
LastFragmentsummonStamp = GetTime();
SummonSpecterStamp = GetTime();
SpecterID = nil;

function OnCreate()
	this:RegisterCommand("event", CommandChatType.CHAT_ALLY, CommandAccessLevel.ACCESS_ME);
end;
 
function OnCommand_event(vCommandChatType, vNick, vCommandParam)
	if (EventStatus == false) then
		EventStatus = true;
		StartPoint = GetMe():GetLocation();
		ShowToClient("Event Plugin","Automatic Tersi's Light Event Is Activated.");
	else
		EventStatus = false;
		ShowToClient("Event Plugin","Automatic Tersi's Light Event Is Deactivated.");	
	end;
end;
 
 
function CheckForSpecter()
    local moblist = GetMonsterList();
    local currentrange = 100;
	for mob in moblist.list do
		if (mob:GetRangeTo(GetMe()) < currentrange) then
			if (mob:GetName() == "Specter of Light") and (IsAnyoneTargeting(mob) == false) then
				SpecterID = mob:GetId();
				currentrange = mob:GetRangeTo(GetMe()) ;
			elseif (mob:GetName() == "Specter of Mysterious Light") and (IsAnyoneTargeting(mob) == false) then
				    SpecterID = mob:GetId();
				    currentrange = mob:GetRangeTo(GetMe()) ;
			    end;
		    end;
	    end;
    if (currentrange < 100) then
	    return true;	
    end;
    return false;
end;

function OnDeleteUser(user)
	if (SpecterID == user:GetId()) then
		LastFragmentsummonStamp = GetTime() - 2000 ;
	end;
end;

function IsAnyoneTargeting(mobuser)
    local list = GetPlayerList();
	for player in list.list do
	    if (player:GetTarget() == mobuser:GetId()) then
		    return true;
	    end;
	end;
    return false;
end;

 
function CheckForSpecterInInventory()
local invlist = GetInventory();
	for item in invlist.list do
	    if (item.Name == "Specter of Light") then
			SpecterIDitem = item.objectId;
			return true;
		end;
	end;
    return false;
end;

function CheckFragmentsInInventory() 
local invlist = GetInventory();
	for item in invlist.list do
		if (item.Name == "Fragment of Light") then
			FragmentIDitem = item.objectId;
			FragmentIDitemNum = item.ItemNum;
			return true;
		end;
	end;
    return false;
end;
 
 
 
function TargetEvent(theid)
    ClearTargets();
    TargetRaw(theid);
end;
 
function Summon()
	if (CheckForSpecter() == true)   then
		TargetEvent(SpecterID);
	elseif (CheckForSpecterInInventory() == true) and (CheckFragmentsInInventory() == true) then		
		    if (FragmentIDitemNum > 6) then
			    if  (GetDistanceVector(GetMe():GetLocation(),StartPoint) < 100) then		
				     if (SummonSpecterStamp + 10000 < GetTime()) then
					     UseItemRaw(SpecterIDitem);
					     SummonSpecterStamp = GetTime();
				     end;
			elseif (GetDistanceVector(GetMe():GetLocation(),StartPoint) < 8000) then
				    MoveToNoWait(StartPoint);
			    end;
		    else
			EventStatus = false;
			ShowToClient("Event Plugin","Not enough Fragments in inventory to feed the summon so the auto event has stoped.");
		end;
	else
	EventStatus = false;
	ShowToClient("Event Plugin","Not enough Fragments/Specters in inventory to summon so the auto event has stoped.");
	end;
end;
 
function IsMyTargetASpecter()
	if (GetTarget():GetName() == "Specter of Light") then
		return true;
	elseif (GetTarget():GetName() == "Specter of Mysterious Light") then
		return true;
	end;
    return false;
end;
 
function OnLTick1s()
    if (EventStatus == true) then
        if (GetTarget() == nil) then
            if (GetDistanceVector(GetMe():GetLocation(),StartPoint) < 8000) and (LastFragmentsummonStamp +10000 > GetTime()) then 
                MoveToNoWait(StartPoint);
        elseif (LastFragmentsummonStamp +10000 < GetTime()) then
                Summon();
            end;
        elseif (GetTarget():IsAlikeDeath() == true) then
                Summon();
        elseif (IsMyTargetASpecter() == false) then
                ClearTargets();
                CancelTarget(false);
            else
                if (CheckFragmentsInInventory() == true) then
	                if (LastFragmentsummonStamp +10500 <GetTime()) then
		                LastFragmentsummonStamp = GetTime();
		                UseItemRaw(FragmentIDitem);
	                end;
                else
                ShowToClient("Event Plugin","No Fragments left in inventory so the auto event has stoped.");
                EventStatus = false;
            end
        end;
    end;
end;
 
 
 
function OnPickupItem(user, item)
    if (GetMe() ~= nil) and (user ~= nil) then
	    if (user:GetId() == GetMe():GetId()) then
		    LastFragmentsummonStamp = GetTime();
	    end;
    end;
end;