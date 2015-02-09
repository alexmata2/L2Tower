---------------------
-- Summoner AIO v4.3 --
---------------------

-- Number of servitors you can have; Pre-Awakened = 1; Post-Awakened 2-4 (You should know)
RequiredSummonsCount = 2;

-- The name of the type of shots that your servitor needs to use.
NameOfShots = "Beast Soulshot";

-- The skill ID of the servitor that you would like summoned. Full Skill List: http://pastebin.com/raw.php?i=rceSe6SW
SummonServitorSkillId = 11340;

-- Normal attack ID for pets/servitors. 16 for Pets. 22 for Servitors (Pre-Awakened) and 1099 for Servitors (Post-Awakened)
AttackMobID = 1099;

-- If you want your pet/servitors to attack using spells then add them below, Full Skill List: http://goo.gl/XWF62y
FirstSkillID = 1140; -- If you don't want to use spells set it to -1
SecondSkillID = 1141; -- If you don't want to use spells set it to -1

-- Toggle to use marks before or after the servitor attacks.
MarkAfterServitorAttack = true; -- Set true to mark after, Set false to mark before.
FirstMarkSkillID = 11259; -- Mark of Weakness = 11259, Set -1 if you don't want to mark the monsters.
SecondMarkSkillID = 11262; -- Mark of Trick = 11262, Set -1 if you don't want to mark the monsters.
ThirdMarkSkillID = 11260; -- Mark of Void = 11260, Set -1 if you don't want to mark the monsters.
FourthMarkSkillID = 11261; -- Mark of Plague = 11261, Set -1 if you don't want to mark the monsters.
FifthMarkSkillID = 11298; -- Mark of Fire = 11298, Set -1 if you don't want to mark the monsters.

-- If you would like to cast the mark retriever skill after using marks set this to true, otherwise false will not cast it.
MarkRetreiver = true;

-- Optional buffs (You don't need to fill in Aura, Transfer Pain or Servitor Share) Full Skill List: L2Tower\config\S__Lineage_II_System_\skills.txt
FirstBuffSkillID = 11303; -- Mass Servitor Magic Barrier = 11303, Set -1 if you don't want to mark the monsters.
SecondBuffSkillID = 11304; -- Mass Servitor Haste = 11304, Set -1 if you don't want to mark the monsters.
ThirdBuffSkillID = 11305; -- Mass Servitor Shield = 11305, Set -1 if you don't want to mark the monsters.
FourthBuffSkillID = 11306; -- Mass Servitor Empower = 11306, Set -1 if you don't want to mark the monsters.
FifthBuffSkillID = 11307; -- Mass Servitor Might = 11307, Set -1 if you don't want to mark the monsters.
SixthhBuffSkillID = 11308; -- Mass Servitor Wind Walk = 11308, Set -1 if you don't want to mark the monsters.
SeventhBuffSkillID = 11349; -- Greater Servitor Might = 11349, Set -1 if you don't want to mark the monsters.
EighthBuffSkillID = 11297; -- Blessing of the Giants = 11297, Set -1 if you don't want to mark the monsters.

-- Ninth Buff is reserved for 60 second buff(s) only as it will cast every 60 seconds. If you need to add more 60 second skills then add them in the code...
NinthBuffSkillID = 11310; -- Mass Servitor Ultimate Defence = 11310, Set -1 if you don't want to mark the monsters.

-- If you'd like your servitor to use a self skill like Death Whisper then set to true.
ServitorSelfSkill = true;

-- The Skill ID of the spell that you want your servitor to cast on itself.
ServitorSelfSkillID = 11348; -- Servitor Death Whisper = 11348

-- At what HP percent should the pet/servitor(s) be healed. Put -1 if you don't want your pet/servitor(s) to be automatically healed.
MinHealthPercent = 70;

-- Maximum range to pet/servitor(s) HP checking.
MaxDistance = 800;

-- Toggle to switch back to previous target after healing or not.
SwitchBack = true;

-- At what MP percent should you be in order to use Transfer Pain.
WhenManaPercentIsOver = 50; -- Set to 101 if you don't want to use Transfer Pain or set it to 0 if you want to try and use it all the time.

-- Move to near servitor(s) are or not. This does not include following them in case they need heal and out of range.
MoveNearServitors = false;

-- Stay in/on the spot where you activate/initiate the script or not.
StayOnSpot = false; -- If you set StayOnSpot to true then MoveNearServitors will be ignored.

-- A toggle to enable the "Defend" skill for your servitors instead of being set to passive.
Defend = false;

-- The name of the crystals used for summoning, if you don't have any crystals it won't try and summon shots.
CrystalNameCount = "Crystal (R-grade)";

---------------------


function isTransferPainNeedActivation()
	if (me:GetMpPercent() > WhenManaPercentIsOver) then
		return true;
	end;
	return false;
end;

function GetSummonCount()
	local petlistaround = GetPetList();
	local count = 0;
	for Apet in petlistaround.list do
		if (Apet:GetNickName() == me:GetName()) then
			count = count +1;
		end;
	end;
	return count;
end;

function GetItemAmountByName(name)
	local invList = GetInventory();
	for item in invList.list do
		if (item.Name == name) then
			ShotsDisId = item.displayId;
			return item.ItemNum;
		end;
	end;
	return 0;
end;

Old = nil;
ShotsActivated = false;
DefendActivated = false;
MoveStamp = GetTime();
ScriptTargetId = 0;
CoordinateDeviationFromTarget = 100; -- If your char is far from your Servitor that need heal it will try to move near it by approximation to its current location that depend on the CoordinateDeviationFromTarget
StartLocation = GetMe():GetLocation();
BuffTimestamp = 0;
SmallBuffTimestamp = 0;

function CastHeal(skillc,tar)
	if (skillc ~= nil) and (tar ~= nil) then
		if (tar:GetDistance() > 600) and (tar:GetDistance() < 4000) then
			if MoveNearServitors then
				loc = tar:GetLocation();
				lX = loc.X + math.random(-CoordinateDeviationFromTarget, CoordinateDeviationFromTarget);
				lY = loc.Y + math.random(-CoordinateDeviationFromTarget, CoordinateDeviationFromTarget);
				MoveToNoWait(lX, lY, loc.Z);
				MoveStamp = GetTime();
			else
				MoveToUserWithDistance(tar,500,50,true);
			end;
			Sleep(1000);
			return false;
		else
			if SwitchBack and (GetTarget() ~= nil) and not ((GetTarget():IsSummon()) and (GetTarget():GetNickName() == me:GetName())) then
				Old = GetTarget();
			end;
			if ((GetTarget() == nil) or not (GetTarget():GetId() == tar:GetId())) and not (ScriptTargetId == tar:GetId()) then
				ClearTargets();
				TargetRaw(tar:GetId());
				ScriptTargetId = tar:GetId();
				Sleep(700);
			end;
			NeedReAttack = 0;
			repeat
				UseSkillRaw(skillc.skillId,false,false);
				Sleep(500);
				while me:IsUsingMagic() do
					Sleep(100);
				end;
				if (not tar:IsAttacking()) then
					--Sleep(500);
					NeedReAttack = NeedReAttack +1;
				end;
			until (tar == nil) or (not tar:IsValid()) or (tar:IsAlikeDeath()) or (tar:GetHpPercent() > MinHealthPercent) or (GetTarget() == nil) or not (GetTarget():GetId() == tar:GetId()) or (NeedReAttack > 2)

			if (Old ~= nil) then
				local RefreshedOld = GetUserById(Old:GetId());
				if (RefreshedOld ~= nil) and (RefreshedOld:IsValid()) and RefreshedOld:CanSeeMe() and not RefreshedOld:IsAlikeDeath() then
					ClearTargets();
					TargetRaw(RefreshedOld:GetId());
					ScriptTargetId = RefreshedOld:GetId();
					Old = nil;
				else
					ClearTargets();
					ScriptTargetId = 0;
					Old = nil;
				end;
			elseif SwitchBack then
				ClearTargets();
				ScriptTargetId = 0;
			end;
		end;
	end;
end;

function PetBelongsToMe(pet)
	if me:GetName() == pet:GetNickName() then
		return true;
	end;
	return false;
end;

function GetServitorHealSkill()
	ServitorHealSkill = nil;
	ServitorHealSkill = MySkills:FindById(11302); -- Major Servitor heal
	if (ServitorHealSkill == nil) or not ServitorHealSkill:IsSkillAvailable() then
		ServitorHealSkill = MySkills:FindById(1127); -- Servitor Heal
	end;

	if (ServitorHealSkill == nil) or not ServitorHealSkill:IsSkillAvailable() then
		ServitorHealSkill = MySkills:FindById(11755); -- Radiant Heal
	end;

	if (ServitorHealSkill == nil) or not ServitorHealSkill:IsSkillAvailable() then
		ServitorHealSkill = MySkills:FindById(11756); -- Panic Heal
	end;

	if (ServitorHealSkill == nil) or not ServitorHealSkill:IsSkillAvailable() then
		ServitorHealSkill = MySkills:FindById(1218); --Greater Battle Heal
	end;

	if (ServitorHealSkill == nil) or not ServitorHealSkill:IsSkillAvailable() then
		ServitorHealSkill = MySkills:FindById(1015); -- battle heal
	end;
end;

function MarkMonster()
	if (FirstMarkSkillID > 0) then
		UseSkillRaw(FirstMarkSkillID,false,false);
		Sleep(150);
	end;
	if (SecondMarkSkillID > 0) then
		UseSkillRaw(SecondMarkSkillID,false,false);
		Sleep(150);
	end;
	if (ThirdMarkSkillID > 0) then
		UseSkillRaw(ThirdMarkSkillID,false,false);
		Sleep(150);
	end;
	if (FourthMarkSkillID > 0) then
		UseSkillRaw(FourthMarkSkillID,false,false);
		Sleep(150);
	end;
	if (FifthMarkSkillID > 0) then
		UseSkillRaw(FifthMarkSkillID,false,false);
		Sleep(150);
	end;
	if (MarkRetreiver) then
		if (FirstMarkSkillID > 0) or (SecondMarkSkillID > 0) or (ThirdMarkSkillID > 0) or (FourthMarkSkillID > 0) or (FifthMarkSkillID > 0) then
			UseSkillRaw(11271,false,false);
			Sleep(150);
		end;
	end;
end;

function MoveToUserWithDistance(user,Distance,Diviation,GetClosest)
	if (GetMe() ~= nil) and (user ~= nil) and not ((user:GetDistance() > Distance -(Diviation/2)) and (user:GetDistance() < Distance + (Diviation/2))) and (user:GetDistance() < 5000) then
		local MyLoc = GetMe():GetLocation();
		local UserLoc = user:GetLocation();
		local YQ = MyLoc.Y;
		local YP = UserLoc.Y;
		local XQ = MyLoc.X;
		local XP = UserLoc.X;
		local xdif = XQ-XP;
		local ydif = YQ-YP;
		if (xdif == 0) then
			xdif = 1;
		end;
		if (ydif == 0) then
			ydif = 1;
		end;
		local Mp = ydif/xdif ; -- the inclination of the line
		if ((-2*XP-2*Mp*Mp*XP)*(-2*XP-2*Mp*Mp*XP) -4*(Mp*Mp+1)*(Mp*Mp*XP*XP + XP*XP-Distance*Distance) > 0) then
			undersqrt = (-2*XP-2*Mp*Mp*XP)*(-2*XP-2*Mp*Mp*XP) -4*(Mp*Mp+1)*(Mp*Mp*XP*XP + XP*XP-Distance*Distance);
		else
			undersqrt = (-2*XP-2*Mp*Mp*XP)*(-2*XP-2*Mp*Mp*XP) -4*(Mp*Mp+1)*(Mp*Mp*XP*XP + XP*XP+Distance*Distance);
		end;
		local XN1 = math.ceil((-1*(-2*XP-2*Mp*Mp*XP)+math.sqrt(undersqrt))/(2*(Mp*Mp+1)));
		local XN2 = math.ceil((-1*(-2*XP-2*Mp*Mp*XP)-math.sqrt(undersqrt))/(2*(Mp*Mp+1)));
		local YN1 = math.ceil(YP + Mp*(XN1-XP));
		local YN2 = math.ceil(YP + Mp*(XN2-XP));
		if GetDistanceFloat(MyLoc.X,MyLoc.Y,MyLoc.Z,XN1,YN1,UserLoc.Z) > GetDistanceFloat(MyLoc.X,MyLoc.Y,MyLoc.Z,XN2,YN2,UserLoc.Z) then
			if GetClosest then
				MoveToNoWait(XN2,YN2,50 + MyLoc.Z);
			else
				MoveToNoWait(XN1,YN1,50 + MyLoc.Z);
			end;
		else
			if GetClosest then
				MoveToNoWait(XN1,YN1,50 + MyLoc.Z);
			else
				MoveToNoWait(XN2,YN2,50 + MyLoc.Z);
			end;
		end;
	end;
end;

repeat
	me = GetMe();
	MySkills = GetSkills();
	GetServitorHealSkill();
	NeededHeal = nil;
	if (me ~= nil) and not (me:IsAlikeDeath()) then

		-----------------------CheckingMyServitorsQuantity---------------------------

		if (GetSummonCount() < RequiredSummonsCount) then
			if (GetSummonCount() == 0) then
				ShotsActivated = false;
			end;
			--ShowToClient("SummonerAIO", "Summoning Servitor");
			UseSkillRaw(SummonServitorSkillId,false,false);
			Sleep(1500);
			if (Defend) then
				DefendActivated = false;
			end;
			BuffTimestamp = 0;
			SmallBuffTimestamp = 0;
		end;

		--------------------------Summoning Shots/Opening----------------------------

		if (GetItemAmountByName(NameOfShots) < 1*1000) then
			if (GetItemAmountByName(NameOfShots) == 0) then
				ShotsActivated = false;
			end;
			if (MySkills:FindById(11316) ~= nil) and GetItemAmountByName(CrystalNameCount) > 0 and(MySkills:FindById(11316):IsSkillAvailable()) then
				--ShowToClient("SummonerAIO", "Summoning Shots");
				UseSkillRaw(11316,false,false);
				Sleep(5000);
			elseif (GetItemAmountByName(NameOfShots .. " Compressed Pack") > 0) then
				--ShowToClient("SummonerAIO", "Uncompressing Shots");
				UseItem(ShotsDisId);
				Sleep(5000);
			end;
		end;

		------------------------ActivatingSummonShots-------------------------------

		if not (ShotsActivated) and (GetSummonCount() > 0) and (GetItemAmountByName(NameOfShots) > 5) then
			--ShowToClient("SummonerAIO", "Activating Shots");
			ActivateSoulShot(ShotsDisId, true);
			ShotsActivated = true;
			Sleep(2000);
		end;

		------------------------ActivatingDefend-------------------------------

		if (Defend) and not (DefendActivated) and (GetSummonCount() > 0) then
			--ShowToClient("SummonerAIO", "Activating Defend");
			Command("/useservitorskills Defend");
			DefendActivated = true;
			Sleep(2000);
		end;

		------------------------------Buffs/Skills----------------------------------

		if (MySkills:FindById(1937) ~= nil) and not me:GotBuff(1937) then
			--ShowToClient("SummonerAIO", "Activating Aura");
			UseSkillRaw(1937,false,false);
			Sleep(3000);
		end;

		if not me:GotBuff(11270) and not me:GotBuff(1262) then
			if isTransferPainNeedActivation() then
				--ShowToClient("SummonerAIO", "Activating Transfer Pain");
				if (MySkills:FindById(11270) ~= nil) and not me:GotBuff(11270) then
					UseSkillRaw(11270,false,false);
					Sleep(3000);
				elseif (MySkills:FindById(1262) ~= nil) and not me:GotBuff(1262) then
					UseSkillRaw(1262,false,false);
					Sleep(3000);
				end;
			end;
		end;
		
		if not me:GotBuff(11288) and not me:GotBuff(1557) then
			--ShowToClient("SummonerAIO", "Essential Buffing");
			if (MySkills:FindById(11288) ~= nil) and not me:GotBuff(11288) then
				UseSkillRaw(11288,false,false);
				Sleep(3000);
			elseif (MySkills:FindById(1557) ~= nil) and not me:GotBuff(1557) then
				UseSkillRaw(1557,false,false);
				Sleep(3000);
			end;
		end;
		
		if (BuffTimestamp > BuffTimestamp + 1800000) or (BuffTimestamp == 0) then
			--ShowToClient("SummonerAIO", "Optional Buffing");
			pets = GetPetList();
			BuffTimestamp = GetTime();
			Single = true;
			for pet in pets.list do
				if not pet:IsAlikeDeath() then
					if (Single) then
						Single = false;
						if (FirstBuffSkillID > 0) and (MySkills:FindById(FirstBuffSkillID) ~= nil) and not pet:GotBuff(FirstBuffSkillID) then
							UseSkillRaw(FirstBuffSkillID,false,false);
							Sleep(3000);
						end;
						if (SecondBuffSkillID > 0) and (MySkills:FindById(SecondBuffSkillID) ~= nil) and not pet:GotBuff(SecondBuffSkillID) then
							UseSkillRaw(SecondBuffSkillID,false,false);
							Sleep(3000);
						end;
						if (ThirdBuffSkillID > 0) and (MySkills:FindById(ThirdBuffSkillID) ~= nil) and not pet:GotBuff(ThirdBuffSkillID) then
							UseSkillRaw(ThirdBuffSkillID,false,false);
							Sleep(3000);
						end;
						if (FourthBuffSkillID > 0) and (MySkills:FindById(FourthBuffSkillID) ~= nil) and not pet:GotBuff(FourthBuffSkillID) then
							UseSkillRaw(FourthBuffSkillID,false,false);
							Sleep(3000);
						end;
						if (FifthBuffSkillID > 0) and (MySkills:FindById(FifthBuffSkillID) ~= nil) and not pet:GotBuff(FifthBuffSkillID) then
							UseSkillRaw(FifthBuffSkillID,false,false);
							Sleep(3000);
						end;
						if (SixthhBuffSkillID > 0) and (MySkills:FindById(SixthhBuffSkillID) ~= nil) and not pet:GotBuff(SixthhBuffSkillID) then
							UseSkillRaw(SixthhBuffSkillID,false,false);
							Sleep(3000);
						end;
						if (SeventhBuffSkillID > 0) and (MySkills:FindById(SeventhBuffSkillID) ~= nil) and not pet:GotBuff(SeventhBuffSkillID) then
							UseSkillRaw(SeventhBuffSkillID,false,false);
							Sleep(3000);
						end;
						if (EighthBuffSkillID > 0) and (MySkills:FindById(EighthBuffSkillID) ~= nil) and not pet:GotBuff(EighthBuffSkillID) then
							UseSkillRaw(EighthBuffSkillID,false,false);
							Sleep(3000);
						end;
					end;
				end;
			end;
		end;
		
		if (SmallBuffTimestamp > SmallBuffTimestamp + 600000) or (SmallBuffTimestamp == 0) then
			pets = GetPetList();
			SmallBuffTimestamp = GetTime();
			Single = true;
			for pet in pets.list do
				if not pet:IsAlikeDeath() then
					if (Single) then
						Single = false;
						if (NinthBuffSkillID > 0) and (MySkills:FindById(NinthBuffSkillID) ~= nil) and not pet:GotBuff(NinthBuffSkillID) then
							UseSkillRaw(NinthBuffSkillID,false,false);
							Sleep(3000);
						end;
					end;
				end;
			end;
		end;

		if (MySkills:FindById(11269) ~= nil) and (MySkills:FindById(11269):IsSkillAvailable()) and (GetPartyList():GetCount() > 2) then
			--ShowToClient("SummonerAIO", "Mass Healing Servitors");
			UseSkillRaw(11269,false,false);
			Sleep(12000);
		end;
		
		if not me:GotBuff(1914) and (GetTarget()~= nil) then
			if (GetTarget():IsMonster())then
				if (MySkills:FindById(1914) ~= nil) and (MySkills:FindById(1914):IsSkillAvailable()) then
					UseSkillRaw(1914,false,false); --Savage
					Sleep(150);
				end;
			end;
		end;

		if (me:GetHpPercent() < 50) and (GetTarget()~= nil) then
			if (MySkills:FindById(11274) ~= nil) and not me:GotBuff(11274) then
				if (MySkills:FindById(1912) ~= nil) and (MySkills:FindById(1912):IsSkillAvailable()) then
					UseSkillRaw(1912,false,false); --Disparition
					Sleep(150);
				else
					UseSkillRaw(11274,false,false); --Summon Barrier
					Sleep(300);
				end;
			end;
		end;
		
		-------------------------SelfBuffPets-------------------------------------
		
		if (ServitorSelfSkill == true) then
			pets = GetPetList();
			if (ServitorSelfSkillID > 0) then
				for pet in pets.list do
					if PetBelongsToMe(pet) and not pet:GotBuff(ServitorSelfSkillID) and not pet:IsAlikeDeath() then
						if (MySkills:FindById(ServitorSelfSkillID) ~= nil) and not pet:GotBuff(ServitorSelfSkillID) and (MySkills:FindById(ServitorSelfSkillID):IsSkillAvailable()) then
							UseSkillRaw(ServitorSelfSkillID,false,false); 
						end;
					end;	
				end;
			end;
		end;

		-------------------------ServitorSkills-------------------------------------

		target = GetTarget();

		if (target ~= nil) and (me ~= nil) and target:IsMonster() and (GetSummonCount() > 0) and (target:GetDistance() < 4000) then --and (ScriptTargetId == 0)
			if not (target:IsAlikeDeath()) then
				-- Marks
				if not (MarkAfterServitorAttack) then
					MarkMonster();
				end;
				-- Skill Attacks
				if (FirstSkillID > 0) then
					Action(FirstSkillID,false,false);
					Sleep(150);
				end;
				if (SecondSkillID > 0) then
					Action(SecondSkillID,false,false);
					Sleep(150);
				end;
				-- Generic Summon Attack
				Action(AttackMobID, false, false);
				Sleep(150);
				-- Marks
				if (MarkAfterServitorAttack) then
					MarkMonster();
				end;
			elseif (ScriptTargetId == target:GetId()) then
				ClearTargets();
			end;
		end;

		--------------------------HealingServitors----------------------------------

		if (ServitorHealSkill ~= nil) then
			pets = GetPetList();
			CurrentCriticalHP = MinHealthPercent;
			for pet in pets.list do
				if (pet:GetDistance() < MaxDistance) and PetBelongsToMe(pet) and (pet:GetHpPercent() <= CurrentCriticalHP) and not pet:IsAlikeDeath() then
					NeededHeal = pet;
					CurrentCriticalHP = pet:GetHpPercent();
				end;
			end;
			if (NeededHeal ~= nil) then
				--ShowToClient("SummonerAIO", "Healing Servitors");
				CastHeal(ServitorHealSkill, NeededHeal);
			elseif StayOnSpot then
				if (GetDistanceVector(StartLocation,me:GetLocation()) > 60) and (GetDistanceVector(StartLocation,me:GetLocation()) < 2500) then
					MoveToNoWait(StartLocation);
				end;
			elseif MoveNearServitors then
				target = GetTarget();
				if not IsPaused() and (target ~= nil) and not (target:IsAlikeDeath()) and (target:GetDistance() < 8000) and (target:GetDistance() > 600) and (MoveStamp + 4000 < GetTime()) then
					loc = GetTarget():GetLocation();
					lX = loc.X + math.random(-300, 300);
					lY = loc.Y + math.random(-300, 300);
					MoveToNoWait(lX, lY, loc.Z);
					MoveStamp = GetTime();
				end;
			end;
		end;
	end;
	Sleep(500);
until false;