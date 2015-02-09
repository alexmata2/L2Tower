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
detectClass()
local file3 = assert(loadfile(GetDir() .. "\\scripts\\library\\inventory.lua"))
file3()
local file4 = assert(loadfile(GetDir() .. "\\scripts\\library\\checkStatus.lua"))
file4()
done = false;
teleport = 15;
teleport2 = 7;
--equip dagger
------------------------------------------------------------
------------------------------------------------------------
Sleep(500)
if hasItemById(37271) then
	Sleep(500)
	UseItem(37271); -- Steel Bloody Orchid (60-day)
	Sleep(500)
end
Sleep(500)
------------------------------------------------------------
------------------------------------------------------------
function movetown()
SetPause(true); --If the bot is running, this command will pause it.
Sleep(500);
--ShowToClient("System","Run niggah run!");
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
Sleep(20000);
end;

function takebuffs()
	MoveTo(148598.125, -56293.0390625, -2783.4301757813, moveDistance);
	TargetNpc("Adventurers' Guide", 32327);
	Talk();
	ClickAndWait("menu_select?ask=-7&reply=6", "\"What kind of buffs do you have?\"");
		if isFighter then
			Click("menu_select?ask=-7&reply=21", "\"Warrior's Harmony, please.\"");
		end
		if isMage then
			Click("menu_select?ask=-7&reply=22", "\"Wizard's Harmony, of course!\"");
		end
		
	MoveTo(147944.34375, -56006.921875, -2778.8000488281, moveDistance);
	MoveTo(147954.8125, -55294.0625, -2738.8000488281, moveDistance);
	TargetNpc("Tatiana", 31275);
	MoveTo(147974, -55324, -2734, moveDistance);
	Talk();
	ClickAndWait("teleport_request", "\"Teleport me, please.\"");
	-----------------------------------------------------------------
	getHtml(teleport); ---LOL cant catch me now
	Sleep(2000);
	--Click("teleport_4809600192_14_57_1209025041_3", "811;F;1010528");
	Click(tostring(telestring[teleport]), tostring(msgstring[teleport]));
	------------------------------------------------------------------
	WaitForTeleport();
	Sleep(3000)
end

function movetospot()
	Sleep(2000)
	moveDistance = 30;
	--ShowToClient("God","Run to your spot niggah!")
	MoveTo(187719, -75024, -2758, moveDistance);
	MoveTo(190433, -71637, -2618, moveDistance);
	MoveTo(189579, -69249, -2597, moveDistance);
	MoveTo(192757, -67353, -2750, moveDistance);
	MoveTo(192527, -67516, -2729, moveDistance);
	finalLoc = FVector (192527, -67516,-2729);
	Sleep(900)
	if(GetDistanceVector(GetMe():GetLocation(), finalLoc) < 300) then
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
		Sleep(700);
		SetPause(false); ------ to reactivate Tower in farm spot.
		--ShowToClient("God","Continue slut!")
		Sleep(1000);
	end;
end

function moveAden()
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
	TargetNpc("Tatiana", 31275);
	MoveTo(147974, -55324, -2734, moveDistance);
	Talk();
	ClickAndWait("teleport_request", "\"Teleport me, please.\"");
	-----------------------------------------------------------------
	getHtml(teleport2); ---LOL cant catch me now
	Sleep(2000);
	--Click("teleport_4809600192_14_57_1209025041_3", "811;F;1010528");
	Click(tostring(telestring[teleport2]), tostring(msgstring[teleport2]));
	------------------------------------------------------------------
	WaitForTeleport();
	Sleep(3000)
end



function main()
if running then
		if GetMe():GetLevel() > 75 then
			SetPause(true)
			Sleep(2000)
			SetPause(true)
			movetown()
			dofile(GetDir() .. "\\scripts\\library\\movebuffer\\movebufferGoddard.lua")
			moveAden()
			done = true;
		end
		
		if need_rez() then
			 SetPause(true)
	   		 Sleep(10000)
			 SetPause(true)
			 RequestRestartPoint(2)
	         Sleep(15000)
             SetPause(true)
             dofile(GetDir() .. "\\scripts\\library\\movebuffer\\movebufferGoddard.lua")
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
    if running and done == false  then
        main()
	elseif done == true then
		break
    end
    Sleep(wait*1000)
    ClearTargets()
until false;
