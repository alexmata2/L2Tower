ShowToClient("FAIRY","FAIRY COCON FARM ON");


--------------------------------------------------------------------------------
-- BASIC CONFIG
--------------------------------------------------------------------------------
NpcName1 = "Large Cocoon";
NpcName2 = "Cocoon";
CocconId1 = 32919;
CocconId2 = 32920;
NpcName3 = "Contaminated Cocoon";
NpcName4 = "Large Contaminated Cocoon";
CocconId3 = 19394;
CocconId4 = 19395;
CocconId5 = 19396;
GlimmerId = 17374;

----------Distance related settings-----------------------
rangeMobe = 1200;	--range from you to check for mobes
rangeMobe2 = 1200;	--range from you to check for Contaminated Cocoons
rangeMobe3 = 500;	--range to check for mobes when not attacking to force toon to move
rangeCoco = 1200;	--if some mobes up and range to target cocons
CoordinateDeviationFromTarget = 100;-- will move between -100 and 100 on x and y axis when mobs in area. but you are not attacking
monZ=800; --Z Range to check for monsters
monZ2=600; --Z Range to check for Contaminated Cocoons

monZ3=600; --Z Range to check for Large and regular cocoons

---------
--------------------------
---How to attack cocoons section 
useGlimmer="no";-- set to yes or no if you want to use Glimmer when you have it must be yes or no and not Yes/No

useAction="yes";-- set yes if you want to use an action to force attack cocoon/set no if u do not want to use an action

useMagic="no"; -- set yes if you want to use a skill to force attack cocoon/ set no if u do not want to use a skill

SkillId=10763;--set skill id here

-----------------------------
-------these fields below are for when you have target but cannot see bot will move close to monster
DistanceToGoClose = 1100;  -- set here the minimum distance from target that would make bot try to go near target.
CoordinateDeviationFromTarget2 = 1100; -- set here the max range that could be picked by bot randomly when trying go near target. 
MinimumMPPercentCheck = 65; -- dont go near target if ur mp is less than this.
-----------------------------------
--------------------------------------------------------------------------------
-- FUNCTIONS -- dont change nothing under this line
--------------------------------------------------------------------------------
MakeCancel = false;
--------------------------------------------------------------------------------
function WhatClassAmI()
	if(GetMe() ~= nil)then
		if(GetMe():GetClass() == 176) or (GetMe():GetClass() == 177) or (GetMe():GetClass() == 178) then
			return 22;
		end;
	end;
	return 2;
end;
--------------------------------------------------------------------------------
function GetItemsNumber(ItemId)
    local a = 0;
    invList = GetInventory();
    for item in invList.list do
        if (item.displayId == ItemId)  then
            a = item.ItemNum;
  
        end;
    end;
    if(a ~= nil)then
        return a;
    end
    if (a == nil)then
        return 0;
    end;
end;


--------------------------------------------------------------------------------
function CountMonstersInRange(r,r2)
	local l = GetMonsterList();
	local c = 0;
        local g = nil;
		
	for user in l.list do 
            
		if ((user:IsAlikeDeath() == false)  and (user:GetRangeTo(GetMe()) < r) and (user:GetLocation().Z <= monZ) and not ( (user:GetName() == NpcName1) or (user:GetName() == NpcName2) or (user:GetNpcId() == CocconId1) or (user:GetNpcId() == CocconId2) )  ) then
			c = c + 1;

                   end;

                if ( (user:IsAlikeDeath() == false) and (user:GetRangeTo(GetMe()) < r2) and (user:GetLocation().Z <= monZ2) and ( (user:GetName() == NpcName3) or (user:GetName() == NpcName4) or (user:GetNpcId() == CocconId3) or (user:GetNpcId() == CocconId4) or (user:GetNpcId() == CocconId5) ) ) then
			g = user:GetId();
		end;
		
                		
	end;
  
	return g,c;
end; 
--------------------------------------------------------------------------------
function GetCocon(r)
	local NpcL = GetNpcList();
	local a = {};
	local r1 = r;
	
	for user in NpcL.list do 
		r2 = GetMe():GetRangeTo(user);
               
		if(r2 <= r) and (r2 <= r1) then
			if ( (user:GetLocation().Z <= monZ3) and (user:GetName() == NpcName1) or (user:GetName() == NpcName2) or (user:GetNpcId() == CocconId1)or (user:GetNpcId() == CocconId2)) then
				r1 = r2;
				a[0] = user:GetId();
				
			end;
		end;
	end;
	return a;
end;
--------------------------------------------------------------------------------
-- Main loop
--------------------------------------------------------------------------------
repeat
	if(IsPaused() == false)  then
 
if (GetCocon(rangeCoco)[0] ~= nil)  then
MyTr = GetTarget();	
monsterId,rangeCount =  CountMonstersInRange(rangeMobe,rangeMobe2);

	if ( (MyTr == nil) and (rangeCount <= 2 ) )then -- do not set lower that 2
			Target(GetCocon(rangeCoco)[0]);		--Target fouded cocon
			
	repeat
		if (useGlimmer == "yes")then
			if (GetItemsNumber(GlimmerId) ==0) then 
				if (GetTarget()~=nil and GetTarget():IsPlayer() == false and GetTarget():IsPetOrSummon() == false ) then
                                       if(useMagic == "yes")then
						UseSkillRaw(SkillId, true, false);
                                       elseif(useAction == "yes")then
						Action(WhatClassAmI(), false, true);
                                       end;
				end;  
			elseif (GetItemsNumber(GlimmerId) > 0) then 
				UseItem(GlimmerId);
			end;
                 elseif (useGlimmer == "no") then
                                if (GetTarget()~=nil and GetTarget():IsPlayer() == false and GetTarget():IsPetOrSummon() == false ) then
                                        if(useMagic == "yes")then    
						UseSkillRaw(SkillId, true, false);	
                                        elseif(useAction == "yes")then
						Action(WhatClassAmI(), false, true);
					end;
                                 end;  	
                  end;
	Sleep(500);

	until GetTarget()~= nil and GetTarget():GetHp() == 0;
		ClearTargets();
		CancelTarget(false);
	end;


        if ( (MyTr ~= nil) and ( (MyTr:GetName() == NpcName1) or (MyTr:GetName() == NpcName2) or (MyTr:GetNpcId() == CocconId1) or (MyTr:GetNpcId() == CocconId2) )   )then
		Target(GetCocon(rangeCoco)[0]);		--Target found cocon			
			
	repeat
		if (useGlimmer == "yes")then
			if (GetItemsNumber(GlimmerId) ==0) then 
				if (GetTarget()~=nil and GetTarget():IsPlayer() == false and GetTarget():IsPetOrSummon() == false ) then
					if(useMagic == "yes")then    
						UseSkillRaw(SkillId, true, false);
					elseif(useAction == "yes")then
						Action(WhatClassAmI(), false, true);
					end;
				end;
			elseif (GetItemsNumber(GlimmerId) > 0) then 
				UseItem(GlimmerId);
			end;
		elseif (useGlimmer == "no") then
			if (GetTarget()~=nil and GetTarget():IsPlayer() == false and GetTarget():IsPetOrSummon() == false ) then
				if(useMagic == "yes")then    
					UseSkillRaw(SkillId, true, false);
				elseif(useAction == "yes")then
					Action(WhatClassAmI(), false, true);
				end;
			end;  	
		end;

	Sleep(500);         
	until GetTarget()~= nil and GetTarget():GetHp() == 0;
		ClearTargets();
		CancelTarget(false);
	end;
		if(MyTr ~= nil) and (MyTr:GetHp() == 0)then
			ClearTargets();
			CancelTarget(false);
			Sleep(500);
		end;
end;


monsterId,rangeCount = CountMonstersInRange(rangeMobe,rangeMobe2);
MyTr3 = GetTarget();

if  monsterId ~=nil and MyTr3 == nil and rangeCount <= 2  then
Target(monsterId);	
Sleep(500);

	if(GetTarget() ~= nil) and (GetTarget():GetHp() == 0)then
		ClearTargets();
		CancelTarget(false);
		Sleep(500);
	end;


end;


me= GetMe();
MyTr2 = GetTarget();
monsterId,rangeCount = CountMonstersInRange(rangeMobe3,rangeMobe2);

if (  MyTr2 == nil and not me:IsInCombat() and rangeCount > 2 )then
         loc= me:GetLocation();
         lX= loc.X + math.random(-CoordinateDeviationFromTarget, CoordinateDeviationFromTarget);
         lY= loc.Y + math.random(-CoordinateDeviationFromTarget, CoordinateDeviationFromTarget);
         MoveToNoWait(lX, lY , loc.Z);
	Sleep(500);
end;


if (IsPaused() == false) and (GetTarget() ~= nil) and (GetTarget():IsAlikeDeath() == false or ( ((GetTarget():GetName() == NpcName1) or (GetTarget():GetName() == NpcName2) or (GetTarget():GetNpcId() == CocconId1)or (GetTarget():GetNpcId() == CocconId2) ) and not GetTarget():GetHp() == 0) ) and (GetMe() ~= nil) and (GetMe():GetMpPercent() > MinimumMPPercentCheck) and (GetDistanceVector(GetTarget():GetLocation(),GetMe():GetLocation()) < 8000) and (GetDistanceVector(GetTarget():GetLocation(),GetMe():GetLocation()) > DistanceToGoClose) then
	loc =  GetTarget():GetLocation();
	lX = loc.X + math.random(-CoordinateDeviationFromTarget2, CoordinateDeviationFromTarget2);
	lY = loc.Y + math.random(-CoordinateDeviationFromTarget2, CoordinateDeviationFromTarget2);
	MoveToNoWait(lX, lY, loc.Z);
end;

Sleep(800);
end;

Sleep(1000);
until false;

