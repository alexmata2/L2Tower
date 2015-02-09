repeat 
    ShowToClient('NAME ', GetCurrentZoneName() .. " ID:" .. GetCurrentZoneID()) 
    Sleep(2000)
until false;