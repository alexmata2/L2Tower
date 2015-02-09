-- L2TOWER: LUA - MainHealer() | Script Healer Paso a Paso
----------------------------------------------------------
ShowToClient("GOD", "HEALER ACTIVE"); -- Esto se muestra en mi cliente, de color verde. Sin el [,3] aparece en Rojo igual que un PM
 
--ID's-Healer-----------------------------------------
--Heal------------------------------------------------
RebirthID = 11768; -- Rebirth = 11768
 
BalanceHealID = 11762; --Balance Heal ID
BrilliantHealID = 11757; --Brilliant Heal ID
 
--Self Buff-------------------------------------------
SalvationID = 11826; -- Aeore Emblem of Salvation = 11826
 
--Ultimate--------------------------------------------
CrystalRegenerationID = 11765; -- Crystal Regeneration
 
--Ress------------------------------------------------
ResSkillAeoreID = 11784;  -- Aeore Blessed Resurrection = 11784; 
 
 
--Funciones-Comunes-----------------------------------
 
--CastOnTarget() [OK]| Autocast de skills
function CastOnTarget(id,target)
	if id then
local MySkills = GetSkills():FindById(id)
		if MySkills and (MySkills:CanBeUsed()) then
			Target(target)
			UseSkillRaw(id,false,false)
			Sleep(500)
			ClearTarget();
			CancelTarget(false);
			CancelTarget(false);
			CancelTarget(false);
			return true
		end;
	end;
return false
end;
------------------------------------------------------
 
-- CheckBuffOnME(id) [OK] | Verifico si YO tengo o necesito uno de mis buff
-- requiere: CastOnTarget()
------------------------------------------------------
function CheckBuffOnME(id)
		local me = GetMe(); -- No Global
		if (me ~= nil) and not (me:IsAlikeDeath()) then
			if (me:GotBuff(id) == false) then
			CastOnTarget(id,me);
			end;
		end;	
end;
------------------------------------------------------
 
------------------------------------------------------
-- RessParty | [OK]
------------------------------------------------------
function RessParty()
local party2resslist = GetPartyList(); -- No Global
 
	for member2ress in party2resslist.list do -- partylist: Ress para party - playerlist: ress para cualquiera cerca
		if  member2ress:IsAlikeDeath() then
			CastOnTarget(ResSkillAeoreID, member2ress);
			Sleep (300)
		end;
	end;
end;
------------------------------------------------------
 
--Survive-Functions-----------------------------------
function NeedSurvive()
		local partylist = GetPartyList(); -- No Global
		local me = GetMe(); -- No Global
 
-- me
-- MP/HP
 
		if (me:GetHpPercent() < 20) or (me:GetMpPercent() < 40) then -- Recharge HP/MP Rebirth
			CastOnTarget(RebirthID,me);	
 
		elseif (me:GetHpPercent() < 20) then
 
			CastOnTarget(CrystalRegenerationID,me);
			Sleep (300)	
 
-- CP/HP	
		elseif (me:GetCpPercent() < 75) or (me:GetHpPercent() < 75) then
 
			CastOnTarget(BalanceHealID,me);
			Sleep (300)
			CastOnTarget(BrilliantHealID,me);
			Sleep (300)
 
		end;	
 
 
-- Party/me
	for member in partylist.list do
 
-- MP/HP
 
		if (member:GetHpPercent() < 20) or (member:GetMpPercent() < 20)  then -- Recharge HP/MP Rebirth
 
			CastOnTarget(RebirthID,member);	
 
		elseif (me:GetHpPercent() < 40) then
 
			CastOnTarget(CrystalRegenerationID,member);
			Sleep (300)	
 
-- CP/HP	
		elseif (member:GetCpPercent() < 75) or (member:GetHpPercent() < 75) then
 
			CastOnTarget(BalanceHealID,member);
			Sleep (300)
			CastOnTarget(BrilliantHealID,member);
			Sleep (300)
 
		return true;
 
		else
 
		return false;		
		end;	
	end;	
end;
 
------------------------------------------------------
--HEALER----------------------------------------------
function MainHealer()
 
	local me = GetMe(); -- No Global
		if not NeedSurvive() then
 
			CheckBuffOnME(SalvationID); -- Salvation ID Skill		
			Sleep(300)
 
			RessParty(); -- Ress Any dead
			Sleep(300)
		end;	
end;
--End-Healer------------------------------------------
 
repeat
	if not IsPaused() then
--Check Clase: | AeoreCardinal" = 179 | AeoreEvasSaint" = 180 | AeoreShillienSaint" = 181	
 		if (GetMe():GetClass() == 179) or (GetMe():GetClass() == 180) or (GetMe():GetClass() == 181) then
			if not (GetMe():IsBlocked(true)) then 
				MainHealer();
				Sleep(1000)				
			end;
		end;
    end; --not paused
until false;