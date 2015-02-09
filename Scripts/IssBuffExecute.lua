ShowToClient(tostring(os.date("%X")),"Iss Buff Script Execute On",3);
ScriptFile = "zIssRebuffInPT.lua";		-- name of script
MinutesOut = 6;					-- Time for repeat


repeat
	if ProcessCommand("/scriptStart "..ScriptFile) then
		Sleep(60*1000*MinutesOut);
	end;
	ProcessCommand("/scriptStop "..ScriptFile);
	Sleep(2000);
until false;
