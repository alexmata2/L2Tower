EnemiesCooldown = 60000;
SoundAddress = "attacked.wav";

EnemiesStamp = GetTime() - EnemiesCooldown;

function OnCreate()
	ShowToClient("Enemies", "Loading...");
	enemieslist = {};
	LoadData();
	ShowToClient("Enemies", "Loaded " .. tostring(#enemieslist) .. " enemy names.");
end;

function OnCharInfo(player)
	if NameExist(player:GetName()) then
		if (EnemiesStamp + EnemiesCooldown < GetTime()) then
			PlaySound(SoundAddress);
			ShowArrow(player:GetLocation());
			ShowToClient("Enemy found", player:GetName() .. " | " .. L2Class2String(player:GetClass()) .. " | " .. tostring(player:GetReputation()));
			EnemiesStamp = GetTime();
		end;
	end;
end;

function NameExist(Name)
	for i = 1, #enemieslist do
		if tostring(Name) == enemieslist[i] then
			return true;
		end;
	end;
	return false;
end;

function LoadData()
	local file = io.open(GetDir() .. "\\plugins\\enemies.txt", "r");
	if file == nil
	then
		ShowToClient("Enemies", "Failed to load database!");
		file:close();
		return nil;
	end;
	for line in file:lines()
	do
		enemieslist[#enemieslist+1] = line;
	end;
	file:close();
end;
