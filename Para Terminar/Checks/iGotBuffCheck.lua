--- Test iGotBuff para verificar varios buffs
ListbuffToCheck = {11759,11758,10279,1917,11560,367,11539,11541}; --- ID de todos los buff que evitan Heal o te hacen Invulnerable.
--- La Lista contiene los Siguientes Buffs : Petrify,Undying Will,Celestial Aegis,Polymorph,Celestial Party Protection,Celestial Protection,Giant Barrier,Dance of Medusa.
function iGotBuff(check)
    local Me = GetMe();
    for x,a in pairs(check) do
	    if (Me:GotBuff(a))then
		    return true;
		end;
    end;
end;	

--- HOW TO USE
    if (iGotBuff(ListbuffToCheck) == false)then
else
    if not (iGotBuff(ListbuffToCheck))then
   end;		
end;