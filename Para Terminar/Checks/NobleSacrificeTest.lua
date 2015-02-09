repeat
local partyList = GetPartyList();
for user in partyList.list do
  if (user:GetHpPercent() <= 80) then
      Command("/useskill Noble Sacrifice"); -- Better to UseSkill(id); here and remove the sleep below.
      Sleep(5000); -- Noble Sacrifice cast time, remove it if u UseSkill(id) above.
      break;
  end;
end;
Sleep(5000);
until false;