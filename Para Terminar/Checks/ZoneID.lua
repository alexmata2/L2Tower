infoDirectorio = GetDir();


        filename = infoDirectorio..GetMe():GetName().." "..L2Class2String(GetMe():GetClass()).."_info.txt";
        st = io.open(filename, "w+");
		             if (st ~= nil)then
                         ShowToClient("Todos Los ID Guardado en el Archivo ", " ["..filename.."]");
st:write("■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■   USERS INFO   ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■\r\n\r\n");
		
        st:write(string.format("\t\t\tZoneName : %20s : %20s ",GetCurrentZoneName(), GetCurrentZoneID()).."\r\n");
	    --st:write("\t\t\tZone   ID :",GetCurrentZoneID()"\r\n");
		end;		