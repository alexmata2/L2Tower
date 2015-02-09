ShowToClient("GOD","Shield Toggle",3)

function GetSkillIdByName(name)
	skills = GetSkills()
	for s in skills.list do
		 if s.name == name then
			 return s.skillId
		 end
	end
end
---------------SETTINGS HERE----------------------------
--------------------------------------------------------
--------------------------------------------------------
SkillName = "Focus Shield"; ------------------------Skill Name to find id
focusShieldId = GetSkillIdByName(SkillName);  --ignore this, finds skill id
HP = 90  --hp when to toggle
wait = 1000 --sleep time
---------------SETTINGS HERE----------------------------
--------------------------------------------------------
--------------------------------------------------------

function Toggle(id)
	if id then
		 skill = GetSkills():FindById(id)
		 if skill and skill:CanBeUsed() then
			 UseSkillRaw(id,false,false)
			 return true
		 end
	end
	return false
end

repeat
	if not IsPaused() then
		HpPercent = GetMe():GetHpPercent();
		if GetMe():GetBuffsCount() > 1 and GetMe():GetMp() > 200 then
	---------------------------------------------------------------------------
			if HpPercent < HP and not GetMe():GotBuff(focusShieldId) then
				Sleep(200);
				Toggle(focusShieldId)
			elseif  HpPercent > HP and GetMe():GotBuff(focusShieldId) then 
				Sleep(200);
				Toggle(focusShieldId)
			end;
		end;
	---------------------------------------------------------------------------
	end	
Sleep(wait);
until false;