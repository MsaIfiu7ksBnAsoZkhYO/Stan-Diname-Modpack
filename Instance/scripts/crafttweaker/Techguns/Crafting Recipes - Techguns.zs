//=====================================================================================================================================================================================================	
//	Import-ant things
//=====================================================================================================================================================================================================


import mods.artisanworktables.builder.RecipeBuilder;


//=====================================================================================================================================================================================================	
//	Remove some recipes that shouldn't be there
//=====================================================================================================================================================================================================


	//	Annoying recipes	_______________________________________________________________________________________________________________________________________________________________________
recipes.removeByRecipeName("techguns:itemshared_79_ingotcopper");


	//	Guns that might have a recipe	_______________________________________________________________________________________________________________________________________________________________________
recipes.removeByRecipeName("techguns:handcannon");
recipes.removeByRecipeName("techguns:sawedoff");
recipes.removeByRecipeName("techguns:revolver");
recipes.removeByRecipeName("techguns:goldenrevolver");
recipes.removeByRecipeName("techguns:thompson");
recipes.removeByRecipeName("techguns:thompson_alt");
recipes.removeByRecipeName("techguns:ak47");
recipes.removeByRecipeName("techguns:ak47_alt");
recipes.removeByRecipeName("techguns:boltaction");
recipes.removeByRecipeName("techguns:m4");
recipes.removeByRecipeName("techguns:m4_alt");
recipes.removeByRecipeName("techguns:m4_infiltrator");
recipes.removeByRecipeName("techguns:m4_infiltrator_alt");
recipes.removeByRecipeName("techguns:pistol");
recipes.removeByRecipeName("techguns:pistol_alt");
recipes.removeByRecipeName("techguns:combatshotgun");
recipes.removeByRecipeName("techguns:mac10");
recipes.removeByRecipeName("techguns:mac10_alt");
recipes.removeByRecipeName("techguns:flamethrower");
recipes.removeByRecipeName("techguns:flamethrower_alt");
recipes.removeByRecipeName("techguns:rocketlauncher");
recipes.removeByRecipeName("techguns:rocketlauncher_alt");
recipes.removeByRecipeName("techguns:grimreaper");
recipes.removeByRecipeName("techguns:grenadelauncher");
recipes.removeByRecipeName("techguns:aug");
recipes.removeByRecipeName("techguns:aug_alt");
recipes.removeByRecipeName("techguns:lmg");
recipes.removeByRecipeName("techguns:lmg_alt");
recipes.removeByRecipeName("techguns:minigun");
recipes.removeByRecipeName("techguns:minigun_alt");
recipes.removeByRecipeName("techguns:as50");
recipes.removeByRecipeName("techguns:as50_alt");
recipes.removeByRecipeName("techguns:vector");
recipes.removeByRecipeName("techguns:vector_alt");
recipes.removeByRecipeName("techguns:scar");
recipes.removeByRecipeName("techguns:scar_alt");
recipes.removeByRecipeName("techguns:guidedmissilelauncher");
recipes.removeByRecipeName("techguns:guidedmissilelauncher_alt");
recipes.removeByRecipeName("techguns:stielgranate");
recipes.removeByRecipeName("techguns:fraggrenade");
recipes.removeByRecipeName("techguns:gaussrifle");
recipes.removeByRecipeName("techguns:gaussrifle_alt");

	//	Guns not coming back	_______________________________________________________________________________________________________________________________________________________________________
recipes.removeByRecipeName("techguns:netherblaster");
recipes.removeByRecipeName("techguns:biogun");
recipes.removeByRecipeName("techguns:biogun_alt");
recipes.removeByRecipeName("techguns:teslagun");
recipes.removeByRecipeName("techguns:teslagun_alt");
recipes.removeByRecipeName("techguns:lasergun");
recipes.removeByRecipeName("techguns:lasergun_alt");
recipes.removeByRecipeName("techguns:blasterrifle");
recipes.removeByRecipeName("techguns:blasterrifle_alt");
recipes.removeByRecipeName("techguns:sonicshotgun");
recipes.removeByRecipeName("techguns:sonicshotgun_alt");
recipes.removeByRecipeName("techguns:pdw");
recipes.removeByRecipeName("techguns:pdw_alt");
recipes.removeByRecipeName("techguns:pulserifle");
recipes.removeByRecipeName("techguns:pulserifle_alt");
recipes.removeByRecipeName("techguns:mibgun");
recipes.removeByRecipeName("techguns:mibgun_alt");
recipes.removeByRecipeName("techguns:powerhammer");
recipes.removeByRecipeName("techguns:powerhammer_alt");
recipes.removeByRecipeName("techguns:nucleardeathray");
recipes.removeByRecipeName("techguns:nucleardeathray_alt");
recipes.removeByRecipeName("techguns:miningdrill");
recipes.removeByRecipeName("techguns:miningdrill_alt");
recipes.removeByRecipeName("techguns:tfg");
recipes.removeByRecipeName("techguns:tfg_alt");

	//	Boolits	_______________________________________________________________________________________________________________________________________________________________________
recipes.removeByRecipeName("techguns:itemshared_1_pistolrounds");
recipes.removeByRecipeName("techguns:itemshared_2_shotgunrounds");
recipes.removeByRecipeName("techguns:itemshared_3_riflerounds");
recipes.removeByRecipeName("techguns:itemshared_7_rocket");
recipes.removeByRecipeName("techguns:itemshared_8_rifleroundsstack");

	//	Armor	_______________________________________________________________________________________________________________________________________________________________________
recipes.removeByRecipeName("techguns:t1_combat_helmet");
recipes.removeByRecipeName("techguns:t1_combat_chestplate");
recipes.removeByRecipeName("techguns:t1_combat_leggings");
recipes.removeByRecipeName("techguns:t1_combat_boots");

recipes.removeByRecipeName("techguns:t1_scout_helmet");
recipes.removeByRecipeName("techguns:t1_scout_chestplate");
recipes.removeByRecipeName("techguns:t1_scout_leggings");
recipes.removeByRecipeName("techguns:t1_scout_boots");

recipes.removeByRecipeName("techguns:t1_miner_helmet");
recipes.removeByRecipeName("techguns:t1_miner_chestplate");
recipes.removeByRecipeName("techguns:t1_miner_leggings");
recipes.removeByRecipeName("techguns:t1_miner_boots");

recipes.removeByRecipeName("techguns:steam_helmet");
recipes.removeByRecipeName("techguns:steam_chestplate");
recipes.removeByRecipeName("techguns:steam_leggings");
recipes.removeByRecipeName("techguns:steam_boots");

recipes.removeByRecipeName("techguns:hazmat_helmet");
recipes.removeByRecipeName("techguns:hazmat_chestplate");
recipes.removeByRecipeName("techguns:hazmat_leggings");
recipes.removeByRecipeName("techguns:hazmat_boots");

recipes.removeByRecipeName("techguns:t2_combat_helmet");
recipes.removeByRecipeName("techguns:t2_combat_chestplate");
recipes.removeByRecipeName("techguns:t2_combat_leggings");
recipes.removeByRecipeName("techguns:t2_combat_boots");

recipes.removeByRecipeName("techguns:t2_commando_helmet");
recipes.removeByRecipeName("techguns:t2_commando_chestplate");
recipes.removeByRecipeName("techguns:t2_commando_leggings");
recipes.removeByRecipeName("techguns:t2_commando_boots");

recipes.removeByRecipeName("techguns:t2_riot_helmet");
recipes.removeByRecipeName("techguns:t2_riot_chestplate");
recipes.removeByRecipeName("techguns:t2_riot_leggings");
recipes.removeByRecipeName("techguns:t2_riot_boots");

recipes.removeByRecipeName("techguns:t3_combat_helmet");
recipes.removeByRecipeName("techguns:t3_combat_chestplate");
recipes.removeByRecipeName("techguns:t3_combat_leggings");
recipes.removeByRecipeName("techguns:t3_combat_boots");

recipes.removeByRecipeName("techguns:t3_power_helmet");
recipes.removeByRecipeName("techguns:t3_power_chestplate");
recipes.removeByRecipeName("techguns:t3_power_leggings");
recipes.removeByRecipeName("techguns:t3_power_boots");

recipes.removeByRecipeName("techguns:t3_miner_helmet");
recipes.removeByRecipeName("techguns:t3_miner_chestplate");
recipes.removeByRecipeName("techguns:t3_miner_leggings");
recipes.removeByRecipeName("techguns:t3_miner_boots");

recipes.removeByRecipeName("techguns:t3_exo_helmet");
recipes.removeByRecipeName("techguns:t3_exo_chestplate");
recipes.removeByRecipeName("techguns:t3_exo_leggings");
recipes.removeByRecipeName("techguns:t3_exo_boots");


	//	Extra things	_______________________________________________________________________________________________________________________________________________________________________
recipes.removeByRecipeName("techguns:jumppack");
recipes.removeByRecipeName("techguns:glider");
recipes.removeByRecipeName("techguns:jetpack");
recipes.removeByRecipeName("techguns:jetpack_alt");
recipes.removeByRecipeName("techguns:antigravpack");
recipes.removeByRecipeName("techguns:combatknife");
recipes.removeByRecipeName("techguns:crowbar");

	//	Gun parts	_______________________________________________________________________________________________________________________________________________________________________
recipes.removeByRecipeName("techguns:itemshared_33_ironreceiver");
recipes.removeByRecipeName("techguns:itemshared_34_steelreceiver");
recipes.removeByRecipeName("techguns:itemshared_35_obsidiansteelreceiver");
recipes.removeByRecipeName("techguns:itemshared_36_carbonreceiver");
recipes.removeByRecipeName("techguns:itemshared_37_stonebarrel");
recipes.removeByRecipeName("techguns:itemshared_38_ironbarrel");
recipes.removeByRecipeName("techguns:itemshared_39_obsidiansteelbarrel");
recipes.removeByRecipeName("techguns:itemshared_40_carbonbarrel");
recipes.removeByRecipeName("techguns:itemshared_41_laserbarrel");
recipes.removeByRecipeName("techguns:itemshared_128_gaussbarrel");
recipes.removeByRecipeName("techguns:itemshared_129_shieldedtitaniumbarrel");
recipes.removeByRecipeName("techguns:itemshared_130_titaniumreceiver");

	//	Magazines	_______________________________________________________________________________________________________________________________________________________________________
recipes.removeByRecipeName("techguns:itemshared_10_smgmagazineempty");
recipes.removeByRecipeName("techguns:itemshared_12_pistolmagazineempty");
recipes.removeByRecipeName("techguns:itemshared_14_assaultriflemagazineempty");
recipes.removeByRecipeName("techguns:itemshared_16_lmgmagazineempty");
recipes.removeByRecipeName("techguns:itemshared_18_minigundrumempty");
recipes.removeByRecipeName("techguns:itemshared_20_as50magazineempty");
recipes.removeByRecipeName("techguns:itemshared_22_advancedmagazineempty");


//=====================================================================================================================================================================================================	
//	Make things harder
//=====================================================================================================================================================================================================


	//	Techguns tough fabric	_______________________________________________________________________________________________________________________________________________________________________
RecipeBuilder.get("tailor")
    .setShaped([
        [<magneticraft:crafting:6>, <ore:fabricHemp>,   <magneticraft:crafting:6>   ],
        [<ore:fabricHemp>,          <ore:leather>,      <ore:fabricHemp>            ],
        [<magneticraft:crafting:6>, <ore:fabricHemp>,   <magneticraft:crafting:6>   ]])
    .setSecondaryIngredients( [<ore:string> * 4] )
    .addTool(<ore:artisansNeedle>, 1)
    .addOutput(<techguns:itemshared:60>)
    .create();
