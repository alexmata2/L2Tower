SkillID = 11826; -- Emblem of Salvation
local skill = GetSkills():FindById(SkillID);
if (skill) then
	ShowToClient("", tostring(skill:GetReuse()))
	ShowToClient("", tostring(skill:IsSkillAvailable()))
end;