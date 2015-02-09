-- Check My Functions
me = GetMe();
ShowToClient("TANK SCRIPT"," "..GetMe():GetName(),3);
--- TIMER CONFIG
DelaySleepSkill = 500;
DelaySleepRepeat = 1000;
--LastSkillCastStamp = GetTime() - DelaySleepSkill;
--- HP CONFIG
FocusShieldPercent = 90; -- MP
FocusShieldID = 10020;

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
		Sleep(DelaySleepSkill);
	    UseSkillRaw(skillID,false,false);
		return true;
    end;
	return false;
end;   

function SelfFS(skillID,percent)
	--if not IsPaused() then
	local mpPercent = GetMe():GetMpPercent();
		if (GetMe():GetBuffsCount() > 1) and (GetMe():GetHp() > 200) then
			if (math.floor(mpPercent) > percent) and not (GetMe():GotBuff(skillID)) then
				--Sleep(200);
				SkillUsageChecker(skillID)
			elseif (math.floor(mpPercent) < percent) and (GetMe():GotBuff(skillID)) then 
				--Sleep(200);
				SkillUsageChecker(skillID)
			end;
		end;
	end

--- MAIN FUNCTION
function TankUseBuff()
    local Me = GetMe();
    if (Me ~= nil) and not (Me:IsAlikeDeath()) then
            --if (MobTargetMe())then
        SelfFS(FocusShieldID,FocusShieldPercent);		   
        end;
    end;
--end;	

--- LAUNCH CONFIG
if (me:GetClass() == 148) or (me:GetClass() == 149) or (me:GetClass() == 150) or (me:GetClass() == 151) then
    repeat
	TankUseBuff();
	Sleep(DelaySleepRepeat);
	until false;
end;