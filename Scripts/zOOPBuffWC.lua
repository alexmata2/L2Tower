-- With safeCode isn't supposed to stop script on possible errors, but 
-- will just silently pause working till cause of error go away
local safeCode = false

-- Distance to search for party members to buff
local SearchDistance = 850

-- Check if L2Tower is running (not paused)
local CheckIfRunning = false


-- How long after last buffing will we leave the party?
local LeaveAfterBuffsTimeout = 2*1000 -- 2 sec

-- Names of Leader of party, ISS name, member to kick
local Names = {
	Leader = "urddname",
	Iss = "urissname",
}


-- Will it work with entering/leaving party?
-- Well it's not really just for OOP anymore, but name remained :)
-- Notes: 
-- * If you run script on character specified as "Leader", then Leader will invite buffer when buffs are needed
local OOPMode = true

-- "Wizard", "Warrior" and "Knight" stand for type of Harmony to use
local ClassesContainer = {
	Magic = {
		Buffer = {
				{ 17, "Wizard"},	-- Prophet
				{ 21, "Warrior"},	-- Swordsinger
				{ 34, "Warrior"},	-- Bladedancer
				{ 49, "Wizard" },	-- Orc Mystic
				{ 50, "Wizard" },	-- Orc Shaman
				{ 51, "Warrior" },	-- Overlord
				{ 52, "Wizard" },	-- Warcryer
				{ 98, "Wizard" },	-- Hierophant
				{ 100, "Warrior" },	-- Sword Muse
				{ 107, "Warrior" },	-- Spectral Dancer
				{ 115, "Wizard" },	-- Dominator
				{ 116, "Wizard" },	-- Doomcryer

				{ 144, "Warrior"},	-- Iss Enchanter
				{ 171, "Warrior" },	-- IssHierophant
				{ 172, "Warrior"},	-- IssSwordMuse
				{ 173, "Warrior"},	-- IssSpectralDancer
				{ 174, "Warrior" },	-- IssDominator
				{ 175, "Wizard" },	-- IssDoomcryer
			},
		Healer = {
				{ 15, "Wizard"},	-- Cleric
				{ 16, "Wizard"},	-- Bishop
				{ 29, "Wizard"},	-- Elven Oracle
				{ 30, "Wizard"},	-- Elven Elder
				{ 97, "Wizard"},	-- Cardinal
				{ 42, "Wizard" },	-- Shillien Oracle
				{ 43, "Wizard" },	-- Shillien Elder
				{ 105, "Wizard" },	-- Eva's Saint
				{ 112, "Wizard" },	-- Shillien Saint

				{ 146, "Wizard" },	-- Aeore Healer
				{ 179, "Wizard" },	-- AeoreCardinal
				{ 180, "Wizard" },	-- AeoreEvasSaint
				{ 181, "Wizard" },	-- AeoreShillienSaint 
			},
		Nuker = {
				{ 10, "Wizard"},	-- Human Mystic
				{ 11, "Wizard"},	-- Human Wizard
				{ 12, "Wizard"},	-- Sorceror
				{ 13, "Wizard"},	-- Necromancer
				{ 25, "Wizard"},	-- Elven Mystic
				{ 26, "Wizard"},	-- Elven Wizard
				{ 27, "Wizard"},	-- Spellsinger
				{ 38, "Wizard" },	-- Dark Mystic
				{ 39, "Wizard" },	-- Dark Wizard
				{ 40, "Wizard" },	-- Spellhowler
				{ 94, "Wizard" },	-- Archmage
				{ 95, "Wizard" },	-- Soultaker
				{ 103, "Wizard" },	-- Mystic Muse
				{ 110, "Wizard" },	-- Storm Screamer

				{ 143, "Wizard" },	-- Feoh Wizard
				{ 166, "Wizard" },	-- FeohArchmage
				{ 167, "Wizard" },	-- FeohSoultaker
				{ 168, "Wizard" },	-- FeohMysticMuse
				{ 169, "Wizard" },	-- FeohStormScreamer
				{ 170, "Wizard" },	-- FeohSoulhound 

				{ 183, "Wizard" },	-- ErtheiaWizard
				{ 185, "Wizard" },	-- CloudBreaker
				{ 187, "Wizard" },	-- Stratomancer
				{ 189, "Wizard" },	-- SayhasSeer

			},
		Summoner = {
				{ 14, "Wizard"},	-- Warlock
				{ 28, "Warrior"},	-- Elemental Summoner
				{ 41, "Wizard" },	-- Phantom Summoner
				{ 96, "Wizard" },	-- Arcana Lord
				{ 104, "Warrior" },	-- Elemental Master
				{ 111, "Warrior" },	-- Spectral Master

				{ 145, "Wizard"},	-- Wynn Summoner
				{ 176, "Warrior"},	-- WynnArcanaLord
				{ 177, "Warrior"},	-- WynnElementalMaster
				{ 178, "Warrior"},	-- WynnSpectralMaster
			},
		},


	Physical = {
		Warrior = {
				{ 0, "Warrior"},	-- Human Fighter
				{ 1, "Warrior"},	-- Warrior
				{ 2, "Warrior"},	-- Gladiator
				{ 3, "Warrior"},	-- Warlord
				{ 18, "Warrior"},	-- Elven Fighter
				{ 19, "Warrior"},	-- Elven Knight
				{ 31, "Warrior"},	-- Dark Fighter
				{ 44, "Warrior" },	-- Orc Fighter
				{ 45, "Warrior" },	-- Orc Raider
				{ 46, "Warrior" },	-- Destroyer
				{ 47, "Warrior" },	-- Monk
				{ 48, "Warrior" },	-- Tyrant
				{ 53, "Warrior" },	-- Dwarven Fighter
				{ 56, "Warrior" },	-- Artisan
				{ 57, "Warrior" },	-- Warsmith
				{ 88, "Warrior"},	-- Duelist
				{ 89, "Warrior" },	-- Dreadnought
				{ 113, "Wizard" },	-- Titan
				{ 114, "Warrior" },	-- Grand Khavatari
				{ 118, "Warrior" },	-- Maestro
				{ 123, "Warrior" },	-- Male Soldier
				{ 124, "Warrior" },	-- Female Soldier
				{ 125, "Warrior" },	-- Dragoon
				{ 126, "Warrior" },	-- Warder
				{ 127, "Warrior" },	-- Berserker
				{ 128, "Warrior" },	-- Male Soul Breaker
				{ 129, "Warrior" },	-- Female Soul Breaker
				{ 131, "Warrior" },	-- Doombringer
				{ 132, "Warrior" },	-- Male Soul Hound
				{ 133, "Warrior" },	-- Female Soul Hound
				{ 135, "Warrior" },	-- Inspector
				{ 136, "Warrior" },	-- Judicator

				{ 140, "Warrior" },	-- Tyrr Warrior
				{ 152, "Warrior" },	-- TyrrDuelist
				{ 153, "Warrior" },	-- TyrrDreadnought
				{ 154, "Warrior" },	-- TyrrTitan
				{ 155, "Warrior" },	-- TyrrGrandKhavatari
				{ 156, "Warrior" },	-- TyrrMaestro
				{ 157, "Warrior" },	-- TyrrDoombringer 
				
				{ 182, "Warrior" },	-- ErtheiaFighter
				{ 184, "Warrior" },	-- Marauder
				{ 186, "Warrior" },	-- Ripper
				{ 188, "Warrior" },	-- Eviscerator

			},
		Dagger = {
				{ 7, "Warrior"},	-- Rogue
				{ 8, "Warrior"},	-- Treasure Hunter
				{ 22, "Warrior"},	-- Elven Scout
				{ 23, "Warrior"},	-- Plainswalker
				{ 35, "Warrior"},	-- Assassin
				{ 36, "Warrior"},	-- Abyss Walker
				{ 54, "Warrior" },	-- Scavenger
				{ 55, "Warrior" },	-- Bounty Hunter
				{ 93, "Warrior"},	-- Adventurer
				{ 101, "Warrior" },	-- Wind Rider
				{ 108, "Warrior" },	-- Ghost Hunter
				{ 117, "Warrior"},	-- Fortune Seeker

				{ 141, "Warrior" },	-- Othell Rogue
				{ 158, "Warrior" },	-- OthellAdventurer
				{ 159, "Warrior" },	-- OthellWindRider
				{ 160, "Warrior" },	-- OthellGhostHunter
				{ 161, "Warrior" },	-- OthellFortuneSeeker
			},
		Archer = {
				{ 9, "Warrior"},	-- Hawkeye
				{ 24, "Warrior"},	-- Silver Ranger
				{ 37, "Warrior"},	-- Phantom Ranger
				{ 92, "Warrior" },	-- Sagittarius
				{ 102, "Warrior" },	-- Moonlight Sentinel
				{ 109, "Warrior" },	-- Ghost Sentinel
				{ 130, "Warrior" },	-- Arbalester
				{ 134, "Warrior" },	-- Trickster

				{ 142, "Warrior" },	-- Yul Archer
				{ 162, "Warrior" },	-- YulSagittarius
				{ 163, "Warrior" },	-- YulMoonlightSentinel
				{ 164, "Warrior" },	-- YulGhostSentinel
				{ 165, "Warrior" },	-- YulTrickster
			},
		},
		
		
	Tank = {
		Knight = {
				{ 4, "Warrior"},	-- Human Knight
				{ 5, "Knight"},		-- Paladin
				{ 6, "Knight"},		-- Dark Avenger
				{ 20, "Knight"},	-- Temple Knight
				{ 32, "Warrior"},	-- Palus Knight
				{ 33, "Knight"},	-- Shillien Knight
				{ 90, "Knight" },	-- Phoenix Knight
				{ 91, "Knight" },	-- Hell Knight
				{ 99, "Knight" },	-- Eva's Templar
				{ 106, "Warrior" },	-- Shillien Templar

				{ 139, "Knight" },	-- Sigel Knight
				{ 148, "Knight" },	-- SigelPhoenixKnight
				{ 149, "Knight" },	-- SigelHellKnight
				{ 150, "Knight" },	-- SigelEvasTemplar
				{ 151, "Knight" },    	-- SigelShillienTemplar 
			},
		}
	}

BuffsContainer = {
MinTimeLeft = 1000,			-- static minimum time left when we will rebuff, searchest for the most nested one
LengthToMinTimeLeftMultiplier = 1/5,	-- dynamic minimum time left when we will rebuff, Length * multiplier determines when we will rebuff, so 30 min with 0.1 multiplier makes it rebuffing at 3 min left on buff
	Melody = {
		MinTimeLeft = nil,
		LengthToMinTimeLeftMultiplier = nil,
		Length = 1800000, -- 30 min, maximum length of buff in milliseconds
		
		Horn = {
			MinTimeLeft = nil,
			LengthToMinTimeLeftMultiplier = nil,
			Length = nil,
			Skills = { 11517 },
			NeedTarget = false,
			
			Buffs = {
				9198,		-- Elixir: Horn Melody
				9218,		-- Elixir of Blessing - Horn Melody
				9227,		-- Mentor's Poem of Horn
				9273,		-- Horn Melody - PC Cafe
				9280,		-- Horn Melody - Heavenly Cocktail
				9331,		-- Horn Melody - Refined Cocktail
				11517,		-- Horn Melody
				11589,		-- Horn Frenzy
				14738,		-- Olympiad - Horn Melody
				14779,		-- Master's Blessing - Horn Melody
				14791,		-- Master's Blessing - Horn Melody (Range)
			},
		},
				
		Drum = {
			MinTimeLeft = nil,
			LengthToMinTimeLeftMultiplier = nil,
			Length = nil,
			Skills = { 11518 },
			NeedTarget = false,
			
			Buffs = {
				9199,		-- Elixir: Drum Melody
				9219,		-- Elixir of Blessing - Drum Melody
				9228,		-- Mentor's Poem of Drum
				9274,		-- Drum Melody - PC Cafe
				9281,		-- Drum Melody - Heavenly Cocktail
				9332,		-- Drum Melody - Refined Cocktail
				11518,		-- Drum Melody
				11590,		-- Drum Frenzy
				14739,		-- Olympiad - Drum Melody
				14780,		-- Master's Blessing - Drum Melody
				14792,		-- Master's Blessing - Drum Melody (Range)
				22213,		-- Mysterious Scroll - Drum Melody
			},
		},
				
 		PipeOrgan = {
			MinTimeLeft = nil,
			LengthToMinTimeLeftMultiplier = nil,
			Length = nil,
			Skills = { 11519 },
			NeedTarget = false,
			
			Buffs = {
				9201,		-- Elixir: Pipe Organ Melody
				9221,    	-- Elixir of Blessing - Pipe Organ Melody
				9230,		-- Mentor's Poem of Organ
				9276,		-- Pipe Organ Melody - PC Cafe
				9283,  		-- Pipe Organ Melody - Heavenly Cocktail
				9334,   	-- Pipe Organ Melody - Refined Cocktail
				11519,		-- Pipe Organ Melody
				11591,		-- Pipe Organ Frenzy
				14607,		-- Cry of Fate - Pipe Organ Melody
				14693,		-- Cry of Fate - Pipe Organ Melody
				14740,		-- Olympiad - Pipe Organ Melody
				14781,		-- Master's Blessing - Pipe Organ Melody
				14793,		-- Master's Blessing - Pipe Organ Melody (Range)
				23364,		-- Tree's Blessing - Pipe Organ Melody
				23365,		-- Tree's Blessing - Pipe Organ Melody
				23366,		-- Tree's Blessing - Pipe Organ Melody
				23367,		-- Tree's Blessing - Pipe Organ Melody
				23368,		-- Tree's Blessing - Pipe Organ Melody
			},
		},
				
		Guitar = {
			MinTimeLeft = nil,
			LengthToMinTimeLeftMultiplier = nil,
			Length = nil,
			Skills = { 11520 },
			NeedTarget = false,
			
			Buffs = {
				9202,		-- Elixir: Guitar Melody
				9222,		-- Elixir of Blessing - Guitar Melody
				9231,		-- Mentor's Poem of Guitar
				9277,		-- Guitar Melody - PC Cafe
				9284,		-- Guitar Melody - Heavenly Cocktail
				9335,		-- Guitar Melody - Refined Cocktail
				11520,		-- Guitar Melody
				11592,		-- Guitar Frenzy
				14741,		-- Olympiad - Guitar Melody
				14782,		-- Master's Blessing - Guitar Melody
				14794,		-- Master's Blessing - Guitar Melody (Range)
				23369,		-- Tree's Blessing - Guitar Melody
				23370,		-- Tree's Blessing - Guitar Melody
				23371,		-- Tree's Blessing - Guitar Melody
				23372,		-- Tree's Blessing - Guitar Melody
				23373,		-- Tree's Blessing - Guitar Melody
			},
		},
				
		Harp = {
			MinTimeLeft = nil,
			LengthToMinTimeLeftMultiplier = nil,
			Length = nil,
			Skills = { 11521 },
			NeedTarget = false,
			
			Buffs = {
				9203,		-- Elixir: Harp Melody
				9223,		-- Elixir of Blessing - Harp Melody
				9232,		-- Mentor's Poem of Harp
				9278,		-- Harp Melody - PC Cafe
				9285,		-- Harp Melody - Heavenly Cocktail
				9336,		-- Harp Melody - Refined Cocktail
				11521,		-- Harp Melody
				11593,		-- Harp Frenzy
				14742,		-- Olympiad - Harp Melody
				14783,		-- Master's Blessing - Harp Melody
				14795,		-- Master's Blessing - Harp Melody (Range)
				23374,		-- Tree's Blessing - Harp Melody
				23375,		-- Tree's Blessing - Harp Melody
				23376,		-- Tree's Blessing - Harp Melody
				23377,		-- Tree's Blessing - Harp Melody
				23378,		-- Tree's Blessing - Harp Melody
			},
		},
				
		Lute = {
			MinTimeLeft = nil,
			LengthToMinTimeLeftMultiplier = nil,
			Length = nil,
			Skills = { 11522 },
			NeedTarget = false,
		
			Buffs = {
				9200,		-- Elixir: Lute Melody
				9220,		-- Elixir of Blessing - Lute Melody
				9229,		-- Mentor's Poem of Lute
				9275,		-- Lute Melody - PC Cafe
				9282,		-- Lute Melody - Heavenly Cocktail
				9333,		-- Lute Melody - Refined Cocktail
				11522,		-- Lute Melody
				11594,		-- Lute Frenzy
				14743,		-- Olympiad - Lute Melody
				14784,		-- Master's Blessing - Lute Melody
				14796,		-- Master's Blessing - Lute Melody (Range)
				23359,		-- Tree's Blessing - Lute Melody
				23360,		-- Tree's Blessing - Lute Melody
				23361,		-- Tree's Blessing - Lute Melody
				23362,		-- Tree's Blessing - Lute Melody
				23363,		-- Tree's Blessing - Lute Melody
			},
		},
	},

	Sonata = {
		MinTimeLeft = nil,
		LengthToMinTimeLeftMultiplier = nil,
		Length = 350000, -- 5 min
		
		Prevailing = {
			MinTimeLeft = nil,
			LengthToMinTimeLeftMultiplier = nil,
			Length = nil,
			Skills = { 11529 },
			NeedTarget = false,
			
			Buffs = {
				11610,		-- Prevailing Dance
				11600,		-- Frenzied Prevailing Sonata
				11607,		-- Prevailing Song
				11529,		-- Prevailing Sonata
				14993,		-- Master's Blessing - Prevailing Sonata
				14996,		-- Master's Blessing - Prevailing Sonata (range)
			},
		},
				
		Daring = {
			MinTimeLeft = nil,
			LengthToMinTimeLeftMultiplier = nil,
			Length = nil,
			Skills = { 11530 },
			NeedTarget = false,
			
			Buffs = {
				11611,		-- Daring Dance
				11530,		-- Daring Sonata
				11608,		-- Daring Song
				11601,		-- Frenzied Daring Sonata
				14994,		-- Master's Blessing - Daring Sonata
				14997,		-- Master's Blessing - Daring Sonata (range)
			},
		},
				
		Refreshing = {
			MinTimeLeft = nil,
			LengthToMinTimeLeftMultiplier = nil,
			Length = nil,
			Skills = { 11532 },
			NeedTarget = false,
			
			Buffs = {
				11532,		-- Refreshing Sonata
				11602,		-- Frenzied Refreshing Sonata
				11609,		-- Refreshing Song
				11612,		-- Refreshing Dance
				11602,		-- Frenzied Refreshing Sonata
				14995,		-- Master's Blessing - Refreshing Sonata
				14998,		-- Master's Blessing - Refreshing Sonata (range
			},
		},
	},
				
				
	Protection = {
		MinTimeLeft = nil,
		LengthToMinTimeLeftMultiplier = nil,
		Length = 1800000, -- 30 min
		
 		Elemental = {
			MinTimeLeft = nil,
			LengthToMinTimeLeftMultiplier = nil,
			Skills = { 11565 },
			NeedTarget = true,
			
			Buffs = {
				1352,		-- Elemental Protection
				11565,		-- Elemental Protection
				11790,		-- Superior Elemental Protection
				23247,		-- Master's Blessing - Elemental Protection
				23295,		-- Master's Blessing - Elemental Protection
			},
		},
				
		Divine = {
			MinTimeLeft = nil,
			LengthToMinTimeLeftMultiplier = nil,
			Skills = { 11566, 803 },
			NeedTarget = true,
			
			Buffs = {
				11566,		-- Divine Protection
				1353,		-- Divine Protection
				803,		-- Healer Ability - Divine Protection
			},
		},
				
		Mental = {
			MinTimeLeft = nil,
			LengthToMinTimeLeftMultiplier = nil,
			Skills = { 11567 },
			NeedTarget = true,
			
			Buffs = {
				11567,		-- Mental Protection
			},
		},
	},

	Harmony = {
		MinTimeLeft = nil,
		Length = 1800000, -- 30 min
		
 		Knight = {
			MinTimeLeft = nil,
			LengthToMinTimeLeftMultiplier = nil,
			Length = nil,
			Skills = { 11523 },
			NeedTarget = true,
			
			Buffs = {
				9376,		-- Mentor Guardian's Harmony
				11523,		-- Knight's Harmony
				11595,		-- Knight's Frenzied Harmony
				14744,		-- Olympiad - Guardian's Harmony
				14785,		-- Master's Blessing - Guardian's Harmony
				14797,		-- Master's Blessing - Guardian's Harmony (Range)
			},
		},
				
		Warrior = {
			MinTimeLeft = nil,
			LengthToMinTimeLeftMultiplier = nil,
			Length = nil,
			Skills = { 11524 },
			NeedTarget = true,
			
			Buffs = {
				9378,		-- Mentor's Berserker's Harmony
				11524,		-- Warrior's Harmony
				11596,		-- Warrior's Frenzied Harmony
				14745,		-- Olympiad - Berserker's Harmony
				14786,		-- Master's Blessing - Berserker's Harmony
				14798,		-- Master's Blessing - Berserker's Harmony (Range)
			},
		},
				
		Wizard = {
			MinTimeLeft = nil,
			LengthToMinTimeLeftMultiplier = nil,
			Length = nil,
			Skills = { 11525 },
			NeedTarget = true,
			
			Buffs = {
				9377,		-- Mentor's Magician's Harmony
				11525,		-- Wizard's Harmony
				11597,		-- Wizard's Frenzied Harmony
				14746,		-- Olympiad - Magician's Harmony
				14787,		-- Master's Blessing - Magician's Harmony
				14799,		-- Master's Blessing - Magician's Harmony (Range)
			},
		},
	},
}

function GetRebuffTimeLeft( buffsC, skillId)
	if buffsC and tar and skillId or not safeCode then
		if type(buffsC) == "table" then
			for Type,vT in pairs(buffsC) do
				if type(vT) == "table" then
					for lBuff,vlB in pairs(vT) do
 						if type(vlB) == "table" then
							for i=1,#vlB.Skills do
								if vlB.Skills[i] == skillId then
									local l = vlB.Length or vT.Length or 0
									local m = vlB.LengthToMinTimeLeftMultiplier or vT.LengthToMinTimeLeftMultiplier or buffsC.LengthToMinTimeLeftMultiplier or 0
									local mtl = vlB.MinTimeLeft or vT.MinTimeLeft or buffsC.MinTimeLeft or 0
									return math.max(l * m, mtl)
								end
							end
						end
					end
				end
			end
		end
	end
									
return nil
end


function GetHarmonyType( classesC, tar )
	if tar and classesC or not safeCode then
		if type(classesC) == "table" then
			for Type,vT in pairs(classesC) do
				if type(vT) == "table" then
					for SubType,vS in pairs(vT) do
						if type(vS) == "table" then
							for i=1,#vS do
								c = tar:GetClass()
								if c == vS[i][1] then
									harmony = vS[i][2]	 
									return harmony
								end
							end
						end
					end
				end
			end
		end
	end
											
return nil
end


function BuffInfo( buffsC, tar, skillId )
	if buffsC and tar and skillId or not safeCode then
		if type(buffsC) == "table" then
			for Type,vT in pairs(buffsC) do
				if type(vT) == "table" then
					for lBuff,vlB in pairs(vT) do
						if type(vlB) == "table" then
							for i=1,#vlB.Skills do
								if vlB.Skills[i] == skillId then
									if type(vlB.Buffs) == "table" then
										timeLeft = 86400000
										for j=1,#vlB.Buffs do
											buff = tar:GetBuff(vlB.Buffs[j])
											if buff then
												timeLeft = buff.endTime - GetTime()
												return true, vlB.NeedTarget, vlB.Buffs[j], timeLeft
											end
										end
										return false, vlB.NeedTarget, nil, nil
									end
								end
							end
						end
					end
				end
			end
		end
	end
													
return false
end


function CastBuff( skills, buffsC, tar, id, dist, justCheck )
	if skills and buffsC and tar and tar:GetHp() ~= 0 and id and dist or not safeCode then
		
		local hasBuff, needTarget, _, timeLeft = BuffInfo( buffsC, tar, id )
		local rtl = GetRebuffTimeLeft( buffsC, id)
		if not hasBuff or rtl and timeLeft and timeLeft <= rtl and timeLeft > 0 then
			if justCheck then
				return true
			end
					
			local skill = skills:FindById(id)
 			if skill and skill:CanBeUsed() then
				for d=dist-50,50,-100 do
					if not tar or tar:GetHpPercent() == 0 then
						return false
					end
								
					--if tar:GetDistance() > dist or not tar:CanSeeMe() then
					if tar:GetDistance() > dist then
						--loc = tar:GetLocation()
						--MoveTo(loc.X, loc.Y, loc.Z, d)
						tar = GetUserById(tar:GetId())
					end
				end
							
				if needTarget then
 					Target(tar)
					for i=1,5 do
						myTar = GetTarget()
						if myTar and myTar:GetId() == tar:GetId() then
 							UseSkillRaw(id,false,false)
							Sleep(200);
							ClearTargets();
							return true
						end
 					end
 				else
 					UseSkillRaw(id,false,false)
					Sleep(200);
 					return true
				end
			end
		end
	end

return false
end


function BuffHarmony( skills, buffsC, classesC, tar, justCheck )
	if skills and buffsC and classesC and tar and harmonies or not safeCode then
		
		local ht = GetHarmonyType(classesC, tar)
		if ht or not safeCode  then
			local harmony = buffsC.Harmony[ht]
			for i=1,#harmony.Skills do
				if CastBuff( skills, buffsC, tar, harmony.Skills[i], 900, justCheck ) then
					return true
				end
			end
		end
	end

return false
end


local LastBuffTime = GetTime()
function BuffTarget( skills, buffsC, classesC, tar, justCheck )
	if skills and buffsC and classesC and tar or not safeCode  then
		if type(buffsC) == "table" then
			for BT,vBT in pairs(buffsC) do
				if BT == "Harmony" then
					if BuffHarmony( skills, buffsC, classesC, tar, justCheck ) then
						LastBuffTime = GetTime()
						return true
					end
				else
					if type(vBT) == "table" then
						for kB,vB in pairs(vBT) do
							if type(vB) == "table" and type(vB.Skills) == "table" then
								for i=1,#vB.Skills do
									if CastBuff( skills, buffsC, tar, vB.Skills[i], 900, justCheck ) then
										LastBuffTime = GetTime()
										return true
									end
								end
							end
						end
					end
				end
			end
		end
	end
											
return false
end


function BuffParty( skills, buffsC, classesC, distance, justCheck, names )
	if skills and buffsC and classesC and distance and (names or not justCheck) or not safeCode  then
		
		local me = GetMe()
		if BuffTarget( skills, buffsC, classesC, me, justCheck ) then
			return true
		end
				
		local party = GetPartyList()
		for p in party.list do
			if not (names and not (justCheck)) and p:GetDistance() < distance and BuffTarget( skills, buffsC, classesC, p, justCheck ) then
				return true
			end
		end
	end
					
return false
end


function PartyNeedBuffs( skills, buffsC, classesC, distance, justCheck, names )
    return BuffParty( skills, buffsC, classesC, distance, true, names )
end


function BuffPartyAndLeave( skills, buffsC, classesC, distance, names )
	if PartyNeedBuffs( skills, buffsC, classesC, distance ) then
		BuffParty( skills, buffsC, classesC, distance )
	elseif GetPartyMaster() then
		if GetTime() - LastBuffTime > LeaveAfterBuffsTimeout then
			LeaveParty()
		end
	end
end


function Invite( names )
	if me and names and names.Leader == me:GetName() and names.Iss or not safeCode then
	tar = GetPlayerList():GetByName(names.Iss)
		if tar and not tar:IsMyPartyMember() then
			Command("/invite ".. names.Iss)
			return true
		end
	end
	return false
end


function Main()
	local me = GetMe()
	if me then
		if OOPMode and me:GetName() == Names.Leader then
			if PartyNeedBuffs(GetSkills(), BuffsContainer, ClassesContainer, SearchDistance) then
				Invite(Names)
			end
		elseif me:GetName() == Names.Iss or not OOPMode then 
			if not ((me:GetClass() == 173) or (me:GetClass() == 175) or (me:GetClass() == 172) or (me:GetClass() == 171) or (me:GetClass() == 174)) then
				ShowToClient("ISS", "You are not ISS!")
				return false
			end
 			
 			local leader = GetPlayerList():GetByName(Names.Leader)
 			if leader and OOPMode then
 				return BuffPartyAndLeave(GetSkills(), BuffsContainer, ClassesContainer, SearchDistance, Names)
 			else
 				return BuffParty(GetSkills(), BuffsContainer, ClassesContainer, SearchDistance) 
 			end 
		end
	end

return false    
end


repeat
	if not CheckIfRunning or not IsPaused() then
		Main()
    	end
		Sleep(1000)
until false 