-- CP Plugin 

cpStatus = false;
CPID = nil;
thedefense = {10279,1918,1919,11561,11759,11760}; -- Barrier,Undying Will, Celestial [Iss],Celestial [Healer Normal and Party]

function OnCreate()
   this:RegisterCommand("cp", CommandChatType.CHAT_ALLY, CommandAccessLevel.ACCESS_ME);
end;


function OnCommand_cp(vCommandChatType, vNick, vCommandParam)
   if (cpStatus == false) then
	   cpStatus = true;
	   ShowToClient("Event Plugin","Automatic Tersi's Light Event Is Activated.");
   else
	   cpStatus = false;
	   ShowToClient("Event Plugin","Automatic Tersi's Light Event Is Deactivated.");	
	end;
end;

Me = GetMe();

function OnTick500Ms()
   if (cpStatus == true)then
       UsingCp()
   end; 
end;   

function iGotBuff(check)
	for x,a in pairs(check) do
		if (Me:GotBuff(a)) then
			return true;  
		end;
	end;
end;

function CPOnInv()
   local InvList = GetInventoryList();
       for item in InvList.list do
	      if (item.name == "Superior CP Potion")then
		      CPID = item.objectId;
			  CPIDitemnum  = item.ItemNum;
			  return true;
		  end;
	   end;
	   return false;
    end;

function UsingCP()
   --local Me = GetMe();
        if (Me ~= nil) and (Me:IsAlikeDeath() == false)then
		    if (GetZoneType == 12) or (GetZoneType == 14)then
			    if (Me:GetCpPercent()< 50) and (iGotBuff(thedefense) == false)then
				    if (CPIDitemnum > 1)then
					    UseItemRaw(CPID);
					end;
				end;
			end;
		end;
	end;	
	
 