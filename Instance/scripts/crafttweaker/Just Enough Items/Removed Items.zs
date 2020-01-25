#Priority 9002
//=====================================================================================================================================================================================================	
//	Removing things from the game for ballance and to hopefully reduce loading times
//=====================================================================================================================================================================================================


	//	Remove items in the global removal script.	_______________________________________________________________________________________________________________________________________________________________________
for Item in GlobalRemovalRecipeOutputs {
	mods.jei.JEI.removeAndHide(Item);
}
	
//=====================================================================================================================================================================================================	
//	Random Things
//=====================================================================================================================================================================================================


	//	Pitcher Plant and other things that would break balance	_______________________________________________________________________________________________________________________________________________________________________
mods.jei.JEI.removeAndHide(<randomthings:pitcherplant>);
mods.jei.JEI.removeAndHide(<randomthings:spectrecoil_normal>);
mods.jei.JEI.removeAndHide(<randomthings:spectrecoil_redstone>);
mods.jei.JEI.removeAndHide(<randomthings:spectrecoil_ender>);
mods.jei.JEI.removeAndHide(<randomthings:spectrecoil_number:*>);
mods.jei.JEI.removeAndHide(<randomthings:spectrecoil_genesis>);
mods.jei.JEI.removeAndHide(<randomthings:diviningrod:*>);
mods.jei.JEI.removeAndHide(<randomthings:spectrecharger:*>);
mods.jei.JEI.removeAndHide(<randomthings:chunkanalyzer>);


/* - Everything here is now handled by the above function and the Reduce Load Times exception list.
	//	Aggressivly remove the nugget to ingot allloying recipes.	_______________________________________________________________________________________________________________________________________________________________________
mods.jei.JEI.removeAndHide(<crossroads:ingot_bronze>);
mods.jei.JEI.removeAndHide(<crossroads:block_bronze>);

//=====================================================================================================================================================================================================	
//	Leather Works
//=====================================================================================================================================================================================================


	//	Drying Racks	_______________________________________________________________________________________________________________________________________________________________________
mods.jei.JEI.removeAndHide(<leatherworks:drying_rack_oak>);
mods.jei.JEI.removeAndHide(<leatherworks:drying_rack_spruce>);
mods.jei.JEI.removeAndHide(<leatherworks:drying_rack_birch>);
mods.jei.JEI.removeAndHide(<leatherworks:drying_rack_jungle>);
mods.jei.JEI.removeAndHide(<leatherworks:drying_rack_acacia>);
mods.jei.JEI.removeAndHide(<leatherworks:drying_rack_darkoak>);

	//	Barks (Let's keep this simpler)	_______________________________________________________________________________________________________________________________________________________________________
mods.jei.JEI.removeAndHide(<leatherworks:bark_spruce>);
mods.jei.JEI.removeAndHide(<leatherworks:bark_birch>);
mods.jei.JEI.removeAndHide(<leatherworks:bark_jungle>);
mods.jei.JEI.removeAndHide(<leatherworks:bark_acacia>);
mods.jei.JEI.removeAndHide(<leatherworks:bark_darkoak>);

	//	Bark Blocks (Quark already has these)	_______________________________________________________________________________________________________________________________________________________________________
mods.jei.JEI.removeAndHide(<leatherworks:oak_bark>);
mods.jei.JEI.removeAndHide(<leatherworks:acacia_bark>);
mods.jei.JEI.removeAndHide(<leatherworks:birch_bark>);
mods.jei.JEI.removeAndHide(<leatherworks:darkoak_bark>);
mods.jei.JEI.removeAndHide(<leatherworks:jungle_bark>);
mods.jei.JEI.removeAndHide(<leatherworks:spruce_bark>);

	//	Debarked Logs (woodstock does this already)	_______________________________________________________________________________________________________________________________________________________________________
mods.jei.JEI.removeAndHide(<leatherworks:debarked_log_oak>);
mods.jei.JEI.removeAndHide(<leatherworks:debarked_log_acacia>);
mods.jei.JEI.removeAndHide(<leatherworks:debarked_log_birch>);
mods.jei.JEI.removeAndHide(<leatherworks:debarked_log_spruce>);
mods.jei.JEI.removeAndHide(<leatherworks:debarked_log_darkoak>);
mods.jei.JEI.removeAndHide(<leatherworks:debarked_log_jungle>);


//=====================================================================================================================================================================================================	
//	Terraqueous
//=====================================================================================================================================================================================================


	//	Tools and things	_______________________________________________________________________________________________________________________________________________________________________
mods.jei.JEI.removeAndHide(<terraqueous:multitool>);
mods.jei.JEI.removeAndHide(<terraqueous:pitchfork>);
mods.jei.JEI.removeAndHide(<terraqueous:scythe>);
mods.jei.JEI.removeAndHide(<terraqueous:hammer>);


//=====================================================================================================================================================================================================	
//	Random Things
//=====================================================================================================================================================================================================


	//	Pitcher Plant and other things that would break balance	_______________________________________________________________________________________________________________________________________________________________________
mods.jei.JEI.removeAndHide(<randomthings:pitcherplant>);
mods.jei.JEI.removeAndHide(<randomthings:spectrecoil_normal>);
mods.jei.JEI.removeAndHide(<randomthings:spectrecoil_redstone>);
mods.jei.JEI.removeAndHide(<randomthings:spectrecoil_ender>);
mods.jei.JEI.removeAndHide(<randomthings:spectrecoil_number:*>);
mods.jei.JEI.removeAndHide(<randomthings:spectrecoil_genesis>);
mods.jei.JEI.removeAndHide(<randomthings:diviningrod:*>);
mods.jei.JEI.removeAndHide(<randomthings:spectrecharger:*>);
mods.jei.JEI.removeAndHide(<randomthings:chunkanalyzer>);


//=====================================================================================================================================================================================================	
//	Non-Tinker Tools
//=====================================================================================================================================================================================================


//	Swords	_______________________________________________________________________________________________________________________________________________________________________
	mods.jei.JEI.removeAndHide(<minecraft:iron_sword>);
	mods.jei.JEI.removeAndHide(<minecraft:diamond_sword>);
	mods.jei.JEI.removeAndHide(<minecraft:golden_sword>);
	mods.jei.JEI.removeAndHide(<botania:manasteelsword>);
	mods.jei.JEI.removeAndHide(<botania:elementiumsword>);
	mods.jei.JEI.removeAndHide(<iceandfire:silver_sword>);
	mods.jei.JEI.removeAndHide(<iceandfire:dragonbone_sword>);
	mods.jei.JEI.removeAndHide(<iceandfire:dragonbone_sword_fire>);
	mods.jei.JEI.removeAndHide(<iceandfire:dragonbone_sword_ice>);
	mods.jei.JEI.removeAndHide(<iceandfire:hippogryph_sword>);
	mods.jei.JEI.removeAndHide(<iceandfire:myrmex_desert_sword>);
	mods.jei.JEI.removeAndHide(<iceandfire:myrmex_desert_sword_venom>);
	mods.jei.JEI.removeAndHide(<iceandfire:myrmex_jungle_sword>);
	mods.jei.JEI.removeAndHide(<iceandfire:myrmex_jungle_sword_venom>);
	mods.jei.JEI.removeAndHide(<iceandfire:dragonsteel_fire_sword>);
	mods.jei.JEI.removeAndHide(<iceandfire:dragonsteel_ice_sword>);
	mods.jei.JEI.removeAndHide(<immersiveengineering:sword_steel>);
	mods.jei.JEI.removeAndHide(<natura:ghostwood_sword>);
	mods.jei.JEI.removeAndHide(<natura:bloodwood_sword>);
	mods.jei.JEI.removeAndHide(<natura:darkwood_sword>);
	mods.jei.JEI.removeAndHide(<natura:fusewood_sword>);
	mods.jei.JEI.removeAndHide(<natura:netherquartz_sword>);
	mods.jei.JEI.removeAndHide(<nuclearcraft:sword_boron>);
	mods.jei.JEI.removeAndHide(<nuclearcraft:sword_tough>);
	mods.jei.JEI.removeAndHide(<nuclearcraft:sword_hard_carbon>);
	mods.jei.JEI.removeAndHide(<nuclearcraft:sword_boron_nitride>);
	mods.jei.JEI.removeAndHide(<randomthings:spectresword>);

//	Pickaxe	_______________________________________________________________________________________________________________________________________________________________________
	mods.jei.JEI.removeAndHide(<minecraft:iron_pickaxe>);
	mods.jei.JEI.removeAndHide(<minecraft:diamond_pickaxe>);
	mods.jei.JEI.removeAndHide(<minecraft:golden_pickaxe>);
	mods.jei.JEI.removeAndHide(<botania:manasteelpick>);
	mods.jei.JEI.removeAndHide(<botania:elementiumpick>);
	mods.jei.JEI.removeAndHide(<botania:glasspick>);
	mods.jei.JEI.removeAndHide(<iceandfire:silver_pickaxe>);
	mods.jei.JEI.removeAndHide(<iceandfire:dragonbone_pickaxe>);
	mods.jei.JEI.removeAndHide(<iceandfire:myrmex_desert_pickaxe>);
	mods.jei.JEI.removeAndHide(<iceandfire:myrmex_jungle_pickaxe>);
	mods.jei.JEI.removeAndHide(<iceandfire:dragonsteel_fire_pickaxe>);
	mods.jei.JEI.removeAndHide(<iceandfire:dragonsteel_ice_pickaxe>);
	mods.jei.JEI.removeAndHide(<immersiveengineering:pickaxe_steel>);
	mods.jei.JEI.removeAndHide(<natura:ghostwood_pickaxe>);
	mods.jei.JEI.removeAndHide(<natura:bloodwood_pickaxe>);
	mods.jei.JEI.removeAndHide(<natura:darkwood_pickaxe>);
	mods.jei.JEI.removeAndHide(<natura:fusewood_pickaxe>);
	mods.jei.JEI.removeAndHide(<natura:netherquartz_pickaxe>);
	mods.jei.JEI.removeAndHide(<nuclearcraft:pickaxe_boron>);
	mods.jei.JEI.removeAndHide(<nuclearcraft:pickaxe_tough>);
	mods.jei.JEI.removeAndHide(<nuclearcraft:pickaxe_hard_carbon>);
	mods.jei.JEI.removeAndHide(<nuclearcraft:pickaxe_boron_nitride>);
	mods.jei.JEI.removeAndHide(<randomthings:spectrepickaxe>);

//	Shovel	_______________________________________________________________________________________________________________________________________________________________________
	mods.jei.JEI.removeAndHide(<minecraft:iron_shovel>);
	mods.jei.JEI.removeAndHide(<minecraft:diamond_shovel>);
	mods.jei.JEI.removeAndHide(<minecraft:golden_shovel>);
	mods.jei.JEI.removeAndHide(<botania:manasteelshovel>);
	mods.jei.JEI.removeAndHide(<botania:elementiumshovel>);
	mods.jei.JEI.removeAndHide(<iceandfire:silver_shovel>);
	mods.jei.JEI.removeAndHide(<iceandfire:dragonbone_shovel>);
	mods.jei.JEI.removeAndHide(<iceandfire:myrmex_desert_shovel>);
	mods.jei.JEI.removeAndHide(<iceandfire:myrmex_jungle_shovel>);
	mods.jei.JEI.removeAndHide(<iceandfire:dragonsteel_fire_shovel>);
	mods.jei.JEI.removeAndHide(<iceandfire:dragonsteel_ice_shovel>);
	mods.jei.JEI.removeAndHide(<immersiveengineering:shovel_steel>);
	mods.jei.JEI.removeAndHide(<natura:ghostwood_shovel>);
	mods.jei.JEI.removeAndHide(<natura:bloodwood_shovel>);
	mods.jei.JEI.removeAndHide(<natura:darkwood_shovel>);
	mods.jei.JEI.removeAndHide(<natura:fusewood_shovel>);
	mods.jei.JEI.removeAndHide(<natura:netherquartz_shovel>);
	mods.jei.JEI.removeAndHide(<nuclearcraft:shovel_boron>);
	mods.jei.JEI.removeAndHide(<nuclearcraft:shovel_tough>);
	mods.jei.JEI.removeAndHide(<nuclearcraft:shovel_hard_carbon>);
	mods.jei.JEI.removeAndHide(<nuclearcraft:shovel_boron_nitride>);
	mods.jei.JEI.removeAndHide(<randomthings:spectreshovel>);

//	Axe	_______________________________________________________________________________________________________________________________________________________________________
	mods.jei.JEI.removeAndHide(<minecraft:iron_axe>);
	mods.jei.JEI.removeAndHide(<minecraft:diamond_axe>);
	mods.jei.JEI.removeAndHide(<minecraft:golden_axe>);
	mods.jei.JEI.removeAndHide(<botania:manasteelaxe>);
	mods.jei.JEI.removeAndHide(<botania:elementiumaxe>);
	mods.jei.JEI.removeAndHide(<extrautils2:fireaxe>);
	mods.jei.JEI.removeAndHide(<iceandfire:silver_axe>);
	mods.jei.JEI.removeAndHide(<iceandfire:dragonbone_axe>);
	mods.jei.JEI.removeAndHide(<iceandfire:myrmex_desert_axe>);
	mods.jei.JEI.removeAndHide(<iceandfire:myrmex_jungle_axe>);
	mods.jei.JEI.removeAndHide(<iceandfire:dragonsteel_fire_axe>);
	mods.jei.JEI.removeAndHide(<iceandfire:dragonsteel_ice_axe>);
	mods.jei.JEI.removeAndHide(<immersiveengineering:axe_steel>);
	mods.jei.JEI.removeAndHide(<nuclearcraft:axe_boron>);
	mods.jei.JEI.removeAndHide(<nuclearcraft:axe_tough>);
	mods.jei.JEI.removeAndHide(<nuclearcraft:axe_hard_carbon>);
	mods.jei.JEI.removeAndHide(<nuclearcraft:axe_boron_nitride>);
	mods.jei.JEI.removeAndHide(<randomthings:spectreaxe>);

//	Hoes and things		_______________________________________________________________________________________________________________________________________________________________________
	mods.jei.JEI.removeAndHide(<minecraft:iron_hoe>);
	mods.jei.JEI.removeAndHide(<minecraft:diamond_hoe>);
	mods.jei.JEI.removeAndHide(<minecraft:golden_hoe>);
	mods.jei.JEI.removeAndHide(<iceandfire:silver_hoe>);
	mods.jei.JEI.removeAndHide(<iceandfire:dragonbone_hoe>);
	mods.jei.JEI.removeAndHide(<iceandfire:myrmex_desert_hoe>);
	mods.jei.JEI.removeAndHide(<iceandfire:myrmex_jungle_hoe>);
	mods.jei.JEI.removeAndHide(<iceandfire:dragonsteel_fire_hoe>);
	mods.jei.JEI.removeAndHide(<iceandfire:dragonsteel_ice_hoe>);
	mods.jei.JEI.removeAndHide(<nuclearcraft:hoe_boron>);
	mods.jei.JEI.removeAndHide(<nuclearcraft:hoe_tough>);
	mods.jei.JEI.removeAndHide(<nuclearcraft:hoe_hard_carbon>);
	mods.jei.JEI.removeAndHide(<nuclearcraft:hoe_boron_nitride>);
	mods.jei.JEI.removeAndHide(<natura:ghostwood_kama>);
	mods.jei.JEI.removeAndHide(<natura:bloodwood_kama>);
	mods.jei.JEI.removeAndHide(<natura:darkwood_kama>);
	mods.jei.JEI.removeAndHide(<natura:fusewood_kama>);
	mods.jei.JEI.removeAndHide(<natura:fusewood_kama>);
	mods.jei.JEI.removeAndHide(<natura:netherquartz_kama>);
	mods.jei.JEI.removeAndHide(<notreepunching:mattock/iron>);
	mods.jei.JEI.removeAndHide(<notreepunching:mattock/gold>);
	mods.jei.JEI.removeAndHide(<notreepunching:mattock/diamond>);
	mods.jei.JEI.removeAndHide(<tinkersforging:ntp_mattock/bronze>);
	mods.jei.JEI.removeAndHide(<tinkersforging:ntp_mattock/steel>);
	mods.jei.JEI.removeAndHide(<tinkersforging:ntp_mattock/gold>);
	mods.jei.JEI.removeAndHide(<tinkersforging:ntp_mattock/copper>);
	mods.jei.JEI.removeAndHide(<tinkersforging:ntp_mattock/tin>);
	mods.jei.JEI.removeAndHide(<tinkersforging:ntp_mattock/iron>);

//	MultiTools	_______________________________________________________________________________________________________________________________________________________________________
	mods.jei.JEI.removeAndHide(<nuclearcraft:spaxelhoe_boron>);
	mods.jei.JEI.removeAndHide(<nuclearcraft:spaxelhoe_tough>);
	mods.jei.JEI.removeAndHide(<nuclearcraft:spaxelhoe_hard_carbon>);
	mods.jei.JEI.removeAndHide(<nuclearcraft:spaxelhoe_boron_nitride>);

//	Helmets	_______________________________________________________________________________________________________________________________________________________________________
	mods.jei.JEI.removeAndHide(<minecraft:chainmail_helmet>);
	mods.jei.JEI.removeAndHide(<minecraft:iron_helmet>);
	mods.jei.JEI.removeAndHide(<minecraft:diamond_helmet>);
	mods.jei.JEI.removeAndHide(<minecraft:golden_helmet>);
	mods.jei.JEI.removeAndHide(<ceramics:clay_helmet>);
	mods.jei.JEI.removeAndHide(<iceandfire:armor_silver_metal_helmet>);
	mods.jei.JEI.removeAndHide(<iceandfire:deathworm_yellow_helmet>);
	mods.jei.JEI.removeAndHide(<iceandfire:deathworm_white_helmet>);
	mods.jei.JEI.removeAndHide(<iceandfire:deathworm_red_helmet>);
	mods.jei.JEI.removeAndHide(<iceandfire:myrmex_desert_helmet>);
	mods.jei.JEI.removeAndHide(<iceandfire:myrmex_jungle_helmet>);
	mods.jei.JEI.removeAndHide(<iceandfire:dragonsteel_fire_helmet>);
	mods.jei.JEI.removeAndHide(<iceandfire:dragonsteel_ice_helmet>);
	mods.jei.JEI.removeAndHide(<iceandfire:armor_red_helmet>);
	mods.jei.JEI.removeAndHide(<iceandfire:armor_bronze_helmet>);
	mods.jei.JEI.removeAndHide(<iceandfire:armor_green_helmet>);
	mods.jei.JEI.removeAndHide(<iceandfire:armor_gray_helmet>);
	mods.jei.JEI.removeAndHide(<iceandfire:armor_blue_helmet>);
	mods.jei.JEI.removeAndHide(<iceandfire:armor_white_helmet>);
	mods.jei.JEI.removeAndHide(<iceandfire:armor_sapphire_helmet>);
	mods.jei.JEI.removeAndHide(<iceandfire:armor_silver_helmet>);
	mods.jei.JEI.removeAndHide(<iceandfire:tide_blue_helmet>);
	mods.jei.JEI.removeAndHide(<iceandfire:tide_bronze_helmet>);
	mods.jei.JEI.removeAndHide(<iceandfire:tide_deepblue_helmet>);
	mods.jei.JEI.removeAndHide(<iceandfire:tide_green_helmet>);
	mods.jei.JEI.removeAndHide(<iceandfire:tide_purple_helmet>);
	mods.jei.JEI.removeAndHide(<iceandfire:tide_red_helmet>);
	mods.jei.JEI.removeAndHide(<iceandfire:tide_teal_helmet>);
	mods.jei.JEI.removeAndHide(<iceandfire:forest_troll_leather_helmet>);
	mods.jei.JEI.removeAndHide(<iceandfire:frost_troll_leather_helmet>);
	mods.jei.JEI.removeAndHide(<iceandfire:mountain_troll_leather_helmet>);
	mods.jei.JEI.removeAndHide(<immersiveengineering:faraday_suit_head>);
	mods.jei.JEI.removeAndHide(<immersiveengineering:steel_armor_head>);
	mods.jei.JEI.removeAndHide(<natura:imp_armor_helmet>);
	mods.jei.JEI.removeAndHide(<nuclearcraft:helm_boron>);
	mods.jei.JEI.removeAndHide(<nuclearcraft:helm_tough>);
	mods.jei.JEI.removeAndHide(<nuclearcraft:helm_hard_carbon>);
	mods.jei.JEI.removeAndHide(<nuclearcraft:helm_boron_nitride>);
	mods.jei.JEI.removeAndHide(<techguns:t1_combat_helmet>);
	mods.jei.JEI.removeAndHide(<techguns:t1_miner_helmet>);
	mods.jei.JEI.removeAndHide(<techguns:steam_helmet>); 
	mods.jei.JEI.removeAndHide(<techguns:hazmat_helmet>);
	mods.jei.JEI.removeAndHide(<techguns:t2_combat_helmet>);
	mods.jei.JEI.removeAndHide(<techguns:t2_riot_helmet>);
	mods.jei.JEI.removeAndHide(<techguns:t3_combat_helmet>);
	mods.jei.JEI.removeAndHide(<techguns:t3_power_helmet>); 
	mods.jei.JEI.removeAndHide(<techguns:t3_miner_helmet>); 
	mods.jei.JEI.removeAndHide(<techguns:t3_exo_helmet>); 
	mods.jei.JEI.removeAndHide(<techguns:t4_praetor_helmet>); 
	mods.jei.JEI.removeAndHide(<techguns:t4_power_helmet>); 
	mods.jei.JEI.removeAndHide(<theoneprobe:diamond_helmet_probe>);
	mods.jei.JEI.removeAndHide(<theoneprobe:gold_helmet_probe>);
	mods.jei.JEI.removeAndHide(<theoneprobe:iron_helmet_probe>);

//	Chestplate	_______________________________________________________________________________________________________________________________________________________________________
	mods.jei.JEI.removeAndHide(<nuclearcraft:chest_boron_nitride>);
	mods.jei.JEI.removeAndHide(<minecraft:iron_chestplate>);
	mods.jei.JEI.removeAndHide(<minecraft:diamond_chestplate>);
	mods.jei.JEI.removeAndHide(<minecraft:golden_chestplate>);
	mods.jei.JEI.removeAndHide(<crossroads:pig_zombie_chestplate>);
	mods.jei.JEI.removeAndHide(<iceandfire:armor_silver_metal_chestplate>);
	mods.jei.JEI.removeAndHide(<iceandfire:deathworm_yellow_chestplate>);
	mods.jei.JEI.removeAndHide(<iceandfire:deathworm_white_chestplate>);
	mods.jei.JEI.removeAndHide(<iceandfire:deathworm_red_chestplate>);
	mods.jei.JEI.removeAndHide(<iceandfire:myrmex_desert_chestplate>);
	mods.jei.JEI.removeAndHide(<iceandfire:myrmex_jungle_chestplate>);
	mods.jei.JEI.removeAndHide(<iceandfire:dragonsteel_fire_chestplate>);
	mods.jei.JEI.removeAndHide(<iceandfire:dragonsteel_ice_chestplate>);
	mods.jei.JEI.removeAndHide(<iceandfire:armor_red_chestplate>);
	mods.jei.JEI.removeAndHide(<iceandfire:armor_bronze_chestplate>);
	mods.jei.JEI.removeAndHide(<iceandfire:armor_green_chestplate>);
	mods.jei.JEI.removeAndHide(<iceandfire:armor_gray_chestplate>);
	mods.jei.JEI.removeAndHide(<iceandfire:armor_blue_chestplate>);
	mods.jei.JEI.removeAndHide(<iceandfire:armor_white_chestplate>);
	mods.jei.JEI.removeAndHide(<iceandfire:armor_sapphire_chestplate>);
	mods.jei.JEI.removeAndHide(<iceandfire:armor_silver_chestplate>);
	mods.jei.JEI.removeAndHide(<iceandfire:tide_blue_chestplate>);
	mods.jei.JEI.removeAndHide(<iceandfire:tide_bronze_chestplate>);
	mods.jei.JEI.removeAndHide(<iceandfire:tide_deepblue_chestplate>);
	mods.jei.JEI.removeAndHide(<iceandfire:tide_green_chestplate>);
	mods.jei.JEI.removeAndHide(<iceandfire:tide_purple_chestplate>);
	mods.jei.JEI.removeAndHide(<iceandfire:tide_red_chestplate>);
	mods.jei.JEI.removeAndHide(<iceandfire:tide_teal_chestplate>);
	mods.jei.JEI.removeAndHide(<iceandfire:forest_troll_leather_chestplate>);
	mods.jei.JEI.removeAndHide(<iceandfire:frost_troll_leather_chestplate>);
	mods.jei.JEI.removeAndHide(<iceandfire:mountain_troll_leather_chestplate>);
	mods.jei.JEI.removeAndHide(<immersiveengineering:faraday_suit_chest>);
	mods.jei.JEI.removeAndHide(<immersiveengineering:steel_armor_chest>);
	mods.jei.JEI.removeAndHide(<nuclearcraft:chest_boron>);
	mods.jei.JEI.removeAndHide(<nuclearcraft:chest_tough>);
	mods.jei.JEI.removeAndHide(<nuclearcraft:chest_hard_carbon>);
	mods.jei.JEI.removeAndHide(<minecraft:chainmail_chestplate>);
	mods.jei.JEI.removeAndHide(<techguns:steam_chestplate>);
	mods.jei.JEI.removeAndHide(<techguns:hazmat_chestplate>);
	mods.jei.JEI.removeAndHide(<techguns:t3_combat_chestplate>);
	mods.jei.JEI.removeAndHide(<techguns:t3_power_chestplate>);
	mods.jei.JEI.removeAndHide(<techguns:t3_miner_chestplate>);
	mods.jei.JEI.removeAndHide(<techguns:t3_exo_chestplate>);
	mods.jei.JEI.removeAndHide(<techguns:t4_praetor_chestplate>);
	mods.jei.JEI.removeAndHide(<techguns:t4_power_chestplate>);

//	Leggings	_______________________________________________________________________________________________________________________________________________________________________
	mods.jei.JEI.removeAndHide(<minecraft:chainmail_leggings>);
	mods.jei.JEI.removeAndHide(<minecraft:iron_leggings>);
	mods.jei.JEI.removeAndHide(<minecraft:diamond_leggings>);
	mods.jei.JEI.removeAndHide(<minecraft:golden_leggings>);
	mods.jei.JEI.removeAndHide(<ceramics:clay_leggings>);
	mods.jei.JEI.removeAndHide(<iceandfire:armor_silver_metal_leggings>);
	mods.jei.JEI.removeAndHide(<iceandfire:deathworm_yellow_leggings>);
	mods.jei.JEI.removeAndHide(<iceandfire:deathworm_white_leggings>);
	mods.jei.JEI.removeAndHide(<iceandfire:deathworm_red_leggings>);
	mods.jei.JEI.removeAndHide(<iceandfire:myrmex_desert_leggings>);
	mods.jei.JEI.removeAndHide(<iceandfire:myrmex_jungle_leggings>);
	mods.jei.JEI.removeAndHide(<iceandfire:dragonsteel_fire_leggings>);
	mods.jei.JEI.removeAndHide(<iceandfire:dragonsteel_ice_leggings>);
	mods.jei.JEI.removeAndHide(<iceandfire:armor_red_leggings>);
	mods.jei.JEI.removeAndHide(<iceandfire:armor_bronze_leggings>);
	mods.jei.JEI.removeAndHide(<iceandfire:armor_green_leggings>);
	mods.jei.JEI.removeAndHide(<iceandfire:armor_gray_leggings>);
	mods.jei.JEI.removeAndHide(<iceandfire:armor_blue_leggings>);
	mods.jei.JEI.removeAndHide(<iceandfire:armor_white_leggings>);
	mods.jei.JEI.removeAndHide(<iceandfire:armor_sapphire_leggings>);
	mods.jei.JEI.removeAndHide(<iceandfire:armor_silver_leggings>);
	mods.jei.JEI.removeAndHide(<iceandfire:tide_blue_leggings>);
	mods.jei.JEI.removeAndHide(<iceandfire:tide_bronze_leggings>);
	mods.jei.JEI.removeAndHide(<iceandfire:tide_deepblue_leggings>);
	mods.jei.JEI.removeAndHide(<iceandfire:tide_green_leggings>);
	mods.jei.JEI.removeAndHide(<iceandfire:tide_purple_leggings>);
	mods.jei.JEI.removeAndHide(<iceandfire:tide_red_leggings>);
	mods.jei.JEI.removeAndHide(<iceandfire:tide_teal_leggings>);
	mods.jei.JEI.removeAndHide(<iceandfire:forest_troll_leather_leggings>);
	mods.jei.JEI.removeAndHide(<iceandfire:frost_troll_leather_leggings>);
	mods.jei.JEI.removeAndHide(<iceandfire:mountain_troll_leather_leggings>);
	mods.jei.JEI.removeAndHide(<immersiveengineering:faraday_suit_legs>);
	mods.jei.JEI.removeAndHide(<immersiveengineering:steel_armor_legs>);
	mods.jei.JEI.removeAndHide(<natura:imp_armor_leggings>);
	mods.jei.JEI.removeAndHide(<nuclearcraft:legs_boron>);
	mods.jei.JEI.removeAndHide(<nuclearcraft:legs_tough>);
	mods.jei.JEI.removeAndHide(<nuclearcraft:legs_hard_carbon>);
	mods.jei.JEI.removeAndHide(<nuclearcraft:legs_boron_nitride>);
	mods.jei.JEI.removeAndHide(<nuclearcraft:legs_hazmat>);
	mods.jei.JEI.removeAndHide(<techguns:hazmat_leggings>);
	mods.jei.JEI.removeAndHide(<techguns:t3_combat_leggings>);
	mods.jei.JEI.removeAndHide(<techguns:t3_power_leggings>); 
	mods.jei.JEI.removeAndHide(<techguns:t3_miner_leggings>); 
	mods.jei.JEI.removeAndHide(<techguns:t3_exo_leggings>); 
	mods.jei.JEI.removeAndHide(<techguns:t4_praetor_leggings>); 
	mods.jei.JEI.removeAndHide(<techguns:t4_power_leggings>); 

//	Boots	_______________________________________________________________________________________________________________________________________________________________________
	mods.jei.JEI.removeAndHide(<minecraft:leather_boots>);
	mods.jei.JEI.removeAndHide(<minecraft:chainmail_boots>);
	mods.jei.JEI.removeAndHide(<minecraft:iron_boots>);
	mods.jei.JEI.removeAndHide(<minecraft:diamond_boots>);
	mods.jei.JEI.removeAndHide(<minecraft:golden_boots>);
	mods.jei.JEI.removeAndHide(<ceramics:clay_boots>);
	mods.jei.JEI.removeAndHide(<iceandfire:armor_silver_metal_boots>);
	mods.jei.JEI.removeAndHide(<iceandfire:deathworm_yellow_boots>);
	mods.jei.JEI.removeAndHide(<iceandfire:deathworm_white_boots>);
	mods.jei.JEI.removeAndHide(<iceandfire:deathworm_red_boots>);
	mods.jei.JEI.removeAndHide(<iceandfire:myrmex_desert_boots>);
	mods.jei.JEI.removeAndHide(<iceandfire:myrmex_jungle_boots>);
	mods.jei.JEI.removeAndHide(<iceandfire:dragonsteel_fire_boots>);
	mods.jei.JEI.removeAndHide(<iceandfire:dragonsteel_ice_boots>);
	mods.jei.JEI.removeAndHide(<iceandfire:armor_red_boots>);
	mods.jei.JEI.removeAndHide(<iceandfire:armor_bronze_boots>);
	mods.jei.JEI.removeAndHide(<iceandfire:armor_green_boots>);
	mods.jei.JEI.removeAndHide(<iceandfire:armor_gray_boots>);
	mods.jei.JEI.removeAndHide(<iceandfire:armor_blue_boots>);
	mods.jei.JEI.removeAndHide(<iceandfire:armor_white_boots>);
	mods.jei.JEI.removeAndHide(<iceandfire:armor_sapphire_boots>);
	mods.jei.JEI.removeAndHide(<iceandfire:armor_silver_boots>);
	mods.jei.JEI.removeAndHide(<iceandfire:tide_blue_boots>);
	mods.jei.JEI.removeAndHide(<iceandfire:tide_bronze_boots>);
	mods.jei.JEI.removeAndHide(<iceandfire:tide_deepblue_boots>);
	mods.jei.JEI.removeAndHide(<iceandfire:tide_green_boots>);
	mods.jei.JEI.removeAndHide(<iceandfire:tide_purple_boots>);
	mods.jei.JEI.removeAndHide(<iceandfire:tide_red_boots>);
	mods.jei.JEI.removeAndHide(<iceandfire:tide_teal_boots>);
	mods.jei.JEI.removeAndHide(<iceandfire:forest_troll_leather_boots>);
	mods.jei.JEI.removeAndHide(<iceandfire:frost_troll_leather_boots>);
	mods.jei.JEI.removeAndHide(<iceandfire:mountain_troll_leather_boots>);
	mods.jei.JEI.removeAndHide(<immersiveengineering:faraday_suit_feet>);
	mods.jei.JEI.removeAndHide(<immersiveengineering:steel_armor_feet>);
	mods.jei.JEI.removeAndHide(<leatherworks:broken_leather_boots>);
	mods.jei.JEI.removeAndHide(<natura:imp_armor_boots>);
	mods.jei.JEI.removeAndHide(<nuclearcraft:boots_boron>);
	mods.jei.JEI.removeAndHide(<nuclearcraft:boots_tough>);
	mods.jei.JEI.removeAndHide(<nuclearcraft:boots_hard_carbon>);
	mods.jei.JEI.removeAndHide(<nuclearcraft:boots_boron_nitride>);
	mods.jei.JEI.removeAndHide(<nuclearcraft:boots_hazmat>);
	mods.jei.JEI.removeAndHide(<techguns:t1_combat_boots>);
	mods.jei.JEI.removeAndHide(<techguns:t1_scout_boots>);
	mods.jei.JEI.removeAndHide(<techguns:t1_miner_boots>);
	mods.jei.JEI.removeAndHide(<techguns:steam_boots>); 
	mods.jei.JEI.removeAndHide(<techguns:hazmat_boots>);
	mods.jei.JEI.removeAndHide(<techguns:t2_combat_boots>);
	mods.jei.JEI.removeAndHide(<techguns:t2_commando_boots>);
	mods.jei.JEI.removeAndHide(<techguns:t2_riot_boots>);
	mods.jei.JEI.removeAndHide(<techguns:t3_combat_boots>);
	mods.jei.JEI.removeAndHide(<techguns:t3_power_boots>); 
	mods.jei.JEI.removeAndHide(<techguns:t3_miner_boots>); 
	mods.jei.JEI.removeAndHide(<techguns:t3_exo_boots>); 
	mods.jei.JEI.removeAndHide(<techguns:t4_praetor_boots>); 
	mods.jei.JEI.removeAndHide(<techguns:t4_power_boots>); 
	mods.jei.JEI.removeAndHide(<tconstruct:slime_boots>);
	mods.jei.JEI.removeAndHide(<tconstruct:slime_boots:1>);
	mods.jei.JEI.removeAndHide(<tconstruct:slime_boots:2>);
	mods.jei.JEI.removeAndHide(<tconstruct:slime_boots:3>);
	mods.jei.JEI.removeAndHide(<tconstruct:slime_boots:4>);


//=====================================================================================================================================================================================================	
//	Base Metals and Modern Metals items.  Because their config options are ALL OR NOTHING.
//=====================================================================================================================================================================================================

/* - These don't really increase load times.  This only reduced load times because of the Smeltery scanning.  These guys can exist again
	//	Stairs	_______________________________________________________________________________________________________________________________________________________________________
mods.jei.JEI.removeAndHide(<basemetals:iron_stairs>);
mods.jei.JEI.removeAndHide(<basemetals:gold_stairs>);
//mods.jei.JEI.removeAndHide(<basemetals:diamond_stairs>);
//mods.jei.JEI.removeAndHide(<basemetals:emerald_stairs>);
mods.jei.JEI.removeAndHide(<basemetals:antimony_stairs>);
mods.jei.JEI.removeAndHide(<basemetals:bismuth_stairs>);
mods.jei.JEI.removeAndHide(<basemetals:copper_stairs>);
mods.jei.JEI.removeAndHide(<basemetals:lead_stairs>);
mods.jei.JEI.removeAndHide(<basemetals:nickel_stairs>);
mods.jei.JEI.removeAndHide(<basemetals:silver_stairs>);
mods.jei.JEI.removeAndHide(<basemetals:zinc_stairs>);
mods.jei.JEI.removeAndHide(<basemetals:brass_stairs>);
mods.jei.JEI.removeAndHide(<basemetals:bronze_stairs>);
mods.jei.JEI.removeAndHide(<basemetals:cupronickel_stairs>);
mods.jei.JEI.removeAndHide(<basemetals:electrum_stairs>);
mods.jei.JEI.removeAndHide(<basemetals:invar_stairs>);
mods.jei.JEI.removeAndHide(<basemetals:steel_stairs>);
mods.jei.JEI.removeAndHide(<basemetals:coldiron_stairs>);
mods.jei.JEI.removeAndHide(<basemetals:platinum_stairs>);
mods.jei.JEI.removeAndHide(<basemetals:starsteel_stairs>);
mods.jei.JEI.removeAndHide(<basemetals:aquarium_stairs>);
mods.jei.JEI.removeAndHide(<basemetals:mithril_stairs>);
mods.jei.JEI.removeAndHide(<modernmetals:aluminum_stairs>);
mods.jei.JEI.removeAndHide(<modernmetals:beryllium_stairs>);
mods.jei.JEI.removeAndHide(<modernmetals:boron_stairs>);
mods.jei.JEI.removeAndHide(<modernmetals:chromium_stairs>);
mods.jei.JEI.removeAndHide(<modernmetals:magnesium_stairs>);
mods.jei.JEI.removeAndHide(<modernmetals:manganese_stairs>);
mods.jei.JEI.removeAndHide(<modernmetals:rutile_stairs>);
mods.jei.JEI.removeAndHide(<modernmetals:tantalum_stairs>);
mods.jei.JEI.removeAndHide(<modernmetals:tungsten_stairs>);
mods.jei.JEI.removeAndHide(<modernmetals:zirconium_stairs>);
mods.jei.JEI.removeAndHide(<modernmetals:aluminumbrass_stairs>);
mods.jei.JEI.removeAndHide(<modernmetals:galvanizedsteel_stairs>);
mods.jei.JEI.removeAndHide(<modernmetals:nichrome_stairs>);
mods.jei.JEI.removeAndHide(<modernmetals:stainlesssteel_stairs>);
mods.jei.JEI.removeAndHide(<modernmetals:cadmium_stairs>);
mods.jei.JEI.removeAndHide(<modernmetals:iridium_stairs>);
mods.jei.JEI.removeAndHide(<modernmetals:plutonium_stairs>);
mods.jei.JEI.removeAndHide(<modernmetals:uranium_stairs>);
mods.jei.JEI.removeAndHide(<modernmetals:titanium_stairs>);

	//	Slabs	_______________________________________________________________________________________________________________________________________________________________________
mods.jei.JEI.removeAndHide(<basemetals:iron_slab>);
mods.jei.JEI.removeAndHide(<basemetals:gold_slab>);
//mods.jei.JEI.removeAndHide(<basemetals:diamond_slab>);
//mods.jei.JEI.removeAndHide(<basemetals:emerald_slab>);
mods.jei.JEI.removeAndHide(<basemetals:antimony_slab>);
mods.jei.JEI.removeAndHide(<basemetals:bismuth_slab>);
mods.jei.JEI.removeAndHide(<basemetals:copper_slab>);
mods.jei.JEI.removeAndHide(<basemetals:lead_slab>);
mods.jei.JEI.removeAndHide(<basemetals:nickel_slab>);
mods.jei.JEI.removeAndHide(<basemetals:silver_slab>);
mods.jei.JEI.removeAndHide(<basemetals:zinc_slab>);
mods.jei.JEI.removeAndHide(<basemetals:brass_slab>);
mods.jei.JEI.removeAndHide(<basemetals:bronze_slab>);
mods.jei.JEI.removeAndHide(<basemetals:cupronickel_slab>);
mods.jei.JEI.removeAndHide(<basemetals:electrum_slab>);
mods.jei.JEI.removeAndHide(<basemetals:invar_slab>);
mods.jei.JEI.removeAndHide(<basemetals:steel_slab>);
mods.jei.JEI.removeAndHide(<basemetals:coldiron_slab>);
mods.jei.JEI.removeAndHide(<basemetals:platinum_slab>);
mods.jei.JEI.removeAndHide(<basemetals:starsteel_slab>);
mods.jei.JEI.removeAndHide(<basemetals:aquarium_slab>);
mods.jei.JEI.removeAndHide(<basemetals:mithril_slab>);
mods.jei.JEI.removeAndHide(<modernmetals:aluminum_slab>);
mods.jei.JEI.removeAndHide(<modernmetals:beryllium_slab>);
mods.jei.JEI.removeAndHide(<modernmetals:boron_slab>);
mods.jei.JEI.removeAndHide(<modernmetals:chromium_slab>);
mods.jei.JEI.removeAndHide(<modernmetals:magnesium_slab>);
mods.jei.JEI.removeAndHide(<modernmetals:manganese_slab>);
mods.jei.JEI.removeAndHide(<modernmetals:rutile_slab>);
mods.jei.JEI.removeAndHide(<modernmetals:tantalum_slab>);
mods.jei.JEI.removeAndHide(<modernmetals:tungsten_slab>);
mods.jei.JEI.removeAndHide(<modernmetals:zirconium_slab>);
mods.jei.JEI.removeAndHide(<modernmetals:aluminumbrass_slab>);
mods.jei.JEI.removeAndHide(<modernmetals:galvanizedsteel_slab>);
mods.jei.JEI.removeAndHide(<modernmetals:nichrome_slab>);
mods.jei.JEI.removeAndHide(<modernmetals:stainlesssteel_slab>);
mods.jei.JEI.removeAndHide(<modernmetals:cadmium_slab>);
mods.jei.JEI.removeAndHide(<modernmetals:iridium_slab>);
mods.jei.JEI.removeAndHide(<modernmetals:plutonium_slab>);
mods.jei.JEI.removeAndHide(<modernmetals:uranium_slab>);
mods.jei.JEI.removeAndHide(<modernmetals:titanium_slab>);


	//	Pressure Plates	_______________________________________________________________________________________________________________________________________________________________________
//mods.jei.JEI.removeAndHide(<basemetals:diamond_pressure_plate>);
//mods.jei.JEI.removeAndHide(<basemetals:emerald_pressure_plate>);
mods.jei.JEI.removeAndHide(<basemetals:quartz_pressure_plate>);
mods.jei.JEI.removeAndHide(<basemetals:human_detector>);
mods.jei.JEI.removeAndHide(<basemetals:antimony_pressure_plate>);
mods.jei.JEI.removeAndHide(<basemetals:bismuth_pressure_plate>);
mods.jei.JEI.removeAndHide(<basemetals:copper_pressure_plate>);
mods.jei.JEI.removeAndHide(<basemetals:lead_pressure_plate>);
mods.jei.JEI.removeAndHide(<basemetals:nickel_pressure_plate>);
mods.jei.JEI.removeAndHide(<basemetals:silver_pressure_plate>);
mods.jei.JEI.removeAndHide(<basemetals:zinc_pressure_plate>);
mods.jei.JEI.removeAndHide(<basemetals:brass_pressure_plate>);
mods.jei.JEI.removeAndHide(<basemetals:bronze_pressure_plate>);
mods.jei.JEI.removeAndHide(<basemetals:cupronickel_pressure_plate>);
mods.jei.JEI.removeAndHide(<basemetals:electrum_pressure_plate>);
mods.jei.JEI.removeAndHide(<basemetals:invar_pressure_plate>);
mods.jei.JEI.removeAndHide(<basemetals:steel_pressure_plate>);
mods.jei.JEI.removeAndHide(<basemetals:coldiron_pressure_plate>);
mods.jei.JEI.removeAndHide(<basemetals:platinum_pressure_plate>);
mods.jei.JEI.removeAndHide(<basemetals:starsteel_pressure_plate>);
mods.jei.JEI.removeAndHide(<basemetals:aquarium_pressure_plate>);
mods.jei.JEI.removeAndHide(<basemetals:mithril_pressure_plate>);
mods.jei.JEI.removeAndHide(<modernmetals:aluminum_pressure_plate>);
mods.jei.JEI.removeAndHide(<modernmetals:beryllium_pressure_plate>);
mods.jei.JEI.removeAndHide(<modernmetals:boron_pressure_plate>);
mods.jei.JEI.removeAndHide(<modernmetals:chromium_pressure_plate>);
mods.jei.JEI.removeAndHide(<modernmetals:magnesium_pressure_plate>);
mods.jei.JEI.removeAndHide(<modernmetals:manganese_pressure_plate>);
mods.jei.JEI.removeAndHide(<modernmetals:rutile_pressure_plate>);
mods.jei.JEI.removeAndHide(<modernmetals:tantalum_pressure_plate>);
mods.jei.JEI.removeAndHide(<modernmetals:tungsten_pressure_plate>);
mods.jei.JEI.removeAndHide(<modernmetals:zirconium_pressure_plate>);
mods.jei.JEI.removeAndHide(<modernmetals:aluminumbrass_pressure_plate>);
mods.jei.JEI.removeAndHide(<modernmetals:galvanizedsteel_pressure_plate>);
mods.jei.JEI.removeAndHide(<modernmetals:nichrome_pressure_plate>);
mods.jei.JEI.removeAndHide(<modernmetals:stainlesssteel_pressure_plate>);
mods.jei.JEI.removeAndHide(<modernmetals:cadmium_pressure_plate>);
mods.jei.JEI.removeAndHide(<modernmetals:iridium_pressure_plate>);
mods.jei.JEI.removeAndHide(<modernmetals:plutonium_pressure_plate>);
mods.jei.JEI.removeAndHide(<modernmetals:uranium_pressure_plate>);
mods.jei.JEI.removeAndHide(<modernmetals:titanium_pressure_plate>);


	//	Walls	_______________________________________________________________________________________________________________________________________________________________________
mods.jei.JEI.removeAndHide(<basemetals:iron_wall>);
mods.jei.JEI.removeAndHide(<basemetals:gold_wall>);
//mods.jei.JEI.removeAndHide(<basemetals:diamond_wall>);
//mods.jei.JEI.removeAndHide(<basemetals:emerald_wall>);
mods.jei.JEI.removeAndHide(<basemetals:quartz_wall>);
mods.jei.JEI.removeAndHide(<basemetals:antimony_wall>);
mods.jei.JEI.removeAndHide(<basemetals:bismuth_wall>);
mods.jei.JEI.removeAndHide(<basemetals:copper_wall>);
mods.jei.JEI.removeAndHide(<basemetals:lead_wall>);
mods.jei.JEI.removeAndHide(<basemetals:nickel_wall>);
mods.jei.JEI.removeAndHide(<basemetals:silver_wall>);
mods.jei.JEI.removeAndHide(<basemetals:zinc_wall>);
mods.jei.JEI.removeAndHide(<basemetals:brass_wall>);
mods.jei.JEI.removeAndHide(<basemetals:bronze_wall>);
mods.jei.JEI.removeAndHide(<basemetals:cupronickel_wall>);
mods.jei.JEI.removeAndHide(<basemetals:electrum_wall>);
mods.jei.JEI.removeAndHide(<basemetals:invar_wall>);
mods.jei.JEI.removeAndHide(<basemetals:steel_wall>);
mods.jei.JEI.removeAndHide(<basemetals:coldiron_wall>);
mods.jei.JEI.removeAndHide(<basemetals:platinum_wall>);
mods.jei.JEI.removeAndHide(<basemetals:starsteel_wall>);
mods.jei.JEI.removeAndHide(<basemetals:aquarium_wall>);
mods.jei.JEI.removeAndHide(<basemetals:mithril_wall>);
mods.jei.JEI.removeAndHide(<modernmetals:aluminum_wall>);
mods.jei.JEI.removeAndHide(<modernmetals:beryllium_wall>);
mods.jei.JEI.removeAndHide(<modernmetals:boron_wall>);
mods.jei.JEI.removeAndHide(<modernmetals:chromium_wall>);
mods.jei.JEI.removeAndHide(<modernmetals:magnesium_wall>);
mods.jei.JEI.removeAndHide(<modernmetals:manganese_wall>);
mods.jei.JEI.removeAndHide(<modernmetals:rutile_wall>);
mods.jei.JEI.removeAndHide(<modernmetals:tantalum_wall>);
mods.jei.JEI.removeAndHide(<modernmetals:tungsten_wall>);
mods.jei.JEI.removeAndHide(<modernmetals:zirconium_wall>);
mods.jei.JEI.removeAndHide(<modernmetals:aluminumbrass_wall>);
mods.jei.JEI.removeAndHide(<modernmetals:galvanizedsteel_wall>);
mods.jei.JEI.removeAndHide(<modernmetals:nichrome_wall>);
mods.jei.JEI.removeAndHide(<modernmetals:stainlesssteel_wall>);
mods.jei.JEI.removeAndHide(<modernmetals:cadmium_wall>);
mods.jei.JEI.removeAndHide(<modernmetals:iridium_wall>);
mods.jei.JEI.removeAndHide(<modernmetals:plutonium_wall>);
mods.jei.JEI.removeAndHide(<modernmetals:uranium_wall>);
mods.jei.JEI.removeAndHide(<modernmetals:titanium_wall>);

	//	Tiny Dusts	_______________________________________________________________________________________________________________________________________________________________________
mods.jei.JEI.removeAndHide(<basemetals:gold_smallpowder>);
//mods.jei.JEI.removeAndHide(<basemetals:diamond_smallpowder>);
//mods.jei.JEI.removeAndHide(<basemetals:emerald_smallpowder>);
//mods.jei.JEI.removeAndHide(<basemetals:coal_smallpowder>);
//mods.jei.JEI.removeAndHide(<basemetals:charcoal_smallpowder>);
mods.jei.JEI.removeAndHide(<basemetals:quartz_smallpowder>);
mods.jei.JEI.removeAndHide(<basemetals:obsidian_smallpowder>);
mods.jei.JEI.removeAndHide(<basemetals:lapis_smallpowder>);
mods.jei.JEI.removeAndHide(<basemetals:redstone_smallpowder>);
mods.jei.JEI.removeAndHide(<basemetals:antimony_smallpowder>);
mods.jei.JEI.removeAndHide(<basemetals:bismuth_smallpowder>);
mods.jei.JEI.removeAndHide(<basemetals:copper_smallpowder>);
mods.jei.JEI.removeAndHide(<basemetals:lead_smallpowder>);
mods.jei.JEI.removeAndHide(<basemetals:nickel_smallpowder>);
mods.jei.JEI.removeAndHide(<basemetals:silver_smallpowder>);
mods.jei.JEI.removeAndHide(<basemetals:zinc_smallpowder>);
mods.jei.JEI.removeAndHide(<basemetals:brass_smallblend>);
mods.jei.JEI.removeAndHide(<basemetals:bronze_smallblend>);
mods.jei.JEI.removeAndHide(<basemetals:cupronickel_smallblend>);
mods.jei.JEI.removeAndHide(<basemetals:electrum_smallblend>);
mods.jei.JEI.removeAndHide(<basemetals:invar_smallblend>);
mods.jei.JEI.removeAndHide(<basemetals:steel_smallblend>);
mods.jei.JEI.removeAndHide(<basemetals:coldiron_smallpowder>);
mods.jei.JEI.removeAndHide(<basemetals:platinum_smallpowder>);
mods.jei.JEI.removeAndHide(<basemetals:starsteel_smallpowder>);
mods.jei.JEI.removeAndHide(<basemetals:aquarium_smallblend>);
mods.jei.JEI.removeAndHide(<basemetals:aquarium_smallpowder>);
mods.jei.JEI.removeAndHide(<basemetals:mithril_smallblend>);
mods.jei.JEI.removeAndHide(<basemetals:mithril_smallpowder>);
mods.jei.JEI.removeAndHide(<basemetals:mercury_smallpowder>);
mods.jei.JEI.removeAndHide(<modernmetals:aluminum_smallpowder>);
mods.jei.JEI.removeAndHide(<modernmetals:beryllium_smallpowder>);
mods.jei.JEI.removeAndHide(<modernmetals:boron_smallpowder>);
mods.jei.JEI.removeAndHide(<modernmetals:chromium_smallpowder>);
mods.jei.JEI.removeAndHide(<modernmetals:magnesium_smallpowder>);
mods.jei.JEI.removeAndHide(<modernmetals:manganese_smallpowder>);
mods.jei.JEI.removeAndHide(<modernmetals:rutile_smallpowder>);
mods.jei.JEI.removeAndHide(<modernmetals:tantalum_smallpowder>);
mods.jei.JEI.removeAndHide(<modernmetals:tungsten_smallpowder>);
mods.jei.JEI.removeAndHide(<modernmetals:zirconium_smallpowder>);
mods.jei.JEI.removeAndHide(<modernmetals:aluminumbrass_smallblend>);
mods.jei.JEI.removeAndHide(<modernmetals:aluminumbrass_smallpowder>);
mods.jei.JEI.removeAndHide(<modernmetals:galvanizedsteel_smallblend>);
mods.jei.JEI.removeAndHide(<modernmetals:galvanizedsteel_smallpowder>);
mods.jei.JEI.removeAndHide(<modernmetals:nichrome_smallblend>);
mods.jei.JEI.removeAndHide(<modernmetals:nichrome_smallpowder>);
mods.jei.JEI.removeAndHide(<modernmetals:stainlesssteel_smallblend>);
mods.jei.JEI.removeAndHide(<modernmetals:stainlesssteel_smallpowder>);
mods.jei.JEI.removeAndHide(<modernmetals:cadmium_smallpowder>);
mods.jei.JEI.removeAndHide(<modernmetals:iridium_smallpowder>);
mods.jei.JEI.removeAndHide(<modernmetals:plutonium_smallpowder>);
mods.jei.JEI.removeAndHide(<modernmetals:uranium_smallpowder>);
mods.jei.JEI.removeAndHide(<modernmetals:titanium_smallpowder>);
mods.jei.JEI.removeAndHide(<modernmetals:titanium_smallblend>);
*/

