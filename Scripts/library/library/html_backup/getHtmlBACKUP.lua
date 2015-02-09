Sleep(1000)
telestring = {}
msgstring = {}
function getHtml(tp)

	function CHECK(stop, tp2)
		if tp2 == stop then
			return true;
		end
	end
	
	if tp == nil then
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
		------------------get teleport line1
		logstringmsg1 = logread:sub(i, j+100);
		imsg1, jmsg1 =  logstringmsg1:find("msg");
		logstringtele1 = logread:sub(i, j+imsg1-4);
		telestring[1] = logstringtele1;
		------------------get msg line1
		findfstring1 = logread:sub(j+imsg1, j+imsg1+40);
		ifstring1, jfstring1 =  findfstring1:find("fstring");
		logstringmsg1 = logread:sub(j+imsg1+4,  j+imsg1+ifstring1-5);
		msgstring[1] = logstringmsg1
		if CHECK(1, tp) then
		file:close();
		return;
		end;
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
		telestring[2] = logstringtele2
		------------------get msg line2
		findfstring2 = logread:sub(j+i2+imsg2, j+i2+imsg2+40);
		ifstring2, jfstring2 =  findfstring2:find("fstring");
		logstringmsg2 = logread:sub(j+i2+imsg2+4,  j+i2+imsg2+ifstring2-5);
		msgstring[2] = logstringmsg2
		if  CHECK(2, tp) then
		file:close();
		return;
		end;
		----------------------------------------------------------------------------------------------------------------------------------
		----------------------------------------------------------------------------------------------------------------------------------
		-----------------------------------teleport 3
		logstring3 = logread:sub(j+j2+1);
		i3, j3 = logstring3:find("teleport");
		substring3 = tostring(logstring3:sub(i3,j3+15));
		------------------get teleport line3
		logstringmsg3 = logread:sub(j+j2+i3, j+j2+i3+75);
		imsg3, jmsg3 =  logstringmsg3:find("msg");
		logstringtele3 = logread:sub(j+j2+i3, j+j2+i3+imsg3-4);
		telestring[3] = logstringtele3
		--ShowToClient("GOD", tostring(logstringtele));
		------------------get msg line3
		findfstring3 = logread:sub(j+j2+i3+imsg3, j+j2+i3+imsg3+40);
		ifstring3, jfstring3 =  findfstring3:find("fstring");
		logstringmsg3 = logread:sub(j+j2+i3+imsg3+4,  j+j2+i3+imsg3+ifstring3-5);
		msgstring[3] = logstringmsg3
		if CHECK(3, tp) then
		file:close();
		return;
		end;
		----------------------------------------------------------------------------------------------------------------------------------
		----------------------------------------------------------------------------------------------------------------------------------
		-----------------------------------teleport 4
		logstring4 = logread:sub(j+j2+j3+1);
		i4, j4 = logstring4:find("teleport");
		substring4 = tostring(logstring4:sub(i4,j4+15));
		--ShowToClient("GOD", tostring(substring4));
		------------------get teleport line4
		logstringmsg4 = logread:sub(j+j2+j3+i4, j+j2+j3+i4+75);
		imsg4, jmsg4 =  logstringmsg4:find("msg");
		logstringtele4 = logread:sub(j+j2+j3+i4, j+j2+j3+i4+imsg4-4);
		telestring[4] = logstringtele4
		--ShowToClient("GOD", tostring(logstringtele));
		------------------get msg line4
		findfstring4 = logread:sub(j+j2+j3+i4+imsg4, j+j2+j3+i4+imsg4+40);
		ifstring4, jfstring4 =  findfstring4:find("fstring");
		logstringmsg4 = logread:sub(j+j2+j3+i4+imsg4+4,  j+j2+j3+i4+imsg4+ifstring4-5);
		msgstring[4] = logstringmsg4
		if CHECK(4, tp) then
		file:close();
		return;
		end;
		----------------------------------------------------------------------------------------------------------------------------------
		----------------------------------------------------------------------------------------------------------------------------------
		-----------------------------------teleport 5
		logstring5 = logread:sub(j+j2+j3+j4+1);
		i5, j5 = logstring5:find("teleport");
		substring5 = tostring(logstring5:sub(i5,j5+15));
		--ShowToClient("GOD", tostring(substring5));
						------------------get teleport line5
		logstringmsg5 = logread:sub(j+j2+j3+j4+i5, j+j2+j3+j4+i5+75);
		imsg5, jmsg5 =  logstringmsg5:find("msg");
		logstringtele5 = logread:sub(j+j2+j3+j4+i5, j+j2+j3+j4+i5+imsg5-4);
		telestring[5] = logstringtele5
		--ShowToClient("GOD", tostring(logstringtele));
		------------------get msg line5
		findfstring5 = logread:sub(j+j2+j3+j4+i5+imsg5, j+j2+j3+j4+i5+imsg5+40);
		ifstring5, jfstring5 =  findfstring5:find("fstring");
		logstringmsg5 = logread:sub(j+j2+j3+j4+i5+imsg5+4,  j+j2+j3+j4+i5+imsg5+ifstring5-5);
		msgstring[5] = logstringmsg5
		if CHECK(5, tp) then
		file:close();
		return;
		end;
		----------------------------------------------------------------------------------------------------------------------------------
		----------------------------------------------------------------------------------------------------------------------------------
		-----------------------------------teleport 6
		logstring6 = logread:sub(j+j2+j3+j4+j5+1);
		i6, j6 = logstring6:find("teleport");
		substring6 = tostring(logstring6:sub(i6,j6+15));
		--ShowToClient("GOD", tostring(substring6));
				------------------get teleport line6
		logstringmsg6 = logread:sub(j+j2+j3+j4+j5+i6, j+j2+j3+j4+j5+i6+75);
		imsg6, jmsg6 =  logstringmsg6:find("msg");
		logstringtele6 = logread:sub(j+j2+j3+j4+j5+i6, j+j2+j3+j4+j5+i6+imsg6-4);
		telestring[6] = logstringtele6
		--ShowToClient("GOD", tostring(logstringtele6));
		------------------get msg line6
		findfstring6 = logread:sub(j+j2+j3+j4+j5+i6+imsg6, j+j2+j3+j4+j5+i6+imsg6+40);
		ifstring6, jfstring6 =  findfstring6:find("fstring");
		logstringmsg6 = logread:sub(j+j2+j3+j4+j5+i6+imsg6+4,  j+j2+j3+j4+j5+i6+imsg6+ifstring6-5);
		msgstring[6] = logstringmsg6
		--ShowToClient("GOD", tostring(logstringmsg6));
		if CHECK(6, tp) then
		file:close();
		return;
		end;
		----------------------------------------------------------------------------------------------------------------------------------
		----------------------------------------------------------------------------------------------------------------------------------
		-----------------------------------teleport 7
		logstring7 = logread:sub(j+j2+j3+j4+j5+j6+1);
		i7, j7 = logstring7:find("teleport");
		substring7 = tostring(logstring7:sub(i7,j7+15));
		--ShowToClient("GOD", tostring(substring7));
		------------------get teleport line7
		logstringmsg7 = logread:sub(j+j2+j3+j4+j5+j6+i7, j+j2+j3+j4+j5+j6+i7+75);
		imsg7, jmsg7 =  logstringmsg7:find("msg");
		logstringtele7 = logread:sub(j+j2+j3+j4+j5+j6+i7, j+j2+j3+j4+j5+j6+i7+imsg7-4);
		telestring[7] = logstringtele7
		--ShowToClient("GOD", tostring(logstringtele));
		------------------get msg line7
		findfstring7 = logread:sub(j+j2+j3+j4+j5+j6+i7+imsg7, j+j2+j3+j4+j5+j6+i7+imsg7+40);
		ifstring7, jfstring7 =  findfstring7:find("fstring");
		logstringmsg7 = logread:sub(j+j2+j3+j4+j5+j6+i7+imsg7+4,  j+j2+j3+j4+j5+j6+i7+imsg7+ifstring7-5);
		msgstring[7] = logstringmsg7
		if CHECK(7, tp) then
		file:close();
		return;
		end;
		----------------------------------------------------------------------------------------------------------------------------------
		----------------------------------------------------------------------------------------------------------------------------------
		-----------------------------------teleport 8
		logstring8 = logread:sub(j+j2+j3+j4+j5+j6+j7+1);
		i8, j8 = logstring8:find("teleport");
		substring8 = tostring(logstring8:sub(i8,j8+15));
		--ShowToClient("GOD", tostring(substring8));
				------------------get teleport line8
		logstringmsg8 = logread:sub(j+j2+j3+j4+j5+j6+j7+i8, j+j2+j3+j4+j5+j6+j7+i8+75);
		imsg8, jmsg8 =  logstringmsg8:find("msg");
		logstringtele8 = logread:sub(j+j2+j3+j4+j5+j6+j7+i8, j+j2+j3+j4+j5+j6+j7+i8+imsg8-4);
		telestring[8] = logstringtele8
		--ShowToClient("GOD", tostring(logstringtele));
		------------------get msg line8
		findfstring8 = logread:sub(j+j2+j3+j4+j5+j6+j7+i8+imsg8, j+j2+j3+j4+j5+j6+j7+i8+imsg8+40);
		ifstring8, jfstring8 =  findfstring8:find("fstring");
		logstringmsg8 = logread:sub(j+j2+j3+j4+j5+j6+j7+i8+imsg8+4,  j+j2+j3+j4+j5+j6+j7+i8+imsg8+ifstring8-5);
		msgstring[8] = logstringmsg8
		if CHECK(8, tp) then
		file:close();
		return;
		end;
		----------------------------------------------------------------------------------------------------------------------------------
		----------------------------------------------------------------------------------------------------------------------------------
		-----------------------------------teleport 9
		logstring9 = logread:sub(j+j2+j3+j4+j5+j6+j7+j8+1);
		i9, j9 = logstring9:find("teleport");
		substring9 = tostring(logstring9:sub(i9,j9+15));
		--ShowToClient("GOD", tostring(substring9));
		------------------get teleport line9
		logstringmsg9 = logread:sub(j+j2+j3+j4+j5+j6+j7+j8+i9, j+j2+j3+j4+j5+j6+j7+j8+i9+75);
		imsg9, jmsg9 =  logstringmsg9:find("msg");
		logstringtele9 = logread:sub(j+j2+j3+j4+j5+j6+j7+j8+i9, j+j2+j3+j4+j5+j6+j7+j8+i9+imsg9-4);
		telestring[9] = logstringtele9
		--ShowToClient("GOD", tostring(logstringtele));
		------------------get msg line9
		findfstring9 = logread:sub(j+j2+j3+j4+j5+j6+j7+j8+i9+imsg9, j+j2+j3+j4+j5+j6+j7+j8+i9+imsg9+40);
		ifstring9, jfstring9 =  findfstring9:find("fstring");
		logstringmsg9 = logread:sub(j+j2+j3+j4+j5+j6+j7+j8+i9+imsg9+4,  j+j2+j3+j4+j5+j6+j7+j8+i9+imsg9+ifstring9-5);
		msgstring[9] = logstringmsg9
		if CHECK(9, tp) then
		file:close();
		return;
		end;
		----------------------------------------------------------------------------------------------------------------------------------
		----------------------------------------------------------------------------------------------------------------------------------
		-----------------------------------teleport 10
		logstring10 = logread:sub(j+j2+j3+j4+j5+j6+j7+j8+j9+1);
		i10, j10 = logstring10:find("teleport");
		substring10 = tostring(logstring10:sub(i10,j10+15));
		--ShowToClient("GOD", tostring(substring10));
			------------------get teleport line10
		logstringmsg10 = logread:sub(j+j2+j3+j4+j5+j6+j7+j8+j9+i10, j+j2+j3+j4+j5+j6+j7+j8+j9+i10+75);
		imsg10, jmsg10 =  logstringmsg10:find("msg");
		logstringtele10 = logread:sub(j+j2+j3+j4+j5+j6+j7+j8+j9+i10, j+j2+j3+j4+j5+j6+j7+j8+j9+i10+imsg10-4);
		telestring[10] = logstringtele10
		--ShowToClient("GOD", tostring(logstringtele));
		------------------get msg line10
		findfstring10 = logread:sub(j+j2+j3+j4+j5+j6+j7+j8+j9+i10+imsg10, j+j2+j3+j4+j5+j6+j7+j8+j9+i10+imsg10+40);
		ifstring10, jfstring10 =  findfstring10:find("fstring");
		logstringmsg10 = logread:sub(j+j2+j3+j4+j5+j6+j7+j8+j9+i10+imsg10+4,  j+j2+j3+j4+j5+j6+j7+j8+j9+i10+imsg10+ifstring10-5);
		msgstring[10] = logstringmsg10
		if CHECK(10, tp) then
		file:close();
		return;
		end;
		----------------------------------------------------------------------------------------------------------------------------------
		----------------------------------------------------------------------------------------------------------------------------------
		-----------------------------------teleport 11
		logstring11 = logread:sub(j+j2+j3+j4+j5+j6+j7+j8+j9+j10+1);
		i11, j11 = logstring11:find("teleport");
		substring11 = tostring(logstring11:sub(i11,j11+15));
		--ShowToClient("GOD", tostring(substring11));
		------------------get teleport line11
		logstringmsg11 = logread:sub(j+j2+j3+j4+j5+j6+j7+j8+j9+j10+i11, j+j2+j3+j4+j5+j6+j7+j8+j9+j10+i11+75);
		imsg11, jmsg11 =  logstringmsg11:find("msg");
		logstringtele11 = logread:sub(j+j2+j3+j4+j5+j6+j7+j8+j9+j10+i11, j+j2+j3+j4+j5+j6+j7+j8+j9+j10+i11+imsg11-4);
		telestring[11] = logstringtele11
		--ShowToClient("GOD", tostring(logstringtele));
		------------------get msg line11
		findfstring11 = logread:sub(j+j2+j3+j4+j5+j6+j7+j8+j9+j10+i11+imsg11, j+j2+j3+j4+j5+j6+j7+j8+j9+j10+i11+imsg11+40);
		ifstring11, jfstring11 =  findfstring11:find("fstring");
		logstringmsg11 = logread:sub(j+j2+j3+j4+j5+j6+j7+j8+j9+j10+i11+imsg11+4,  j+j2+j3+j4+j5+j6+j7+j8+j9+j10+i11+imsg11+ifstring11-5);
		msgstring[11] = logstringmsg11
		if CHECK(11, tp) then
		file:close();
		return;
		end;
		----------------------------------------------------------------------------------------------------------------------------------
		----------------------------------------------------------------------------------------------------------------------------------
		-----------------------------------teleport 12
		logstring12 = logread:sub(j+j2+j3+j4+j5+j6+j7+j8+j9+j10+j11+1);
		i12, j12 = logstring12:find("teleport");
		substring12 = tostring(logstring12:sub(i12,j12+15));
		--ShowToClient("GOD", tostring(substring12));
		------------------get teleport line12
		logstringmsg12 = logread:sub(j+j2+j3+j4+j5+j6+j7+j8+j9+j10+j11+i12, j+j2+j3+j4+j5+j6+j7+j8+j9+j10+j11+i12+75);
		imsg12, jmsg12 =  logstringmsg12:find("msg");
		logstringtele12 = logread:sub(j+j2+j3+j4+j5+j6+j7+j8+j9+j10+j11+i12, j+j2+j3+j4+j5+j6+j7+j8+j9+j10+j11+i12+imsg12-4);
		telestring[12] = logstringtele12
		--ShowToClient("GOD", tostring(logstringtele));
		------------------get msg line12
		findfstring12 = logread:sub(j+j2+j3+j4+j5+j6+j7+j8+j9+j10+j11+i12+imsg12, j+j2+j3+j4+j5+j6+j7+j8+j9+j10+j11+i12+imsg12+40);
		ifstring12, jfstring12 =  findfstring12:find("fstring");
		logstringmsg12 = logread:sub(j+j2+j3+j4+j5+j6+j7+j8+j9+j10+j11+i12+imsg12+4,  j+j2+j3+j4+j5+j6+j7+j8+j9+j10+j11+i12+imsg12+ifstring12-5);
		msgstring[12] = logstringmsg12
		if CHECK(12, tp)  then
		file:close();
		return;
		end;
		----------------------------------------------------------------------------------------------------------------------------------
		----------------------------------------------------------------------------------------------------------------------------------
		-----------------------------------teleport 13
		logstring13 = logread:sub(j+j2+j3+j4+j5+j6+j7+j8+j9+j10+j11+j12+1);
		i13, j13 = logstring13:find("teleport");
		substring13 = tostring(logstring13:sub(i13,j13+15));
		--ShowToClient("GOD", tostring(substring13));
				------------------get teleport line13
		logstringmsg13 = logread:sub(j+j2+j3+j4+j5+j6+j7+j8+j9+j10+j11+j12+i13, j+j2+j3+j4+j5+j6+j7+j8+j9+j10+j11+j12+i13+75);
		imsg13, jmsg13 =  logstringmsg13:find("msg");
		logstringtele13 = logread:sub(j+j2+j3+j4+j5+j6+j7+j8+j9+j10+j11+j12+i13, j+j2+j3+j4+j5+j6+j7+j8+j9+j10+j11+j12+i13+imsg13-4);
		telestring[13] = logstringtele13
		--ShowToClient("GOD", tostring(logstringtele));
		------------------get msg line13
		findfstring13 = logread:sub(j+j2+j3+j4+j5+j6+j7+j8+j9+j10+j11+j12+i13+imsg13, j+j2+j3+j4+j5+j6+j7+j8+j9+j10+j11+j12+i13+imsg13+40);
		ifstring13, jfstring13 =  findfstring13:find("fstring");
		logstringmsg13 = logread:sub(j+j2+j3+j4+j5+j6+j7+j8+j9+j10+j11+j12+i13+imsg13+4,  j+j2+j3+j4+j5+j6+j7+j8+j9+j10+j11+j12+i13+imsg13+ifstring13-5);
		msgstring[13] = logstringmsg13
		if CHECK(13, tp) then
		file:close();
		return;
		end;
		----------------------------------------------------------------------------------------------------------------------------------
		----------------------------------------------------------------------------------------------------------------------------------
		-----------------------------------teleport 14
		logstring14 = logread:sub(j+j2+j3+j4+j5+j6+j7+j8+j9+j10+j11+j12+j13+1);
		i14, j14 = logstring14:find("teleport");
		substring14 = tostring(logstring14:sub(i14,j14+15));
		--ShowToClient("GOD", tostring(substring14));
		------------------get teleport line14
		logstringmsg14 = logread:sub(j+j2+j3+j4+j5+j6+j7+j8+j9+j10+j11+j12+j13+i14, j+j2+j3+j4+j5+j6+j7+j8+j9+j10+j11+j12+j13+i14+75);
		imsg14, jmsg14 =  logstringmsg14:find("msg");
		logstringtele14 = logread:sub(j+j2+j3+j4+j5+j6+j7+j8+j9+j10+j11+j12+j13+i14, j+j2+j3+j4+j5+j6+j7+j8+j9+j10+j11+j12+j13+i14+imsg14-4);
		telestring[14] = logstringtele14
		--ShowToClient("GOD", tostring(logstringtele));
		------------------get msg line14
		findfstring14 = logread:sub(j+j2+j3+j4+j5+j6+j7+j8+j9+j10+j11+j12+j13+i14+imsg14, j+j2+j3+j4+j5+j6+j7+j8+j9+j10+j11+j12+j13+i14+imsg14+40);
		ifstring14, jfstring14 =  findfstring14:find("fstring");
		logstringmsg14 = logread:sub(j+j2+j3+j4+j5+j6+j7+j8+j9+j10+j11+j12+j13+i14+imsg14+4,  j+j2+j3+j4+j5+j6+j7+j8+j9+j10+j11+j12+j13+i14+imsg14+ifstring14-5);
		msgstring[14] = logstringmsg14
		if CHECK(14, tp) then
		file:close();
		return;
		end;
		----------------------------------------------------------------------------------------------------------------------------------------------------------
		-------------------------------------------------------------------------------------------------------------------------------------------------------------
		-----------------------------------teleport 15
		logstring15 = logread:sub(j+j2+j3+j4+j5+j6+j7+j8+j9+j10+j11+j12+j13+j14+1);
		i15, j15 = logstring15:find("teleport");
		substring15 = tostring(logstring15:sub(i15,j15+15));
		--ShowToClient("GOD", tostring(substring15));
		------------------get teleport line15
		logstringmsg15 = logread:sub(j+j2+j3+j4+j5+j6+j7+j8+j9+j10+j11+j12+j13+j14+i15, j+j2+j3+j4+j5+j6+j7+j8+j9+j10+j11+j12+j13+j14+i15+75);
		imsg15, jmsg15 =  logstringmsg15:find("msg");
		logstringtele15 = logread:sub(j+j2+j3+j4+j5+j6+j7+j8+j9+j10+j11+j12+j13+j14+i15, j+j2+j3+j4+j5+j6+j7+j8+j9+j10+j11+j12+j13+j14+i15+imsg15-4);
		telestring[15] = logstringtele15
		--ShowToClient("GOD", tostring(logstringtele));
		------------------get msg line15
		findfstring15 = logread:sub(j+j2+j3+j4+j5+j6+j7+j8+j9+j10+j11+j12+j13+j14+i15+imsg15, j+j2+j3+j4+j5+j6+j7+j8+j9+j10+j11+j12+j13+j14+i15+imsg15+40);
		ifstring15, jfstring15 =  findfstring15:find("fstring");
		logstringmsg15 = logread:sub(j+j2+j3+j4+j5+j6+j7+j8+j9+j10+j11+j12+j13+j14+i15+imsg15+4,  j+j2+j3+j4+j5+j6+j7+j8+j9+j10+j11+j12+j13+j14+i15+imsg15+ifstring15-5);
		msgstring[15] = logstringmsg15
		if CHECK(15, tp) then
		file:close();
		return;
		end;
		----------------------------------------------------------------------------------------------------------------------------------------------------------
		-------------------------------------------------------------------------------------------------------------------------------------------------------------
		-----------------------------------teleport 16
		logstring16 = logread:sub(j+j2+j3+j4+j5+j6+j7+j8+j9+j10+j11+j12+j13+j14+j15+1);
		i16, j16 = logstring16:find("teleport");
		substring16 = tostring(logstring16:sub(i16,j16+15));
		--ShowToClient("GOD", tostring(substring15));
		------------------get teleport line16
		logstringmsg16 = logread:sub(j+j2+j3+j4+j5+j6+j7+j8+j9+j10+j11+j12+j13+j14+j15+i16, j+j2+j3+j4+j5+j6+j7+j8+j9+j10+j11+j12+j13+j14+j15+i16+75);
		imsg16, jmsg16 =  logstringmsg16:find("msg");
		logstringtele16 = logread:sub(j+j2+j3+j4+j5+j6+j7+j8+j9+j10+j11+j12+j13+j14+j15+i16, j+j2+j3+j4+j5+j6+j7+j8+j9+j10+j11+j12+j13+j14+j15+i16+imsg16-4);
		telestring[16] = logstringtele16
		--ShowToClient("GOD", tostring(logstringtele));
		------------------get msg line16
		findfstring16 = logread:sub(j+j2+j3+j4+j5+j6+j7+j8+j9+j10+j11+j12+j13+j14+j15+i16+imsg16, j+j2+j3+j4+j5+j6+j7+j8+j9+j10+j11+j12+j13+j14+j15+i16+imsg16+40);
		ifstring16, jfstring16 =  findfstring16:find("fstring");
		logstringmsg16 = logread:sub(j+j2+j3+j4+j5+j6+j7+j8+j9+j10+j11+j12+j13+j14+j15+i16+imsg16+4,  j+j2+j3+j4+j5+j6+j7+j8+j9+j10+j11+j12+j13+j14+j15+i16+imsg16+ifstring16-5);
		msgstring[16] = logstringmsg16
		if CHECK(16, tp) then
			file:close();
			return;
		end;
		----------------------------------------------------------------------------------------------------------------------------------------------------------
		-------------------------------------------------------------------------------------------------------------------------------------------------------------
		-----------------------------------teleport 17
		if tp == 17 then
			logstring17 = logread:sub(j+j2+j3+j4+j5+j6+j7+j8+j9+j10+j11+j12+j13+j14+j15+j16+1);
			i17, j17 = logstring17:find("teleport");
			substring17 = tostring(logstring17:sub(i17,j17+15));
			--ShowToClient("GOD", tostring(substring15));
			------------------get teleport line17
			logstringmsg17 = logread:sub(j+j2+j3+j4+j5+j6+j7+j8+j9+j10+j11+j12+j13+j14+j15+j16+i17, j+j2+j3+j4+j5+j6+j7+j8+j9+j10+j11+j12+j13+j14+j15+j16+i17+75);
			imsg17, jmsg17 =  logstringmsg17:find("msg");
			logstringtele17 = logread:sub(j+j2+j3+j4+j5+j6+j7+j8+j9+j10+j11+j12+j13+j14+j15+j16+i17, j+j2+j3+j4+j5+j6+j7+j8+j9+j10+j11+j12+j13+j14+j15+j16+i17+imsg17-4);
			telestring[17] = logstringtele17
			--ShowToClient("GOD", tostring(logstringtele));
			------------------get msg line17
			findfstring17 = logread:sub(j+j2+j3+j4+j5+j6+j7+j8+j9+j10+j11+j12+j13+j14+j15+j16+i17+imsg17, j+j2+j3+j4+j5+j6+j7+j8+j9+j10+j11+j12+j13+j14+j15+j16+i17+imsg17+40);
			ifstring17, jfstring17 =  findfstring17:find("fstring");
			logstringmsg17 = logread:sub(j+j2+j3+j4+j5+j6+j7+j8+j9+j10+j11+j12+j13+j14+j15+j16+i17+imsg17+4,  j+j2+j3+j4+j5+j6+j7+j8+j9+j10+j11+j12+j13+j14+j15+j16+i17+imsg17+ifstring17-5)
			msgstring[17] = logstringmsg17
			file:close();
			return
		end;
		
return			
end;

return