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

function CancelTargets()
ClearTargets();
CancelTarget(true);
end;

function IsMoving()
	if (GetDistanceVector(GetMe():GetLocation(),mylastcordcheck) > 100) then
		return true;
	end;
return false;
end;
 
function OnMagicSkillUse(user, target, skillId, skillvl, skillHitTime, skillReuse)
	if (user:IsMe()) then
		MyTargetTimeStamp = GetTime();
	end;
end;
 
function OnAttack(user, target)
	if (user:IsMe()) or (target:IsMe()) then
		MyTargetTimeStamp = GetTime();
	end;
end;