SCONFIG = L2TConfig.GetConfig();
local running = true
wait = 30;
WarHarmID = 15649;
WizHarmID = 15650;
SOE = "Scroll of Escape";
teleport1 = 14;
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
end

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
	MoveTo(147134, 25893, -2018, moveDistance);
	MoveTo(146847, 25843, -2018, moveDistance);
	TargetNpc("Elisa", 30848);
	MoveTo(146783, 25836, -2018, moveDistance);
	Talk();
	Sleep(2000);
	ClickAndWait("teleport_request", "\"I need to...teleport?\"");
	Sleep(2000);
	-----------------------------------------------------
	getHtml(teleport1);
	Sleep(2000)
	Click(tostring(telestring[teleport1]), tostring(msgstring[teleport1]));
	WaitForTeleport()
	-----------------------------------------------------
	Sleep(5000)
	
	
end

function movetospot()
	Sleep(5000)
	moveDistance = 30;
	--ShowToClient("God","Run to your spot niggah!")
	MoveTo(173639.734375, 40088.51953125, -4123.5473632813, moveDistance);
	MoveTo(171878.671875, 39612.08203125, -4107.5522460938, moveDistance);
	MoveTo(170193.578125, 38725.94140625, -4060.7475585938, moveDistance);
	MoveTo(171008.609375, 42021.11328125, -4906.5288085938, moveDistance);
	---------------------------------------------------------------------
	
	x12 = 171008.609375
	y12 = 42021.11328125
	z12 = -4906.5288085938

	Sleep(900)
	if(GetDistanceVector(GetMe():GetLocation(), FVector(x12,y12,z12)) < 500) then
		if isFighter then
				SCONFIG.melee.me.enabled = true;
				SCONFIG.melee.me.attackRange = 650;
				SCONFIG.targeting.option = L2TConfig.ETargetingType.TT_RANGE_FROM_POINT;
				SCONFIG.targeting.centerPoint.X = 170971; 
				SCONFIG.targeting.centerPoint.Y = 42854; 
				SCONFIG.targeting.centerPoint.Z = -4858; 
				SCONFIG.targeting.rangeType = L2TConfig.ETargetingRangeType.TRT_SQUERE;
				SCONFIG.targeting.range = 1800;
				SetPause(false);
			end
			if isMage then
				SCONFIG.targeting.option = L2TConfig.ETargetingType.TT_RANGE_FROM_POINT;
				SCONFIG.targeting.centerPoint.X = 170971; 
				SCONFIG.targeting.centerPoint.Y = 42854; 
				SCONFIG.targeting.centerPoint.Z = -4858; 
				SCONFIG.targeting.rangeType = L2TConfig.ETargetingRangeType.TRT_SQUERE;
				SCONFIG.targeting.range = 1800;
				SetPause(false);
			end
		Sleep(700);
		SetPause(false); ------ to reactivate Tower in farm spot.
		--ShowToClient("God","Continue slut!")
		Sleep(1000);
	end;
end;

function movetoGODDARD()
	MoveTo(146847, 25843, -2018, moveDistance);
	TargetNpc("Elisa", 30848);
	MoveTo(146783, 25836, -2018, moveDistance);
	Talk();
	Sleep(2000);
	ClickAndWait("teleport_request", "\"I need to...teleport?\"");
	Sleep(2000);
	getHtml(1)
	Sleep(2000)
	Click(tostring(telestring[1]), tostring(msgstring[1]));
	WaitForTeleport();
	Sleep(3000)
	MoveTo(148022, -55427, -2734, moveDistance);
	TargetNpc("Adventurers' Guide", 32327);
	Talk();
	ClickAndWait("menu_select?ask=-7&reply=6", "\"Is there anything you can do to strengthen me?\"");
	if isFighter then
		Click("menu_select?ask=-7&reply=21", "\"Warrior's Harmony, please.\"");
	elseif isMage then
		Click("menu_select?ask=-7&reply=22", "\"Wizard's Harmony, of course!\"");
	end
end

detectClass();

function main()
    if running then
		if GetMe():GetLevel() > 64 then
		Sleep(2000)
		SetPause(true)
		movetown()
		dofile(GetDir() .. "\\scripts\\library\\movebuffer\\movebufferAden.lua")
		movetoGODDARD()
		movetospotNEXT()
		dofile(GetDir() .. "\\scripts\\AF - Goddard65to74.lua")
		done = true;
		end
			   if need_buffs() and not need_rez() and hasItem(SOE) then
				  movetown()
				  dofile(GetDir() .. "\\scripts\\library\\movebuffer\\movebufferAden.lua")
				  takebuffs()
				  Sleep(10000)
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