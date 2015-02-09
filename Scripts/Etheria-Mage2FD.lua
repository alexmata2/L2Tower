AirRushID = 30012;
HydroAttackID = 30001;
HydroFlareID = 30003;
StormSignID = 30002; -- Storm Sign
HydroDrainID = 30007;
SayhasWordID = 30019;
ThreateningWindID = 30011;
StormRageID = 30006
----------Config-------------
RangePickup = 300; --Range to pick items defalt 300 set -1 to not pick items
-----------------------------
-----------------------------
ShowToClient("GOD","Ertheia wizard is a ho updated by tophersoccer", 3);

function Pickup(range)
	local ItemsCount = GetItemManager():GetCount();
	if ItemsCount>0 then
		for i=1, ItemsCount do
			item = GetItemManager():GetByIdx(i);
			PickItem = item;
			if item~=nil and item:GetRangeTo(GetMe()) <= range then
				return true;
			end
		end
	end
	return false;
end;--end
-----------------------------------------
function MoveToItem(Item)
	loc = Item:GetLocation();
	lX = loc.X;
	lY = loc.Y;
	MoveToNoWait(lX, lY, loc.Z);
	Sleep(500)
end;--end

function HydroFlare()
	local mySkills = GetSkills();
	local Hydro = mySkills:FindById(HydroFlareID);
	local Drain = mySkills:FindById(HydroDrainID);
	local me = GetMe();
	local myTarget = GetTarget();
	if (CheckTargetCanBeUsedSkill(myTarget)) and (myTarget:GotBuff(StormSignID)) then
		if (Hydro ~= nil) and(Hydro:IsSkillAvailable())and (Hydro:CanBeUsed()) or (Drain ~= nil) and(Hydro:IsSkillAvailable()) and (Drain:CanBeUsed()) then
			if myTarget:GetDistance() > 100 then
				MoveToMob(myTarget)
				if (me:GetHpPercent()<= 80) or (me:GetMpPercent()<= 50)then
				UseSkillRaw(HydroDrainID, false, false);
				else
				UseSkillRaw(HydroFlareID, false, false);
				end;
			else
			if (me:GetHpPercent()<= 80) or (me:GetMpPercent()<= 50)then
				UseSkillRaw(HydroDrainID, false, false);
				else
				UseSkillRaw(HydroFlareID, false, false);
				end;
			end
		end;
	end;
end;

function UseBuff()
	if (me ~= nil) and not (me:IsAlikeDeath()) then
		if not me:GotBuff(30017) then
			UseSkillRaw(30017,false,false);
			Sleep(1000);
		end;
	end;
end; --end

function AirRush()
	local mySkills = GetSkills();
	local air = mySkills:FindById(AirRushID);
	if (air~= nil) and (air:IsSkillAvailable()) and (air:CanBeUsed()) then
		local myTarget = GetTarget();
		if (CheckTargetCanBeUsedSkill(myTarget)) then
			if ((myTarget:IsAlikeDeath() == false) and (myTarget:GetRangeTo(me) > 300) and (myTarget:GetRangeTo(me) < 900)) then
				UseSkillRaw(AirRushID, false, false);
			end
		end
	end
end;--end

 function UseSkill(skillID)	
	local myTarget = GetTarget();
	local mySkills = GetSkills();
	if (CheckTargetCanBeUsedSkill(myTarget)) then
		local Skill = mySkills:FindById(skillID);
	if (Skill ~= nil) and (Skill:IsSkillAvailable()) and (Skill:CanBeUsed()) then 
		UseSkillRaw(skillID, false, false);
	end
	end
end; --end

 function MoveToMob(mob)
	loc = mob:GetLocation();
	lX = loc.X;
	lY = loc.Y;
	MoveToNoWait(lX+20, lY+20, loc.Z);
end;--end

function CheckTargetCanBeUsedSkill(target)
	if (target~=nil) and not (target:IsMe()) and (target:IsMonster()) and (target:GetHpPercent() < 100) and not (target:IsAlikeDeath()) and not (target:IsPlayer()) then
		return true;
	else	
		ClearTarget()
		return false;
	end
end;--end

function UseSkillClose(skillID)	
	local myTarget = GetTarget();
	local mySkills = GetSkills();
	if (CheckTargetCanBeUsedSkill(myTarget)) then
		local Skill = mySkills:FindById(skillID);
	if (Skill ~= nil) and (Skill:IsSkillAvailable()) and (Skill:CanBeUsed()) then 
		if myTarget:GetDistance() > 100 then
			MoveToMob(myTarget)
			UseSkillRaw(skillID, false, false);
		elseif myTarget:GetDistance() < 100 then
		UseSkillRaw(skillID, false, false);
		end
	end
	end
end; --end
   
function Main()
	target = GetTarget();
	me = GetMe(); 
	MySkills = GetSkills(); 
	if (target ~= nil) and (target:IsAttacking()) then
		if (me ~= nil) and not (me:IsAlikeDeath()) then
			 --UseBuff();
			 AirRush();
			 UseSkill(ThreateningWindID);
			 HydroFlare();
			 --UseSkill(SayhasWordID);
			 UseSkillClose(HydroAttackID);
			 --UseSkill (StormRageID);
		end
	end
end; -- end

 
 
repeat
	if not IsPaused() then
		Main();
		Sleep(200);
	end;
until false;