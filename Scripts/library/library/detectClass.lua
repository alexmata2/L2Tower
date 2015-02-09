isFighter = false;
isMage = false;

function detectClass()
me = GetMe();
 
--   fighter 40  --
	if (me:GetClass() == 1) or (me:GetClass() == 2) or (me:GetClass() == 3) or (me:GetClass() == 4) or (me:GetClass() == 5) or (me:GetClass() == 6) or (me:GetClass() == 7) or (me:GetClass() == 8) or (me:GetClass() == 9) or (me:GetClass() == 19) or (me:GetClass() == 20) or (me:GetClass() == 21) or (me:GetClass() == 22) or (me:GetClass() == 23) or (me:GetClass() == 24) or (me:GetClass() == 28) or (me:GetClass() == 14) or (me:GetClass() == 32) or (me:GetClass() == 33) or (me:GetClass() == 34) or (me:GetClass() == 35) or (me:GetClass() == 36) or (me:GetClass() == 37) or (me:GetClass() == 41) or (me:GetClass() == 45) or (me:GetClass() == 46) or (me:GetClass() == 47) or (me:GetClass() == 48) or (me:GetClass() == 54) or (me:GetClass() == 55) or (me:GetClass() == 56) or (me:GetClass() == 57) or (me:GetClass() == 88) or (me:GetClass() == 89) or (me:GetClass() == 90) or (me:GetClass() == 91) or (me:GetClass() == 92) or (me:GetClass() == 93)  or (me:GetClass() == 184) or (me:GetClass() == 182) then
	isFighter = true;
	--ShowToClient("God","Class detected, youza fighter nigga",3);
	return
	end
	 
	----mage 40 ----
	if (me:GetClass() == 10) or (me:GetClass() == 11)  or (me:GetClass() == 12)  or (me:GetClass() == 13) or (me:GetClass() == 15) or (me:GetClass() == 16) or (me:GetClass() == 17) or (me:GetClass() == 26) or (me:GetClass() == 27) or (me:GetClass() == 3) or (me:GetClass() == 29) or (me:GetClass() == 30) or (me:GetClass() == 39) or (me:GetClass() == 40) or (me:GetClass() == 42) or (me:GetClass() == 43) or (me:GetClass() == 50) or (me:GetClass() == 51) or (me:GetClass() == 52) or (me:GetClass() == 183)or (me:GetClass() == 185) then
    isMage = true;
	--ShowToClient("God","Class detected, youza mage nigga",3);
	return
	end
	
	--   fighter 76  --
	if (me:GetClass() == 96) or (me:GetClass() == 99) or (me:GetClass() == 100) or (me:GetClass() == 101) or (me:GetClass() == 102) or (me:GetClass() == 104) or (me:GetClass() == 106) or (me:GetClass() == 107) or (me:GetClass() == 108) or (me:GetClass() == 109) or (me:GetClass() == 111) or (me:GetClass() == 116) or (me:GetClass() == 117) or (me:GetClass() == 118) or (me:GetClass() == 114) or (me:GetClass() == 115) or (me:GetClass() == 125) or (me:GetClass() == 126) or (me:GetClass() == 127) or (me:GetClass() == 128) or (me:GetClass() == 129) or (me:GetClass() == 130) or (me:GetClass() == 131) or (me:GetClass() == 132) or (me:GetClass() == 133) or (me:GetClass() == 134) or (me:GetClass() == 135) or (me:GetClass() == 136) or (me:GetClass() == 137) or (me:GetClass() == 113) or (me:GetClass() == 186) or (me:GetClass() == 188) then
	isFighter = true;
	--ShowToClient("God","Class detected, youza fighter nigga",3);
	return
	end
	 
	----mage 76 ----
	if (me:GetClass() == 148) or (me:GetClass() == 149)  or (me:GetClass() == 150) or (me:GetClass() == 151) or (me:GetClass() == 95) or (me:GetClass() == 94) or (me:GetClass() == 97) or (me:GetClass() == 98) or (me:GetClass() == 101) or (me:GetClass() == 102) or (me:GetClass() == 103) or (me:GetClass() == 110) or (me:GetClass() == 112) or  (me:GetClass() == 105) or  (me:GetClass() == 187)  then
	isMage = true;
	--ShowToClient("God","Class detected, youza mage nigga",3);
	return
	end
	--   fighter 85  --
	if (me:GetClass() == 179) or (me:GetClass() == 180) or (me:GetClass() == 181) or (me:GetClass() == 148) or (me:GetClass() == 149)  or (me:GetClass() == 150) or (me:GetClass() == 151) or (me:GetClass() == 176) or (me:GetClass() == 177) or (me:GetClass() == 178) or (me:GetClass() == 158) or (me:GetClass() == 159) or (me:GetClass() == 160) or (me:GetClass() == 161) or (me:GetClass() == 162) or (me:GetClass() == 163) or (me:GetClass() == 164) or (me:GetClass() == 165) or (me:GetClass() == 152) or (me:GetClass() == 153) or (me:GetClass() == 154) or (me:GetClass() == 155) or (me:GetClass() == 156) or (me:GetClass() == 157) or (me:GetClass() == 171) or (me:GetClass() == 172) or (me:GetClass() == 173) or (me:GetClass() == 174) or (me:GetClass() == 175)  or (me:GetClass() == 175) then
	isFighter = true;
	--ShowToClient("God","Class detected, youza fighter nigga",3);
	return
	end
	 
	----mage 85 ----
	if (me:GetClass() == 179) or (me:GetClass() == 180) or (me:GetClass() == 181) or (me:GetClass() == 166) or (me:GetClass() == 167) or (me:GetClass() == 168) or (me:GetClass() == 169)  or (me:GetClass() == 170) or (me:GetClass() == 189) then
	isMage = true;
	--ShowToClient("God","Class detected, youza mage nigga",3);
	return
	end
 
end;

return