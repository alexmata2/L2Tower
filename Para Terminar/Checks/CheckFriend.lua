-- Some Checkers.-
-- Funciona.-
repeat
  list = GetPlayerList();
  for user in list.list do
    if (user:IsFriend())then
	    ShowToClient("Check "," " ..user:GetName());
		Sleep(5000);
	end;
end;
until false;