ShowToClient("GOD","38 quest, start at Renfad",3)
SCONFIG = L2TConfig.GetConfig();
SCONFIG_FILE = GetDir() .. '\\scripts\\3841.l2b';
L2TConfig.SaveConfig(SCONFIG_FILE);
moveDistance = 30;

TargetNpc("Renfad", 33524);
MoveTo(-24702, 188715, -3957, moveDistance);
Talk();
ClickAndWait("talk_select", "Quest");
ClickAndWait("menu_select?ask=10360&reply=1", "\"I wouldn't be here otherwise.\"");
ClickAndWait("menu_select?ask=10360&reply=2", "\"I said yes. I meant it.\"");
-- Quest state changed, ID: 10360, STATE: 1
-- Quest state changed, ID: 10360, STATE: 2
MoveTo(-24702, 188715, -3957, moveDistance);
MoveTo(-25019, 187203, -4021, moveDistance);
MoveTo(-25709, 186337, -3980, moveDistance);
MoveTo(-25706, 185090, -3676, moveDistance);
MoveTo(-25738, 184366, -3613, moveDistance);
TargetNpc("Regenerated Kanilov", 27459);
SCONFIG.melee.me.enabled = true;
SCONFIG.melee.me.attackRange = 50;
SCONFIG.targeting.option = L2TConfig.ETargetingType.TT_RANGE_FROM_POINT;
SCONFIG.targeting.centerPoint.X = -25831; 
SCONFIG.targeting.centerPoint.Y = 183354; 
SCONFIG.targeting.centerPoint.Z = -3600; 
SCONFIG.targeting.rangeType = L2TConfig.ETargetingRangeType.TRT_SQUERE;
SCONFIG.targeting.range = 700;
SetPause(false);
repeat
 Sleep(1000); 
until GetQuestManager():GetQuestProgress( 10360 ) == 3; 
SetPause(true);
Sleep(10000);
SetPause(true);
ClearTargets();
-- Quest state changed, ID: 10360, STATE: 2
-- Quest state changed, ID: 10360, STATE: 3
TargetNpc("Joel", 33516);
MoveTo(-25739, 183338, -3600, moveDistance);
Talk();
ClickAndWait("talk_select", "Quest");
ClickAndWait("menu_select?ask=10360&reply=1", "\"The town master.\"");
ClickAndWait("menu_select?ask=10360&reply=2", "\"I'm on it!\"");
-- Quest state changed, ID: 10360, STATE: 3
-- Quest state changed, ID: 10360, STATE: 4
MoveTo(-25739, 183338, -3600, moveDistance);
MoveTo(-25860, 184563, -3631, moveDistance);
MoveTo(-26112, 185375, -3705, moveDistance);
MoveTo(-27569, 186598, -4169, moveDistance);
MoveTo(-27812, 188366, -3971, moveDistance);
MoveTo(-28020, 188460, -3931, moveDistance);
MoveTo(-29257, 187273, -3908, moveDistance);
TargetNpc("Regenerated Poslof", 27460);
MoveTo(-29591, 187014, -3931, moveDistance);
SCONFIG.melee.me.enabled = true;
SCONFIG.melee.me.attackRange = 50;
SCONFIG.targeting.option = L2TConfig.ETargetingType.TT_RANGE_FROM_POINT;
SCONFIG.targeting.centerPoint.X = -29677; 
SCONFIG.targeting.centerPoint.Y = 187030; 
SCONFIG.targeting.centerPoint.Z = -3941; 
SCONFIG.targeting.rangeType = L2TConfig.ETargetingRangeType.TRT_SQUERE;
SCONFIG.targeting.range = 700;
SetPause(false);
repeat
 Sleep(1000);
until GetQuestManager():GetQuestProgress( 10360 ) == 5; 
SetPause(true);
Sleep(10000);
SetPause(true);
-- Quest state changed, ID: 10360, STATE: 4
-- Quest state changed, ID: 10360, STATE: 5
TargetNpc("Schuazen", 33517);
MoveTo(-29664, 186921, -3939, moveDistance);
Talk();
ClickAndWait("talk_select", "Quest");
ClickAndWait("menu_select?ask=10360&reply=1", "\"The town master sent me.\"");
ClickAndWait("menu_select?ask=10360&reply=2", "\"I believe so.\"");
-- Quest state changed, ID: 10360, STATE: 5
-- Quest state changed, ID: 10360, STATE: 6
MoveTo(-29664, 186921, -3939, moveDistance);
MoveTo(-30465, 186741, -3952, moveDistance);
MoveTo(-32458, 188273, -3936, moveDistance);
MoveTo(-33570, 188918, -3911, moveDistance);
MoveTo(-34617, 189100, -3722, moveDistance);
MoveTo(-35291, 189395, -3634, moveDistance);
MoveTo(-37250, 190053, -3641, moveDistance);
MoveTo(-36570, 190913, -3639, moveDistance);
TargetNpc("Sakum", 27453);
SCONFIG.melee.me.enabled = true;
SCONFIG.melee.me.attackRange = 50;
SCONFIG.targeting.option = L2TConfig.ETargetingType.TT_RANGE_FROM_POINT;
SCONFIG.targeting.centerPoint.X = -36452; 
SCONFIG.targeting.centerPoint.Y = 191545; 
SCONFIG.targeting.centerPoint.Z = -3638; 
SCONFIG.targeting.rangeType = L2TConfig.ETargetingRangeType.TRT_SQUERE;
SCONFIG.targeting.range = 700;
SetPause(false);
repeat
 Sleep(1000);
until GetQuestManager():GetQuestProgress( 10360 ) == 7; 
SetPause(true);
Sleep(10000);
SetPause(true);
MoveTo(-36419, 191538, -3637, moveDistance);
MoveTo(-36419, 191538, -3637, moveDistance);
MoveTo(-36419, 191538, -3637, moveDistance);
MoveTo(-36419, 191538, -3637, moveDistance);
MoveTo(-36419, 191538, -3637, moveDistance);
-- Quest state changed, ID: 10360, STATE: 6
-- Quest state changed, ID: 10360, STATE: 7
-- Get new quest item, ID: 17587, COUNT: 1
TargetNpc("Selon", 33518);
MoveTo(-37036, 192079, -3609, moveDistance);
Talk();
ClickAndWait("talk_select", "Quest");
ClickAndWait("menu_select?ask=10360&reply=1", "\"I was sent by the town master.\"");
ClickAndWait("menu_select?ask=10360&reply=2", "\"Hmm.\"");
ClickAndWait("menu_select?ask=10360&reply=3", "\"I see.\"");
ClickAndWait("menu_select?ask=10360&reply=4", "\"I'll leave now.\"");
-- Quest state changed, ID: 10360, STATE: 7
-- Quest state changed, ID: 10360, STATE: 12
-- Get new quest item, ID: 17587, COUNT: 1
-- Get new quest item, ID: 17587, COUNT: 1
-- Get new quest item, ID: 17587, COUNT: 1
-- Get new quest item, ID: 17587, COUNT: 1
UseItem(10650); -- Adventurer's Scroll of Escape
MoveTo(-37036, 192079, -3609, moveDistance);
L2TConfig.LoadConfig(SCONFIG_FILE);
