tp = false
SetPause(true)
moveDistance = 30;
loc1 = FVector( 148293, -58309, -2986) -- confirmed
loc2 = FVector( 147685, -58213, -2986) --confirmed
loc3 = FVector( 146837, -58213, -2786)
loc4 = FVector( 150405, -56757, -2986) -- confirmed
loc5 = FVector( 144501, -55093, -2986) -- confirmed
loc6 = FVector( 147685, -56933, -2786) --confirmed
loc7 = FVector( 144757, -56757, -2986)
loc8 = FVector( 149877, -57429, -2986)
loc9 = FVector( 147669, -56469, -2786)
loc10 = FVector( 145489, -59767, -3064)
loc11 = FVector( 148565, -55909, -2786) --confirmed
loc12 = FVector( 144949, -55397, -2981) --confirmed

--same stairs - implementation complete
--------------------------------------------------
loc13 = FVector( 145701, -57701, -2981) --confirmed
loc14 = FVector( 145269, -57685, -2981)
loc15 = FVector( 144965, -56229, -2981) -- confirmed
--------------------------------------------
loc16 = FVector( 150709, -55749, -2981) --confirmed
loc17 = FVector( 147237, -58485, -2981.1042480469) --confirmed
loc18 = FVector( 145397, -56965, -2981)
loc19 = FVector( 146837, -55909, -2781.1049804688) --confirmed
loc20 = FVector( 146373, -56261, -2781) --confirmed
loc21 = FVector( 149093, -56261, -2781) 
loc22 = FVector( 14125, -58069, -2985) 


repeat
	if GetMe():IsAlikeDeath() then
		break
	end;
Sleep(2000)
	if (GetDistanceVector(GetMe():GetLocation(), loc1) < 300) then
		ShowToClient("GOD", "Loc1",3)
		MoveTo(147725, -58082, -2986, moveDistance);
		MoveTo(147707, -56232, -2786, moveDistance);
		Sleep(1000)
		tp = true;
	elseif (GetDistanceVector(GetMe():GetLocation(), loc2) < 300) then
		ShowToClient("GOD", "Loc2",3)
		MoveTo(147725, -58082, -2986, moveDistance);
		MoveTo(147707, -56232, -2786, moveDistance);
		Sleep(1000)
		tp = true;
	elseif (GetDistanceVector(GetMe():GetLocation(), loc3) < 300) then
		ShowToClient("GOD", "Loc3",3)
		MoveTo(147733, -56124, -2786, moveDistance);
		Sleep(1000)
		tp = true;
	elseif (GetDistanceVector(GetMe():GetLocation(), loc4) < 300) then
		ShowToClient("GOD", "Loc4",3)
		MoveTo(149918, -56878, -2986, moveDistance);
		MoveTo(149181, -56395, -2786, moveDistance);
		MoveTo(147743, -56105, -2786, moveDistance);
		Sleep(1000)
		tp = true;
	elseif (GetDistanceVector(GetMe():GetLocation(), loc5) < 300) then
		ShowToClient("GOD", "Loc5",3)
		MoveTo(145372, -56911, -2986, moveDistance);
		MoveTo(146544, -56256, -2786, moveDistance);
		MoveTo(147733, -56124, -2786, moveDistance);
		Sleep(1000)
		tp = true;
	elseif (GetDistanceVector(GetMe():GetLocation(), loc6) < 300) then
		ShowToClient("GOD", "Loc6",3)
		MoveTo(147733, -56124, -2786, moveDistance);
		Sleep(1000)
		tp = true;
	elseif (GetDistanceVector(GetMe():GetLocation(), loc7) < 300) then
		ShowToClient("GOD", "Loc7",3)
		MoveTo(145320, -57033, -2972, moveDistance);
		MoveTo(146299, -56360, -2786, moveDistance);
		MoveTo(147733, -56124, -2786, moveDistance);
		Sleep(1000)
		tp = true;
	elseif (GetDistanceVector(GetMe():GetLocation(), loc8) < 300) then
		ShowToClient("GOD", "Loc8",3)
		MoveTo(150156, -57101, -2981, moveDistance);
		MoveTo(149592, -56655, -2882, moveDistance);
		MoveTo(149181, -56395, -2786, moveDistance);
		MoveTo(147743, -56105, -2786, moveDistance);
		Sleep(1000)
		tp = true;
	elseif (GetDistanceVector(GetMe():GetLocation(), loc9) < 300) then
		ShowToClient("GOD", "Loc9",3)
		MoveTo(147733, -56124, -2786, moveDistance);
		Sleep(1000)
		tp = true;
	elseif (GetDistanceVector(GetMe():GetLocation(), loc10) < 300) then
		ShowToClient("GOD", "Loc10",3)
		MoveTo(147725, -58082, -2986, moveDistance);
		MoveTo(147707, -56232, -2786, moveDistance);
		Sleep(1000)
		tp = true;
	elseif (GetDistanceVector(GetMe():GetLocation(), loc11) < 300) then
		ShowToClient("GOD", "Loc11",3)
		MoveTo(147733, -56124, -2786, moveDistance);
		Sleep(1000)
		tp = true;
	elseif (GetDistanceVector(GetMe():GetLocation(), loc12) < 300) then
		ShowToClient("GOD", "Loc12",3)
		MoveTo(144985, -56759, -2981, moveDistance);
		MoveTo(145597, -56833, -2978, moveDistance);
		MoveTo(146580, -56174, -2781, moveDistance);
		MoveTo(147493, -56227, -2781, moveDistance);
		Sleep(1000)
		tp = true;
		------------------------------------------------------------new
	elseif (GetDistanceVector(GetMe():GetLocation(), loc13) < 300) then
		ShowToClient("GOD", "Loc13",3)
		MoveTo(144871.515625, -57275.796875, -2981.1042480469, moveDistance);
		MoveTo(146180.671875, -56427.19140625, -2781.1547851563, moveDistance);
		MoveTo(146750.046875, -56126.01953125, -2781.1547851563, moveDistance);
		MoveTo(147687.09375, -56296.65234375, -2781.1547851563, moveDistance);
		Sleep(1000)
		tp = true;
	elseif (GetDistanceVector(GetMe():GetLocation(), loc14) < 300) then
		ShowToClient("GOD", "Loc14",3)
		MoveTo(144871.515625, -57275.796875, -2981.1042480469, moveDistance);
		MoveTo(146180.671875, -56427.19140625, -2781.1547851563, moveDistance);
		MoveTo(146750.046875, -56126.01953125, -2781.1547851563, moveDistance);
		MoveTo(147687.09375, -56296.65234375, -2781.1547851563, moveDistance);
		Sleep(1000)
		tp = true;
	elseif (GetDistanceVector(GetMe():GetLocation(), loc15) < 300) then
		ShowToClient("GOD", "Loc15",3)
		MoveTo(144871.515625, -57275.796875, -2981.1042480469, moveDistance);
		MoveTo(146180.671875, -56427.19140625, -2781.1547851563, moveDistance);
		MoveTo(146750.046875, -56126.01953125, -2781.1547851563, moveDistance);
		MoveTo(147687.09375, -56296.65234375, -2781.1547851563, moveDistance);
		Sleep(1000)
		tp = true;
	elseif (GetDistanceVector(GetMe():GetLocation(), loc16) < 300) then
		ShowToClient("GOD", "Loc16",3)
		MoveTo(150163.046875,	-57022.125,	-2972.5, moveDistance);
		MoveTo(148698.96875, -56127.5859375, -2781.1547851563, moveDistance);
		MoveTo(147765.984375, -56316.67578125, -2781.1547851563, moveDistance);
		Sleep(1000)
		tp = true;
	elseif (GetDistanceVector(GetMe():GetLocation(), loc17) < 300) then
		ShowToClient("GOD", "Loc17",3)
		MoveTo(147685.3125, -58350.62890625, -2985.4040527344, moveDistance);
		MoveTo(147723.125, -56716.25390625, -2785.4548339844, moveDistance);
		Sleep(1000)
		tp = true;
elseif (GetDistanceVector(GetMe():GetLocation(), loc18) < 300) then
		ShowToClient("GOD", "Loc18",3)
		MoveTo(146738.109375, -56061.83984375, -2781.1547851563, moveDistance);
		MoveTo(147581.96875, -56201.06640625, -2781.1547851563, moveDistance);
		Sleep(1000)
		tp = true;
	elseif (GetDistanceVector(GetMe():GetLocation(), loc19) < 300) then
		ShowToClient("GOD", "Loc19",3)
		MoveTo(147660.546875, -56174.9296875, -2781.1049804688, moveDistance);
		Sleep(1000)
		tp = true;
	elseif (GetDistanceVector(GetMe():GetLocation(), loc20) < 300) then
		ShowToClient("GOD", "Loc20",3)
		MoveTo(147727.4375, -56251.78125, -2781.1049804688, moveDistance);
		Sleep(1000)
		tp = true;
	elseif (GetDistanceVector(GetMe():GetLocation(), loc21) < 300) then
		ShowToClient("GOD", "Loc21",3)
		MoveTo(147727.4375, -56251.78125, -2781.1049804688, moveDistance);
		Sleep(1000)
		tp = true;
	elseif (GetDistanceVector(GetMe():GetLocation(), loc22) < 300) then
		ShowToClient("GOD", "Loc22",3)
		MoveTo(147706.921875, -58276.79296875, -2985.4040527344, moveDistance);
		MoveTo(147740.859375, -56384.6015625, -2785.4548339844, moveDistance);
		Sleep(1000)
		tp = true;
	else UseItem(736);
		ShowToClient("GOD", "No match, SOE",3)
		Sleep(30*1000);
	end
until tp == true