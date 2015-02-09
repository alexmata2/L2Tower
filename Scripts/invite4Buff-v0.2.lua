-- L2TOWER: LUA - Invite4Buff v.02 | rORUMI || ExoDo
ShowToClient("Script", "Invite4Buff - v 0.2 ON" , 3);

--Config----------------------------------------------
issNames = {"SuperISS","ExtremeISS","UltimateISS","MeGaISS"} -- here write the name|s of your|s ISS

issSpectralDancerID = {11517,11518,11519,11520,11521,11522,11611,11610,11612} -- BUFF + SONATAS
issDoomcryerID = {11517,11518,11519,11520,11521,11522,11529,11530,11532} -- BUFF + SONATAS

SendInvItBufferInRange = 800;

mustPause = true; -- Pause L2Tower for Buff?
--Config-End------------------------------------------

issName = nil;
issToInvite = nil;
------------------------------------------------------
--[[
Iss Spectral Dancer - 173
                    Horn Melody :      11517
                    Drum Melody :      11518
              Pipe Organ Melody :      11519					
                  Guitar Melody :      11520  
                    Harp Melody :      11521
                    Lute Melody :      11522 					

                   Daring Dance :      11611 
               Prevailing Dance :      11610 
               Refreshing Dance :      11612 		

               Knight's Harmony :      11523  			   
              Warrior's Harmony :      11524  
               Wizard's Harmony :      11525  			   
--]]

--[[
iss Doomcryer - 175

                    Horn Melody :      11517
              Pipe Organ Melody :      11519  					
                    Drum Melody :      11518 					
                  Guitar Melody :      11520  
                    Harp Melody :      11521  
                    Lute Melody :      11522 

              Prevailing Sonata :      11529 
                  Daring Sonata :      11530  			  
              Refreshing Sonata :      11532  

			   Knight's Harmony :      11523  
              Warrior's Harmony :      11524  
               Wizard's Harmony :      11525  			  

--]]

function CheckforISSinRange()

	local playerList = GetPlayerList();
	for player in playerList.list do
	
		local playerName = player:GetName();
													
		for x,b in pairs(issNames) do
			if (string.lower(playerName) == string.lower(b)) and (GetMe():GetRangeTo(player) < SendInvItBufferInRange) then

			issName = player:GetName();
			issToInvite = (GetUserByName(playerName));
			ShowToClient("Script", "One of yours ISS is in Range..." , 3);
			Sleep(1000)
			return true;
			end
		end
	end
return false;	
end -- fn

function iGotBuff(check)
	for x,a in pairs(check) do
		if (GetMe():GotBuff(a)) then return true;
		else
		return false;
		end
	end
end

function iGotBuffLeft(check)
	for x,a in pairs(check) do
	
		if (GetMe():GotBuff(a)) then
		
			buffTime = GetMe():GetBuff(a);
			timeToBuff = (60*1000); -- 1 min

			timeLeftB = buffTime.endTime - GetTime();
			if (tonumber(timeLeftB) < timeToBuff) then
				return true;
			end
		end	
	end	
return false;
end -- fn
 
function INeedBuff()
	if not (iGotBuff(issSpectralDancerID)) and not (iGotBuff(issDoomcryerID)) or
	       (iGotBuffLeft(issSpectralDancerID)) or (iGotBuffLeft(issDoomcryerID)) then
		return true;
	else
		return false;
	end
end
	

repeat
	if not IsPaused() then
	
		if INeedBuff() then
		 if CheckforISSinRange() then
		  if mustPause then
		   repeat
		   if (GetTarget() ~= nil) and not (GetTarget():IsAlikeDeath()) then
		   Sleep(1000)
		   end
		   until (GetTarget() == nil) or (GetTarget() ~= nil) and (GetTarget():IsAlikeDeath());
		   SetPause(true);
		  end
		
			if (GetMe():GetRangeTo(issToInvite) > SendInvItBufferInRange) then
				ShowToClient("Script", "ISS is To far..." , 3);
				Sleep(30*1000)		
		
			elseif (issToInvite:IsAlikeDeath()) then
				ShowToClient("Script", "Sorry, ISS is death..." , 3);
				Sleep(60*1000)

			elseif not (issToInvite:IsMyPartyMember()) then

				ShowToClient("Script", "Inviting ISS to take buff" , 3);			
				repeat
				Command("/invite "..issName);
				Sleep(10*1000)
				until (issToInvite:IsMyPartyMember())

				repeat
				Sleep(10*1000)
				until (INeedBuff() == false)
				Sleep(5*1000) -- w5 sec more for ISS iA
				Command("/dismiss "..issName);
				Sleep(1000)
				if mustPause then SetPause(false) end;
			end
		 end	
		end
		Sleep(10*1000)
	else
		Sleep(10*1000) -- paused w10s
	end --not paused	
until false;