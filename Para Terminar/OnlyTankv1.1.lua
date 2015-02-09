--- SelfBuff and UD check for tank only v1.1.
--- Update 1: 
--- *Add Cubic for each tank
--- *Add Rebuilt how to use my skills (When Im the target of the mob)
me = GetMe();
ShowToClient("TANK SCRIPT"," "..GetMe():GetName());
--- TIMER CONFIG
DelaySleepSkill = 500;
DelaySleepRepeat = 1000;
--- HP CONFIG
SelfUdPercentTank = 40;
SelfUdPercentTankCount = 3;
SelfUdPercentPT = 65;
-- TANK Skills
AvengersFrenzyID = 10099;
PaladinsFrenzyID = 10098;	
GuardiansFrenzyID = 10100;	
TemplarsFrenzyID = 10101;	
SpikeShieldID = 10021;	
FinalUltimateDefenseID = 10017;	
ProtectionofFaithID = 10019;	
TrueVanguardID = 10244;
--- Cubic Tank 
SummonKnightCubicID  =  10043; -- All TANK
--- Evas templar
SummonBuffCubicID = 10074;	
SummonMindCubicID = 10075;
--- Shillien Templar
SummonPhantomCubicID = 10079;
SummonHexCubicID = 10080;
--- MOB CONFIG
function MobTargetMe()
    local me = GetMe():GetId();
    local monsterslist = GetMonsterList();
    for mob in monsterslist.list do
        if (mob:GetTarget() == me) and (GetMe():GetRangeTo(mob) < 1000)then
	        return true;
	    end;
    end;
    return false;
end;
 
--- SKILL CONFIG
function SkillUsageChecker(skillID)
    local Skill = GetSkills():FindById(skillID);
    if (MobTargetMe())then
        if (Skill ~= nil) and (Skill:IsSkillAvailable()) and (Skill:CanBeUsed())then
	        UseSkillRaw(skillID,false,false);
		    Sleep(DelaySleepSkill);
	    end;
    end;
end;   

function SkillExistChecker(skillID)
    local Skill = GetSkills():FindById(skillID);
    if (Skill ~= nil) then	
        return true;
    end;
    return false;	
end;



function SelfBuff(skillID)
	local Me = GetMe();
	if SkillExistChecker(skillID) then
       if not Me:GotBuff(skillID) then
          SkillUsageChecker(skillID);
          Sleep(DelaySleepSkill);
       end;
	end;	
end;

function SelfCubic(skillID)
	local Me = GetMe();
	if SkillExistChecker(skillID) then
	   if (Me:GetClass() == 148) or (Me:GetClass() == 149) or (Me:GetClass() == 150) or (Me:GetClass() == 151) then -- All Siegel Tank
           if not (Me:HaveCubic(16)) then
              SkillUsageChecker(skillID);
              Sleep(DelaySleepSkill);	
	       end;
    elseif (Me:GetClass() == 150)then                     -- Siegel Eva's Templar
            if not(Me:HaveCubic(18))then
			   SkillUsageChecker(skillID);
			   Sleep(DelaySleepSkill); 
            end;
            if not (Me:HaveCubic(19))then
               SkillUsageChecker(skillID);
               Sleep(DelaySleepSkill);
            end;
	elseif (Me:GetClass() == 151)then                     -- Sigel Shillien Templar
            if not (Me:HaveCubic(20))then
               SkillUsageChecker(skillID);
               Sleep(DelaySleepSkill);
            end;
            if not (Me:HaveCubic(21))then
               SkillUsageChecker(skillID);
               Sleep(DelaySleepSkill);
            end;
        end;
    end;
end;
--- SELF CONFIG
function SelfUD(skillID,percent)
    local Me = GetMe();
    if (math.floor(Me:GetHpPercent()) <= percent) and not(Me:IsAlikeDeath())then
        SkillUsageChecker(skillID);
	    Sleep(DelaySleepSkill);
    end;
end;
--- PARTY CONFIG
function CheckPartyCountWithLowHP()
    local MyParty = GetPartyList();
    local PeopleInParty = 0;
    for member in MyParty.list do
        if (member:GetRangeTo(GetMe()) <= 1000) and not(member:IsAlikeDeath())then
            if (math.floor(member:GetHpPercent()) <= SelfUdPercentPT)then
                PeopleInParty = PeopleInParty + 1;
            end;
        end;
        if (PeopleInParty > SelfUdPercentTankCount)then
            return true;
	    end;
    end;
    return false;
end;
--- MAIN FUNCTION
function TankUseBuff()
    local Me = GetMe();
    if (Me ~= nil) and not (Me:IsAlikeDeath()) then
        SelfUD(FinalUltimateDefenseID,SelfUdPercentTank);
        if (CheckPartyCountWithLowHP()) then
            SelfUD(ProtectionofFaithID);
        end;
            SelfBuff(SpikeShieldID);
            SelfBuff(TrueVanguardID);
		    SelfCubic(SummonKnightCubicID);

        if (Me:GetClass() == 151) then -- Sigel Shillien Templar 
            SelfBuff(TemplarsFrenzyID);
    elseif (Me:GetClass() == 148) then -- SigelPhoenixKnight
            SelfBuff(PaladinsFrenzyID);
    elseif (Me:GetClass() == 149) then -- SigelHellKnight
            SelfBuff(AvengersFrenzyID);
    elseif (Me:GetClass() == 150) then -- SigelEvasTemplar
            SelfBuff(GuardiansFrenzyID);
        end;
    end;
end;

--- LAUNCH CONFIG
if (me:GetClass() == 148) or (me:GetClass() == 149) or (me:GetClass() == 150) or (me:GetClass() == 151) then
    repeat
	TankUseBuff();
	Sleep(DelaySleepRepeat);
	until false;
end;	