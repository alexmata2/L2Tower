--------------------------------------------------------------------------------
-- BASIC CONFIG
--------------------------------------------------------------------------------
NpcName1 = "Large Cocoon";
NpcName2 = "Cocoon";
CocconId1 = 32919;
CocconId2 = 32920;
rangeMobe = 500;	--range from you to cheak for mobes
rangeCoco = 1500;	--if some mobes up and range to target cocons
--------------------------------------------------------------------------------
-- FUNCTIONS -- dont change nothing under this line
--------------------------------------------------------------------------------
MakeCancel = false;
--------------------------------------------------------------------------------
function WhatClassAmI()
	if(GetMe() ~= nil)then
		if(GetMe():GetClass() == 145) then
			return 22;
		end;
	end;
	return 2;
end;
--------------------------------------------------------------------------------
function CountMonstersInRange(r)
	local l = GetMonsterList();
	local c = 0;
		
	for user in l.list do 
		if ((user:IsAlikeDeath() == false) and (user:GetRangeTo(GetMe()) < r)) then
			c = c + 1;
		end;		
	end;
	return c;
end; 
--------------------------------------------------------------------------------
function GetCocon(r)
	local NpcL = GetNpcList();
	local a = {};
	local r1 = r;
	
	for user in NpcL.list do 
		r2 = GetMe():GetRangeTo(user);
		if(r2 <= r) and (r2 <= r1) then
			if ((user:GetName() == NpcName1) or (user:GetName() == NpcName2) or (user:GetNpcId() == CocconId1)or (user:GetNpcId() == CocconId2)) then
				r1 = r2;
				a[0] = user:GetId();
				--a[1] = user:GetHp();
			end;
		end;
	end;
	return a;
end;
--------------------------------------------------------------------------------
-- Main loop
--------------------------------------------------------------------------------
repeat
	if(IsPaused() == false)then
		MyTr = GetTarget();
		
		if(MyTr == nil) and (CountMonstersInRange(rangeMobe) <= 1)then
			if(GetCocon(rangeCoco)[0] ~= nil)then-- and (GetCocon(rangeCoco)[1] > 1) then
				Target(GetCocon(rangeCoco)[0]);		--Target fouded cocon			
				repeat
					Action(WhatClassAmI(), false, true);
					Sleep(500);
				until GetTarget()~= nil and GetTarget():GetHp() == 0;
				ClearTargets();
				CancelTarget(false);
			end;
		end;
		if(MyTr ~= nil) and (MyTr:GetHp() == 0)then
			ClearTargets();
			CancelTarget(false);
			Sleep(500);
		end;
	end;
until false;