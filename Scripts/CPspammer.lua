-- CP potion spammer v1.1 by hebdzik 
function OnCreate()
	CPPrecentToUse = 80;	--CP percent below witch to spamm
	BigCPPotId = 5592;		--Greatre CP potion Id
	SmalCpPotId = 5591;		--Cp Potion Id
	CmdStartCP = "a";		--Command for start 
	CmdStopCp = "s";		--Command for stop
	CPSpammerStatus = false;
end;
 
function OnLogin()
	CPSpammerStatus = true;
end;
 
function LogOut()
	CPSpammerStatus = false;
end;
 
function OnDestroy()
	CPSpammerStatus = false;
end;
 
function OnLTick()
	if(CPSpammerStatus == true)then
		CPSpammer();
	end;
end;
 
--handler for turning off/on boot
function OnChatUserMessage(chatType, nick, msg)
    if(chatType == 2) then
			Message =  string.gsub(string.lower(msg)," ","");
        if(Message == CmdStartCP)then
			ShowToClient("X","You have START CP Spammer");
			CPSpammerStatus = true;
		end;
		if(Message == CmdStopCp)then
			ShowToClient("X","You have STOP CP Spammer");
			CPSpammerStatus = false;
		end;
    end;
end;
 
--function witch show how number of item in inventroy
function getItemCount(ItemId)
	invList = GetInventory();
	for item in invList.list do
		if item.displayId == ItemId then
			return item.ItemNum;
		end;
	end;
end;
 
--using CP potions if they are in inventory
function CPSpammer()
	if(IsLogedIn() == true) and (GetZoneType() ~= 12) then
		if(getItemCount(BigCPPotId) ~= nil )then
			if(GetMe():GetCpPrecent() < CPPrecentToUse) and (GetMe():IsAlikeDeath() == false) then
				UseItem(BigCPPotId);
			end;
		end;	
		if(getItemCount(SmalCpPotId) ~= nil) then
			if(GetMe():GetCpPrecent() < CPPrecentToUse) and (GetMe():IsAlikeDeath() == false) then
				UseItem(BigCPPotId);
			end;
		end;
		if(getItemCount(BigCPPotId) == nil) and (getItemCount(SmalCpPotId) == nil) then
			ShowToClient("ERROR:","you are out of CP pots ");
			CPSpammerStatus = false;
		end;
	end;
end;