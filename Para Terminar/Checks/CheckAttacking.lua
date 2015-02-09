-- Prueva is Attacking Me
repeat
Sleep(1000);
me = GetMe():GetId();
local Monsterslist = GetMonsterList();
for mob in Monsterslist.list do
   if (mob:IsAttacking() == me) then --and (mob:GetTarget() == me)
       ShowToClient(" Some Mob Attacking ME >>> ",mob:GetName());
   end;
end;
until false;   