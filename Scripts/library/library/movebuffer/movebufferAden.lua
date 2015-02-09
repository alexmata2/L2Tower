	Sleep(10000)
	SetPause(true)
	tp = false;
	moveDistance = 30;
	Loc1 = FVector ( 147975, 27035, -2205); 
	Loc2 = FVector ( 144631, 29140, -2461);
	Loc3 = FVector ( 146043, 30514, -2461); --confirmed
	Loc4 = FVector ( 148951, 21116, -2141);--confirmed
	Loc5 = FVector ( 148579	,30448, -2460); --confirmed
	Loc6 = FVector ( 150232, 29099, -2461); --confirmed
	Loc7 = FVector ( 144531, 24656, -2141);
	Loc8 = FVector ( 144564	,22830, -2141); -- confirmed
	Loc9 = FVector ( 148015, 27991,	-2268); --confirmed
	Loc10 = FVector ( 145691, 21109, -2141); --confirmed
	Loc11 = FVector ( 146499, 30579, -2461);
	Loc12 = FVector ( 146819, 27103, -2205); -- confirmed
	Loc13 = FVector ( 146824, 28058, -2268);
	Loc14 = FVector ( 146027, 30586, -2461);
	Loc15 = FVector ( 144640, 26659, -2265.6000976563); --confirmed
	
repeat 
	if GetMe():IsAlikeDeath() then
		break
	end;

Sleep(2000)
		if (GetDistanceVector(GetMe():GetLocation(), Loc1 ) < 100) then
			ShowToClient("GOD","[Loc1]",3);
			MoveTo(147345, 25883, -2013, moveDistance);
			MoveTo(147126, 25883, -2013, moveDistance);
			Sleep(200)
			tp = true;
			Sleep(1000);
			return
		elseif (GetDistanceVector(GetMe():GetLocation(), Loc2 ) < 100) then
			ShowToClient("GOD","[Loc2]",3);
			MoveTo(145039, 28681, -2439, moveDistance);
			MoveTo(145058, 27634, -2269, moveDistance);
			MoveTo(147030, 27637, -2269, moveDistance);
			MoveTo(147294, 25917, -2013, moveDistance);
			MoveTo(147146, 25874, -2013, moveDistance);
			Sleep(200)
			tp = true;
			Sleep(1000);
			return
		elseif (GetDistanceVector(GetMe():GetLocation(), Loc3 ) < 100) then
			ShowToClient("GOD","[Loc3]",3);
			MoveTo(145039, 28681, -2439, moveDistance);
			MoveTo(147441, 28371, -2268, moveDistance);
			MoveTo(147054, 27366, -2205, moveDistance);
			MoveTo(147385, 25849, -2013, moveDistance);
			MoveTo(147156, 25862, -2013, moveDistance);
			Sleep(200)
			tp = true;
			Sleep(1000);
			return
		elseif (GetDistanceVector(GetMe():GetLocation(), Loc4 ) < 100) then
			ShowToClient("GOD","[Loc4]",3);
			MoveTo(149855,	23246,	-2141, moveDistance);
			MoveTo(149483,	24174,	-2141, moveDistance);
			MoveTo(148578,	24445,	-2013, moveDistance);
			MoveTo(148522,	25698,	-2013, moveDistance);
			MoveTo(147134,	25885,	-2013, moveDistance);
			Sleep(200)
			tp = true;
			Sleep(1000);
			return
		elseif (GetDistanceVector(GetMe():GetLocation(), Loc5 ) < 100) then
			ShowToClient("GOD","[Loc5]",3);
			MoveTo(147497, 29942, -2454, moveDistance);
			MoveTo(147438, 28360, -2268, moveDistance);
			MoveTo(146960, 27218, -2205, moveDistance);
			MoveTo(147434, 25870, -2013, moveDistance);
			MoveTo(147121, 25898, -2013, moveDistance);
			Sleep(200)
			tp = true;
			Sleep(1000);
			return
		elseif (GetDistanceVector(GetMe():GetLocation(), Loc6 ) < 100) then
			ShowToClient("GOD","[Loc6]",3);
			MoveTo(149875, 28566, -2415, moveDistance);
			MoveTo(149832, 27678, -2269, moveDistance);
			MoveTo(148368, 27582, -2261, moveDistance);
			MoveTo(147138, 25870, -2013, moveDistance);
			Sleep(200)
			tp = true;
			Sleep(1000);
		return
		elseif (GetDistanceVector(GetMe():GetLocation(), Loc7 ) < 100) then
			ShowToClient("GOD","[Loc7]",3);
			MoveTo(146387, 24111, -2013, moveDistance);
			MoveTo(146394, 25829, -2013, moveDistance);
			MoveTo(147121, 25898, -2013, moveDistance);
			Sleep(200)
			tp = true;
			Sleep(1000);
			return
		elseif (GetDistanceVector(GetMe():GetLocation(), Loc8 ) < 100) then
			ShowToClient("GOD","[Loc8]",3);
			MoveTo(145223, 24181, -2141, moveDistance);
			MoveTo(146372, 24381, -2013, moveDistance);
			MoveTo(146408, 25881, -2013, moveDistance);
			MoveTo(147121, 25898, -2013, moveDistance);
			Sleep(200)
			tp = true;
			Sleep(1000);
			return
		elseif (GetDistanceVector(GetMe():GetLocation(), Loc9 ) < 100) then
			ShowToClient("GOD","[Loc9]",3);
			MoveTo(147388, 25887, -2013, moveDistance);
			MoveTo(147121, 25898, -2013, moveDistance);
			Sleep(200)
			tp = true;
			Sleep(1000);
			return
		elseif (GetDistanceVector(GetMe():GetLocation(), Loc10 ) < 100) then
			ShowToClient("GOD","[Loc10]",3);
			MoveTo(145654, 21896, -2141, moveDistance);
			MoveTo(144997, 22648, -2141, moveDistance);
			MoveTo(145048, 24118, -2141, moveDistance);
			MoveTo(146359, 24370, -2013, moveDistance);
			MoveTo(146394, 25917, -2013, moveDistance);
			MoveTo(147121, 25898, -2013, moveDistance);
			Sleep(200)
			tp = true;
			Sleep(1000);
			return
		elseif (GetDistanceVector(GetMe():GetLocation(), Loc11 ) < 100) then
			ShowToClient("GOD","[Loc11]",3);
			MoveTo(147454, 30004, -2461, moveDistance);
			MoveTo(147439, 28481, -2268, moveDistance);
			MoveTo(147041, 27277, -2205, moveDistance);
			MoveTo(147370, 25913, -2013, moveDistance);
			MoveTo(147121, 25898, -2013, moveDistance);
			Sleep(200)
			tp = true;
			Sleep(1000);
			return
		elseif (GetDistanceVector(GetMe():GetLocation(), Loc12 ) < 100) then
			ShowToClient("GOD","[Loc12]",3);
			MoveTo(147367, 26553, -2204, moveDistance);
			MoveTo(147337, 25926, -2013, moveDistance);
			MoveTo(147121, 25898, -2013, moveDistance);
			Sleep(200)
			tp = true;
			Sleep(1000);
			return
		elseif(GetDistanceVector(GetMe():GetLocation(), Loc13 ) < 100) then
			ShowToClient("GOD","[Loc13]",3);
			MoveTo(147470, 25925, -2013, moveDistance);
			MoveTo(147121, 25898, -2013, moveDistance);
			Sleep(200)
			tp = true;
			Sleep(1000);
			return
		elseif (GetDistanceVector(GetMe():GetLocation(), Loc14 ) < 100) then
			ShowToClient("GOD","[Loc14]",3);
			MoveTo(147382, 30061, -2461, moveDistance);
			MoveTo(147440, 28446, -2268, moveDistance);
			MoveTo(147051, 27121, -2205, moveDistance);
			MoveTo(147458, 25871, -2013, moveDistance);
			MoveTo(147121, 25898, -2013, moveDistance);
			Sleep(200)
			tp = true;
			Sleep(1000);
			return
		elseif (GetDistanceVector(GetMe():GetLocation(), Loc15 ) < 100) then
			ShowToClient("GOD","[Loc15]",3);
			MoveTo(145028.96875, 26034.89453125, -2265.6000976563, moveDistance);
			MoveTo(147440, 28446, -2268, moveDistance);
			MoveTo(145078.953125, 24677.33203125, -2137.6499023438, moveDistance);
			MoveTo(146209.828125, 24094.453125, -2009.5999755859, moveDistance);
			MoveTo(146485.34375, 25832.853515625, -2009.5999755859, moveDistance);
			MoveTo(147007.625, 25864.072265625, -2009.5999755859, moveDistance);
			Sleep(200)
			tp = true;
			Sleep(1000);
			return
		else UseItem(736);
		ShowToClient("GOD","no match",3);
		Sleep(30000);
		end
		Sleep(500)
	until tp == true;
return