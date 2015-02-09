-- Buff Script V4
ShowToClient("ISS ENCHANTER SCRIPT", "ON!.")
local running = true
local buffs = {
    knights_harmony = 11523,
    warriors_harmony = 11524,
    wizard_harmony = 11525,
    horn_melody = 11590,
    drum_melody = 11591,
    pipe_organ_melody = 11592,
    guitar_melody = 11593,
    harp_melody = 11594,
    lute_melody = 11595,
    prevailing_sonata = 11601,
    daring_sonata = 11602,
    refreshing_sonata = 11603,
    elemental_resistance = 11565,
    holy_attack_resistance = 11566,
    mental_attack_resistance = 11567
}

function Do_My_Party_Need_Melody()
   local ptList = GetPartyList();
   for member in ptList.list do
   if (member:IsAlikeDeath() == false) and (member:GetRangeTo(GetMe()) < 750)then
       if not (member:GotBuff(buffs.horn_melody)) 
       or not (member:GotBuff(buffs.drum_melody))
       or not (member:GotBuff(buffs.pipe_organ_melody))
       or not (member:GotBuff(buffs.guitar_melody))
       or not (member:GotBuff(buffs.harp_melody))
       or not (member:GotBuff(buffs.lute_melody))
       or not (member:GotBuff(buffs.elemental_resistance))
       or not (member:GotBuff(buffs.holy_attack_resistance))
       or not (member:GotBuff(buffs.mental_attack_resistance))then
		      return true;
           end; 
        end;
      return false;
   end;
end;

function Do_My_Party_Need_Sonatas()
   local ptList = GetPartyList();
   for member in ptList.list do
   if (member:IsAlikeDeath() == false) and (member:GetRangeTo(GetMe()) < 750)then
       if not (member:GotBuff(buffs.prevailing_sonata))
       or not (member:GotBuff(buffs.daring_sonata))
       or not (member:GotBuff(buffs.refreshing_sonata))then
		      return true;
           end; 
        end;
      return false;
   end;
end;

function Do_Me_Need_Melody()
   me = GetMe();
   if (me ~= nil) and (me:IsAlikeDeath() == false)then
       if not (me:GotBuff(buffs.horn_melody)) 
       or not (me:GotBuff(buffs.drum_melody))
       or not (me:GotBuff(buffs.pipe_organ_melody))
       or not (me:GotBuff(buffs.guitar_melody))
       or not (me:GotBuff(buffs.harp_melody))
       or not (me:GotBuff(buffs.lute_melody))
       or not (me:GotBuff(buffs.elemental_resistance))
       or not (me:GotBuff(buffs.holy_attack_resistance))
       or not (me:GotBuff(buffs.mental_attack_resistance))then
		      return true;
           end; 
      return false;
   end;
end;

function Do_Me_Need_Sonatas()
   me = GetMe();
   if (me ~= nil) and (me:IsAlikeDeath() == false)then
       if not (me:GotBuff(buffs.prevailing_sonata))
       or not (me:GotBuff(buffs.daring_sonata))
       or not (me:GotBuff(buffs.refreshing_sonata))then
		      return true;
           end; 
      return false;
   end;
end;

function useBuff(buff)
    UseSkillRaw(buff, false, false)
    Sleep(1200)
    ClearTargets()
end;


function buff()
    --Target(names.target)
    --Sleep(1200)
    if (Do_Me_Need_Melody() == true) then
        useBuff(buffs.horn_melody)
        useBuff(buffs.drum_melody)
        useBuff(buffs.pipe_organ_melody)
        useBuff(buffs.guitar_melody)
        useBuff(buffs.harp_melody)
        useBuff(buffs.lute_melody)      
        useBuff(buffs.elemental_resistance)
        useBuff(buffs.holy_attack_resistance)
        useBuff(buffs.mental_attack_resistance)
    
    end;	
    if (Do_Me_Need_Sonatas() == true) then
        useBuff(buffs.prevailing_sonata)
        useBuff(buffs.daring_sonata)
        useBuff(buffs.refreshing_sonata) 
		
    end;
end;

function Check_Buffs()
   if (Do_Me_Need_Melody() == true) or (Do_My_Party_Need_Melody() == true)then
       ShowToClient("ISS BUFF", "ME OR MyParty NEED MELODY!.")
       return true;
	end;
	if (Do_My_Party_Need_Sonatas() == true) or (Do_Me_Need_Sonatas() == true)then
	    ShowToClient("ISS BUFF", "ME OR MyParty NEED SONATAS!.")
      return true;
	end;
	return false;
end; 

function main()
    local me = GetMe();
	if (me ~= nil) and (me:IsAlikeDeath() == false)then
	    if (Check_Buffs())then
		    ShowToClient("ISS BUFF", "CASTING SONATAS OR MELODY!.")
		    buff()
		end;
	end;
end;	

repeat
    if running then
        main()
    end
    Sleep(900)
until false