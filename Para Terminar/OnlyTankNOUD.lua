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
--------------------------------- VERSION SIN UD

me = GetMe();
ShowToClient("TANK SCRIPT"," "..GetMe():GetName(),3);
--- TIMER CONFIG
DelaySleepSkill = 0.5;
DelaySleepRepeat = 1000;
LastSkillCastStamp = GetTime() - DelaySleepSkill;
--- HP CONFIG
SelfUdPercentTank = 65; -- HP   
FocusShieldPercent = 60; -- MP
IgnoreDeathPercent = 20; -- HP 
-- TANK Skills
AvengersFrenzyID = 10099;
PaladinsFrenzyID = 10098;	
GuardiansFrenzyID = 10100;	
TemplarsFrenzyID = 10101;	
SpikeShieldID = 10021;	
FinalUltimateDefenseID = 10017;	
ProtectionofFaithID = 10019;
IgnoreDeathID = 10022;
PartyRescueID = 10024;
--- TANK Auras
SigelAuraID = 1927;
TrueVanguardID = 10244;
FocusShieldID = 10020;  
ChallengeAuraID = 10030;
RageAuraID = 10028;
SpiritAuraID = 10038;
AuraResistanceID = 10034;
IronAuraID = 10032;
DefaultTankSelfAura = IronAuraID; -- Set Default TANK Aura.
--- Special Skill 
DualMaximumHPID =  1986; -- Dual Maximum HP for all 
CelestialPartyProtectionID = 11759;
BattleRhapsodyID = 11544;
--- Cubic Tank 
SummonKnightCubicID  =  10043; -- All TANK
--- Eva's templar
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
        if (mob:GetTarget() == me) and (GetMe():GetRangeTo(mob) < 150)then
	        return true;
	    end;
    end;
    return false;
end;
 
--- SKILL CONFIG
function SkillUsageChecker(skillID)
    local Skill = GetSkills():FindById(skillID);
	if (LastSkillCastStamp + DelaySleepSkill  < GetTime())then
        if (Skill ~= nil) and (Skill:IsSkillAvailable()) and (Skill:CanBeUsed())then
	        UseSkillRaw(skillID,false,false);
			LastSkillCastStamp = GetTime();
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
	   if (LastSkillCastStamp + DelaySleepSkill  < GetTime())then
           if not Me:GotBuff(skillID) then
              SkillUsageChecker(skillID);
			  LastSkillCastStamp = GetTime();
		  end;
       end;
    end;	
end;

function SelfCubic(skillID)
	local Me = GetMe();
	if SkillExistChecker(skillID) then
	   if (Me:GetClass() == 148) or (Me:GetClass() == 149) or (Me:GetClass() == 150) or (Me:GetClass() == 151) then -- All Siegel Tank
           if not (Me:HaveCubic(16)) then
              SkillUsageChecker(skillID);	
	       end;
    elseif (Me:GetClass() == 150)then                     -- Siegel Eva's Templar
            if not(Me:HaveCubic(18))then
			   SkillUsageChecker(skillID); 
            end;
            if not (Me:HaveCubic(19))then
               SkillUsageChecker(skillID);
            end;
	elseif (Me:GetClass() == 151)then                     -- Siegel Shillien Templar
            if not (Me:HaveCubic(20))then
               SkillUsageChecker(skillID);
            end;
            if not (Me:HaveCubic(21))then
               SkillUsageChecker(skillID);
            end;
	    end;
    end;
end;
--- SELF CONFIG
function SelfFS(skillID)
    local Me = GetMe();
    if (Me:GetMpPercent() >= FocusShieldPercent) and not(Me:IsAlikeDeath())then
        if not (Me:GotBuff(FocusShieldID)) then
           SkillUsageChecker(skillID);
    elseif (Me:GetMpPercent() <= FocusShieldPercent)then
	        if (Me:GotBuff(FocusShieldID))then
			    SkillUsageChecker(skillID);
		    end;
	    end;	   
    end;
end;
--- MAIN FUNCTION
function TankUseBuff()
    local Me = GetMe();
    if (Me ~= nil) and not (Me:IsAlikeDeath()) then
	    if (LastSkillCastStamp + DelaySleepSkill  < GetTime())then
	        SelfBuff(DualMaximumHPID);
		    SelfBuff(SigelAuraID);
		    SelfBuff(DefaultTankSelfAura);
		    SelfBuff(TrueVanguardID)
		    SelfCubic(SummonKnightCubicID);
	    end;
        if (MobTargetMe())then
            SelfBuff(SpikeShieldID);
            SelfFS(FocusShieldID);
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
				LastSkillCastStamp = GetTime();
			end;	
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