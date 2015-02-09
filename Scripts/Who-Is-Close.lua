Friends = {"NickOfBot1","NickOfBot2","NickOfBot3"}; -- enter names of your boots to exclude from list
--dont change nothing under this line
--------------------------------------------------------------------------------
function round(num, idp)
  local mult = 10^(idp or 0)
  return math.floor(num * mult + 0.5) / mult
end
--------------------------------------------------------------------------------
function CheckIfInsideList(Smsg,Rmsglist)
	for x,y in pairs(Rmsglist) do
		if (y == Smsg) then
			return true;
		end;
	end;
	return false;
end;
--------------------------------------------------------------------------------
Sleep(1000);
ShowToClient(" " , "====================================");
ShowToClient(" " , " NICK         CLASS        DISTANCE ");
i = 1;
PlayerList = GetPlayerList();
for user in PlayerList.list do 
	if (CheckIfInsideList(user:GetName(),Friends) == false) then
		ShowToClient(" "..i , user:GetName() .. " - " .. L2Class2String(user:GetClass()) .. " - Dst: " ..round(tostring(GetMe():GetRangeTo(user))));
		i = i+1;
	end;
end;
ShowToClient(" " , "====================================");
Sleep(5000);