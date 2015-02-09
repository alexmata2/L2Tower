Sleep(1000)
telestring = {}
msgstring = {}

function CHECK(stop, tp2)
	if tp2 == stop then
		return true;
	end
	return false
end

function getHtml(tp)
	if tp == nil then
		ShowToClient("GOD", "TP location not inserted",3);
		return
	end
	
		local file = io.open(GetDir() .. "html.txt", "w"); -- open html.txt, prepare to write
		file:write(tostring(GetDialogHtml()).. "\n"); --writes html code to file
		file:close();
		 -----------------------------------teleport 1
		local file = io.open(GetDir() .. "html.txt", "r")--opens html.txt 
		local logread = file:read("*all");
		i, j = logread:find("teleport");
		substring = logread:sub(i,j+15);
		----------------------------------------------------------------------------------------------------------------------------------
		----------------------------------------------------------------------------------------------------------------------------------
		-----------------------------------teleport 2
		logstring2 = logread:sub(j+1);
		i2, j2 = logstring2:find("teleport");
		substring2 = tostring(logstring2:sub(i2,j2+15));
		------------------get teleport line2
		logstringmsg2 = logread:sub(j+i2, j+i2+75);
		imsg2, jmsg2 =  logstringmsg2:find("msg");
		logstringtele2 = logread:sub(j+i2, j+i2+imsg2-4);
		telestring[1] = logstringtele2
		------------------get msg line2
		findfstring2 = logread:sub(j+i2+imsg2, j+i2+imsg2+40);
		ifstring2, jfstring2 =  findfstring2:find("fstring");
		logstringmsg2 = logread:sub(j+i2+imsg2+4,  j+i2+imsg2+ifstring2-5);
		msgstring[1] = logstringmsg2
		if  CHECK(1, tp) then
		file:close();
		return;
		end;
		----------------------------------------------------------------------------------------------------------------------------------
		----------------------------------------------------------------------------------------------------------------------------------
		-----------------------------------teleport 3
		logstring3 = logread:sub(j+j2+1);
		i3, j3 = logstring3:find("teleport");
		----------------------------------------------------------------------------------------------------------------------------------
		----------------------------------------------------------------------------------------------------------------------------------
		-----------------------------------teleport 4
		logstring4 = logread:sub(j+j2+j3+1);
		i4, j4 = logstring4:find("teleport");
		substring4 = tostring(logstring4:sub(i4,j4+15));
		------------------get teleport line4
		logstringmsg4 = logread:sub(j+j2+j3+i4, j+j2+j3+i4+75);
		imsg4, jmsg4 =  logstringmsg4:find("msg");
		logstringtele4 = logread:sub(j+j2+j3+i4, j+j2+j3+i4+imsg4-4);
		telestring[2] = logstringtele4
		------------------get msg line4
		findfstring4 = logread:sub(j+j2+j3+i4+imsg4, j+j2+j3+i4+imsg4+40);
		ifstring4, jfstring4 =  findfstring4:find("fstring");
		logstringmsg4 = logread:sub(j+j2+j3+i4+imsg4+4,  j+j2+j3+i4+imsg4+ifstring4-5);
		msgstring[2] = logstringmsg4
		if CHECK(2, tp) then
		file:close();
		return;
		end;
		----------------------------------------------------------------------------------------------------------------------------------
		----------------------------------------------------------------------------------------------------------------------------------
		-----------------------------------teleport 5
		logstring5 = logread:sub(j+j2+j3+j4+1);
		i5, j5 = logstring5:find("teleport");
		----------------------------------------------------------------------------------------------------------------------------------
		----------------------------------------------------------------------------------------------------------------------------------
		-----------------------------------teleport 6
		logstring6 = logread:sub(j+j2+j3+j4+j5+1);
		i6, j6 = logstring6:find("teleport");
		substring6 = tostring(logstring6:sub(i6,j6+15));
				------------------get teleport line6
		logstringmsg6 = logread:sub(j+j2+j3+j4+j5+i6, j+j2+j3+j4+j5+i6+75);
		imsg6, jmsg6 =  logstringmsg6:find("msg");
		logstringtele6 = logread:sub(j+j2+j3+j4+j5+i6, j+j2+j3+j4+j5+i6+imsg6-4);
		telestring[3] = logstringtele6
		------------------get msg line6
		findfstring6 = logread:sub(j+j2+j3+j4+j5+i6+imsg6, j+j2+j3+j4+j5+i6+imsg6+40);
		ifstring6, jfstring6 =  findfstring6:find("fstring");
		logstringmsg6 = logread:sub(j+j2+j3+j4+j5+i6+imsg6+4,  j+j2+j3+j4+j5+i6+imsg6+ifstring6-5);
		msgstring[3] = logstringmsg6
		if CHECK(3, tp) then
		file:close();
		return;
		end;
		----------------------------------------------------------------------------------------------------------------------------------
		----------------------------------------------------------------------------------------------------------------------------------
		-----------------------------------teleport 7
		logstring7 = logread:sub(j+j2+j3+j4+j5+j6+1);
		i7, j7 = logstring7:find("teleport");
		----------------------------------------------------------------------------------------------------------------------------------
		----------------------------------------------------------------------------------------------------------------------------------
		-----------------------------------teleport 8
		logstring8 = logread:sub(j+j2+j3+j4+j5+j6+j7+1);
		i8, j8 = logstring8:find("teleport");
		substring8 = tostring(logstring8:sub(i8,j8+15));
				------------------get teleport line8
		logstringmsg8 = logread:sub(j+j2+j3+j4+j5+j6+j7+i8, j+j2+j3+j4+j5+j6+j7+i8+75);
		imsg8, jmsg8 =  logstringmsg8:find("msg");
		logstringtele8 = logread:sub(j+j2+j3+j4+j5+j6+j7+i8, j+j2+j3+j4+j5+j6+j7+i8+imsg8-4);
		telestring[4] = logstringtele8
		------------------get msg line8
		findfstring8 = logread:sub(j+j2+j3+j4+j5+j6+j7+i8+imsg8, j+j2+j3+j4+j5+j6+j7+i8+imsg8+40);
		ifstring8, jfstring8 =  findfstring8:find("fstring");
		logstringmsg8 = logread:sub(j+j2+j3+j4+j5+j6+j7+i8+imsg8+4,  j+j2+j3+j4+j5+j6+j7+i8+imsg8+ifstring8-5);
		msgstring[4] = logstringmsg8
		if CHECK(4, tp) then
		file:close();
		return;
		end;
		----------------------------------------------------------------------------------------------------------------------------------
		----------------------------------------------------------------------------------------------------------------------------------
		-----------------------------------teleport 9
		logstring9 = logread:sub(j+j2+j3+j4+j5+j6+j7+j8+1);
		i9, j9 = logstring9:find("teleport");
		----------------------------------------------------------------------------------------------------------------------------------
		----------------------------------------------------------------------------------------------------------------------------------
		-----------------------------------teleport 10
		logstring10 = logread:sub(j+j2+j3+j4+j5+j6+j7+j8+j9+1);
		i10, j10 = logstring10:find("teleport");
		substring10 = tostring(logstring10:sub(i10,j10+15));
			------------------get teleport line10
		logstringmsg10 = logread:sub(j+j2+j3+j4+j5+j6+j7+j8+j9+i10, j+j2+j3+j4+j5+j6+j7+j8+j9+i10+75);
		imsg10, jmsg10 =  logstringmsg10:find("msg");
		logstringtele10 = logread:sub(j+j2+j3+j4+j5+j6+j7+j8+j9+i10, j+j2+j3+j4+j5+j6+j7+j8+j9+i10+imsg10-4);
		telestring[5] = logstringtele10
		------------------get msg line10
		findfstring10 = logread:sub(j+j2+j3+j4+j5+j6+j7+j8+j9+i10+imsg10, j+j2+j3+j4+j5+j6+j7+j8+j9+i10+imsg10+40);
		ifstring10, jfstring10 =  findfstring10:find("fstring");
		logstringmsg10 = logread:sub(j+j2+j3+j4+j5+j6+j7+j8+j9+i10+imsg10+4,  j+j2+j3+j4+j5+j6+j7+j8+j9+i10+imsg10+ifstring10-5);
		msgstring[5] = logstringmsg10
		if CHECK(5, tp) then
		file:close();
		return;
		end;
		----------------------------------------------------------------------------------------------------------------------------------
		----------------------------------------------------------------------------------------------------------------------------------
		-----------------------------------teleport 11
		logstring11 = logread:sub(j+j2+j3+j4+j5+j6+j7+j8+j9+j10+1);
		i11, j11 = logstring11:find("teleport");
		----------------------------------------------------------------------------------------------------------------------------------
		----------------------------------------------------------------------------------------------------------------------------------
		-----------------------------------teleport 12
		logstring12 = logread:sub(j+j2+j3+j4+j5+j6+j7+j8+j9+j10+j11+1);
		i12, j12 = logstring12:find("teleport");
		substring12 = tostring(logstring12:sub(i12,j12+15));
		------------------get teleport line12
		logstringmsg12 = logread:sub(j+j2+j3+j4+j5+j6+j7+j8+j9+j10+j11+i12, j+j2+j3+j4+j5+j6+j7+j8+j9+j10+j11+i12+75);
		imsg12, jmsg12 =  logstringmsg12:find("msg");
		logstringtele12 = logread:sub(j+j2+j3+j4+j5+j6+j7+j8+j9+j10+j11+i12, j+j2+j3+j4+j5+j6+j7+j8+j9+j10+j11+i12+imsg12-4);
		telestring[6] = logstringtele12
		------------------get msg line12
		findfstring12 = logread:sub(j+j2+j3+j4+j5+j6+j7+j8+j9+j10+j11+i12+imsg12, j+j2+j3+j4+j5+j6+j7+j8+j9+j10+j11+i12+imsg12+40);
		ifstring12, jfstring12 =  findfstring12:find("fstring");
		logstringmsg12 = logread:sub(j+j2+j3+j4+j5+j6+j7+j8+j9+j10+j11+i12+imsg12+4,  j+j2+j3+j4+j5+j6+j7+j8+j9+j10+j11+i12+imsg12+ifstring12-5);
		msgstring[6] = logstringmsg12
		if CHECK(6, tp)  then
		file:close();
		return;
		end;
		----------------------------------------------------------------------------------------------------------------------------------
		----------------------------------------------------------------------------------------------------------------------------------
		-----------------------------------teleport 13
		logstring13 = logread:sub(j+j2+j3+j4+j5+j6+j7+j8+j9+j10+j11+j12+1);
		i13, j13 = logstring13:find("teleport");
		----------------------------------------------------------------------------------------------------------------------------------
		----------------------------------------------------------------------------------------------------------------------------------
		-----------------------------------teleport 14
		logstring14 = logread:sub(j+j2+j3+j4+j5+j6+j7+j8+j9+j10+j11+j12+j13+1);
		i14, j14 = logstring14:find("teleport");
		substring14 = tostring(logstring14:sub(i14,j14+15));
		------------------get teleport line14
		logstringmsg14 = logread:sub(j+j2+j3+j4+j5+j6+j7+j8+j9+j10+j11+j12+j13+i14, j+j2+j3+j4+j5+j6+j7+j8+j9+j10+j11+j12+j13+i14+75);
		imsg14, jmsg14 =  logstringmsg14:find("msg");
		logstringtele14 = logread:sub(j+j2+j3+j4+j5+j6+j7+j8+j9+j10+j11+j12+j13+i14, j+j2+j3+j4+j5+j6+j7+j8+j9+j10+j11+j12+j13+i14+imsg14-4);
		telestring[7] = logstringtele14
		------------------get msg line14
		findfstring14 = logread:sub(j+j2+j3+j4+j5+j6+j7+j8+j9+j10+j11+j12+j13+i14+imsg14, j+j2+j3+j4+j5+j6+j7+j8+j9+j10+j11+j12+j13+i14+imsg14+40);
		ifstring14, jfstring14 =  findfstring14:find("fstring");
		logstringmsg14 = logread:sub(j+j2+j3+j4+j5+j6+j7+j8+j9+j10+j11+j12+j13+i14+imsg14+4,  j+j2+j3+j4+j5+j6+j7+j8+j9+j10+j11+j12+j13+i14+imsg14+ifstring14-5);
		msgstring[7] = logstringmsg14
		if CHECK(7, tp) then
		file:close();
		return;
		end;
		----------------------------------------------------------------------------------------------------------------------------------------------------------
		-------------------------------------------------------------------------------------------------------------------------------------------------------------
		-----------------------------------teleport 15
		logstring15 = logread:sub(j+j2+j3+j4+j5+j6+j7+j8+j9+j10+j11+j12+j13+j14+1);
		i15, j15 = logstring15:find("teleport");
		----------------------------------------------------------------------------------------------------------------------------------------------------------
		-------------------------------------------------------------------------------------------------------------------------------------------------------------
		-----------------------------------teleport 16
		logstring16 = logread:sub(j+j2+j3+j4+j5+j6+j7+j8+j9+j10+j11+j12+j13+j14+j15+1);
		i16, j16 = logstring16:find("teleport");
		substring16 = tostring(logstring16:sub(i16,j16+15));
		------------------get teleport line16
		logstringmsg16 = logread:sub(j+j2+j3+j4+j5+j6+j7+j8+j9+j10+j11+j12+j13+j14+j15+i16, j+j2+j3+j4+j5+j6+j7+j8+j9+j10+j11+j12+j13+j14+j15+i16+75);
		imsg16, jmsg16 =  logstringmsg16:find("msg");
		logstringtele16 = logread:sub(j+j2+j3+j4+j5+j6+j7+j8+j9+j10+j11+j12+j13+j14+j15+i16, j+j2+j3+j4+j5+j6+j7+j8+j9+j10+j11+j12+j13+j14+j15+i16+imsg16-4);
		telestring[8] = logstringtele16
		------------------get msg line16
		findfstring16 = logread:sub(j+j2+j3+j4+j5+j6+j7+j8+j9+j10+j11+j12+j13+j14+j15+i16+imsg16, j+j2+j3+j4+j5+j6+j7+j8+j9+j10+j11+j12+j13+j14+j15+i16+imsg16+40);
		ifstring16, jfstring16 =  findfstring16:find("fstring");
		logstringmsg16 = logread:sub(j+j2+j3+j4+j5+j6+j7+j8+j9+j10+j11+j12+j13+j14+j15+i16+imsg16+4,  j+j2+j3+j4+j5+j6+j7+j8+j9+j10+j11+j12+j13+j14+j15+i16+imsg16+ifstring16-5);
		msgstring[8] = logstringmsg16
		if CHECK(8, tp) then
			file:close();
			return;
		end;
		----------------------------------------------------------------------------------------------------------------------------------------------------------
		-------------------------------------------------------------------------------------------------------------------------------------------------------------
		-----------------------------------teleport 17
		logstring17 = logread:sub(j+j2+j3+j4+j5+j6+j7+j8+j9+j10+j11+j12+j13+j14+j15+j16+1);
		i17, j17 = logstring17:find("teleport");
		----------------------------------------------------------------------------------------------------------------------------------------------------------
		-------------------------------------------------------------------------------------------------------------------------------------------------------------
		-----------------------------------teleport 18
		logstring18 = logread:sub(j+j2+j3+j4+j5+j6+j7+j8+j9+j10+j11+j12+j13+j14+j15+j16+j17+1);
		i18, j18 = logstring18:find("teleport");
		substring18 = tostring(logstring18:sub(i18,j18+15));
		------------------get teleport line18
		lengthPlus18 = j+j2+j3+j4+j5+j6+j7+j8+j9+j10+j11+j12+j13+j14+j15+j16+j17+i18
		logstringmsg18 = logread:sub(lengthPlus18, lengthPlus18+75);
		imsg18, jmsg18 =  logstringmsg18:find("msg");
		logstringtele18 = logread:sub(lengthPlus18, lengthPlus18+imsg18-4);
		telestring[9] = logstringtele18
		------------------get msg line18
		findfstring18 = logread:sub(lengthPlus18+imsg18, lengthPlus18+imsg18+40);
		ifstring18, jfstring18 =  findfstring18:find("fstring");
		logstringmsg18 = logread:sub(lengthPlus18+imsg18+4,  lengthPlus18+imsg18+ifstring18-5)
		msgstring[9] = logstringmsg18
		if CHECK(9, tp) then
			file:close();
			return;
		end;
		----------------------------------------------------------------------------------------------------------------------------------------------------------
		-------------------------------------------------------------------------------------------------------------------------------------------------------------
		-----------------------------------teleport 19
		logstring19 = logread:sub(j+j2+j3+j4+j5+j6+j7+j8+j9+j10+j11+j12+j13+j14+j15+j16+j17+j18+1);
		i19, j19 = logstring19:find("teleport");
		----------------------------------------------------------------------------------------------------------------------------------------------------------
		-------------------------------------------------------------------------------------------------------------------------------------------------------------
		-----------------------------------teleport 20
		logstring20 = logread:sub(j+j2+j3+j4+j5+j6+j7+j8+j9+j10+j11+j12+j13+j14+j15+j16+j17+j18+j19+1);
		i20, j20 = logstring20:find("teleport");
		substring20 = tostring(logstring20:sub(i20,j20+15));
		------------------get teleport line20
		lengthPlus20 = j+j2+j3+j4+j5+j6+j7+j8+j9+j10+j11+j12+j13+j14+j15+j16+j17+j18+j19+i20
		logstringmsg20 = logread:sub(lengthPlus20, lengthPlus20+75);
		imsg20, jmsg20 =  logstringmsg20:find("msg");
		logstringtele20 = logread:sub(lengthPlus20, lengthPlus20+imsg20-4);
		telestring[10] = logstringtele20
		------------------get msg line20
		findfstring20 = logread:sub(lengthPlus20+imsg20, lengthPlus20+imsg20+40);
		ifstring20, jfstring20 =  findfstring20:find("fstring");
		logstringmsg20 = logread:sub(lengthPlus20+imsg20+4,  lengthPlus20+imsg20+ifstring20-5)
		msgstring[10] = logstringmsg20
		if CHECK(10, tp) then
			file:close();
			return;
		end;
		----------------------------------------------------------------------------------------------------------------------------------------------------------
		-------------------------------------------------------------------------------------------------------------------------------------------------------------
		-----------------------------------teleport 21
		logstring21 = logread:sub(j+j2+j3+j4+j5+j6+j7+j8+j9+j10+j11+j12+j13+j14+j15+j16+j17+j18+j19+j20+1);
		i21, j21 = logstring21:find("teleport");
		----------------------------------------------------------------------------------------------------------------------------------------------------------
		-------------------------------------------------------------------------------------------------------------------------------------------------------------
		-----------------------------------teleport 22
		logstring22 = logread:sub(j+j2+j3+j4+j5+j6+j7+j8+j9+j10+j11+j12+j13+j14+j15+j16+j17+j18+j19+j20+j21+1);
		i22, j22 = logstring22:find("teleport");
		substring22 = tostring(logstring22:sub(i22,j22+15));
		------------------get teleport line20
		lengthPlus22 = j+j2+j3+j4+j5+j6+j7+j8+j9+j10+j11+j12+j13+j14+j15+j16+j17+j18+j19+j20+j21+i22
		logstringmsg22 = logread:sub(lengthPlus22, lengthPlus22+75);
		imsg22, jmsg22 =  logstringmsg22:find("msg");
		logstringtele22 = logread:sub(lengthPlus22, lengthPlus22+imsg22-4);
		telestring[11] = logstringtele22
		------------------get msg line20
		findfstring22 = logread:sub(lengthPlus22+imsg22, lengthPlus22+imsg22+40);
		ifstring22, jfstring22 =  findfstring22:find("fstring");
		logstringmsg22 = logread:sub(lengthPlus22+imsg22+4,  lengthPlus22+imsg22+ifstring22-5)
		msgstring[11] = logstringmsg22
		if CHECK(11, tp) then
			file:close();
			return;
		end;
		----------------------------------------------------------------------------------------------------------------------------------------------------------
		-------------------------------------------------------------------------------------------------------------------------------------------------------------
		-----------------------------------teleport 23
		logstring23 = logread:sub(j+j2+j3+j4+j5+j6+j7+j8+j9+j10+j11+j12+j13+j14+j15+j16+j17+j18+j19+j20+j21+j22+1);
		i23, j23 = logstring23:find("teleport");
		----------------------------------------------------------------------------------------------------------------------------------------------------------
		-------------------------------------------------------------------------------------------------------------------------------------------------------------
		-----------------------------------teleport 24
		logstring24 = logread:sub(j+j2+j3+j4+j5+j6+j7+j8+j9+j10+j11+j12+j13+j14+j15+j16+j17+j18+j19+j20+j21+j22+j23+1);
		i24, j24 = logstring24:find("teleport");
		substring24 = tostring(logstring24:sub(i24,j24+15));
		------------------get teleport line24
		lengthPlus24 = j+j2+j3+j4+j5+j6+j7+j8+j9+j10+j11+j12+j13+j14+j15+j16+j17+j18+j19+j20+j21+j22+j23+i24
		logstringmsg24 = logread:sub(lengthPlus24, lengthPlus24+75);
		imsg24, jmsg24 =  logstringmsg24:find("msg");
		logstringtele24 = logread:sub(lengthPlus24, lengthPlus24+imsg24-4);
		telestring[12] = logstringtele24
		------------------get msg line20=4
		findfstring24 = logread:sub(lengthPlus24+imsg24, lengthPlus24+imsg24+40);
		ifstring24, jfstring24 =  findfstring24:find("fstring");
		logstringmsg24 = logread:sub(lengthPlus24+imsg24+4,  lengthPlus24+imsg24+ifstring24-5)
		msgstring[12] = logstringmsg24
		if CHECK(12, tp) then
			file:close();
			return;
		end;
		----------------------------------------------------------------------------------------------------------------------------------------------------------
		-------------------------------------------------------------------------------------------------------------------------------------------------------------
		-----------------------------------teleport 25
		logstring25 = logread:sub(j+j2+j3+j4+j5+j6+j7+j8+j9+j10+j11+j12+j13+j14+j15+j16+j17+j18+j19+j20+j21+j22+j23+j24+1);
		i25, j25 = logstring25:find("teleport");
		---------------------------------------------------------------------------------------------------------------------------------------------------------
		-------------------------------------------------------------------------------------------------------------------------------------------------------------
		-----------------------------------teleport 26
		logstring26 = logread:sub(j+j2+j3+j4+j5+j6+j7+j8+j9+j10+j11+j12+j13+j14+j15+j16+j17+j18+j19+j20+j21+j22+j23+j24+j25+1);
		i26, j26 = logstring26:find("teleport");
		substring26 = tostring(logstring26:sub(i26,j26+15));
		------------------get teleport line26
		lengthPlus26 = j+j2+j3+j4+j5+j6+j7+j8+j9+j10+j11+j12+j13+j14+j15+j16+j17+j18+j19+j20+j21+j22+j23+j24+j25+i26
		logstringmsg26 = logread:sub(lengthPlus26, lengthPlus26+75);
		imsg26, jmsg26 =  logstringmsg26:find("msg");
		logstringtele26 = logread:sub(lengthPlus26, lengthPlus26+imsg26-4);
		telestring[13] = logstringtele26
		------------------get msg line26
		findfstring26 = logread:sub(lengthPlus26+imsg26, lengthPlus26+imsg26+40);
		ifstring26, jfstring26 =  findfstring26:find("fstring");
		logstringmsg26 = logread:sub(lengthPlus26+imsg26+4,  lengthPlus26+imsg26+ifstring26-5)
		msgstring[13] = logstringmsg26
		if CHECK(13, tp) then
			file:close();
			return;
		end;
		---------------------------------------------------------------------------------------------------------------------------------------------------------
		-------------------------------------------------------------------------------------------------------------------------------------------------------------
		-----------------------------------teleport 27
		logstring27 = logread:sub(j+j2+j3+j4+j5+j6+j7+j8+j9+j10+j11+j12+j13+j14+j15+j16+j17+j18+j19+j20+j21+j22+j23+j24+j25+j26+1);
		i27, j27 = logstring27:find("teleport");
		---------------------------------------------------------------------------------------------------------------------------------------------------------
		-------------------------------------------------------------------------------------------------------------------------------------------------------------
		-----------------------------------teleport 28
		logstring28 = logread:sub(j+j2+j3+j4+j5+j6+j7+j8+j9+j10+j11+j12+j13+j14+j15+j16+j17+j18+j19+j20+j21+j22+j23+j24+j25+j26+j27+1);
		i28, j28 = logstring28:find("teleport");
		substring28 = tostring(logstring28:sub(i28,j28+15));
		------------------get teleport line28
		lengthPlus28 = j+j2+j3+j4+j5+j6+j7+j8+j9+j10+j11+j12+j13+j14+j15+j16+j17+j18+j19+j20+j21+j22+j23+j24+j25+j26+j27+i28
		logstringmsg28 = logread:sub(lengthPlus28, lengthPlus28+75);
		imsg28, jmsg28 =  logstringmsg28:find("msg");
		logstringtele28 = logread:sub(lengthPlus28, lengthPlus28+imsg28-4);
		telestring[14] = logstringtele28
		------------------get msg line28
		findfstring28 = logread:sub(lengthPlus28+imsg28, lengthPlus28+imsg28+40);
		ifstring28, jfstring28 =  findfstring28:find("fstring");
		logstringmsg28 = logread:sub(lengthPlus28+imsg28+4,  lengthPlus28+imsg28+ifstring28-5)
		msgstring[14] = logstringmsg28
		if CHECK(14, tp) then
			file:close();
			return;
		end;
		---------------------------------------------------------------------------------------------------------------------------------------------------------
		-------------------------------------------------------------------------------------------------------------------------------------------------------------
		-----------------------------------teleport 29
		logstring29 = logread:sub(j+j2+j3+j4+j5+j6+j7+j8+j9+j10+j11+j12+j13+j14+j15+j16+j17+j18+j19+j20+j21+j22+j23+j24+j25+j26+j27+j28+1);
		i29, j29 = logstring29:find("teleport");
		---------------------------------------------------------------------------------------------------------------------------------------------------------
		-------------------------------------------------------------------------------------------------------------------------------------------------------------
		-----------------------------------teleport 30
		logstring30 = logread:sub(j+j2+j3+j4+j5+j6+j7+j8+j9+j10+j11+j12+j13+j14+j15+j16+j17+j18+j19+j20+j21+j22+j23+j24+j25+j26+j27+j28+j29+1);
		i30, j30 = logstring30:find("teleport");
		substring30 = tostring(logstring30:sub(i30,j30+15));
		------------------get teleport line30
		lengthPlus30 = j+j2+j3+j4+j5+j6+j7+j8+j9+j10+j11+j12+j13+j14+j15+j16+j17+j18+j19+j20+j21+j22+j23+j24+j25+j26+j27+j28+j29+i30
		logstringmsg30 = logread:sub(lengthPlus30, lengthPlus30+75);
		imsg30, jmsg30 =  logstringmsg30:find("msg");
		logstringtele30 = logread:sub(lengthPlus30, lengthPlus30+imsg30-4);
		telestring[15] = logstringtele30
		------------------get msg line30
		findfstring30 = logread:sub(lengthPlus30+imsg30, lengthPlus30+imsg30+40);
		ifstring30, jfstring30 =  findfstring30:find("fstring");
		logstringmsg30 = logread:sub(lengthPlus30+imsg30+4,  lengthPlus30+imsg30+ifstring30-5)
		msgstring[15] = logstringmsg30
		if CHECK(15, tp) then
			file:close();
			return;
		end;
		---------------------------------------------------------------------------------------------------------------------------------------------------------
		-------------------------------------------------------------------------------------------------------------------------------------------------------------
		-----------------------------------teleport 31
		logstring31 = logread:sub(j+j2+j3+j4+j5+j6+j7+j8+j9+j10+j11+j12+j13+j14+j15+j16+j17+j18+j19+j20+j21+j22+j23+j24+j25+j26+j27+j28+j29+j30+1);
		i31, j31 = logstring31:find("teleport");
		---------------------------------------------------------------------------------------------------------------------------------------------------------
		-------------------------------------------------------------------------------------------------------------------------------------------------------------
		-----------------------------------teleport 32
		logstring32 = logread:sub(j+j2+j3+j4+j5+j6+j7+j8+j9+j10+j11+j12+j13+j14+j15+j16+j17+j18+j19+j20+j21+j22+j23+j24+j25+j26+j27+j28+j29+j30+j31+1);
		i32, j32 = logstring32:find("teleport");
		substring32 = tostring(logstring32:sub(i32,j32+15));
		------------------get teleport line30
		lengthPlus32 = j+j2+j3+j4+j5+j6+j7+j8+j9+j10+j11+j12+j13+j14+j15+j16+j17+j18+j19+j20+j21+j22+j23+j24+j25+j26+j27+j28+j29+j30+j31+i32
		logstringmsg32 = logread:sub(lengthPlus32, lengthPlus32+75);
		imsg32, jmsg32 =  logstringmsg32:find("msg");
		logstringtele32 = logread:sub(lengthPlus32, lengthPlus32+imsg32-4);
		telestring[16] = logstringtele32
		------------------get msg line30
		findfstring32 = logread:sub(lengthPlus32+imsg32, lengthPlus32+imsg32+40);
		ifstring32, jfstring32 =  findfstring32:find("fstring");
		logstringmsg32 = logread:sub(lengthPlus32+imsg32+4,  lengthPlus32+imsg32+ifstring32-5)
		msgstring[16] = logstringmsg32
		if CHECK(16, tp) then
			file:close();
			return;
		end;

return			
end;

return