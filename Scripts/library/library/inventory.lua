function hasItem(name)
	local invList = GetInventory();
		for item in invList.list do
			if (item.Name == name) then
				return true;
			end;
		end;
	return false;
end;
-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------
function hasItemByName(name)
	local invList = GetInventory();
		for item in invList.list do
			if (item.Name == name) then
				return true;
			end;
		end;
	return false;
end;
-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------
function hasItemById(id)
	local invList = GetInventory();
		for item in invList.list do
			if (item.displayId == id) then
				return true;
			end;
		end;
	return false;
end;
-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------
function getItemByName(name)
local invList = GetInventory();
	for item in invList.list do
		if (item.Name == name) then
			return item;
		end;
	end;
	return nil;
end;
-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------
function AddToBuy(id,count)
GetNormalNPCExchangeManager():AddBuyByID(id,count);
end
-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------
function FinishBuy()
GetNormalNPCExchangeManager():RequestBuyItems();
Sleep(300);
GetNormalNPCExchangeManager():RequestShopUIClose();
end
-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------
function buy_SS_Goddard()
	moveDistance = 30;
	Sleep(2000)
	SetPause(true);
	-- move to supplier
	MoveTo(147729.109375, -57257.609375, -2777.6547851563, moveDistance);
	MoveTo(147720.078125, -58113.78515625, -2977.6042480469, moveDistance);
	MoveTo(148895.25, -58193.9296875, -2977.6042480469, moveDistance);
	MoveTo(149215.5, -57891.3046875, -2977.6042480469, moveDistance);
	MoveTo(149099.859375, -57666.52734375, -2964.6000976563, moveDistance);
	MoveTo(149286.40625, -57398.8828125, -2964.6000976563, moveDistance);
	Sleep(1000)
	--buy
	TargetNpc("Liesel", 31263)
	Sleep(2000)
	Talk();
	Sleep(2000)
	Click("menu_select?ask=-1&reply=1", "Buy supplies.")
	Sleep(2000)
	if isFighter then
		AddToBuy(1466, 5000) --- a grade ss, 5k
	end
	if isMage then
		AddToBuy(3951, 1400) --- a grade ss, 1.4k
	end
	Sleep(2000);
	AddToBuy(736, 2); --soe
	Sleep(2000)
	FinishBuy()
	Sleep(2000)
	--move back to center
	MoveTo(149099.859375, -57666.52734375, -2964.6000976563, moveDistance);
	MoveTo(149215.5, -57891.3046875, -2977.6042480469, moveDistance);
	MoveTo(148895.25, -58193.9296875, -2977.6042480469, moveDistance);
	MoveTo(147720.078125, -58113.78515625, -2977.6042480469, moveDistance);
	MoveTo(147729.109375, -57257.609375, -2777.6547851563, moveDistance);
	MoveTo(147707, -56232, -2786, moveDistance);
	Sleep(2000)
end
-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------
function need_ASS()
ASS = "Soulshot (A-grade)";
ABSS = "Blessed Spiritshot (A-grade)"
	if isFighter and not hasItem(ASS) and getItemByName("Adena").ItemNum > 500000 then
			return true
	elseif isMage and not hasItem(ABSS) and getItemByName("Adena").ItemNum > 500000 then
			return true
	end
	return false
end 
-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------
function buy_SOE_Goddard()
	MoveTo(147729.109375, -57257.609375, -2777.6547851563, moveDistance);
	MoveTo(147720.078125, -58113.78515625, -2977.6042480469, moveDistance);
	MoveTo(148895.25, -58193.9296875, -2977.6042480469, moveDistance);
	MoveTo(149215.5, -57891.3046875, -2977.6042480469, moveDistance);
	MoveTo(149099.859375, -57666.52734375, -2964.6000976563, moveDistance);
	MoveTo(149286.40625, -57398.8828125, -2964.6000976563, moveDistance);
	Sleep(2000)
	--buy
	TargetNpc("Liesel", 31263)
	Talk();
	Sleep(2000)
	Click("menu_select?ask=-1&reply=1", "Buy supplies.")
	Sleep(2000)
	AddToBuy(736, 20); --soe
	Sleep(2000)
	FinishBuy()
	Sleep(2000)
	--move back to center
	MoveTo(149099.859375, -57666.52734375, -2964.6000976563, moveDistance);
	MoveTo(149215.5, -57891.3046875, -2977.6042480469, moveDistance);
	MoveTo(148895.25, -58193.9296875, -2977.6042480469, moveDistance);
	MoveTo(147720.078125, -58113.78515625, -2977.6042480469, moveDistance);
	MoveTo(147729.109375, -57257.609375, -2777.6547851563, moveDistance);
	MoveTo(147707, -56232, -2786, moveDistance);
	Sleep(2000)
end
-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------
function need_SOE() --check at center of goddard, buy Soe and return to center, (then takebuffs)
	if getItemByName("Scroll of Escape").ItemNum < 15 then
		buy_SOE_Goddard()
	else return false
	end
	return
end
function checkSOE() --check at center of goddard, buy Soe and return to center, (then takebuffs)
	if getItemByName("Scroll of Escape").ItemNum < 15 then
		buy_SOE_Goddard()
	else return false
	end
	return
end
-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------
 function activateASS() 
 		ActivateSoulShot(1466, true); -- Soulshot: A Grade
		ActivateSoulShot(3951, true); -- Blessed Spiritshot (A-grade)
 end
 -------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------
 function activateNSS() 
 		ActivateSoulShot(1835, true); -- Soulshot: no Grade
		ActivateSoulShot(3947, true); -- Blessed Spiritshot (no-grade)
 end
 