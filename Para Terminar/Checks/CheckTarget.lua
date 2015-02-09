-- Prueba 2

repeat
Sleep(1000);
me = GetMe():GetId();
local monsterslist = GetMonsterList();
for mob in monsterslist.list do
  if (mob:GetTarget() == me)then
      ShowToClient(" Some Mob Targeting ME >>> ",mob:GetName());
  end;
end;
until false;  
