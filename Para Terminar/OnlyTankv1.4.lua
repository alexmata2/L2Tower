--- SelfBuff and UD check for tank only v1.4t//"Test"
--- Update 1: 
--- *Add Cubic for each tank
--- *Add Rebuilt how to use my skills (When Im the target of the mob)
--- Update 2:
--- *Add Auras & Dual Maximum HP, we can select which type of aura use our tank
--- *Add Condition for Use Ultimate Skill,When we have BR
--- Update 3:
--- *Add Focus Shield Skill toggle ON/OFF when MP is below 60%
--- Update 4:
--- *Add Ignore Death & Party Rescue
--- *Add Rebuilt how to use skills for second time

me = GetMe();
ShowToClient("TANK SCRIPT"," "..GetMe():GetName(),3);
--- TIMER CONFIG
DelaySleepSkill = 500;
DelaySleepRepeat = 1000;
--- HP CONFIG
SelfUdPercentTank = 65; -- HP
SelfUdPercentTankCount = 2; -- People in Party
SelfUdPercentPT = 80;   
FocusShieldPercent = 60; -- MP
IgnoreDeathPercent = 20; -- HP 
-- TANK SKILLS
AvengersFrenzyID = 10099;
PaladinsFrenzyID = 10098;	
GuardiansFrenzyID = 10100;	
TemplarsFrenzyID = 10101;	
SpikeShieldID = 10021;	
FinalUltimateDefenseID = 10017;	
ProtectionofFaithID = 10019;
IgnoreDeathID = 10022;
PartyRescueID = 10024;
--- TANK AURAS
SigelAuraID = 1927;
TrueVanguardID = 10244;
FocusShieldID = 10020;  
ChallengeAuraID = 10030;
RageAuraID = 10028;
SpiritAuraID = 10038;
AuraResistanceID = 10034;
IronAuraID = 10032;
DefaultTankSelfAura = IronAuraID; -- Set Default TANK Aura.
--- SPECIAL SKILLS 
DualMaximumHPID =  1986; -- Dual Maximum HP for all 
CelestialPartyProtectionID = 11759;
BattleRhapsodyID = 11544;
--- CUBIC CONFIG
SummonKnightCubicID  =  10043; -- All TANK
--- EVA'S TEMPLAR
SummonBuffCubicID = 10074;	
SummonMindCubicID = 10075;
--- SHILLIEN TEMPLAR
SummonPhantomCubicID = 10079;
SummonHexCubicID = 10080;
--- MOB CONFIG
function MobTargetMe()
    local me = GetMe():GetId();
    local monsterslist = GetMonsterList();
    for mob in monsterslist.list do
        if (mob:GetTarget() == me) and (GetMe():GetRangeTo(mob) < 150)then
	        return true;
	    end;
    end;
    return false;
end;
 
--- SKILL CONFIG
function SkillUsageChecker(skillID)
    local Skill = GetSkills():FindById(skillID);
    if (Skill ~= nil) and (Skill:IsSkillAvailable()) and (Skill:CanBeUsed())then
	    UseSkillRaw(skillID,false,false);
		Sleep(DelaySleepSkill);
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
	elseif (Me:GetClass() == 151)then                     -- Siegel Shillien Templar
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
    if (math.floor(Me:GetHpPercent())<=percent) and not(Me:IsAlikeDeath())then
        if not (Me:GotBuff(CelestialPartyProtectionID)) then
           SkillUsageChecker(skillID);
	       Sleep(DelaySleepSkill);
	    end;	   
    end;
end;

function SelfFS(skillID,percent)
    local Me = GetMe();
    if (math.floor(Me:GetMpPercent()) >= percent) and not(Me:IsAlikeDeath())then
        if not (Me:GotBuff(FocusShieldID)) then
           SkillUsageChecker(skillID);
	       Sleep(DelaySleepSkill);
    elseif (math.floor(Me:GetMpPercent()) <= percent)then
	        if (Me:GotBuff(FocusShieldID))then
			    SkillUsageChecker(skillID);
			    Sleep(DelaySleepSkill);
		    end;
	    end;	   
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
        if (PeopleInParty >= SelfUdPercentTankCount)then
            return true;
	    end;
    end;
    return false;
end;
--- MAIN FUNCTION
function TankUseBuff()
    local Me = GetMe();
    if (Me ~= nil) and not (Me:IsAlikeDeath()) then
	    SelfBuff(DualMaximumHPID);
		SelfBuff(SigelAuraID);
		SelfBuff(DefaultTankSelfAura);
		SelfBuff(TrueVanguardID)
		SelfCubic(SummonKnightCubicID);
	end;
    if (MobTargetMe())then
        SelfBuff(SpikeShieldID);
        SelfFS(FocusShieldID,FocusShieldPercent);
        SelfUD(FinalUltimateDefenseID,SelfUdPercentTank);
		SelfUD(IgnoreDeathID,IgnoreDeathPercent);
        if (CheckPartyCountWithLowHP()) then
            SelfUD(ProtectionofFaithID);
    else 		
      	if (CheckPartyCountWithLowHP())then
		    SelfUD(PartyRescueID);
		end;
    end;
        if (Me:GetClass() == 151) then -- Siegel Shillien Templar
		    SelfCubic(SummonPhantomCubicID);
			SelfCubic(SummonHexCubicID);
	        if (Me:GotBuff(BattleRhapsodyID))then
                SelfBuff(TemplarsFrenzyID);
		    end;	   
    elseif (Me:GetClass() == 148) then -- SiegelPhoenixKnight
            if (Me:GotBuff(BattleRhapsodyID))then
                SelfBuff(PaladinsFrenzyID);
		    end;	   
    elseif (Me:GetClass() == 149) then -- SiegelHellKnight
            if (Me:GotBuff(BattleRhapsodyID))then
                SelfBuff(AvengersFrenzyID);
		    end;	   
    elseif (Me:GetClass() == 150) then -- SiegelEvasTemplar
	        SelfCubic(SummonMindCubicID);
			SelfCubic(SummonBuffCubicID);
            if (Me:GotBuff(BattleRhapsodyID))then
                SelfBuff(GuardiansFrenzyID);
		    end;		   
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