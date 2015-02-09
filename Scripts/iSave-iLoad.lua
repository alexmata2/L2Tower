function OnCreate()
	this:RegisterCommand("isave", CommandChatType.CHAT_CMD2, CommandAccessLevel.ACCESS_ME);
	this:RegisterCommand("iload", CommandChatType.CHAT_CMD2, CommandAccessLevel.ACCESS_ME);
end;

function OnCommand_isave(vCommandChatType, vNick, vCommandParam)
	Command(".save "..GetMe():GetName())
end;

function OnCommand_iload(vCommandChatType, vNick, vCommandParam)
	Command(".load "..GetMe():GetName())
end;