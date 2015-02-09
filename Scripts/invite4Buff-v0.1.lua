-- L2TOWER: LUA - Invite4Buff v.01 | rORUMI
ShowToClient("Script", "Invite4Buff Spectral Dancer - v 0.1 ON" , 3);

--Config----------------------------------------------
issName = "NCBot"; --here write name of your ISS
SendInvItBufferInRange = 800;

mustPause = false; -- Pause L2Tower for Buff?
------------------------------------------------------
--[[
Iss Spectral Dancer 
                    Horn Melody :      11517
                    Drum Melody :      11518
              Pipe Organ Melody :      11519					
                  Guitar Melody :      11520  
                    Harp Melody :      11521
                    Lute Melody :      11522 					

                   Daring Dance :      11611 
               Prevailing Dance :      11610 
               Refreshing Dance :      11612 			   
--]]
function INeedBuff()

	if  not (GetMe():GotBuff(11517)) or
		not (GetMe():GotBuff(11518)) or
		not (GetMe():GotBuff(11519)) or
		not (GetMe():GotBuff(11520)) or
		not (GetMe():GotBuff(11521)) or
		not (GetMe():GotBuff(11522)) or
		
		not (GetMe():GotBuff(11611)) or
		not (GetMe():GotBuff(11610)) or
		not (GetMe():GotBuff(11612)) then return true;
	else
		return false;
	end
end --fn

if (issName == "") then
	ShowToClient("Script", "Sorry, please config the ISS name in the script first..." , 3);
	Sleep(30*1000)	
	else
	if (GetUserByName(issName) ~= nil) then issToInvite = (GetUserByName(issName))
	else
	ShowToClient("Script", "Sorry, BAD ISS name found, please check..." , 3);
	end
end

repeat
	if not IsPaused() then
	
		if INeedBuff() then

		if mustPause then SetPause(true) end;
		
			if (GetMe():GetRangeTo(issToInvite) > SendInvItBufferInRange) then
				ShowToClient("Script", "ISS To far..." , 3);
				Sleep(20*1000)		
		
			elseif (issToInvite:IsAlikeDeath()) then
				ShowToClient("Script", "Sorry, ISS is death..." , 3);
				Sleep(30*1000)

			elseif not (issToInvite:IsMyPartyMember()) then

				ShowToClient("Script", "Inviting ISS to take buff" , 3);			
				repeat
				Command("/invite "..issName);
				Sleep(10*1000)
				until (issToInvite:IsMyPartyMember())

				repeat
				Sleep(10*1000)
				until (INeedBuff() == false)
				Sleep(10*1000) -- w10 sec more for ISS iA
				Command("/dismiss "..issName);
				Sleep(1000)
				if mustPause then SetPause(false) end;
			end
		end
	
	else
		Sleep(10*1000); -- paused w10s
	end --not paused	
until false;