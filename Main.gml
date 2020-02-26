/*

Potion Ideas
=============
* Energy Potion
* Change Healing Potion to not give energy.
* Water walking
* All potion
* Teleportation
* Nova
* Rainbow Aura
* Auto-Smelt
*/



#define Main

	InitCommon();
	InitSpeedPotion();
	InitFlashPotion();
	InitHealingPotion();
	
	// New commands for debugging
	CommandCreate("getspeed", false, ScriptWrap(GetSpeed));
	CommandCreate("resetspeed", false, ScriptWrap(ResetSpeed));
	CommandCreate("potions", false, ScriptWrap(GivePotions));
	CommandCreate("speedpotion", false, ScriptWrap(GiveSpeedPotion));
	CommandCreate("flashpotion", false, ScriptWrap(GiveFlashPotion));
	CommandCreate("dospeedpotion", false, ScriptWrap(StartSpeedPotionBuff));
	CommandCreate("doflashpotion", false, ScriptWrap(StartFlashPotionBuff));
	
	
#define UseHealingPotion()
	objPlayer.hp++;
	

#define GivePotions()
	GainItem(Item.HealingPotion, 1);
	GainItem(Item.Thunderbolt, 1);
	GainItem(Item.AnasDelight, 1);
	GainItem(Item.LiquidLuck, 1);
	GainItem(Item.DraughtOfWisdom, 1);
	GainItem(Item.Mandragora, 1);
	GainItem(Item.BloodFuryCocktail, 1);
	GainItem(Item.DragonPhiltre, 1);
	GainItem(ItemPotionOfSpeed, 1);
	GainItem(ItemFlashPotion, 1);
	
#define GiveSpeedPotion()
	GainItem(ItemPotionOfSpeed, 1);

#define GiveFlashPotion()
	GainItem(ItemFlashPotion, 1);
	
