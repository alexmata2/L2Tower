-- Agrega los ID En un ".TxT", en la Carpeta del L2Tower:
-- ID Que se agregan son: Skilles[Solo Activos],Clanes[Nuestro y de otro players,en una distancia de 2500] y Mob[en una Distancia de 2500].
-- Update 1 :
-- Agrege: ids para Inventory, Aumentados los caracteres en skilles&Inventory a 40.
-- Agrege: "Character" & "Clan Name" para identificar mejor nuestro toon.
-- Update 2:
-- Agrege: Forma de guardado para SUB del mismo toon ex: Bot1 Tyrr, Bot1 Tank se guarda en 2 diferentes .TxT
-- Agrege: Inventary a 60
-- Update 3
-- Agrege: Skill Passivos lista "SKILL INFO P"
-- Agrege: Una mejor forma de caracteres en todos las secciones para que todo quede aliniado
-- Agrege: Mas caracteres en las lineas superiores 41 derecha e izquierda
infoDirectorio = GetDir();


        filename = infoDirectorio..GetMe():GetName().." "..L2Class2String(GetMe():GetClass()).."_info.txt";
        st = io.open(filename, "w+");
		             if (st ~= nil)then
                         ShowToClient("Todos Los ID Guardado en el Archivo ", " ["..filename.."]",3);
st:write("■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■   USERS INFO   ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■\r\n\r\n");
        st:write(string.format("\t\t\tCharacter :".." %20s : %20s",GetMe():GetName(),L2Class2String(GetMe():GetClass())).."\r\n");
	    st:write(string.format("\t\t\tClan Name :".." %20s : %20s",GetMe():GetClanName(),GetMe():GetClanId()).."\r\n");
		st:write(string.format("\t\t\tZone Name :".." %20s : %20s ",GetCurrentZoneName(), GetCurrentZoneID()).."\r\n");
st:write("■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■  PLAYERS INFO  ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■\r\n\r\n");	
                        local bID = nil;
                        local plist = GetPlayerList();
                        for b in plist.list do
                            if (b ~= nil) and (b:GetDistance() <= 2500)then
                                b.name = b:GetName();
                                b.Cname = b:GetClanName();
						        bID = b:GetClanId();
        st:write(string.format(" %32s : %20s : %20s  \r\n", b.name,b.Cname,bID));
		                    end;
		                end;
	                 end;		
st:write("■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■  SKILL INFO A  ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■\r\n\r\n");
	                    local skillList = GetSkills();
	                    for skill in skillList.list do
				            if (skill.isPassive == false) then
	    st:write(string.format(" %55s : %20s  \r\n", skill.name,skill.skillId));
	                        end;
		                 end;
st:write("■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■  SKILL INFO P  ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■\r\n\r\n"); 
						local skillList = GetSkills();
	                    for skill in skillList.list do
						    if (skill.isPassive)then
		st:write(string.format(" %55s : %20s \r\n", skill.name,skill.skillId));
						    end;
						end;
st:write("■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■    MOBS INFO   ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■\r\n\r\n");
                         local mID = nil;
                         local mBlist = GetMonsterList();
                         for m in mBlist.list do
                             if (m ~= nil) and (m:GetDistance() <= 2500)then
                                 mID = m:GetId();
                                 mN  = m:GetName();
        st:write(string.format(" %55s : %20s \r\n", mN,mID));
                             end;
				         end;	
st:write("■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■    INV INFO    ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■\r\n\r\n");
		                local InvList = GetInventory();
				        for item in InvList.list do							
		st:write(string.format(" %55s : %10s \r\n" ,item.Name,item.displayId));
		                end;  --item.Name	
st:write("■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■    END INFO    ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■\r\n\r\n");	
