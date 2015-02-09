ShowToClient(tostring(os.date("%X")),"CLASS Self Buffs ON",3);

me = GetMe();

-- CONFIG
DelaySleepSkill = 500;
DelaySleepRepeat = 1000;


SelfUdPercentTyrr = 65;
SelfUdPercentOthell = 65;
SelfUdPercentYul = 65;
SelfUdPercentNewTyrr = 65;
SelfUdPercentNewFeoh = 65;
SelfUdPercentTank = 40;
SelfUdPercentTankCount = 3;
SelfUdPercentHealer = 75;
SelfUdPercentIss = 75;
SelfUdPercentPT = 65;

-- TYRR Skills
ForceofNatureID = 10276;	
BerserkerID = 10274;	
BoostID = 10289;	
SecondWindID = 10270;
DuelistSpiritID = 297;	
FeralBearCryID = 10291;	
FeralOgreCryID = 10292;	
FeralPumaCryID = 10293;	
FeralRabbitCryID = 10294;	
HawkCryID = 10295;	
MomentumChargeID = 10280;	
DefaultTyrrSelfBuff = FeralBearCryID; -- Default self buff for tyrr (FeralBearCryID, FeralOgreCryID, FeralPumaCryID, FeralRabbitCryID, HawkCryID)

-- ARCHER Skills
VengefulSniperID = 10950;
DeadEyeStanceID = 10757;
RapidFireStanceID = 10758;
SniperStanceID = 10759;
MindsEyeID = 10783;
SnipingID = 10810;
RapidFirePositionID = 10856;
HawkEyeID = 10903; 
QuickFireID = 10779;
FinalUltimateEscapeID = 10776;
BattleRhapsodyID = 11544;
RapidShotID = 99;	

-- DAGGER Skills
CriticalAdventuresID = 10562;	
FinalUltimateEvasionID = 10520;
AngelofDeathID = 10531;	
CloneAttackID = 10532;	
ElusiveMirageID = 10558;
MaximumBlowID = 10560;
MortalStrikeID = 410;
CriticalProwessID = 10656;	

-- TANK Skills
AvengersFrenzyID = 10099;
PaladinsFrenzyID = 10098;	
GuardiansFrenzyID = 10100;	
TemplarsFrenzyID = 10101;	
SpikeShieldID = 10021;	
FinalUltimateDefenseID = 10017;	
ProtectionofFaithID = 10019;	
TrueVanguardID = 10244;	

-- ISS Skills
DanceofMightID = 11606;	
BattleRhapsodyDanceID = 11614;	
BattleRhapsodyID = 11544;	
SoulCryID = 1001;
ShieldSongID = 11605;
SongofProtectionID = 11613;

-- Healer Skills
EmblemofSalvationID = 11826;	
MassManaGainID = 11852;
GiantsFavorID = 11772;	
CelestialPartyProtectionID = 11759;
DivinePrayerID = 11851;	

-- NEW TYRR
AirLightID = 30511;
FluidWeaveID = 30514;
SteelMindID = 30520;
DistortionID = 30512;

-- new feoh
EyeoftheStormID = 30016;
SquallID = 30017;
SayhasFuryID = 30020;-- ud



-- Race Skills
SavageID = 1914;


-- SKILL CHECK TO USE
function CheckTargetCanBeUsedSkill(target)
    if (target ~= nil) and not (target:IsAlikeDeath()) and not (target:IsMe()) and not (target:IsMyPartyMember()) then
        if (target:IsMonster()) or (target:IsPlayer()) then
            return true;
        end;
    end;
    return false;
end;

-- CAN I USE SKILL
function SkillUsageChecker(skillID)
	local Skill = GetSkills():FindById(skillID);
	local MyTarget = GetTarget();
	if (CheckTargetCanBeUsedSkill(MyTarget)) then
        if (Skill ~= nil) and (Skill:IsSkillAvailable()) and (Skill:CanBeUsed()) then 
            UseSkillRaw(skillID, false, false);
            Sleep(DelaySleepSkill);
        end;	
	end;	
end;

-- CHECK OF SKILL IF EXISTS
function SkillExistChecker(skillID)
    local Skill = GetSkills():FindById(skillID);
    if (Skill ~= nil) then	
        return true
	end;
    return false;	
end;


function SelfBuff(skillID)
	local Me = GetMe();
	if SkillExistChecker(skillID) then
       if not Me:GotBuff(skillID) then
          SkillUsageChecker(skillID);
          Sleep(DelaySleepSkill);
       end;
	end;	
end;


function SelfUD(skillID,percent)
	local Me = GetMe();
	if(math.floor(Me:GetHpPercent())<=percent) and not (Me:IsAlikeDeath()) then
       if not (Me:GotBuff(CelestialPartyProtectionID)) then	
          SkillUsageChecker(skillID);
          Sleep(DelaySleepSkill);
       end;
	end;
end;



--SayhasSeer


function SayhasSeerUseBuff()
	local Me = GetMe();
	if (Me ~= nil) and not (Me:IsAlikeDeath()) then
        SelfUD(SayhasFuryID,SelfUdPercentNewFeoh);
        SelfBuff(SquallID)
        SelfBuff(EyeoftheStormID)
	end;
end;


-- AERO --
function AeroRaceSkillCheck(skillID)
    local Me = GetMe();
    local MyParty = GetPartyList();
	for member in MyParty.list do
        if (member:GetDistance() < 900) and not member:GotBuff(skillID) and not member:IsAlikeDeath() then
            return true;
        end;
	end;
	if not Me:GotBuff(skillID) and not Me:IsAlikeDeath() then
       return true;
	end;
    return false;
end;

function AeroSelfSalvation()
	local Me = GetMe();
	local Skill = GetSkills():FindById(EmblemofSalvationID);
	if (Skill ~= nil) and (Skill:IsSkillAvailable()) and (Skill:CanBeUsed()) and not Me:IsAlikeDeath() then 
        Target(Me);
        UseSkillRaw(EmblemofSalvationID, false, false);
        Sleep(DelaySleepSkill);
        ClearTargets();
        CancelTarget(true);
	end;	
end;

function AeroUseBuff()
	local Me = GetMe();
	if (Me ~= nil) and not (Me:IsAlikeDeath()) then
        local myClass = Me:GetClass();
        if (myClass == 180) or (myClass == 181) then -- AeoreEvasSaint ,AeoreShillienSaint
            if AeroRaceSkillCheck(MassManaGainID) then
               SkillUsageChecker(MassManaGainID); 
            end;
        elseif (myClass == 179) then --AeoreCardinal--
                if AeroRaceSkillCheck(DivinePrayerID) then
                   SkillUsageChecker(DivinePrayerID); 
                end;
            end;
        if not Me:GotBuff(EmblemofSalvationID) then
           AeroSelfSalvation();
        end;
        SelfUD(GiantsFavorID,SelfUdPercentHealer);
	end;
end;

-- ISS --

function IssBR(skillID)
	local Me = GetMe();
	if not (Me:GotBuff(BattleRhapsodyID)) and not (Me:GotBuff(BattleRhapsodyDanceID)) then	
       SkillUsageChecker(skillID);
	end;
end;

function IssUseBuff()
	local Me = GetMe();
	if (Me ~= nil) and not (Me:IsAlikeDeath()) then
	    local myClass = Me:GetClass();--171, IssHierophant--172, IssSwordMuse--174, IssDominator--
        if (myClass == 173) then -- IssSpectralDancer
            if not Me:GotBuff(BattleRhapsodyDanceID) then
               IssBR(BattleRhapsodyDanceID);
            end;
            SelfBuff(DanceofMightID)
    elseif (myClass == 175) then -- Doomcryer
            SelfBuff(SoulCryID)
    elseif (myClass == 175) then --Sword Muse
            SelfBuff(ShieldSongID)
            SelfUD(SongofProtectionID,SelfUdPercentIss)
        end;
        if SkillExistChecker(BattleRhapsodyID) then
           if not Me:GotBuff(BattleRhapsodyID) then
              IssBR(BattleRhapsodyID);
           end;
        end;
        SelfBuff(SavageID)
	end;
end;

-- TANK --
function CheckPartyCountWithLowHP()
	local MyParty = GetPartyList();
	local PeopleInParty = 0;
	for member in MyParty.list do
        if (member:GetDistance() < 1000) and not ( member:IsAlikeDeath()) and (math.floor(member:GetHpPercent())<=SelfUdPercentPT) then
            PeopleInParty = PeopleInParty + 1;
        end;
	end;
	if (PeopleInParty > SelfUdPercentTankCount) then
        return true;
	end;
	return false;
end;


function TankUseBuff()
	local Me = GetMe();
	if (Me ~= nil) and not (Me:IsAlikeDeath()) then
        SelfUD(FinalUltimateDefenseID,SelfUdPercentTank);
        if (CheckPartyCountWithLowHP()) then
            SelfUD(ProtectionofFaithID);
        end;
        SelfBuff(SpikeShieldID)
        SelfBuff(TrueVanguardID)
        if (Me:GetClass() == 151) then	-- Sigel Shillien Templar 
            SelfBuff(TemplarsFrenzyID)
    elseif (Me:GetClass() == 148) then -- SigelPhoenixKnight
            SelfBuff(PaladinsFrenzyID)
    elseif (Me:GetClass() == 149) then -- SigelHellKnight
            SelfBuff(AvengersFrenzyID)
    elseif (Me:GetClass() == 150) then -- SigelEvasTemplar
            SelfBuff(GuardiansFrenzyID)
        end;
	end;
end;


-- OTHELL --

function OthellUseBuff()
	local Me = GetMe();
	if (Me ~= nil) and not (Me:IsAlikeDeath()) then
        local myClass = Me:GetClass(); --159,OthellWindRider--
        if (myClass == 158) then -- OthellAdventurer 
            SelfBuff(CriticalAdventuresID)
            SelfBuff(MaximumBlowID)
    elseif (myClass == 160) then -- GH 
            SelfBuff(MortalStrikeID)
            SelfBuff(CriticalProwessID)
        end;
        SelfUD(FinalUltimateEvasionID,SelfUdPercentOthell);
        SelfBuff(AngelofDeathID)
        SelfBuff(SavageID)
	end;
end;


-- TYRR --
function GetMyMomentumLVL() -- Class MAX Momentum level
	local me = GetMe();
	if (me:GetClass() == 155) or (me:GetClass() == 152) then
        return 15; 
	elseif (me:GetClass() == 157) or (me:GetClass() == 156) or (me:GetClass() == 154) or (me:GetClass() == 153) then
            return 10; 
	    end;
	return 0;
end; 

function TyrrUseBuff()
	local Me = GetMe();
	if (Me ~= nil) and not (Me:IsAlikeDeath()) then
        MyMomentum = Me:GetBuff(4271);
        MyMomentumLVL = GetMyMomentumLVL();
        if (MyMomentum == nil) or (MyMomentum.skillLvl <MyMomentumLVL) then
            SelfBuff(ForceofNatureID)
        end;
        local myClass = Me:GetClass();
        if (myClass == 152) or (myClass == 156) or (myClass == 153) then -- Maestro 156, Duelist 152, Dreadnought 153, Doombringer 157, GrandKhavatari 155, Titan 154
            SelfUD(BerserkerID,SelfUdPercentTyrr);
		end;
        if (myClass == 152) then -- Maestro 156, Duelist 152, Dreadnought 153, Doombringer 157, GrandKhavatari 155, Titan 154
            SelfBuff(DuelistSpiritID)
        end;
        if not Me:GotBuff(FeralBearCryID) and not (Me:GotBuff(FeralOgreCryID)) and not (Me:GotBuff(FeralPumaCryID)) and not (Me:GotBuff(HawkCryID)) and not (Me:GotBuff(FeralRabbitCryID)) then
           SkillUsageChecker(DefaultTyrrSelfBuff);
        end;
        SelfBuff(MomentumChargeID)
        SelfBuff(SecondWindID)
        SelfBuff(BoostID)
        SelfBuff(SavageID)
	end;
end;


-- YUL --
function YulUseBuff()
	local Me = GetMe();
	if (Me ~= nil) and not (Me:IsAlikeDeath()) then
        local myClass = Me:GetClass();
        SelfUD(FinalUltimateEscapeID,SelfUdPercentYul);
        if (myClass == 162) then -- Yul Sagittarius
            SelfBuff(SnipingID)
    elseif (myClass == 163) then -- Yul MoonlightSentinel
            SelfBuff(RapidFirePositionID)
    elseif (myClass == 164) then -- Yul GhostSentinel
            SelfBuff(HawkEyeID)
    elseif (myClass == 165) then -- Yul Trickster
            SelfBuff(VengefulSniperID)
        end;
        if not Me:GotBuff(RapidFireStanceID) and not (Me:GotBuff(DeadEyeStanceID)) and not (Me:GotBuff(SniperStanceID)) then
           SkillUsageChecker(RapidFireStanceID);
        end;
        SelfBuff(QuickFireID)
        SelfBuff(MindsEyeID)
        SelfBuff(RapidShotID)
        SelfBuff(SavageID)
	end;
end;


function EvisceratorUseBuff()
	local Me = GetMe();
	if (Me ~= nil) and not (Me:IsAlikeDeath()) then
       SelfUD(SteelMindID,SelfUdPercentNewTyrr);
       --SelfBuff(FluidWeaveID)
       SelfBuff(DistortionID)
       SelfBuff(AirLightID)
	end;
end;



-- LAUNCH FOR EACH CLASS
if (me:GetClass() == 189) then
	repeat
    SayhasSeerUseBuff();
    Sleep(DelaySleepRepeat);
	until false;
end;

if (me:GetClass() == 188) then
	repeat
    EvisceratorUseBuff();
    Sleep(DelaySleepRepeat);
	until false;
end;

if (me:GetClass() == 162) or (me:GetClass() == 163) or (me:GetClass() == 164) or (me:GetClass() == 165) then
	repeat
    YulUseBuff();
    Sleep(DelaySleepRepeat);
	until false;
end;


if (me:GetClass() == 179) or (me:GetClass() == 180) or (me:GetClass() == 181) then
	repeat
    AeroUseBuff();
    Sleep(DelaySleepRepeat);
	until false;
end;

if (me:GetClass() == 152) or (me:GetClass() == 153) or (me:GetClass() == 154) or (me:GetClass() == 155) or (me:GetClass() == 156) or (me:GetClass() == 157) then
	repeat
    TyrrUseBuff();
    Sleep(DelaySleepRepeat);
	until false;
end;


if (me:GetClass() == 158) or (me:GetClass() == 159) or (me:GetClass() == 160) or (me:GetClass() == 161) then
	repeat
    OthellUseBuff();
    Sleep(DelaySleepRepeat);
    until false;
end;

if (me:GetClass() == 148) or (me:GetClass() == 149) or (me:GetClass() == 150) or (me:GetClass() == 151) then
	repeat
    TankUseBuff();
    Sleep(DelaySleepRepeat);
	until false;
end;

if (me:GetClass() == 171) or (me:GetClass() == 172) or (me:GetClass() == 173) or (me:GetClass() == 174) or (me:GetClass() == 175) then
	repeat
    IssUseBuff();
    Sleep(DelaySleepRepeat);
	until false;
end;