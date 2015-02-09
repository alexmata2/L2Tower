-- detect confirmdlg for pt invite request an daccept if inside list
-- add command that will keep checking and attempt inviting people in specific list with time lapse of 2 secs

AllowInvitesFromNames = {"urddnicktoacceptpt"}; -- put all possible pt leaders here to accept invites from (praticaly all names of players u have are fine)
DeclineUnknownInviters = false;
 
 
-------------------DONT CHANGE UNDER THIS LINE---------------------------
NamesToInviteList = {}; 

function OnCreate()
	--Event_PacketUnBlock(0x39,0xFF,0xFF); -- partyinvite request arrived
	Event_PacketUnBlock(0x39,0xFF,1);
 	this:RegisterCommand("addptmember", CommandChatType.CHAT_ALLY, CommandAccessLevel.ACCESS_ME);
end;
 
function OnCommand_addptmember(vCommandChatType, vNick, vCommandParam)
	playername = vCommandParam:GetParam(0):GetStr(true);
	if (vCommandParam:GetCount() == 1) then
		if CheckIfInsideList(playername,NamesToInviteList) then
			RemoveFromRezList(playername);
			ShowToClient(tostring(os.date("%X")),"You Removed ".. playername .. " from Allow Res List.",3);
		else
			NamesToInviteList[#NamesToInviteList+1] = playername;
			ShowToClient(tostring(os.date("%X")),"You Added ".. playername .. " in Allow Res List.",3);
		end;
	end;
end;

function RemoveFromRezList(name)
	for t=1,#NamesToInviteList do
		if (NamesToInviteList[t] == name) then
			table.remove(NamesToInviteList,t);
			break;
		end;
	end;
end;

function CheckIfInsideList(Smsg,Rmsglist)
	if (Rmsglist ~= nil) then
		for x=1,#Rmsglist do
			if (Rmsglist[x] == Smsg) then
				return true;
			end;
		end;
	end;
	return false;	
end;
 
function OnIncomingPacket(packet)
	packet:SetOffset(0)
	--39=AskJoinParty:s(requestorName)d(itemDistribution)
	if (packet:GetID() == 0x39) then
		local InviteRequester = packet:ReadString()
		if CheckIfInsideList(InviteRequester,AllowInvitesFromNames) then
			packet:BlockMe();
			AnswerPartyInviteRequest(true);
			ShowToClient(tostring(os.date("%X")),"Party invitation from " .. InviteRequester .. " has been Accepted.",3);
		elseif DeclineUnknownRezzers then
			packet:BlockMe();
			AnswerPartyInviteRequest(false)
			ShowToClient(tostring(os.date("%X")),"Party invitation from " .. InviteRequester .. " has been Rejected.",3);
		end;
	end;
end;
 
function AnswerPartyInviteRequest(answer)
	kkk = PacketBuilder();
	kkk:AppendInt(0x43,1);
	if answer then
		kkk:AppendInt(1,4);
	else
		kkk:AppendInt(0,4);
	end;
	SendPacket(kkk);
end;