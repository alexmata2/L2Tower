ShowToClient("Debuff","DeBUFF Script STARTed");
 
 
--* CONFIG *--
DebuffSkillId = 11777; -- Mark of Lumi
DebuffSkill = GetSkills():FindById(DebuffSkillId);	-- Find Skill By ID
MPWhenStop = 3000; -- MP when stop to use Mark Of Lumi
HPMob = 99; -- %HP of mob that we want to start debuff
 
--* MAIN LOOP *--
repeat
if (GetMe():IsUsingMagic() == false) then
	if (GetTarget() ~= nil) then
 if (GetTarget():IsMonster() == true) and (GetTarget():IsAlikeDeath() == false) and (GetMe():GetMp() > MPWhenStop) and (GetMe():IsAlikeDeath() == false) then
 if (GetTarget():GotBuff(DebuffSkillId) == false) and (GetTarget():GetHpPercent() < HPMob) then
 UseSkill(DebuffSkillId,false,false);
 Sleep(100);
 ClearTargets();
 Sleep(100)
 CancelTarget(false);
 Sleep(100);
 end;
 end;
	end;
end;
Sleep(100);
until false;