Sleep(10000)
tp = false;
SetPause(true)
moveDistance = 30;
loc1 = FVector(116132,76010,-2728)
loc2 = FVector(115866,75195,-2600)
loc3 = FVector(117309,76313,-2714)
loc4 = FVector(118280, 74854, -2561)
loc5 = FVector(116163,77438,-2712)
loc6 = FVector(115688,77605,-2709)
loc7 = FVector(116709,75690,-2731)
loc8 = FVector(118234,74672,-2518)
loc9 = FVector(116742,76733,-2730)
loc10 = FVector(119867,76598,-2275)
loc11 = FVector(115198,77589,-2723)

loc12 = FVector(117676,78993,-2264)

repeat 
	if GetMe():IsAlikeDeath() then
		break
	end;

Sleep(2000)
	if GetDistanceVector(GetMe():GetLocation(), loc1) < 100 then
					ShowToClient("GOD", "Loc1",3)
					MoveTo(117084, 76881, -2700, moveDistance);
					Sleep(200)
					tp = true;
					Sleep(500)
	elseif GetDistanceVector(GetMe():GetLocation(), loc2) < 100 then
					ShowToClient("GOD", "Loc2",3)
					MoveTo(117092, 76894, -2699, moveDistance);
					Sleep(200)
					tp = true;
					Sleep(500)
	elseif GetDistanceVector(GetMe():GetLocation(), loc3) < 100 then
					ShowToClient("GOD", "Loc3",3)
					MoveTo(117092, 76894, -2699, moveDistance);
					Sleep(200)
					tp = true;
					Sleep(500)	
	elseif GetDistanceVector(GetMe():GetLocation(), loc4) < 100 then
					ShowToClient("GOD", "Loc4",3)
					MoveTo(118192, 75551, -2670, moveDistance);
					MoveTo(117092, 76894, -2699, moveDistance);
					Sleep(200)
					tp = true;
					Sleep(500)	
	elseif GetDistanceVector(GetMe():GetLocation(), loc5) < 100 then
					ShowToClient("GOD", "Loc5",3)
					MoveTo(117092, 76894, -2699, moveDistance);
					Sleep(200)
					tp = true;
					Sleep(500)	
	elseif GetDistanceVector(GetMe():GetLocation(), loc6) < 100 then
					ShowToClient("GOD", "Loc5",3)
					MoveTo(117092, 76894, -2699, moveDistance);
					Sleep(200)
					tp = true;
					Sleep(500)
	elseif GetDistanceVector(GetMe():GetLocation(), loc7) < 100 then
					ShowToClient("GOD", "Loc7",3)
					MoveTo(117092, 76894, -2699, moveDistance);
					Sleep(200)
					tp = true;
					Sleep(500)	
	elseif GetDistanceVector(GetMe():GetLocation(), loc8) < 100 then
					ShowToClient("GOD", "Loc8",3)
					MoveTo(118192, 75551, -2670, moveDistance);
					MoveTo(117092, 76894, -2699, moveDistance);
					Sleep(200)
					tp = true;
					Sleep(500)	
	elseif GetDistanceVector(GetMe():GetLocation(), loc9) < 100 then
					ShowToClient("GOD", "Loc9",3)
					MoveTo(117092, 76894, -2699, moveDistance);
					Sleep(200)
					tp = true;
					Sleep(500)
	elseif GetDistanceVector(GetMe():GetLocation(), loc10) < 100 then
					ShowToClient("GOD", "Loc10",3)
					MoveTo(119605, 76585, -2275, moveDistance);
					MoveTo(117866, 76082, -2696, moveDistance);
					MoveTo(117092, 76894, -2699, moveDistance);
					Sleep(200)
					tp = true;
					Sleep(500)	
	elseif GetDistanceVector(GetMe():GetLocation(), loc11) < 100 then
					ShowToClient("GOD", "Loc11",3)
					MoveTo(116465, 77591, -2700, moveDistance);
					MoveTo(117092, 76894, -2699, moveDistance);
					Sleep(200)
					tp = true;
					Sleep(500)	
	elseif GetDistanceVector(GetMe():GetLocation(), loc12) < 100 then
					ShowToClient("GOD", "Loc12",3)
					MoveTo(116990, 78923, -2264, moveDistance);
					MoveTo(116089, 77461, -2711, moveDistance);
					MoveTo(117092, 76894, -2699, moveDistance);
					Sleep(200)
					tp = true;
					Sleep(500)						
	else UseItem(736)
			ShowToClient("GOD", "No match, SOE",3)
			Sleep(30*1000);
			end
			Sleep(1000)
			
until tp == true;
return