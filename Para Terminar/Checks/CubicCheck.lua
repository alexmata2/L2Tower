-- Test for Cubic Tank 
SummonKnightCubicID  =  10043; -- All TANK
--- Evas templar
SummonBuffCubicID = 10074;	
SummonMindCubicID = 10075;
--- Shillien Templar
SummonPhantomCubicID = 10079;
SummonHexCubicID = 10080;
----
DelaySleepSkill = 500;
DelaySleepRepeat = 1000;
me = GetMe();

-- SKILL CONFIG
function SkillUsageChecker(skillID)
   local Skill = GetSkills():FindById(skillID);
   --local MyTarget = GetTarget();
  -- if (MobTargetMe())then
       if (Skill ~= nil) and (Skill:IsSkillAvailable()) and (Skill:CanBeUsed())then
	       UseSkillRaw(skillID,false,false);
		   Sleep(DelaySleepSkill);
	  -- end;
   end;
end;   

function SkillExistChecker(skillID)
   local Skill = GetSkills():FindById(skillID);
   if (Skill ~= nil) then	
      return true;
   end;
   return false;	
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
 -- MAIN FUNCTION
function TankUseBuff()
   local Me = GetMe();
   if (Me ~= nil) and not (Me:IsAlikeDeath()) then
       SelfBuff(SummonKnightCubicID);
   end;
end;   

-- LAUNCH CONFIG
if (me:GetClass() == 148) or (me:GetClass() == 149) or (me:GetClass() == 150) or (me:GetClass() == 151) then
    repeat
	TankUseBuff();
	Sleep(DelaySleepRepeat);
	until false;
end;  