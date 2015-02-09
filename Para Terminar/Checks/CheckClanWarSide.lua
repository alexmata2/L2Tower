-- Some Checkers.-
-- Funciona pero Muestra Contra 1 y 2 Espadas.-
repeat
  list = GetPlayerList();
  for user in list.list do
    if (user:IsClanWar1Side())then
	    ShowToClient("Check "," " ..user:GetName());
		Sleep(5000);
	end;
end;
until false;