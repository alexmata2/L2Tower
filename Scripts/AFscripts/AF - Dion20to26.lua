SCONFIG = L2TConfig.GetConfig();
teleport1 = 1;  --giran
teleport2 = 13; --plains 
teleport3 = 16; --breka
wait = 30;
WarHarmID = 15649;
WizHarmID = 15650;
local running = true
SOE = "Scroll of Escape";
done = false;
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
--ShowToClient("God","Return to slut island!");
Sleep(1000);
UseItem(736); --Use SOE.
WaitForTeleport();
Sleep(5000)
end --end of movetown

function takebuffsDION()
	moveDistance = 30;
	Sleep(1000)
	MoveTo(15282.899414063, 143043.625, -2685.6877441406, moveDistance);
	TargetNpc("Adventurers' Guide", 32327);
	Talk();
	ClickAndWait("menu_select?ask=-7&reply=6", "\"Is there anything you can do to strengthen me?\"");
	if isFighter then
		Click("menu_select?ask=-7&reply=21", "\"Warrior's Harmony, please.\"");
	elseif isMage then
		Click("menu_select?ask=-7&reply=22", "\"Wizard's Harmony, of course!\"");
	end
	Sleep(1000)
end

function MoveToGiran()
moveDistance = 30;
Sleep(500)
MoveTo(15655, 142909, -2702, moveDistance);
TargetNpc("Trisha", 30059);
Talk();
Sleep(2000);
ClickAndWait("teleport_request", "\"I want to teleport.\"");
Sleep(2000);
getHtml(teleport1);
Sleep(2000)
Click(tostring(telestring[teleport1]), tostring(msgstring[teleport1]));
WaitForTeleport()
------------------------------------------
Sleep(10000)
TargetNpc("Clarissa", 30080);
Talk();
Sleep(2000);
ClickAndWait("teleport_request", "\"Yes, I'd like to be teleported.\"");
Sleep(2000);
getHtml(teleport3);
Sleep(2000)
Click(tostring(telestring[teleport3]), tostring(msgstring[teleport3]));
WaitForTeleport()
end

function movebuffer()
	moveDistance = 30;
	MoveTo(18235, 145872, -3103, moveDistance);
	MoveTo(17065, 145204, -3024, moveDistance);
	MoveTo(16594, 143476, -2837, moveDistance);
end; --end of movebuffer

function takebuffs()
	moveDistance = 30;
	Sleep(1000)
	MoveTo(15282.899414063, 143043.625, -2685.6877441406, moveDistance);
	TargetNpc("Adventurers' Guide", 32327);
	Talk();
	ClickAndWait("menu_select?ask=-7&reply=6", "\"What kind of buffs do you have?\"");
	if isFighter then
		Click("menu_select?ask=-7&reply=21", "\"Warrior's Harmony, please.\"");
	elseif isMage then
		Click("menu_select?ask=-7&reply=22", "\"Wizard's Harmony, of course!\"");
	end
	Sleep(500)
	MoveTo(15592.732421875, 142919.765625, -2710.3999023438, moveDistance);
	TargetNpc("Trisha", 30059);
	Talk();
	Sleep(2000);
	ClickAndWait("teleport_request", "\"I want to teleport.\"");
	Sleep(2000);
	-------------------------------------------------------------
	getHtml(teleport2);
	Sleep(2000)
	Click(tostring(telestring[teleport2]), tostring(msgstring[teleport2]));
	WaitForTeleport()
	----------------------------------------------------------------
	Sleep(2000)
end --end of takebuffs

function movetospot()
moveDistance = 30;
--ShowToClient("God","Run to your spot niggah!")
MoveTo(1843, 175372, -3075, moveDistance);
MoveTo(2425, 172995, -3058, moveDistance);
MoveTo(809, 170505, -3351, moveDistance);
------Last location goes here to compare with end destination
x12= 809
y12= 170505
z12=-3351

	Sleep(900)
	if(GetDistanceVector(GetMe():GetLocation(), FVector(x12,y12,z12)) < 300) then  --x12,y12,z12 go here
		--------------------------------------------------------------------------------------------------------
		---------------------------------------------------------------------------------------------------------
		if isFighter then
			SCONFIG.melee.me.enabled = true;
			SCONFIG.melee.me.attackRange = 650;
			SCONFIG.targeting.option = L2TConfig.ETargetingType.TT_RANGE_FROM_POINT;
			SCONFIG.targeting.noMonstersReturnToCenter = true;
			SCONFIG.targeting.centerPoint.X = 742; 
			SCONFIG.targeting.centerPoint.Y = 169713; 
			SCONFIG.targeting.centerPoint.Z = -3474; 
			SCONFIG.targeting.rangeType = L2TConfig.ETargetingRangeType.TRT_SQUERE;
			SCONFIG.targeting.range = 3000;
			SCONFIG.targeting.z_range = 600;
			SetPause(false);
		end	
		if isMage then
			SCONFIG.targeting.option = L2TConfig.ETargetingType.TT_RANGE_FROM_POINT;
			SCONFIG.targeting.noMonstersReturnToCenter = true;
			SCONFIG.targeting.centerPoint.X = 742; 
			SCONFIG.targeting.centerPoint.Y = 169713; 
			SCONFIG.targeting.centerPoint.Z = -3474; 
			SCONFIG.targeting.rangeType = L2TConfig.ETargetingRangeType.TRT_SQUERE;
			SCONFIG.targeting.range = 3000;
			SCONFIG.targeting.z_range = 600;
			SetPause(false);
		end
		-------------------------------------------------------------------------------------------------------------
		--------------------------------------------------------------------------------------------------------------
		Sleep(500);
		Command("/tf")
		Sleep(500);
		SetPause(false); ------ start bot
		--ShowToClient("God","Continue slut!")
		Sleep(1000);
	end;
	
end; --end of movetospot

function movetospotGIRAN()
moveDistance = 30;
--ShowToClient("God","Run to your spot niggah!")
MoveTo(81515, 130334, -3638, moveDistance);
MoveTo(79341, 126964, -3353, moveDistance);
MoveTo(78949, 125504, -2827, moveDistance);
MoveTo(77674, 124469, -2792, moveDistance);
------Last location goes here to compare with end destination
x12= 77674
y12= 124469
z12= -2792

	Sleep(900)
	if(GetDistanceVector(GetMe():GetLocation(), FVector(x12,y12,z12)) < 300) then  --x12,y12,z12 go here
		--------------------------------------------------------------------------------------------------------
		---------------------------------------------------------------------------------------------------------
		if isFighter then
			SCONFIG.melee.me.enabled = true;
			SCONFIG.melee.me.attackRange = 650;
			SCONFIG.targeting.option = L2TConfig.ETargetingType.TT_RANGE_FROM_POINT;
			SCONFIG.targeting.noMonstersReturnToCenter = true;
			SCONFIG.targeting.centerPoint.X = 77226; 
			SCONFIG.targeting.centerPoint.Y = 124447; 
			SCONFIG.targeting.centerPoint.Z = -2796; 
			SCONFIG.targeting.rangeType = L2TConfig.ETargetingRangeType.TRT_SQUERE;
			SCONFIG.targeting.range = 2000;
			SCONFIG.targeting.z_range = 600;
			SetPause(false);
		end
		if isMage then
			SCONFIG.targeting.option = L2TConfig.ETargetingType.TT_RANGE_FROM_POINT;
			SCONFIG.targeting.noMonstersReturnToCenter = true;
			SCONFIG.targeting.centerPoint.X = 77226; 
			SCONFIG.targeting.centerPoint.Y = 124447; 
			SCONFIG.targeting.centerPoint.Z = -2796; 
			SCONFIG.targeting.rangeType = L2TConfig.ETargetingRangeType.TRT_SQUERE;
			SCONFIG.targeting.range = 2000;
			SCONFIG.targeting.z_range = 600;
			SetPause(false);
		end
		-------------------------------------------------------------------------------------------------------------
		--------------------------------------------------------------------------------------------------------------
		Sleep(700);
		SetPause(false); ------ start bot
		--ShowToClient("God","Continue slut!")
		Sleep(1000);
	end;
	
end; --end of movetospot

detectClass();

if IsPaused() then
	movetown()
	movebuffer()
	takebuffs()
	movetospot()
end

function main()
    if running then
		if GetMe():GetLevel() > 25 then
			Sleep(2000)
			SetPause(true)
			movetown()
			SetPause(true)
			Sleep(2000)
			movebuffer()
			takebuffsDION()
			MoveToGiran()
			movetospotGIRAN()
			--ShowToClient("GOD", "Going to next script")
			dofile(GetDir() .. "\\scripts\\AF - Giran26to40.lua")
			done = true;
		end
		   if need_buffs() and not need_rez() and hasItem(SOE) then
			  movetown()
			  movebuffer()
			  takebuffs()
			  Sleep(2000)
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
				  movebuffer()
				  takebuffs()
				  Sleep(2000)
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