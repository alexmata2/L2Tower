function hasItemByName(name)
	local invList = GetInventory();
		for item in invList.list do
			if (item.Name == name) then
				return true;
			end;
		end;
	return false;
end;

function hasItemById(id)
	local invList = GetInventory();
		for item in invList.list do
			if (item.displayId == id) then
				return true;
			end;
		end;
	return false;
end;
--6645	Beast Soulshot
--6646	Beast Spiritshot

if hasItemById(6645) then
ShowToClient("GOD","has by id",3)
end
Sleep(1000)
if hasItemByName("Beast Soulshot") then
ShowToClient("GOD","has by name",3)
end
