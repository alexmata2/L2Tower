-- Cambia "hola" por cualquier palabra para Ejecutar el L2Tower GUI.-
-- /hola para activar el GUI y Desactivarlo.

function OnCreate()
    this:RegisterCommand("hola", CommandChatType.CHAT_ALLY, CommandAccessLevel.ACCESS_ME);
end;

function OnCommand_hola(vCommandChatType, vNick, vCommandParam)
    ProcessCommand("/cfg");
end;