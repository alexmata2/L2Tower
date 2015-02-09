-- Cambia "p" por cualquier palabra,letra para Activar el "xcfg" para configurar el PickUp.-

function OnCreate()
    this:RegisterCommand("p", CommandChatType.CHAT_ALLY, CommandAccessLevel.ACCESS_ME);
end;

function OnCommand_p(vCommandChatType, vNick, vCommandParam)
    ProcessCommand("/xcfg");
end;