SCONFIG = L2TConfig.GetConfig();
teleport1 = 2;  --oren
teleport2 = 2; --giran
teleport3 = 8; --gludio
teleport4 = 16; --breka
wait = 30;
WarHarmID = 15649;
WizHarmID = 15650;
local running = true
SOE = "Scroll of Escape";
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
Sleep(2000);

end --end of movetown

function movetospot()
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
				SCONFIG.targeting.z_range = 300;
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
				SCONFIG.targeting.z_range = 300;
				SetPause(false);
			end
		Sleep(700);
		SetPause(false); ------ start bot
		--ShowToClient("God","Continue slut!")
		Sleep(1000);
	end;
	
end; --end of movetospot

function takebuffs()
	moveDistance = 30;
	Sleep(1000)
	MoveTo(116827.2265625, 77198.4609375, -2703.2634277344, moveDistance);
	TargetNpc("Adventurers' Guide", 32327);
	Talk();
	ClickAndWait("menu_select?ask=-7&reply=6", "\"What kind of buffs do you have?\"");
	if isFighter then
		Click("menu_select?ask=-7&reply=21", "\"Warrior's Harmony, please.\"");
	elseif isMage then
		Click("menu_select?ask=-7&reply=22", "\"Wizard's Harmony, of course!\"");
	end
	Sleep(1000)
	MoveTo(117084, 76881, -2700, moveDistance);
	TargetNpc("Esmeralda", 30233);
	Talk();
	Sleep(2000);
	ClickAndWait("teleport_request", "\"I'll teleport.\"");
	Sleep(2000);
	-------------------------------------------------------------
	getHtml(teleport1);
	Sleep(2000)
	Click(tostring(telestring[teleport1]), tostring(msgstring[teleport1]));
	WaitForTeleport()
	----------------------------------------------------------------
	Sleep(2000)
	TargetNpc("Valentina", 30177);
	Talk();
	Sleep(2000);
	ClickAndWait("teleport_request", "\"Uh, can I teleport?\"");
	Sleep(2000);
	-------------------------------------------------------------
	getHtml(teleport2);
	Sleep(2000)
	Click(tostring(telestring[teleport2]), tostring(msgstring[teleport2]));
	WaitForTeleport()
	----------------------------------------------------------------
	Sleep(2000)
	TargetNpc("Clarissa", 30080);
	Talk();
	Sleep(2000);
	ClickAndWait("teleport_request", "\"Yes, I'd like to be teleported.\"");
	Sleep(2000);
	getHtml(teleport4);
	Sleep(2000)
	Click(tostring(telestring[teleport4]), tostring(msgstring[teleport4]));
	WaitForTeleport()
	Sleep(2000)
end --end of takebuffs

function takebuffsGLUDIO()
	moveDistance = 30;
	Sleep(1000)
	MoveTo(116827.2265625, 77198.4609375, -2703.2634277344, moveDistance);
	TargetNpc("Adventurers' Guide", 32327);
	Talk();
	ClickAndWait("menu_select?ask=-7&reply=6", "\"What kind of buffs do you have?\"");
	if isFighter then
		Click("menu_select?ask=-7&reply=21", "\"Warrior's Harmony, please.\"");
	elseif isMage then
		Click("menu_select?ask=-7&reply=22", "\"Wizard's Harmony, of course!\"");
	end
	Sleep(1000)
	MoveTo(117084, 76881, -2700, moveDistance);
	TargetNpc("Esmeralda", 30233);
	Talk();
	Sleep(2000);
	ClickAndWait("teleport_request", "\"I'll teleport.\"");
	Sleep(2000);
	-------------------------------------------------------------
	getHtml(teleport1);
	Sleep(2000)
	Click(tostring(telestring[teleport1]), tostring(msgstring[teleport1]));	
	WaitForTeleport()
	----------------------------------------------------------------
	Sleep(2000)
	TargetNpc("Valentina", 30177);
	Talk();
	Sleep(2000);
	ClickAndWait("teleport_request", "\"Uh, can I teleport?\"");
	Sleep(2000);
	getHtml(teleport3);
	Sleep(2000)
	Click(tostring(telestring[teleport3]), tostring(msgstring[teleport3]));
	WaitForTeleport()
	Sleep(2000)
end

detectClass()

function main()
    if running then  
			if GetMe():GetLevel() > 37 then
				Sleep(2000)
				SetPause(true)
				Sleep(500)
				movetown()
				Sleep(2000)
				dofile(GetDir() .. "\\scripts\\library\\movebuffer\\movebufferHunter.lua")
				takebuffsGLUDIO()
				done = true;
			end
			
		    if need_rez() then
				 Sleep(2000)
				 SetPause(true)
				 Sleep(2000)
				 SetPause(true)
				 Sleep(2000)
				 RequestRestartPoint(2)
				 Sleep(30000)
				 SetPause(true)
				 dofile(GetDir() .. "\\scripts\\library\\movebuffer\\movebufferHunter.lua")
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