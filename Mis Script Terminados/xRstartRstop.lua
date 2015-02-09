function OnCreate()
	this:RegisterCommand("r", CommandChatType.CHAT_ALLY, CommandAccessLevel.ACCESS_ME);
	this:RegisterCommand("rs", CommandChatType.CHAT_ALLY, CommandAccessLevel.ACCESS_ME);
end;
 
function OnCommand_r(vCommandChatType, vNick, vCommandParam)
	ProcessCommand("/recstart rec-" .. os.date("%H-%M-%S"));
end;
 
 
function OnCommand_rs(vCommandChatType, vNick, vCommandParam)
	ProcessCommand("/recstop");
end;