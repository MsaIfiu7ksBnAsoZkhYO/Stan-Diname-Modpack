//=====================================================================================================================================================================================================	
//	Import-ant Stuff
//=====================================================================================================================================================================================================	


#priority 9999

import crafttweaker.item.IItemStack;


//=====================================================================================================================================================================================================	
//  Recipe exception arrays are here to reduce the clutter of the load times script and keep it's main code from being pushed down.
//=====================================================================================================================================================================================================


    //  Items being removed outright for a specific output.  Also used by JEI Remove items to hide the item
global GlobalRemovalRecipeOutputs as IItemStack[] = [
	<atum:spinning_wheel>,
	<atum:quern>,
	<atum:kiln>,
	<leatherworks:debarked_log_oak>,
	<leatherworks:debarked_log_acacia>,
	<leatherworks:debarked_log_birch>,
	<leatherworks:debarked_log_spruce>,
	<leatherworks:debarked_log_darkoak>,
	<leatherworks:debarked_log_jungle>,
	<leatherworks:oak_bark>,
	<leatherworks:acacia_bark>,
	<leatherworks:birch_bark>,
	<leatherworks:darkoak_bark>,
	<leatherworks:jungle_bark>,
	<leatherworks:spruce_bark>,
	<leatherworks:drying_rack_oak>,
	<leatherworks:drying_rack_spruce>,
	<leatherworks:drying_rack_birch>,
	<leatherworks:drying_rack_jungle>,
	<leatherworks:drying_rack_acacia>,
	<leatherworks:drying_rack_darkoak>,
	<leatherworks:crafting_leather_scraped>,
	<leatherworks:crafting_leather_soaked>,
	<minecraft:iron_sword>,
	<minecraft:diamond_sword>,
	<minecraft:golden_sword>,
	<botania:manasteelsword>,
	<botania:elementiumsword>,
	<iceandfire:silver_sword>,
	<iceandfire:dragonbone_sword>,
	<iceandfire:dragonbone_sword_fire>,
	<iceandfire:dragonbone_sword_ice>,
	<iceandfire:hippogryph_sword>,
	<iceandfire:myrmex_desert_sword>,
	<iceandfire:myrmex_desert_sword_venom>,
	<iceandfire:myrmex_jungle_sword>,
	<iceandfire:myrmex_jungle_sword_venom>,
	<iceandfire:dragonsteel_fire_sword>,
	<iceandfire:dragonsteel_ice_sword>,
	<immersiveengineering:sword_steel>,
	<natura:ghostwood_sword>,
	<natura:bloodwood_sword>,
	<natura:darkwood_sword>,
	<natura:fusewood_sword>,
	<natura:netherquartz_sword>,
	<nuclearcraft:sword_boron>,
	<nuclearcraft:sword_tough>,
	<nuclearcraft:sword_hard_carbon>,
	<nuclearcraft:sword_boron_nitride>,
	<randomthings:spectresword>,
	<minecraft:iron_pickaxe>,
	<minecraft:diamond_pickaxe>,
	<minecraft:golden_pickaxe>,
	<botania:manasteelpick>,
	<botania:elementiumpick>,
	<botania:glasspick>,
	<iceandfire:silver_pickaxe>,
	<iceandfire:dragonbone_pickaxe>,
	<iceandfire:myrmex_desert_pickaxe>,
	<iceandfire:myrmex_jungle_pickaxe>,
	<iceandfire:dragonsteel_fire_pickaxe>,
	<iceandfire:dragonsteel_ice_pickaxe>,
	<immersiveengineering:pickaxe_steel>,
	<natura:ghostwood_pickaxe>,
	<natura:bloodwood_pickaxe>,
	<natura:darkwood_pickaxe>,
	<natura:fusewood_pickaxe>,
	<natura:netherquartz_pickaxe>,
	<nuclearcraft:pickaxe_boron>,
	<nuclearcraft:pickaxe_tough>,
	<nuclearcraft:pickaxe_hard_carbon>,
	<nuclearcraft:pickaxe_boron_nitride>,
	<randomthings:spectrepickaxe>,
	<minecraft:iron_shovel>,
	<minecraft:diamond_shovel>,
	<minecraft:golden_shovel>,
	<botania:manasteelshovel>,
	<botania:elementiumshovel>,
	<iceandfire:silver_shovel>,
	<iceandfire:dragonbone_shovel>,
	<iceandfire:myrmex_desert_shovel>,
	<iceandfire:myrmex_jungle_shovel>,
	<iceandfire:dragonsteel_fire_shovel>,
	<iceandfire:dragonsteel_ice_shovel>,
	<immersiveengineering:shovel_steel>,
	<natura:ghostwood_shovel>,
	<natura:bloodwood_shovel>,
	<natura:darkwood_shovel>,
	<natura:fusewood_shovel>,
	<natura:netherquartz_shovel>,
	<nuclearcraft:shovel_boron>,
	<nuclearcraft:shovel_tough>,
	<nuclearcraft:shovel_hard_carbon>,
	<nuclearcraft:shovel_boron_nitride>,
	<randomthings:spectreshovel>,
	<minecraft:iron_axe>,
	<minecraft:diamond_axe>,
	<minecraft:golden_axe>,
	<botania:manasteelaxe>,
	<botania:elementiumaxe>,
	<extrautils2:fireaxe>,
	<iceandfire:silver_axe>,
	<iceandfire:dragonbone_axe>,
	<iceandfire:myrmex_desert_axe>,
	<iceandfire:myrmex_jungle_axe>,
	<iceandfire:dragonsteel_fire_axe>,
	<iceandfire:dragonsteel_ice_axe>,
	<immersiveengineering:axe_steel>,
	<nuclearcraft:axe_boron>,
	<nuclearcraft:axe_tough>,
	<nuclearcraft:axe_hard_carbon>,
	<nuclearcraft:axe_boron_nitride>,
	<randomthings:spectreaxe>,
	<nuclearcraft:spaxelhoe_boron>,
	<nuclearcraft:spaxelhoe_tough>,
	<nuclearcraft:spaxelhoe_hard_carbon>,
	<nuclearcraft:spaxelhoe_boron_nitride>,
		<nuclearcraft:chest_boron_nitride>,
	<minecraft:iron_chestplate>,
	<minecraft:diamond_chestplate>,
	<minecraft:golden_chestplate>,
	<crossroads:pig_zombie_chestplate>,
	<iceandfire:armor_silver_metal_chestplate>,
	<iceandfire:deathworm_yellow_chestplate>,
	<iceandfire:deathworm_white_chestplate>,
	<iceandfire:deathworm_red_chestplate>,
	<iceandfire:myrmex_desert_chestplate>,
	<iceandfire:myrmex_jungle_chestplate>,
	<iceandfire:dragonsteel_fire_chestplate>,
	<iceandfire:dragonsteel_ice_chestplate>,
	<iceandfire:armor_red_chestplate>,
	<iceandfire:armor_bronze_chestplate>,
	<iceandfire:armor_green_chestplate>,
	<iceandfire:armor_gray_chestplate>,
	<iceandfire:armor_blue_chestplate>,
	<iceandfire:armor_white_chestplate>,
	<iceandfire:armor_sapphire_chestplate>,
	<iceandfire:armor_silver_chestplate>,
	<iceandfire:tide_blue_chestplate>,
	<iceandfire:tide_bronze_chestplate>,
	<iceandfire:tide_deepblue_chestplate>,
	<iceandfire:tide_green_chestplate>,
	<iceandfire:tide_purple_chestplate>,
	<iceandfire:tide_red_chestplate>,
	<iceandfire:tide_teal_chestplate>,
	<iceandfire:forest_troll_leather_chestplate>,
	<iceandfire:frost_troll_leather_chestplate>,
	<iceandfire:mountain_troll_leather_chestplate>,
	<immersiveengineering:faraday_suit_chest>,
	<immersiveengineering:steel_armor_chest>,
	<nuclearcraft:chest_boron>,
	<nuclearcraft:chest_tough>,
	<nuclearcraft:chest_hard_carbon>,
	<minecraft:chainmail_chestplate>,
		<minecraft:chainmail_helmet>,
	<minecraft:iron_helmet>,
	<minecraft:diamond_helmet>,
	<minecraft:golden_helmet>,
	<ceramics:clay_helmet>,
	<iceandfire:armor_silver_metal_helmet>,
	<iceandfire:deathworm_yellow_helmet>,
	<iceandfire:deathworm_white_helmet>,
	<iceandfire:deathworm_red_helmet>,
	<iceandfire:myrmex_desert_helmet>,
	<iceandfire:myrmex_jungle_helmet>,
	<iceandfire:dragonsteel_fire_helmet>,
	<iceandfire:dragonsteel_ice_helmet>,
	<iceandfire:armor_red_helmet>,
	<iceandfire:armor_bronze_helmet>,
	<iceandfire:armor_green_helmet>,
	<iceandfire:armor_gray_helmet>,
	<iceandfire:armor_blue_helmet>,
	<iceandfire:armor_white_helmet>,
	<iceandfire:armor_sapphire_helmet>,
	<iceandfire:armor_silver_helmet>,
	<iceandfire:tide_blue_helmet>,
	<iceandfire:tide_bronze_helmet>,
	<iceandfire:tide_deepblue_helmet>,
	<iceandfire:tide_green_helmet>,
	<iceandfire:tide_purple_helmet>,
	<iceandfire:tide_red_helmet>,
	<iceandfire:tide_teal_helmet>,
	<iceandfire:forest_troll_leather_helmet>,
	<iceandfire:frost_troll_leather_helmet>,
	<iceandfire:mountain_troll_leather_helmet>,
	<immersiveengineering:faraday_suit_head>,
	<immersiveengineering:steel_armor_head>,
	<natura:imp_armor_helmet>,
	<nuclearcraft:helm_boron>,
	<nuclearcraft:helm_tough>,
	<nuclearcraft:helm_hard_carbon>,
	<nuclearcraft:helm_boron_nitride>,
	<techguns:t1_combat_helmet>,
	<techguns:t1_miner_helmet>,
	<techguns:steam_helmet>, 
	<techguns:hazmat_helmet>,
	<techguns:t2_combat_helmet>,
	<techguns:t2_riot_helmet>,
	<techguns:t3_combat_helmet>,
	<techguns:t3_power_helmet>, 
	<techguns:t3_miner_helmet>, 
	<techguns:t3_exo_helmet>, 
	<techguns:t4_praetor_helmet>, 
	<techguns:t4_power_helmet>, 
	<theoneprobe:diamond_helmet_probe>,
	<theoneprobe:gold_helmet_probe>,
	<theoneprobe:iron_helmet_probe>,
		<minecraft:chainmail_leggings>,
	<minecraft:iron_leggings>,
	<minecraft:diamond_leggings>,
	<minecraft:golden_leggings>,
	<ceramics:clay_leggings>,
	<iceandfire:armor_silver_metal_leggings>,
	<iceandfire:deathworm_yellow_leggings>,
	<iceandfire:deathworm_white_leggings>,
	<iceandfire:deathworm_red_leggings>,
	<iceandfire:myrmex_desert_leggings>,
	<iceandfire:myrmex_jungle_leggings>,
	<iceandfire:dragonsteel_fire_leggings>,
	<iceandfire:dragonsteel_ice_leggings>,
	<iceandfire:armor_red_leggings>,
	<iceandfire:armor_bronze_leggings>,
	<iceandfire:armor_green_leggings>,
	<iceandfire:armor_gray_leggings>,
	<iceandfire:armor_blue_leggings>,
	<iceandfire:armor_white_leggings>,
	<iceandfire:armor_sapphire_leggings>,
	<iceandfire:armor_silver_leggings>,
	<iceandfire:tide_blue_leggings>,
	<iceandfire:tide_bronze_leggings>,
	<iceandfire:tide_deepblue_leggings>,
	<iceandfire:tide_green_leggings>,
	<iceandfire:tide_purple_leggings>,
	<iceandfire:tide_red_leggings>,
	<iceandfire:tide_teal_leggings>,
	<iceandfire:forest_troll_leather_leggings>,
	<iceandfire:frost_troll_leather_leggings>,
	<iceandfire:mountain_troll_leather_leggings>,
	<immersiveengineering:faraday_suit_legs>,
	<immersiveengineering:steel_armor_legs>,
	<natura:imp_armor_leggings>,
	<nuclearcraft:legs_boron>,
	<nuclearcraft:legs_tough>,
	<nuclearcraft:legs_hard_carbon>,
	<nuclearcraft:legs_boron_nitride>,
	<nuclearcraft:legs_hazmat>,
	<techguns:hazmat_leggings>,
	<techguns:t3_combat_leggings>,
	<techguns:t3_power_leggings>, 
	<techguns:t3_miner_leggings>, 
	<techguns:t3_exo_leggings>, 
	<techguns:t4_praetor_leggings>, 
	<techguns:t4_power_leggings>, 
		<minecraft:leather_boots>,
	<minecraft:chainmail_boots>,
	<minecraft:iron_boots>,
	<minecraft:diamond_boots>,
	<minecraft:golden_boots>,
	<ceramics:clay_boots>,
	<iceandfire:armor_silver_metal_boots>,
	<iceandfire:deathworm_yellow_boots>,
	<iceandfire:deathworm_white_boots>,
	<iceandfire:deathworm_red_boots>,
	<iceandfire:myrmex_desert_boots>,
	<iceandfire:myrmex_jungle_boots>,
	<iceandfire:dragonsteel_fire_boots>,
	<iceandfire:dragonsteel_ice_boots>,
	<iceandfire:armor_red_boots>,
	<iceandfire:armor_bronze_boots>,
	<iceandfire:armor_green_boots>,
	<iceandfire:armor_gray_boots>,
	<iceandfire:armor_blue_boots>,
	<iceandfire:armor_white_boots>,
	<iceandfire:armor_sapphire_boots>,
	<iceandfire:armor_silver_boots>,
	<iceandfire:tide_blue_boots>,
	<iceandfire:tide_bronze_boots>,
	<iceandfire:tide_deepblue_boots>,
	<iceandfire:tide_green_boots>,
	<iceandfire:tide_purple_boots>,
	<iceandfire:tide_red_boots>,
	<iceandfire:tide_teal_boots>,
	<iceandfire:forest_troll_leather_boots>,
	<iceandfire:frost_troll_leather_boots>,
	<iceandfire:mountain_troll_leather_boots>,
	<immersiveengineering:faraday_suit_feet>,
	<immersiveengineering:steel_armor_feet>,
	<leatherworks:broken_leather_boots>,
	<natura:imp_armor_boots>,
	<nuclearcraft:boots_boron>,
	<nuclearcraft:boots_tough>,
	<nuclearcraft:boots_hard_carbon>,
	<nuclearcraft:boots_boron_nitride>,
	<nuclearcraft:boots_hazmat>,
	<techguns:t1_combat_boots>,
	<techguns:t1_scout_boots>,
	<techguns:t1_miner_boots>,
	<techguns:steam_boots>, 
	<techguns:hazmat_boots>,
	<techguns:t2_combat_boots>,
	<techguns:t2_commando_boots>,
	<techguns:t2_riot_boots>,
	<techguns:t3_combat_boots>,
	<techguns:t3_power_boots>, 
	<techguns:t3_miner_boots>, 
	<techguns:t3_exo_boots>, 
	<techguns:t4_praetor_boots>, 
	<techguns:t4_power_boots>, 
	<tconstruct:slime_boots>,
	<tconstruct:slime_boots:1>,
	<tconstruct:slime_boots:2>,
	<tconstruct:slime_boots:3>,
	<tconstruct:slime_boots:4>,
		<minecraft:iron_hoe>,
	<minecraft:diamond_hoe>,
	<minecraft:golden_hoe>,
	<iceandfire:silver_hoe>,
	<iceandfire:dragonbone_hoe>,
	<iceandfire:myrmex_desert_hoe>,
	<iceandfire:myrmex_jungle_hoe>,
	<iceandfire:dragonsteel_fire_hoe>,
	<iceandfire:dragonsteel_ice_hoe>,
	<nuclearcraft:hoe_boron>,
	<nuclearcraft:hoe_tough>,
	<nuclearcraft:hoe_hard_carbon>,
	<nuclearcraft:hoe_boron_nitride>,
	<natura:ghostwood_kama>,
	<natura:bloodwood_kama>,
	<natura:darkwood_kama>,
	<natura:fusewood_kama>,
	<natura:fusewood_kama>,
	<natura:netherquartz_kama>,
	<notreepunching:mattock/iron>,
	<notreepunching:mattock/gold>,
	<notreepunching:mattock/diamond>,
	<tinkersforging:ntp_mattock/bronze>,
	<tinkersforging:ntp_mattock/steel>,
	<tinkersforging:ntp_mattock/gold>,
	<tinkersforging:ntp_mattock/copper>,
	<tinkersforging:ntp_mattock/tin>,
	<tinkersforging:ntp_mattock/iron>,
];

    //  Exceptions for a specific output.  Will have a different recipe configured
global GlobalExceptionRecipeOutputs as IItemStack[] = [
	<rockhounding_oretiers:peat_drier>,
	<rockhounding_oretiers:coal_refiner>,
	<rockhounding_oretiers:bloomery>,
	<ceramics:unfired_clay:4>,
	<ceramics:unfired_clay:6>,
	<ceramics:unfired_clay:7>,
	<thermalfoundation:material:26>,
	<thermalfoundation:material:27>,
	<crossroads:ingot_bronze>,
	<crossroads:block_bronze>,
	<immersiveposts:metal_rods>,
	<immersiveposts:metal_rods:1>,
	<immersiveposts:metal_rods:2>,
	<immersiveposts:metal_rods:3>,
	<immersiveposts:metal_rods:4>,
	<immersiveposts:metal_rods:5>,
	<immersiveposts:metal_rods:6>,
	<immersiveposts:metal_rods:7>,
	<actuallyadditions:block_breaker>,
    <actuallyadditions:block_placer>,
    <actuallyadditions:block_fluid_collector>,
    <actuallyadditions:block_fluid_placer>,
    <actuallyadditions:block_lava_factory_controller>,
    <actuallyadditions:block_grinder>,
    <actuallyadditions:block_grinder_double>,
    <actuallyadditions:block_furnace_double>,
    <actuallyadditions:block_phantom_breaker>,
    <actuallyadditions:block_directional_breaker>,
    <actuallyadditions:block_miner>,
    <actuallyadditions:block_farmer>,
    <actuallyadditions:block_furnace_solar>,
    <actuallyadditions:block_misc:4>,
    <ceramics:unfired_clay>,
    <ceramics:unfired_clay:8>,
    <ceramics:unfired_clay:1>,
    <crossroads:hand_crank>,
    <crossroads:coal_heater>,
    <crossroads:heating_chamber>,
    <crossroads:heat_cable_copper_wool>,
    <crossroads:fluid_cooling_chamber>,
    <crossroads:heating_crucible>,
    <crossroads:grindstone>,
    <crossroads:master_axis>,
    <crossroads:rotary_pump>,
    <crossroads:fluid_tube>,
    <crossroads:fluid_tank>,
    <crossroads:steam_boiler>,
    <crossroads:axle>,
    <crossroads:gear_iron>,
    <crossroads:gear_gold>,
    <crossroads:gear_copper>,
    <crossroads:gear_tin>,
    <crossroads:gear_lead>,
    <crossroads:gear_silver>,
    <crossroads:gear_nickel>,
    <crossroads:gear_bronze>,
    <crossroads:gear_copshowium>,
    <crossroads:gear_invar>,
    <crossroads:gear_platinum>,
    <crossroads:gear_electrum>,
    <horsepower:hand_grindstone>,
    <horsepower:grindstone>,
    <immersiveengineering:stone_decoration>,
        <terraqueous:multitool>,
	<terraqueous:pitchfork>,
	<terraqueous:scythe>,
	<terraqueous:hammer>,
	<randomthings:pitcherplant>,
	<randomthings:spectrecoil_normal>,
	<randomthings:spectrecoil_redstone>,
	<randomthings:spectrecoil_ender>,
	<randomthings:spectrecoil_number:*>,
	<randomthings:spectrecoil_genesis>,
	<randomthings:diviningrod:*>,
	<randomthings:spectrecharger:*>,
	<randomthings:chunkanalyzer>,
    <magneticraft:crushing_table>,
    <magneticraft:sluice_box>,
    <notreepunching:clay_brick>,
    <terraqueous:planks>,
    <terraqueous:planks:1>,
    <terraqueous:planks:2>,
    <terraqueous:planks:3>,
    <terraqueous:planks:4>,
    <terraqueous:planks:5>,
    <terraqueous:planks:6>,
    <terraqueous:planks:7>,
    <terraqueous:planks:8>,
    <terraqueous:planks:9>,
    <openblocks:tank>,
    <ceramics:faucet>,
    <ceramics:channel>,
    <tcomplement:porcelain_tank>,
    <tcomplement:porcelain_tank:2>,
    <tcomplement:porcelain_tank:1>,
    <tcomplement:porcelain_casting>,
    <tcomplement:porcelain_casting:1>,
    <tcomplement:porcelain_melter:8>,
    <tcomplement:porcelain_alloy_tank>,
    <tcomplement:porcelain_melter>,
    <tcomplement:melter:8>,
    <tcomplement:alloy_tank>,
    <tcomplement:melter>,
    <tcomplement:scorched_block:3>,
    <tcomplement:scorched_faucet>,
    <tcomplement:scorched_channel>,
    <tcomplement:scorched_casting>,
    <tcomplement:scorched_casting:1>,
    <tcomplement:high_oven_io>,
    <tcomplement:high_oven_io:1>,
    <tcomplement:high_oven_io:2> ,
    <tcomplement:high_oven_controller>,
    <extrautils2:decorativesolid:4>,
    <tinkersforging:tinkers_anvil/copper>,
    <tinkersforging:tinkers_anvil/tin>,
    <tinkersforging:tinkers_anvil/silver>,
    <tinkersforging:tinkers_anvil/iron>,
    <tinkersforging:tinkers_anvil/alumifun>,
    <tinkersforging:tinkers_anvil/bronze>,
    <tinkersforging:tinkers_anvil/brass>,
    <tinkersforging:tinkers_anvil/steel>,
    <tconstruct:pattern>,
    <tconstruct:tooltables>,
    <tconstruct:tooltables:1>,
    <tconstruct:tooltables:4>,
    <tconstruct:tooltables:2>,
    <tconstruct:tooltables:5>,
    <tconstruct:tooltables:3>,
    <conarm:armorstation>,
    <tconstruct:soil>,
    <tconstruct:seared:3>,
    <tconstruct:smeltery_io>,
    <tconstruct:faucet>,
    <tconstruct:channel>,
    <tconstruct:seared_glass>,
    <tconstruct:seared_tank:2>,
    <tconstruct:seared_tank:1>,
    <tconstruct:casting>,
    <tconstruct:casting:1>,
    <tconstruct:seared_furnace_controller>,
    <tconstruct:tinker_tank_controller>,
    <tconstruct:smeltery_controller>,
];

    //  Exceptions by Recipe Name
global GlobalExceptionRecipeNames as string[] = [
	"microblockcbe:micro_recipe",
	"randomthings:luminouspowder",
	"randomthings:portkey_camo",
	"immersiveengineering:powerpack",
	"undergroundbiomes:regular_cobblestone",
	"rustic:cabinet",
	"randomthings:diaphanousinvert",
	"randomthings:diaphanouschange",
	"extrautils2:unstable_ingot",
	"crossroads:prototype_pistol",
	"crossroads:prototype_pistol_0",
	"crossroads:prototype_watch",
	"crossroads:prototype_watch_0",
	"randomthings:spectreanchorcombine",
	"pumpkincarving:carvedpumpkin",
	"pumpkincarving:carvedpumpkin_alt",
	"pumpkincarving:carvedpumpkin_alt_alt",
	"pumpkincarving:carvedpumpkin_alt_alt_alt",
	"malisisdoors:medieval_door",
	"immersiveengineering:bullet_potion",
	"immersiveengineering:earmuffs",
	"immersiveengineering:shader_bags",
	"malisisdoors:carriage_door",
	"extrautils2:magic_wood",
	"astralsorcery:recipechangewandcolor",
	"immersiveengineering:potion_flare",
	"leatherworks:repairkit_broken_leather_helmet",
	"leatherworks:repairkit_broken_leather_chestplate",
	"leatherworks:repairkit_broken_leather_leggings",
	"leatherworks:repairkit_leather_helmet",
	"leatherworks:repairkit_leather_chestplate",
	"leatherworks:repairkit_leather_leggings",
	"randomthings:emeraldcompass_settarget",
	"randomthings:goldencompasssetposition",
	"extrautils2:golden_lasso",
	"weather2:sand",
	"weather2:pocket_sand",
	"advancedrocketry:superhighpressuretank",
	"advancedrocketry:atmanalyser",
	"advancedrocketry:carboncartridgerefresh",
	"advancedrocketry:trackingcircuit",
	"advancedrocketry:siliconingot",
	"advancedrocketry:basiccircuit",
	"advancedrocketry:antifogvisor",
	"advancedrocketry:bionicleg",
	"advancedrocketry:advbasiccircuit",
	"advancedrocketry:biomechanger",
	"advancedrocketry:liquidiocircuitboard_prec",
	"advancedrocketry:ingotsteel",
	"advancedrocketry:biomechangerremote",
	"advancedrocketry:pressuretank",
	"advancedrocketry:elevatorchip",
	"advancedrocketry:blocklens",
	"advancedrocketry:rocketfuel",
	"advancedrocketry:beaconfinder",
	"advancedrocketry:iocircuitboard_prec",
	"advancedrocketry:biomechanger_alt",
	"advancedrocketry:highpressuretank",
	"advancedrocketry:lowpressuretank",
	"advancedrocketry:paddedboots",
	"advancedrocketry:bonemeal_chem",
	"advancedrocketry:basiccircuitplate",
	"advancedrocketry:controlcircuitboard_prec",
	"advancedrocketry:alienplanks",
	"advancedrocketry:blocklens_alt",
	"advancedrocketry:ingottitaniumaluminide",
	"advancedrocketry:siliconwafer",
	"advancedrocketry:hoverupgrade",
	"advancedrocketry:flightspeed",
	"advancedrocketry:hydrogenoxygen",
	"advancedrocketry:ingottitaniumiridium",
	"advancedrocketry:dataunit",
	"advancedrocketry:advcircuitplate",
	
	"immersiveengineering:stone_decoration/alloybrick",
	"basemetals:tripwire_hook",
	"basemetals:rail",
	"basemetals:detector_rail",
	"basemetals:activator_rail",
	"basemetals:piston",
	"basemetals:minecraft",
	"ceramics:decoration/porcelain_bricks/slab",
    "ceramics:decoration/porcelain_bricks/block",
    "ceramics:decoration/monochrome_bricks/block",
    "ceramics:decoration/marine_bricks/block",
    "unidict:ingotbronze_x1_shape.aaaabaaaa",
	"crossroads:ingot_bronze_1",
    "immersiveengineering:treated_wood/treated_wood",
    	"notreepunching:tools/iron_knife",
	"notreepunching:tools/iron_mattock",
	"notreepunching:tools/iron_saw",
	"notreepunching:tools/gold_knife",
	"notreepunching:tools/gold_mattock",
	"notreepunching:tools/gold_saw",
	"notreepunching:copper_knife",
	"notreepunching:copper_mattock",
	"notreepunching:copper_saw",
	"notreepunching:tin_knife",
	"notreepunching:tin_mattock",
	"notreepunching:tin_saw",
	"notreepunching:bronze_knife",
	"notreepunching:bronze_mattock",
	"notreepunching:bronze_saw",
	"notreepunching:steel_knife",
	"notreepunching:steel_mattock",
	"notreepunching:steel_saw",
    "notreepunching:misc/grass_string",
    "notreepunching:blocks/rocks_to_sandstone",
    "notreepunching:blocks/rocks_to_red_sandstone",
    "extrautils2:shortcut_chest",
    "extrautils2:shortcut_stick",
    "extrautils2:shortcut_hopper",
    "atum:stick",
    	"techguns:itemshared_79_ingotcopper",
	"techguns:handcannon",
	"techguns:sawedoff",
	"techguns:revolver",
	"techguns:goldenrevolver",
	"techguns:thompson",
	"techguns:thompson_alt",
	"techguns:ak47",
	"techguns:ak47_alt",
	"techguns:boltaction",
	"techguns:m4",
	"techguns:m4_alt",
	"techguns:m4_infiltrator",
	"techguns:m4_infiltrator_alt",
	"techguns:pistol",
	"techguns:pistol_alt",
	"techguns:combatshotgun",
	"techguns:mac10",
	"techguns:mac10_alt",
	"techguns:flamethrower",
	"techguns:flamethrower_alt",
	"techguns:rocketlauncher",
	"techguns:rocketlauncher_alt",
	"techguns:grimreaper",
	"techguns:grenadelauncher",
	"techguns:aug",
	"techguns:aug_alt",
	"techguns:lmg",
	"techguns:lmg_alt",
	"techguns:minigun",
	"techguns:minigun_alt",
	"techguns:as50",
	"techguns:as50_alt",
	"techguns:vector",
	"techguns:vector_alt",
	"techguns:scar",
	"techguns:scar_alt",
	"techguns:guidedmissilelauncher",
	"techguns:guidedmissilelauncher_alt",
	"techguns:stielgranate",
	"techguns:fraggrenade",
	"techguns:gaussrifle",
	"techguns:gaussrifle_alt",
	"techguns:netherblaster",
	"techguns:biogun",
	"techguns:biogun_alt",
	"techguns:teslagun",
	"techguns:teslagun_alt",
	"techguns:lasergun",
	"techguns:lasergun_alt",
	"techguns:blasterrifle",
	"techguns:blasterrifle_alt",
	"techguns:sonicshotgun",
	"techguns:sonicshotgun_alt",
	"techguns:pdw",
	"techguns:pdw_alt",
	"techguns:pulserifle",
	"techguns:pulserifle_alt",
	"techguns:mibgun",
	"techguns:mibgun_alt",
	"techguns:powerhammer",
	"techguns:powerhammer_alt",
	"techguns:nucleardeathray",
	"techguns:nucleardeathray_alt",
	"techguns:miningdrill",
	"techguns:miningdrill_alt",
	"techguns:tfg",
	"techguns:tfg_alt",
	"techguns:itemshared_1_pistolrounds",
	"techguns:itemshared_2_shotgunrounds",
	"techguns:itemshared_3_riflerounds",
	"techguns:itemshared_7_rocket",
	"techguns:itemshared_8_rifleroundsstack",
	"techguns:t1_combat_helmet",
	"techguns:t1_combat_chestplate",
	"techguns:t1_combat_leggings",
	"techguns:t1_combat_boots",
	"techguns:t1_scout_helmet",
	"techguns:t1_scout_chestplate",
	"techguns:t1_scout_leggings",
	"techguns:t1_scout_boots",
	"techguns:t1_miner_helmet",
	"techguns:t1_miner_chestplate",
	"techguns:t1_miner_leggings",
	"techguns:t1_miner_boots",
	"techguns:steam_helmet",
	"techguns:steam_chestplate",
	"techguns:steam_leggings",
	"techguns:steam_boots",
	"techguns:hazmat_helmet",
	"techguns:hazmat_chestplate",
	"techguns:hazmat_leggings",
	"techguns:hazmat_boots",
	"techguns:t2_combat_helmet",
	"techguns:t2_combat_chestplate",
	"techguns:t2_combat_leggings",
	"techguns:t2_combat_boots",
	"techguns:t2_commando_helmet",
	"techguns:t2_commando_chestplate",
	"techguns:t2_commando_leggings",
	"techguns:t2_commando_boots",
	"techguns:t2_riot_helmet",
	"techguns:t2_riot_chestplate",
	"techguns:t2_riot_leggings",
	"techguns:t2_riot_boots",
	"techguns:t3_combat_helmet",
	"techguns:t3_combat_chestplate",
	"techguns:t3_combat_leggings",
	"techguns:t3_combat_boots",
	"techguns:t3_power_helmet",
	"techguns:t3_power_chestplate",
	"techguns:t3_power_leggings",
	"techguns:t3_power_boots",
	"techguns:t3_miner_helmet",
	"techguns:t3_miner_chestplate",
	"techguns:t3_miner_leggings",
	"techguns:t3_miner_boots",
	"techguns:t3_exo_helmet",
	"techguns:t3_exo_chestplate",
	"techguns:t3_exo_leggings",
	"techguns:t3_exo_boots",
	"techguns:jumppack",
	"techguns:glider",
	"techguns:jetpack",
	"techguns:jetpack_alt",
	"techguns:antigravpack",
	"techguns:combatknife",
	"techguns:crowbar",
	"techguns:itemshared_33_ironreceiver",
	"techguns:itemshared_34_steelreceiver",
	"techguns:itemshared_35_obsidiansteelreceiver",
	"techguns:itemshared_36_carbonreceiver",
	"techguns:itemshared_37_stonebarrel",
	"techguns:itemshared_38_ironbarrel",
	"techguns:itemshared_39_obsidiansteelbarrel",
	"techguns:itemshared_40_carbonbarrel",
	"techguns:itemshared_41_laserbarrel",
	"techguns:itemshared_128_gaussbarrel",
	"techguns:itemshared_129_shieldedtitaniumbarrel",
	"techguns:itemshared_130_titaniumreceiver",
	"techguns:itemshared_10_smgmagazineempty",
	"techguns:itemshared_12_pistolmagazineempty",
	"techguns:itemshared_14_assaultriflemagazineempty",
	"techguns:itemshared_16_lmgmagazineempty",
	"techguns:itemshared_18_minigundrumempty",
	"techguns:itemshared_20_as50magazineempty",
	"techguns:itemshared_22_advancedmagazineempty",
    	"terraqueous:dust-sandstone",
	"terraqueous:dust-red_sandstone",
	"terraqueous:dust-diamond_dust",
	"terraqueous:dust-emerald_dust",
	"terraqueous:dust-lapis",
	"terraqueous:dust-redstone",
];



/* - In case this is not the case.

	<basemetals:iron_stairs>,
	<basemetals:gold_stairs>,
	<basemetals:antimony_stairs>,
	<basemetals:bismuth_stairs>,
	<basemetals:copper_stairs>,
	<basemetals:lead_stairs>,
	<basemetals:nickel_stairs>,
	<basemetals:silver_stairs>,
	<basemetals:zinc_stairs>,
	<basemetals:brass_stairs>,
	<basemetals:bronze_stairs>,
	<basemetals:cupronickel_stairs>,
	<basemetals:electrum_stairs>,
	<basemetals:invar_stairs>,
	<basemetals:steel_stairs>,
	<basemetals:coldiron_stairs>,
	<basemetals:platinum_stairs>,
	<basemetals:starsteel_stairs>,
	<basemetals:aquarium_stairs>,
	<basemetals:mithril_stairs>,
	<modernmetals:aluminum_stairs>,
	<modernmetals:beryllium_stairs>,
	<modernmetals:boron_stairs>,
	<modernmetals:chromium_stairs>,
	<modernmetals:magnesium_stairs>,
	<modernmetals:manganese_stairs>,
	<modernmetals:rutile_stairs>,
	<modernmetals:tantalum_stairs>,
	<modernmetals:tungsten_stairs>,
	<modernmetals:zirconium_stairs>,
	<modernmetals:aluminumbrass_stairs>,
	<modernmetals:galvanizedsteel_stairs>,
	<modernmetals:nichrome_stairs>,
	<modernmetals:stainlesssteel_stairs>,
	<modernmetals:cadmium_stairs>,
	<modernmetals:iridium_stairs>,
	<modernmetals:plutonium_stairs>,
	<modernmetals:uranium_stairs>,
	<modernmetals:titanium_stairs>,
	<basemetals:iron_slab>,
	<basemetals:gold_slab>,
	<basemetals:antimony_slab>,
	<basemetals:bismuth_slab>,
	<basemetals:copper_slab>,
	<basemetals:lead_slab>,
	<basemetals:nickel_slab>,
	<basemetals:silver_slab>,
	<basemetals:zinc_slab>,
	<basemetals:brass_slab>,
	<basemetals:bronze_slab>,
	<basemetals:cupronickel_slab>,
	<basemetals:electrum_slab>,
	<basemetals:invar_slab>,
	<basemetals:steel_slab>,
	<basemetals:coldiron_slab>,
	<basemetals:platinum_slab>,
	<basemetals:starsteel_slab>,
	<basemetals:aquarium_slab>,
	<basemetals:mithril_slab>,
	<modernmetals:aluminum_slab>,
	<modernmetals:beryllium_slab>,
	<modernmetals:boron_slab>,
	<modernmetals:chromium_slab>,
	<modernmetals:magnesium_slab>,
	<modernmetals:manganese_slab>,
	<modernmetals:rutile_slab>,
	<modernmetals:tantalum_slab>,
	<modernmetals:tungsten_slab>,
	<modernmetals:zirconium_slab>,
	<modernmetals:aluminumbrass_slab>,
	<modernmetals:galvanizedsteel_slab>,
	<modernmetals:nichrome_slab>,
	<modernmetals:stainlesssteel_slab>,
	<modernmetals:cadmium_slab>,
	<modernmetals:iridium_slab>,
	<modernmetals:plutonium_slab>,
	<modernmetals:uranium_slab>,
	<modernmetals:titanium_slab>,
	<basemetals:quartz_pressure_plate>,
	<basemetals:human_detector>,
	<basemetals:antimony_pressure_plate>,
	<basemetals:bismuth_pressure_plate>,
	<basemetals:copper_pressure_plate>,
	<basemetals:lead_pressure_plate>,
	<basemetals:nickel_pressure_plate>,
	<basemetals:silver_pressure_plate>,
	<basemetals:zinc_pressure_plate>,
	<basemetals:brass_pressure_plate>,
	<basemetals:bronze_pressure_plate>,
	<basemetals:cupronickel_pressure_plate>,
	<basemetals:electrum_pressure_plate>,
	<basemetals:invar_pressure_plate>,
	<basemetals:steel_pressure_plate>,
	<basemetals:coldiron_pressure_plate>,
	<basemetals:platinum_pressure_plate>,
	<basemetals:starsteel_pressure_plate>,
	<basemetals:aquarium_pressure_plate>,
	<basemetals:mithril_pressure_plate>,
	<modernmetals:aluminum_pressure_plate>,
	<modernmetals:beryllium_pressure_plate>,
	<modernmetals:boron_pressure_plate>,
	<modernmetals:chromium_pressure_plate>,
	<modernmetals:magnesium_pressure_plate>,
	<modernmetals:manganese_pressure_plate>,
	<modernmetals:rutile_pressure_plate>,
	<modernmetals:tantalum_pressure_plate>,
	<modernmetals:tungsten_pressure_plate>,
	<modernmetals:zirconium_pressure_plate>,
	<modernmetals:aluminumbrass_pressure_plate>,
	<modernmetals:galvanizedsteel_pressure_plate>,
	<modernmetals:nichrome_pressure_plate>,
	<modernmetals:stainlesssteel_pressure_plate>,
	<modernmetals:cadmium_pressure_plate>,
	<modernmetals:iridium_pressure_plate>,
	<modernmetals:plutonium_pressure_plate>,
	<modernmetals:uranium_pressure_plate>,
	<modernmetals:titanium_pressure_plate>,
	<basemetals:iron_wall>,
	<basemetals:gold_wall>,
	<basemetals:quartz_wall>,
	<basemetals:antimony_wall>,
	<basemetals:bismuth_wall>,
	<basemetals:copper_wall>,
	<basemetals:lead_wall>,
	<basemetals:nickel_wall>,
	<basemetals:silver_wall>,
	<basemetals:zinc_wall>,
	<basemetals:brass_wall>,
	<basemetals:bronze_wall>,
	<basemetals:cupronickel_wall>,
	<basemetals:electrum_wall>,
	<basemetals:invar_wall>,
	<basemetals:steel_wall>,
	<basemetals:coldiron_wall>,
	<basemetals:platinum_wall>,
	<basemetals:starsteel_wall>,
	<basemetals:aquarium_wall>,
	<basemetals:mithril_wall>,
	<modernmetals:aluminum_wall>,
	<modernmetals:beryllium_wall>,
	<modernmetals:boron_wall>,
	<modernmetals:chromium_wall>,
	<modernmetals:magnesium_wall>,
	<modernmetals:manganese_wall>,
	<modernmetals:rutile_wall>,
	<modernmetals:tantalum_wall>,
	<modernmetals:tungsten_wall>,
	<modernmetals:zirconium_wall>,
	<modernmetals:aluminumbrass_wall>,
	<modernmetals:galvanizedsteel_wall>,
	<modernmetals:nichrome_wall>,
	<modernmetals:stainlesssteel_wall>,
	<modernmetals:cadmium_wall>,
	<modernmetals:iridium_wall>,
	<modernmetals:plutonium_wall>,
	<modernmetals:uranium_wall>,
	<modernmetals:titanium_wall>,
	<basemetals:gold_smallpowder>,
	<basemetals:quartz_smallpowder>,
	<basemetals:obsidian_smallpowder>,
	<basemetals:lapis_smallpowder>,
	<basemetals:redstone_smallpowder>,
	<basemetals:antimony_smallpowder>,
	<basemetals:bismuth_smallpowder>,
	<basemetals:copper_smallpowder>,
	<basemetals:lead_smallpowder>,
	<basemetals:nickel_smallpowder>,
	<basemetals:silver_smallpowder>,
	<basemetals:zinc_smallpowder>,
	<basemetals:brass_smallblend>,
	<basemetals:bronze_smallblend>,
	<basemetals:cupronickel_smallblend>,
	<basemetals:electrum_smallblend>,
	<basemetals:invar_smallblend>,
	<basemetals:steel_smallblend>,
	<basemetals:coldiron_smallpowder>,
	<basemetals:platinum_smallpowder>,
	<basemetals:starsteel_smallpowder>,
	<basemetals:aquarium_smallblend>,
	<basemetals:aquarium_smallpowder>,
	<basemetals:mithril_smallblend>,
	<basemetals:mithril_smallpowder>,
	<basemetals:mercury_smallpowder>,
	<modernmetals:aluminum_smallpowder>,
	<modernmetals:beryllium_smallpowder>,
	<modernmetals:boron_smallpowder>,
	<modernmetals:chromium_smallpowder>,
	<modernmetals:magnesium_smallpowder>,
	<modernmetals:manganese_smallpowder>,
	<modernmetals:rutile_smallpowder>,
	<modernmetals:tantalum_smallpowder>,
	<modernmetals:tungsten_smallpowder>,
	<modernmetals:zirconium_smallpowder>,
	<modernmetals:aluminumbrass_smallblend>,
	<modernmetals:aluminumbrass_smallpowder>,
	<modernmetals:galvanizedsteel_smallblend>,
	<modernmetals:galvanizedsteel_smallpowder>,
	<modernmetals:nichrome_smallblend>,
	<modernmetals:nichrome_smallpowder>,
	<modernmetals:stainlesssteel_smallblend>,
	<modernmetals:stainlesssteel_smallpowder>,
	<modernmetals:cadmium_smallpowder>,
	<modernmetals:iridium_smallpowder>,
	<modernmetals:plutonium_smallpowder>,
	<modernmetals:uranium_smallpowder>,
	<modernmetals:titanium_smallpowder>,
	<modernmetals:titanium_smallblend>,


*/