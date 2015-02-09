ShowToClient("GOD","start this script in Aden - tophersoccer",3)
SCONFIG = L2TConfig.GetConfig();
teleport = 7;  --gludio
teleport2 = 5; --dion
teleport3 = 13; --plains 
wait = 30;
WarHarmID = 15649;
WizHarmID = 15650;
done = false;
local running = true
SOE = "Scroll of Escape";
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

x12= 136894.484375
y12= 20966.40234375
z12= -3673.1748046875

	Sleep(900)
	if(GetDistanceVector(GetMe():GetLocation(), FVector(x12,y12,z12)) < 300) then  --x12,y12,z12 go here
	-------------------------------------------------------------------------------------------------------------
		if isFighter then
			SCONFIG.melee.me.enabled = true;
			SCONFIG.melee.me.attackRange = 650;
			SCONFIG.targeting.option = L2TConfig.ETargetingType.TT_RANGE_FROM_POINT;
			SCONFIG.targeting.noMonstersReturnToCenter = true;
			SCONFIG.targeting.centerPoint.X = 137006; 
			SCONFIG.targeting.centerPoint.Y = 20148; 
			SCONFIG.targeting.centerPoint.Z = -3687; 
			SCONFIG.targeting.rangeType = L2TConfig.ETargetingRangeType.TRT_SQUERE;
			SCONFIG.targeting.range = 2900;
			SetPause(false);
		end
		if isMage then
			SCONFIG.targeting.option = L2TConfig.ETargetingType.TT_RANGE_FROM_POINT;
			SCONFIG.targeting.noMonstersReturnToCenter = true;
			SCONFIG.targeting.centerPoint.X = 137006; 
			SCONFIG.targeting.centerPoint.Y = 20148; 
			SCONFIG.targeting.centerPoint.Z = -3687; 
			SCONFIG.targeting.rangeType = L2TConfig.ETargetingRangeType.TRT_SQUERE;
			SCONFIG.targeting.range = 2900;
			SetPause(false);
		end
		---------------------------------------------------------------------------------------------------------------------------------
		Sleep(700);
		SetPause(false); ------ start bot
		--ShowToClient("God","Continue slut!")
		Sleep(1000);
	end;
	
end; --end of movetospot

function movetospotNEXT()
moveDistance = 30;
--ShowToClient("God","Run to your spot niggah!")
MoveTo(147636.015625, 26006.998046875, -2009.5999755859, moveDistance);
MoveTo(146703.765625, 27625.91015625, -2265.0261230469, moveDistance);
MoveTo(145081.3125, 27543.537109375, -2265.6000976563, moveDistance);
MoveTo(144309.40625, 26326.150390625, -2265.6000976563, moveDistance);
MoveTo(139091.875, 26344.9453125, -2600.1887207031, moveDistance);
MoveTo(136894.484375, 20966.40234375, -3673.1748046875, moveDistance);
MoveTo(137278.109375, 16966.615234375, -3767.4460449219, moveDistance);
MoveTo(137551.71875, 12711.82421875, -4036.8425292969, moveDistance);
MoveTo(138250.765625, 9568.404296875, -4217.927734375, moveDistance);

x12= 138250.765625
y12= 9568.404296875
z12= -4217.927734375

	Sleep(900)
	if(GetDistanceVector(GetMe():GetLocation(), FVector(x12,y12,z12)) < 300) then  --x12,y12,z12 go here
		----------------------------------------------------------------------------------------------------------
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
		if isMage then
			SCONFIG.targeting.option = L2TConfig.ETargetingType.TT_RANGE_FROM_POINT;
			SCONFIG.targeting.noMonstersReturnToCenter = true;
			SCONFIG.targeting.centerPoint.X = 138224; 
			SCONFIG.targeting.centerPoint.Y = 9569; 
			SCONFIG.targeting.centerPoint.Z = -4219; 
			SCONFIG.targeting.rangeType = L2TConfig.ETargetingRangeType.TRT_SQUERE;
			SCONFIG.targeting.range = 2500;
			SetPause(false);
		end
		-------------------------------------------------------------------------------------------------------
		Sleep(700);
		SetPause(false); ------ start bot
		--ShowToClient("God","Continue slut!")
		Sleep(1000);
	end;
	
end

function need_buffs()
   if not GetMe():GotBuff(WarHarmID) and isFighter then
       return true
    end
	if not GetMe():GotBuff(WizHarmID) and isMage then
       return true
    end
    return false
end    

function need_rez()
    if GetMe():IsAlikeDeath() == true then
         return true
    end
    return false
end

detectClass();

function main()
    if running then
		if GetMe():GetLevel() > 44 then
			movetown()
			dofile(GetDir() .. "\\scripts\\library\\movebuffer\\movebufferAden.lua")
			takebuffs()
			--ShowToClient("GOD", "Going to next script")
			movetospotNEXT()
			dofile(GetDir() .. "\\scripts\\AF - Aden45to55.lua")
			done = true;
		end
			if need_buffs() and not need_rez() and hasItem(SOE) then
			  movetown()
			  dofile(GetDir() .. "\\scripts\\library\\movebuffer\\movebufferAden.lua")
			  Sleep(2000)
			  SetPause(true)
			  takebuffs()
			  Sleep(1000)
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
			    Sleep(2000)
				movetospot()
			end
    return false
	end
end


repeat
    if running and done==false then
        main()
		elseif done == true then
		break;
    end
    Sleep(wait*1000)
    ClearTargets()
until false;