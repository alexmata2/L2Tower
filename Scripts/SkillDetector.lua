function OnMagicSkillUse(user, target, skillId, skillLvl, skillHitTime, skillReuseTime)
    userName = user:GetName()
    targetName = target:GetName();
    if (user:IsMonster()) and (user:GetDistance() < 3000) and (target:IsPlayer()) then
        howToClient("Skill ID Detector","" .. tostring(userName) .. " has used " .. tostring(skillId) .. " on " .. tostring(targetName) .. ".");	
    end;
end;