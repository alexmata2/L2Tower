SCONFIG = L2TConfig.GetConfig();
teleport = 7;  --gludio
teleport2 = 5; --dion
teleport3 = 13; --plains 
teleport4 = 14
wait = 30;
WarHarmID = 15649;
WizHarmID = 15650;
local running = true
SOE = "Scroll of Escape";
done = false
local file = assert(loadfile(GetDir() .. "\\scripts\\library\\getHtml.lua"))
file()
local file2 = assert(loadfile(GetDir() .. "\\scripts\\library\\detectClass.lua"))
file2()
local file3 = assert(loadfile(GetDir() .. "\\scripts\\library\\inventory.lua"))
file3()
local file4 = assert(loadfile(GetDir() .. "\\scripts\\library\\checkStatus.lua"))
file4()

function movetown()
SetPause(true); --pause bot
Sleep(500);
--ShowToClient("God","Run niggah run!");
Sleep(1000);
UseItem(736); --Use SOE.
WaitForTeleport();
Sleep(2000);
end --end of movetown

function takebuffs()
	moveDistance = 30;
	MoveTo(147189.671875, 25687.98046875, -2017.4000244141, moveDistance);
	TargetNpc("Adventurers' Guide", 32327);
	Talk();
	ClickAndWait("menu_select?ask=-7&reply=6", "\"Is there anything you can do to strengthen me?\"");
	if isFighter then
		Click("menu_select?ask=-7&reply=21", "\"Warrior's Harmony, please.\"");
	elseif isMage then
		Click("menu_select?ask=-7&reply=22", "\"Wizard's Harmony, of course!\"");
	end
	Sleep(1000);
end --end of takebuffs

function takebuffsNEXT()
	moveDistance= 30;
	TargetNpc("Adventurers' Guide", 32327);
	MoveTo(147129, 25915, -2018, moveDistance);
	Talk();
	ClickAndWait("menu_select?ask=-7&reply=6", "\"Is there anything you can do to strengthen me?\"");
	if isFighter then
		Click("menu_select?ask=-7&reply=21", "\"Warrior's Harmony, please.\"");
	elseif isMage then
		Click("menu_select?ask=-7&reply=22", "\"Wizard's Harmony, of course!\"");
	end
	Sleep(1000);
	MoveTo(147134, 25893, -2018, moveDistance);
	MoveTo(146847, 25843, -2018, moveDistance);
	TargetNpc("Elisa", 30848);
	MoveTo(146783, 25836, -2018, moveDistance);
	Talk();
	Sleep(2000);
	ClickAndWait("teleport_request", "\"I need to...teleport?\"");
	Sleep(2000);
	getHtml(teleport4);
	Sleep(2000)
	Click(tostring(telestring[teleport4]), tostring(msgstring[teleport4]));
	WaitForTeleport();
	Sleep(5000)	
end 

function movetospot()
moveDistance = 30;
--ShowToClient("God","Run to your spot niggah!")
MoveTo(147636.015625, 26006.998046875, -2009.5999755859, moveDistance);
MoveTo(146703.765625, 27625.91015625, -2265.0261230469, moveDistance);
MoveTo(145081.3125, 27543.537109375, -2265.6000976563, moveDistance);
------Last location goes here to compare with end destination
MoveTo(144309.40625, 26326.150390625, -2265.6000976563, moveDistance);
MoveTo(139091.875, 26344.9453125, -2600.1887207031, moveDistance);
MoveTo(136894.484375, 20966.40234375, -3673.1748046875, moveDistance);
------Last location goes here to compare with end destination
MoveTo(137278.109375, 16966.615234375, -3767.4460449219, moveDistance);
MoveTo(137551.71875, 12711.82421875, -4036.8425292969, moveDistance);
MoveTo(138250.765625, 9568.404296875, -4217.927734375, moveDistance);

x12= 138250.765625
y12= 9568.404296875
z12= -4217.927734375

	Sleep(900)
	if(GetDistanceVector(GetMe():GetLocation(), FVector(x12,y12,z12)) < 300) then  --x12,y12,z12 go here
		if isFighter then
				SCONFIG.melee.me.enabled = true;
				SCONFIG.melee.me.attackRange = 650;
				SCONFIG.targeting.option = L2TConfig.ETargetingType.TT_RANGE_FROM_POINT;
				SCONFIG.targeting.noMonstersReturnToCenter = true;
				SCONFIG.targeting.centerPoint.X = 138224; 
				SCONFIG.targeting.centerPoint.Y = 9569; 
				SCONFIG.targeting.centerPoint.Z = -4219; 
				SCONFIG.targeting.rangeType = L2TConfig.ETargetingRangeType.TRT_SQUERE;
				SCONFIG.targeting.range = 2500;
				SetPause(false);
			end
			if isFighter then
				SCONFIG.targeting.option = L2TConfig.ETargetingType.TT_RANGE_FROM_POINT;
				SCONFIG.targeting.noMonstersReturnToCenter = true;
				SCONFIG.targeting.centerPoint.X = 138224; 
				SCONFIG.targeting.centerPoint.Y = 9569; 
				SCONFIG.targeting.centerPoint.Z = -4219; 
				SCONFIG.targeting.rangeType = L2TConfig.ETargetingRangeType.TRT_SQUERE;
				SCONFIG.targeting.range = 2500;
				SetPause(false);
			end
		Sleep(700);
		SetPause(false); ------ start bot
		--ShowToClient("God","Continue slut!")
		Sleep(1000);
	end;
	
end; --end of movetospot

function movetospotNEXT()
Sleep(5000)
	moveDistance = 30;
	--ShowToClient("God","Run to your spot niggah!")
	MoveTo(173639.734375, 40088.51953125, -4123.5473632813, moveDistance);
	MoveTo(171878.671875, 39612.08203125, -4107.5522460938, moveDistance);
	MoveTo(170193.578125, 38725.94140625, -4060.7475585938, moveDistance);
	MoveTo(171008.609375, 42021.11328125, -4906.5288085938, moveDistance);
	---------------------------------------------------------------------
	MoveTo(169978.59375, 44413.87890625, -4785.9135742188, moveDistance);
	MoveTo(171061.3125, 44876.953125, -4499.68359375, moveDistance);
	MoveTo(171895.96875, 46240.91796875, -4220.130859375, moveDistance);
	MoveTo(170616.640625, 49472.875, -4132.6518554688, moveDistance);
	-------------------------------------------------------------------
	MoveTo(168571.84375, 52930.265625, -4224.3486328125, moveDistance);
	MoveTo(167425.34375, 53569.49609375, -4208.9311523438, moveDistance);
	MoveTo(167853, 52173, -4175, moveDistance);
	MoveTo(168181, 50278, -4095, moveDistance);
	
	x12 = 168181
	y12 = 50278
	z12 = -4095

	Sleep(900)
	if(GetDistanceVector(GetMe():GetLocation(), FVector(x12,y12,z12)) < 500) then
	--------------------------------------------------------------------------------------
		if isFighter then
			SCONFIG.melee.me.enabled = true;
			SCONFIG.melee.me.attackRange = 650;
			SCONFIG.targeting.option = L2TConfig.ETargetingType.TT_RANGE_FROM_POINT;
			SCONFIG.targeting.centerPoint.X = 167966; 
			SCONFIG.targeting.centerPoint.Y = 50171; 
			SCONFIG.targeting.centerPoint.Z = -4084; 
			SCONFIG.targeting.rangeType = L2TConfig.ETargetingRangeType.TRT_SQUERE;
			SCONFIG.targeting.range = 2000;
			SetPause(false);
		end
		if isMage then
			SCONFIG.targeting.option = L2TConfig.ETargetingType.TT_RANGE_FROM_POINT;
			SCONFIG.targeting.centerPoint.X = 167966; 
			SCONFIG.targeting.centerPoint.Y = 50171; 
			SCONFIG.targeting.centerPoint.Z = -4084; 
			SCONFIG.targeting.rangeType = L2TConfig.ETargetingRangeType.TRT_SQUERE;
			SCONFIG.targeting.range = 2000;
			SetPause(false);
		end
		------------------------------------------------------------------------------------------
		Sleep(700);
		SetPause(false); ------ to reactivate Tower in farm spot.
		--ShowToClient("God","Continue slut!")
		Sleep(1000);
	end;
end

detectClass();

function main()
    if running then
		if GetMe():GetLevel() > 51 then
			movetown()
			dofile(GetDir() .. "\\scripts\\library\\movebuffer\\movebufferAden.lua")
			takebuffsNEXT()
			movetospotNEXT()
			--ShowToClient("GOD", "Going to next script")
			dofile(GetDir() .. "\\scripts\\AF - Aden55to61.lua")
			done = true
		end;
			if need_buffs() and not need_rez() and hasItem(SOE) then
			  movetown()
			  dofile(GetDir() .. "\\scripts\\library\\movebuffer\\movebufferAden.lua")
			  takebuffs()
			  Sleep(5000)
			  movetospot() 
			elseif need_rez() then
				Sleep(2000)
				SetPause(true)
				Sleep(2000)
				SetPause(true)
				Sleep(2000)
				 RequestRestartPoint(2)
				 Sleep(30000)
				 SetPause(true)
				 dofile(GetDir() .. "\\scripts\\library\\movebuffer\\movebufferAden.lua")
				 takebuffs()
				 Sleep(10000)
				 movetospot()
			  end
       end
    return false
end

repeat
    if running and done == false then
        main()
		elseif done == true then
		break;
    end
    Sleep(wait*1000)
    ClearTargets()
until false;