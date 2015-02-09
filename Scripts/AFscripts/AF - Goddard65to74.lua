SCONFIG = L2TConfig.GetConfig();
local running = true
wait = 30;
WarHarmID = 15649;
WizHarmID = 15650;
SOE = "Scroll of Escape"
local file = assert(loadfile(GetDir() .. "\\scripts\\library\\getHtml.lua"))
file()
local file2 = assert(loadfile(GetDir() .. "\\scripts\\library\\detectClass.lua"))
file2()
local file3 = assert(loadfile(GetDir() .. "\\scripts\\library\\inventory.lua"))
file3()
local file4 = assert(loadfile(GetDir() .. "\\scripts\\library\\checkStatus.lua"))
file4()
done = false;
teleport = 13;
teleport2 = 15;

function movetown()
SetPause(true); --If the bot is running, this command will pause it.
Sleep(500);
--ShowToClient("God","Run niggah run!");
Sleep(1000);
UseItem(736); --Use SOE.
Sleep(30000)
	if GetMe():IsAlikeDeath() then
			ShowToClient("GOD","dead on movetown", 3)
			SetPause(true)
			Sleep(5000)
			SetPause(true)
			Sleep(5000)
			RequestRestartPoint(2)
	end;
Sleep(10000);
end

function takebuffs()
	MoveTo(148598.125, -56293.0390625, -2783.4301757813, moveDistance);
	TargetNpc("Adventurers' Guide", 32327);
	Talk();
	ClickAndWait("menu_select?ask=-7&reply=6", "\"What kind of buffs do you have?\"");
	if isFighter then
		Click("menu_select?ask=-7&reply=21", "\"Warrior's Harmony, please.\"");
	elseif isMage then
		Click("menu_select?ask=-7&reply=22", "\"Wizard's Harmony, of course!\"");
	end
	MoveTo(147944.34375, -56006.921875, -2778.8000488281, moveDistance);
	MoveTo(147954.8125, -55294.0625, -2738.8000488281, moveDistance);
	----------------------------------------------------------------------------------------------------
	TargetNpc("Tatiana", 31275);
	MoveTo(147974, -55324, -2734, moveDistance);
	Talk();
	Sleep(2000);
	ClickAndWait("teleport_request", "\"I need to...teleport?\"");
	Sleep(2000);
	-----------------------------------------------------------------
	getHtml(teleport); ---LOL cant catch me now
	Sleep(2000);
	--ShowToClient("GOD",tostring(telestring[teleport]),3)
	--ShowToClient("GOD",tostring(msgstring[teleport]),3)
	Click(tostring(telestring[teleport]), tostring(msgstring[teleport]));
	------------------------------------------------------------------
	WaitForTeleport();
	Sleep(3000)
end

function movetospot()
Sleep(2000)
moveDistance = 30;
--ShowToClient("God","Run to your spot niggah!")
MoveTo(166972, -46033, -3555, moveDistance);

x12=166972
y12=-46033
z12=-3555

Sleep(900)
	if(GetDistanceVector(GetMe():GetLocation(), FVector(x12,y12,z12)) < 300) then
	--------------------------------------------------------------------------------------------------------
	---------------------------------------------------------------------------------------------------------
	if isFighter then
		SCONFIG.melee.me.enabled = true;
		SCONFIG.melee.me.attackRange = 650;
		SCONFIG.targeting.option = L2TConfig.ETargetingType.TT_RANGE_FROM_POINT;
		SCONFIG.targeting.centerPoint.X = 166894; 
		SCONFIG.targeting.centerPoint.Y = -45667; 
		SCONFIG.targeting.centerPoint.Z = -3539; 
		SCONFIG.targeting.rangeType = L2TConfig.ETargetingRangeType.TRT_SQUERE;
		SCONFIG.targeting.range = 2000;
		SetPause(false);
	end
	if isMage then
		SCONFIG.targeting.option = L2TConfig.ETargetingType.TT_RANGE_FROM_POINT;
		SCONFIG.targeting.centerPoint.X = 166894; 
		SCONFIG.targeting.centerPoint.Y = -45667; 
		SCONFIG.targeting.centerPoint.Z = -3539; 
		SCONFIG.targeting.rangeType = L2TConfig.ETargetingRangeType.TRT_SQUERE;
		SCONFIG.targeting.range = 2000;
		SetPause(false);
	end
	-------------------------------------------------------------------------------------------------------------
	--------------------------------------------------------------------------------------------------------------
	Sleep(700);
	SetPause(false); ------ to reactivate Tower in farm spot.
	--ShowToClient("God","Continue slut!")
	Sleep(1000);
	end;
end;

function movetospotNEXT()
	Sleep(2000)
	moveDistance = 30;
	--ShowToClient("God","Run to your spot niggah!")
	MoveTo(187719, -75024, -2758, moveDistance);
	MoveTo(190433, -71637, -2618, moveDistance);
	MoveTo(189579, -69249, -2597, moveDistance);
	MoveTo(192757, -67353, -2750, moveDistance);
	MoveTo(192527, -67516, -2729, moveDistance);
	finalLoc = FVector ( 192527, -67516,-2729);
	Sleep(900)
	if(GetDistanceVector(GetMe():GetLocation(), finalLoc) < 300) then
	-------------------------------------------------------------------------------------
	if isFighter then
		SCONFIG.melee.me.enabled = true;
		SCONFIG.melee.me.attackRange = 100;
		SCONFIG.targeting.option = L2TConfig.ETargetingType.TT_RANGE_FROM_POINT;
		SCONFIG.targeting.centerPoint.X = 191808; 
		SCONFIG.targeting.centerPoint.Y = -68091; 
		SCONFIG.targeting.centerPoint.Z = -2671; 
		SCONFIG.targeting.rangeType = L2TConfig.ETargetingRangeType.TRT_SQUERE;
		SCONFIG.targeting.range = 1200;
		SCONFIG.pickup.userPickup.pickupRange = 300;
		SCONFIG.pickup.userPickup.mode = L2TConfig.EPickupMode.PICKUP_AFTER;
		SetPause(false);
	end
	if isMage then
		SCONFIG.targeting.option = L2TConfig.ETargetingType.TT_RANGE_FROM_POINT;
		SCONFIG.targeting.centerPoint.X = 191808;
		SCONFIG.targeting.centerPoint.Y = -68091; 
		SCONFIG.targeting.centerPoint.Z = -2671;  
		SCONFIG.targeting.rangeType = L2TConfig.ETargetingRangeType.TRT_SQUERE;
		SCONFIG.targeting.range = 1200;
		SCONFIG.pickup.userPickup.pickupRange = 600;
		SCONFIG.pickup.userPickup.mode = L2TConfig.EPickupMode.PICKUP_AFTER;
		SetPause(false);
	end
	----------------------------------------------------------------------------------------
	Sleep(700);
	SetPause(false); ------ to reactivate Tower in farm spot.
	--ShowToClient("God","Continue slut!")
	Sleep(1000);
	end;
end

function takebuffsNEXT()
MoveTo(147720, -56318, -2786, moveDistance);
MoveTo(147683, -56094, -2786, moveDistance);
MoveTo(147805, -55560, -2734, moveDistance);
MoveTo(147917, -55469, -2734, moveDistance);
MoveTo(148022, -55427, -2734, moveDistance);
TargetNpc("Adventurers' Guide", 32327);
Talk()
ClickAndWait("menu_select?ask=-7&reply=6", "\"Is there anything you can do to strengthen me?\"");
if isFighter then
	Click("menu_select?ask=-7&reply=21", "\"Warrior's Harmony, please.\"");
elseif isMage then
	Click("menu_select?ask=-7&reply=22", "\"Wizard's Harmony, of course!\"");
end
TargetNpc("Tatiana", 31275);
MoveTo(147974, -55324, -2734, moveDistance);
Talk()
Sleep(2000);
ClickAndWait("teleport_request", "\"I need to...teleport?\"");
Sleep(2000);
-------------------------------------------------------
getHtml(teleport2); ---LOL cant catch me now
Sleep(2000);
Click(tostring(telestring[teleport2]), tostring(msgstring[teleport2]));
--------------------------------------------------------
WaitForTeleport();
Sleep(3000)
end

detectClass()

function main()
    if running then 
---------------------------------------------------------------------------------------------------
		if GetMe():GetLevel() > 73 then
			Sleep(2000)
			SetPause(true)
			movetown()
			dofile(GetDir() .. "\\scripts\\library\\movebuffer\\movebufferGoddard.lua")
			takebuffsNEXT()
			movetospotNEXT()
			dofile(GetDir() .. "\\scripts\\AF - Imp.lua")
			done = true;
		end
---------------------------------------------------------------------------------------------------
		if need_rez() then
			 Sleep(5000)
			 SetPause(true)
			 Sleep(5000)
			 SetPause(true)
			 RequestRestartPoint(2)
			 Sleep(30000)
             SetPause(true)
             dofile(GetDir() .. "\\scripts\\library\\movebuffer\\movebufferGoddard.lua")
			 if need_ASS() then
				buy_SS_Goddard() 
			  end
			 checkSOE()
             takebuffs()
			 Sleep(2000)
             movetospot()
			 activateASS() 
         end
		if need_ASS() and hasItem(SOE) then
		   movetown()
		   dofile(GetDir() .. "\\scripts\\library\\movebuffer\\movebufferGoddard.lua")
		   buy_SS_Goddard()  -- moves back to center
		   takebuffs()
		   Sleep(2000)
		   movetospot() 
		   activateASS() 
		end
        if need_buffs() and not need_rez() and hasItem(SOE) then
		  SetPause(true)
          movetown()
          dofile(GetDir() .. "\\scripts\\library\\movebuffer\\movebufferGoddard.lua")
			  if need_ASS() then
				buy_SS_Goddard() 
			  end
		  checkSOE()
          takebuffs()
		  Sleep(2000)
          movetospot()
		  activateASS() 		  
		  end
       
       end
    return false
end

repeat
    if running and done == false then
        main()
		elseif done == true then
		break
    end
    Sleep(wait*1000)
    ClearTargets()
until false;