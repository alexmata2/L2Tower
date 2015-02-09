--
-- Auto Invite Iss Plugin
-- '/OopMode' to start/stop Plugin
--

OopModeStatus = false;
IssName = "MyIssName"; -- Change Iss Name
WhoToInv  = nil;
ptRange = 800;
InviteCtr = 0;

function OnCreate()
	this:RegisterCommand("OopMode", CommandChatType.CHAT_ALLY, CommandAccessLevel.ACCESS_ME );
end;

function OnCommand_OopMode(vCommandChatType, vNick, vCommandParam)
	OopModeStatus = not OopModeStatus;
	local state = OopModeStatus and "Activated" or "Deactivated";
	ShowToClient( "OopMode", "Status Is " .. state );
	InviteCtr = 0;
end;

function StartOopMode()
	local Me = GetMe();
	if Me and (WhoToInv ~= nil) then
		if((Me:GotBuff(11518) == false) or (Me:GotBuff(11521) == false) or (Me:GotBuff(11517) == false) or (Me:GotBuff(11522) == false) or (Me:GotBuff(11567) == false) or (Me:GotBuff(11529) == false) or (Me:GotBuff(11532) == false) or ((Me:GotBuff(11523) or Me:GotBuff(11524) or Me:GotBuff(11525)) == false)) and (WhoToInv:IsMyPartyMember() == false) then
			Command("/invite ".. IssName);
		else
			if((Me:GotBuff(11518) == true) and (Me:GotBuff(11521) == true) and (Me:GotBuff(11517) == true) and (Me:GotBuff(11522) == true) and (Me:GotBuff(11567) == true) and (Me:GotBuff(11529) == true) and (Me:GotBuff(11532) == true) and ((Me:GotBuff(11523) or Me:GotBuff(11524) or Me:GotBuff(11525)) == true) ) and (WhoToInv:IsMyPartyMember() == true) then
				Command("/dismiss " .. IssName);
			end
		end
	end
	return false    
end

function OnLTick1s()
	if OopModeStatus and InviteCtr == 0 then
		WhoToInv = GetUserByName(IssName);
		if (WhoToInv ~= nil) and (GetMe():GetRangeTo(WhoToInv) < ptRange) then
			StartOopMode()
			InviteCtr = InviteCtr + 1;
		end;
	else
		InviteCtr = InviteCtr + 1;
		if InviteCtr >= 10 then 
			InviteCtr = 0;
		end;
	end;
end;