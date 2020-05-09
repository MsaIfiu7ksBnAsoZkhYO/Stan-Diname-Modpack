//=====================================================================================================================================================================================================	
//	Global variables are defined here for use in other scripts.
//=====================================================================================================================================================================================================	
	//	Tables that will need to be updated
	//		Global Melting Temps
	//		Global Molten Metals
	//		Global Harvest Level

//=====================================================================================================================================================================================================	
//These imports must be included to cast the arrays
//=====================================================================================================================================================================================================	


#priority 9999

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.oredict.IOreDict;
import crafttweaker.liquid.ILiquidStack;


//=====================================================================================================================================================================================================	
//	Creating Hashtables for all materials and their item forms.
//=====================================================================================================================================================================================================
/* - Notes on using these Glorious Global Goodies.

	These guys can be called like so:
		GlobalIngot["Iron"] = <ore:ingotIron>
		GlobalNugget["Copper"] = <ore:nuggetCopper>
	Returns an oredict bracket handler, so if you need an IItemStack, you can:
		GlobalNugget["Copper"].firstItem
	
	Can be used in loops to get just the string name as an "array":
	This will get you the nugget form of every material in the Ingot table.
		for item in GlobalIngot { GlobalNugget[item] }

	So, you just select the table that has the entries you want, 
	then call into other tables via the material name string
	This would be to add a tcon melting recipe for every molten fluid in the molten fluid table:
		for Liquid in GlobalMoltenMetal {
			mods.tconstruct.Melting.addRecipe( GlobalMoltenMetal[Liquid] * 144, GlobalIngot[Liquid], GlobalMeltingTemp[Liquid] );
		}

	Best to also include a null check in case an item is missing from a table
	otherwise the script will fail and error, which is not cash money.
	Ideally done for every table call which does look rediculous:
		for Liquid in GlobalMoltenMetal {
			if !( isNull(
				GlobalMoltenMetal[Liquid]
				&
				GlobalIngot[Liquid]  // Liquids cannot be null anyways, so this check is not necessary.
				&
				GlobalMeltingTemp[Liquid]
			) ) 
			{
				mods.tconstruct.Melting.addRecipe( GlobalMoltenMetal[Liquid] * 144, GlobalIngot[Liquid], GlobalMeltingTemp[Liquid] );
			}
		}

	I has a new thing to make these even better (Raw)

	
	This is nice, but it does increase load times.  Probably due to the shear inneficiency of doing it.
	The ability to combine a prefix and postfix for an oredictionary search so I can dynamically assemble all the oredictionary tables!
	This only works for oredictionries due to how they work.
	This will return <ore:ingotIron>:
		oreDict[ "ingot"~GlobalPostfixMetals["iron"] ]
	Now, the great thing about this is that it can be used in a loop.
	This loop will get you the oredictionaries for every ingot:
		for Metal in GlobalPostfixMetals {
			oreDict[ "ingot"~GlobalPostfixMetals["Metal"] ]
		}
	By their powers combined, you can get everything
	This retures ordictionaries for all the types and materials, 
	ingotIron, plateIron, ingotCopper, plateCopper and so on:
		for Metal in GlobalPostfixMetals {
			for Type in GlobalPrefixTypes {
				oreDict[ GlobalPrefixTypes[Type]~GlobalPostfixMetals["Metal"] ]

	getItem("minecraft:iron_ingot");  - I may be able to use this for dynamic variable combined itemstacks
		getItem( "minecraft:"~Metal~"_"~Type );
	Right now would only be useful on forging anvils as their item name is formatted as such.

*/


//=====================================================================================================================================================================================================	
//	Item Stack Tables
//=====================================================================================================================================================================================================


		//	Forging Anvils _______________________________________________________________________________________________________________________________________________________________________
	global GlobalAnvil as IItemStack[string] = {
		Copper		:	<tinkersforging:tinkers_anvil/copper>,
		Tin			:	<tinkersforging:tinkers_anvil/tin>,
		Silver		:	<tinkersforging:tinkers_anvil/silver>,
		Iron		:	<tinkersforging:tinkers_anvil/iron>,
		Aluminum	:	<tinkersforging:tinkers_anvil/alumifun>,

		Bronze		:	<tinkersforging:tinkers_anvil/bronze>,
		Steel		:	<tinkersforging:tinkers_anvil/steel>,
	};

		//	Crossroads gears	_______________________________________________________________________________________________________________________________________________________________________
	global GlobalCrossroadsGear as IItemStack[string] = {
		Iron		:	<crossroads:gear_iron>,
		Gold		:	<crossroads:gear_gold>,
		Copper		:	<crossroads:gear_copper>,
		Tin			:	<crossroads:gear_tin>,
		Lead		:	<crossroads:gear_lead>,
		Silver		:	<crossroads:gear_silver>,
		Nickel		:	<crossroads:gear_nickel>,
	    Bronze		:	<crossroads:gear_bronze>,
	    Copshowium	:	<crossroads:gear_copshowium>,
		Invar		:	<crossroads:gear_invar>,
		Platinum	:	<crossroads:gear_platinum>,
		Electrum	:	<crossroads:gear_electrum>,
	};

		//	Crossroads large Gears	_______________________________________________________________________________________________________________________________________________________________________
	global GlobalCrossroadlargeGear as IItemStack[string] = {
		Iron		:	<crossroads:large_gear_iron>,
		Gold		:	<crossroads:large_gear_gold>,
		Copper		:	<crossroads:large_gear_copper>,
		Tin			:	<crossroads:large_gear_tin>,
		Lead		:	<crossroads:large_gear_lead>,
		Silver		:	<crossroads:large_gear_silver>,
		Nickel		:	<crossroads:large_gear_nickel>,
		Bronze		:	<crossroads:large_gear_bronze>,
	    Copshowium	:	<crossroads:large_gear_copshowium>,
	    Invar		:	<crossroads:large_gear_invar>,
		Platinum	:	<crossroads:large_gear_platinum>,
		Electrum	:	<crossroads:large_gear_electrum>,
	};

		//	Crossroads Toggle Gears	_______________________________________________________________________________________________________________________________________________________________________
	global GlobalCrossroadToggleGear as IItemStack[string] = {
		Iron		:	<crossroads:toggle_gear_iron>,
		Gold		:	<crossroads:toggle_gear_gold>,
		Copper		:	<crossroads:toggle_gear_copper>,
		Tin			:	<crossroads:toggle_gear_tin>,
		Lead		:	<crossroads:toggle_gear_lead>,
		Silver		:	<crossroads:toggle_gear_silver>,
		Nickel		:	<crossroads:toggle_gear_nickel>,
		Bronze		:	<crossroads:toggle_gear_bronze>,
	    Copshowium	:	<crossroads:toggle_gear_copshowium>,
	    Invar		:	<crossroads:toggle_gear_invar>,
		Platinum	:	<crossroads:toggle_gear_platinum>,
		Electrum	:	<crossroads:toggle_gear_electrum>,
	};

		//	Tinker's Construct parts	_______________________________________________________________________________________________________________________________________________________________________
	global GlobalTconParts as int[IItemStack] = {
		<tconstruct:sharpening_kit>		:	2,
		<tconstruct:pick_head>			:	2,
		<tconstruct:shovel_head>		:	2,
		<tconstruct:axe_head>			:	2,
		<tconstruct:broad_axe_head>		:	8,
		<tconstruct:sword_blade>		:	2,
		<tconstruct:large_sword_blade>	:	8,
		<tconstruct:hammer_head>		:	8,
		<tconstruct:excavator_head>		:	8,
		<tconstruct:scythe_head>		:	8,
		<tconstruct:large_plate>		:	8,
		<tconstruct:kama_head>			:	2,
		<tconstruct:arrow_head>			:	2,
		<tconstruct:pan_head>			:	3,
		<tconstruct:sign_head>			:	3,
		<tconstruct:tough_tool_rod>		:	3,
		<tconstruct:tough_binding>		:	3,
		<tconstruct:bow_limb>			:	3,
		<tconstruct:tool_rod>			:	1,
		<tconstruct:binding>			:	1,
		<tconstruct:wide_guard>			:	1,
		<tconstruct:hand_guard>			:	1,
		<tconstruct:cross_guard>		:	1,
		<tconstruct:knife_blade>		:	1,
		<conarm:polishing_kit>			:	3,
		<conarm:helmet_core>			:	4,
		<conarm:chest_core>				:	6,
		<conarm:leggings_core>			:	5,
		<conarm:boots_core>				:	4,
		<conarm:armor_plate>			:	3,
		<conarm:armor_trim>				:	1,
		<totaltinkers:greatbladecore>	:	12,
		<totaltinkers:fullguard>		:	3,
		<tcomplement:chisel_head>		:	1,
	};

		//	Rockhounding Iron Pebbles	_______________________________________________________________________________________________________________________________________________________________________
	global GlobalIronPebbles as IItemStack[string] = {
	    bog			:	<rockhounding_oretiers:iron_pebbles:5>,
	    bif			:	<rockhounding_oretiers:iron_pebbles:7>,
	    taconite	:	<rockhounding_oretiers:iron_pebbles:6>,
	    siderite	:	<rockhounding_oretiers:iron_pebbles:4>,
	    limonite	:	<rockhounding_oretiers:iron_pebbles:3>,
	    goethite	:	<rockhounding_oretiers:iron_pebbles:2>,
	    hematite	:	<rockhounding_oretiers:iron_pebbles:1>,
	    magnetite	:	<rockhounding_oretiers:iron_pebbles:0>,
	};




//=====================================================================================================================================================================================================	
//	Fluid Tables Liquids must actually be loaded in the game, otherwise script will error
//=====================================================================================================================================================================================================


		//	Molten Metals _______________________________________________________________________________________________________________________________________________________________________
	global GlobalMoltenMetal as ILiquidStack[string] = {
		Copshowium				:	<liquid:copshowium>,
		Copper					:	<liquid:copper>,
		Lead					:	<liquid:lead>,
		Lithium					:	<liquid:lithium>,
		Tin						:	<liquid:tin>,
		Bronze					:	<liquid:bronze>,
		Cadmium					:	<liquid:cadmium>,
		Gold					:	<liquid:gold>,
		Magnesium				:	<liquid:magnesium>,
		Molybdochalkos			:	<liquid:molybdochalkos>,
		Cerrosafe				:	<liquid:cerrosafe>,
		Magmolybdochalkosmuth	:	<liquid:magmolybdochalkosmuth>,
		Silver					:	<liquid:silver>,
		Zinc					:	<liquid:zinc>,
		Aluminum				:	<liquid:aluminum>,
		Brass					:	<liquid:brass>,
		Electrum				:	<liquid:electrum>,
		Iron					:	<liquid:iron>,
		Galvanizedsteel			:	<liquid:galvanizedsteel>,
		Nickel					:	<liquid:nickel>,
		Palladium				:	<liquid:palladium_fluid>,
		Steel					:	<liquid:steel>,
		Alumite					:	<liquid:alumite>,
		Cobalt					:	<liquid:cobalt>,
		Constantan				:	<liquid:constantan>,
		Demonmetal				:	<liquid:xu_demonic_metal>,
		Invar					:	<liquid:invar>,
		Iridium					:	<liquid:iridium>,
		Manganese				:	<liquid:manganese>,
		Platinum				:	<liquid:platinum>,
		Thorium					:	<liquid:thorium>,
		Titanium				:	<liquid:titanium>,
		Uranium					:	<liquid:uranium>,
		Alnico					:	<liquid:alnico>,
		Ardite					:	<liquid:ardite>,
		Enderium				:	<liquid:enderium>,
		Osmium					:	<liquid:osmium>,
		Signalum				:	<liquid:signalum>,
		Thortanium				:	<liquid:thortanium>,
		Titaniumaluminum		:	<liquid:titaniumaluminide>,
		Titaniumiridium			:	<liquid:titaniumiridium>,
		Hardenedsteel			:	<liquid:hardenedsteel>,
		Jauxum					:	<liquid:jauxum_fluid>,
		Karmesine				:	<liquid:karmesine_fluid>,
		Manyullyn				:	<liquid:manyullyn>,
		Osmiridium				:	<liquid:osmiridium>,
		Osram					:	<liquid:osram_fluid>,
		Ovium					:	<liquid:ovium_fluid>,
		Prometheum				:	<liquid:prometheum_fluid>,
		Refinedglowstone		:	<liquid:refinedglowstone>,
		Tiberium				:	<liquid:tiberium_fluid>,
		Tungsten				:	<liquid:tungsten>,
		Boron					:	<liquid:boron>,
		Chromium				:	<liquid:chromium>,
		Nichrome				:	<liquid:nichrome>,
		Stainlesssteel			:	<liquid:stainlesssteel>,
		Terrax					:	<liquid:terrax_fluid>,
		Tritonite				:	<liquid:tritonite_fluid>,
		Valyrium				:	<liquid:valyrium_fluid>,
		Ferroboron				:	<liquid:ferroboron>,
		Ignitz					:	<liquid:ignitz_fluid>,
		Triberium				:	<liquid:triberium_fluid>,
		Abyssum					:	<liquid:abyssum_fluid>,
		Aurorium				:	<liquid:aurorium_fluid>,
		Hardcarbon				:	<liquid:hard_carbon>,
		Meteorite				:	<liquid:meteorite_fluid>,
		Refinedobsidian			:	<liquid:refinedobsidian>,
		Toughalloy				:	<liquid:tough>,
		Astrium					:	<liquid:astrium_fluid>,
		Dyonite					:	<liquid:dyonite_fluid>,
		Eezo					:	<liquid:eezo_fluid>,
		Fractum					:	<liquid:fractum_fluid>,
		Lumix					:	<liquid:lumix_fluid>,
		Obsidiorite				:	<liquid:obsidiorite_fluid>,
		Osgloglas				:	<liquid:osgloglas>,
		Violium					:	<liquid:violium_fluid>,
		Yrdeen					:	<liquid:yrdeen_fluid>,
		Duranite				:	<liquid:duranite_fluid>,
		Obsidiorite				:	<liquid:obsidiorite_fluid>,
		Proxii					:	<liquid:proxii_fluid>,
		Seismum					:	<liquid:seismum_fluid>,
		Imperomite				:	<liquid:imperomite_fluid>,
		Iox						:	<liquid:iox_fluid>,
		Niob					:	<liquid:niob_fluid>,
		Uru						:	<liquid:uru_fluid>,
		Nihilite				:	<liquid:nihilite_fluid>,
		Nucleum					:	<liquid:nucleum_fluid>,
		Solarium				:	<liquid:solarium_fluid>,
		Vibranium				:	<liquid:vibranium_fluid>,
		Adamant					:	<liquid:adamant_fluid>,
		Aluminumbrass			:	<liquid:alubrass>,
		Bloodbronze				:	<liquid:bloodbronze>,
		Bloodinfusediron		:	<liquid:molten_blood_infused_iron>,
		Dilithium				:	<liquid:dilithium_fluid>,
		Enchantedmetal			:	<liquid:xu_enchanted_metal>,
		Evilinfusedmetal		:	<liquid:xu_evil_metal>,
		Glowstone				:	<liquid:glowstone>,
		Hslasteel				:	<liquid:hslasteel>,
		Knightslime				:	<liquid:knightslime>,
		Lumium					:	<liquid:lumium>,
		Redstone				:	<liquid:redstone>,
	};

		//	Stage 1 fluids	_______________________________________________________________________________________________________________________________________________________________________
	global GlobalStage1MetalFluid as ILiquidStack[string] = {
		"Copper"		:	<liquid:stage1_copper>,
		"Gold"			:	<liquid:stage1_gold>,
		"Lead"			:	<liquid:stage1_lead>,
		"Lithium"		:	<liquid:stage1_lithium>,
		"Tin"			:	<liquid:stage1_tin>,
		"Magnesium"		:	<liquid:stage1_magnesium>,
		"Silver"		:	<liquid:stage1_silver>,
		"Zinc"			:	<liquid:stage1_zinc>,
		"Aluminum"		:	<liquid:stage1_aluminum>,
		"Iron"			:	<liquid:stage1_iron>,
		"Palladium"		:	<liquid:stage1_palladium>,
		"Cobalt"		:	<liquid:stage1_cobalt>,
		"Magnite"		:	<liquid:stage1_magnite>,
		"Manganese"		:	<liquid:stage1_manganese>,
		"Nickel"		:	<liquid:stage1_nickel>,
		"Thorium"		:	<liquid:stage1_thorium>,
		"Titanium"		:	<liquid:stage1_titanium>,
		"Uranium"		:	<liquid:stage1_uranium>,
		"Ardite"		:	<liquid:stage1_ardite>,
		"Osmium"		:	<liquid:stage1_osmium>,
		"Platinum"		:	<liquid:stage1_platinum>,
		"Iridium"		:	<liquid:stage1_iridium>,
		"Jauxum"		:	<liquid:stage1_jauxum>,
		"Karmesine"		:	<liquid:stage1_karmesine>,
		"Osram"			:	<liquid:stage1_osram>,
		"Ovium"			:	<liquid:stage1_ovium>,
		"Prometheum"	:	<liquid:stage1_prometheum>,
		"Tiberium"		:	<liquid:stage1_tiberium>,
		"Tungsten"		:	<liquid:stage1_tungsten>,
		"Zirconium"		:	<liquid:stage1_zirconium>,
		"Boron"			:	<liquid:stage1_boron>,
		"Chromium"		:	<liquid:stage1_chromium>,
		"Valyrium"		:	<liquid:stage1_valyrium>,
		"Mithril"		:	<liquid:stage1_mithril>,
		"Abyssum"		:	<liquid:stage1_abyssum>,
		"Aurorum"		:	<liquid:stage1_aurorum>,
		"Meteorite"		:	<liquid:stage1_meteorite>,
		"Eezo"			:	<liquid:stage1_eezo>,
		"Duranite"		:	<liquid:stage1_duranite>,
		"Vibranium"		:	<liquid:stage1_vibranium>,
	};

		//	Stage 2 fluids _______________________________________________________________________________________________________________________________________________________________________
	global GlobalStage2MetalFluid as ILiquidStack[string] = {
		"Copper"		:	<liquid:stage2_copper>,
		"Gold"			:	<liquid:stage2_gold>,
		"Lead"			:	<liquid:stage2_lead>,
		"Lithium"		:	<liquid:stage2_lithium>,
		"Tin"			:	<liquid:stage2_tin>,
		"Magnesium"		:	<liquid:stage2_magnesium>,
		"Silver"		:	<liquid:stage2_silver>,
		"Zinc"			:	<liquid:stage2_zinc>,
		"Aluminum"		:	<liquid:stage2_aluminum>,
		"Iron"			:	<liquid:stage2_iron>,
		"Palladium"		:	<liquid:stage2_palladium>,
		"Cobalt"		:	<liquid:stage2_cobalt>,
		"Magnite"		:	<liquid:stage2_magnite>,
		"Manganese"		:	<liquid:stage2_manganese>,
		"Nickel"		:	<liquid:stage2_nickel>,
		"Thorium"		:	<liquid:stage2_thorium>,
		"Titanium"		:	<liquid:stage2_titanium>,
		"Uranium"		:	<liquid:stage2_uranium>,
		"Ardite"		:	<liquid:stage2_ardite>,
		"Osmium"		:	<liquid:stage2_osmium>,
		"Platinum"		:	<liquid:stage2_platinum>,
		"Iridium"		:	<liquid:stage2_iridium>,
		"Jauxum"		:	<liquid:stage2_jauxum>,
		"Karmesine"		:	<liquid:stage2_karmesine>,
		"Osram"			:	<liquid:stage2_osram>,
		"Ovium"			:	<liquid:stage2_ovium>,
		"Prometheum"	:	<liquid:stage2_prometheum>,
		"Tiberium"		:	<liquid:stage2_tiberium>,
		"Tungsten"		:	<liquid:stage2_tungsten>,
		"Zirconium"		:	<liquid:stage2_zirconium>,
		"Boron"			:	<liquid:stage2_boron>,
		"Chromium"		:	<liquid:stage2_chromium>,
		"Valyrium"		:	<liquid:stage2_valyrium>,
		"Mithril"		:	<liquid:stage2_mithril>,
		"Abyssum"		:	<liquid:stage2_abyssum>,
		"Aurorum"		:	<liquid:stage2_aurorum>,
		"Meteorite"		:	<liquid:stage2_meteorite>,
		"Eezo"			:	<liquid:stage2_eezo>,
		"Duranite"		:	<liquid:stage2_duranite>,
		"Vibranium"		:	<liquid:stage2_vibranium>,
	};

		//	Stage 3 fluids _______________________________________________________________________________________________________________________________________________________________________
	global GlobalStage3MetalFluid as ILiquidStack[string] = {
		"Copper"		:	<liquid:stage3_copper>,
		"Gold"			:	<liquid:stage3_gold>,
		"Lead"			:	<liquid:stage3_lead>,
		"Lithium"		:	<liquid:stage3_lithium>,
		"Tin"			:	<liquid:stage3_tin>,
		"Magnesium"		:	<liquid:stage3_magnesium>,
		"Silver"		:	<liquid:stage3_silver>,
		"Zinc"			:	<liquid:stage3_zinc>,
		"Aluminum"		:	<liquid:stage3_aluminum>,
		"Iron"			:	<liquid:stage3_iron>,
		"Palladium"		:	<liquid:stage3_palladium>,
		"Cobalt"		:	<liquid:stage3_cobalt>,
		"Magnite"		:	<liquid:stage3_magnite>,
		"Manganese"		:	<liquid:stage3_manganese>,
		"Nickel"		:	<liquid:stage3_nickel>,
		"Thorium"		:	<liquid:stage3_thorium>,
		"Titanium"		:	<liquid:stage3_titanium>,
		"Uranium"		:	<liquid:stage3_uranium>,
		"Ardite"		:	<liquid:stage3_ardite>,
		"Osmium"		:	<liquid:stage3_osmium>,
		"Platinum"		:	<liquid:stage3_platinum>,
		"Iridium"		:	<liquid:stage3_iridium>,
		"Jauxum"		:	<liquid:stage3_jauxum>,
		"Karmesine"		:	<liquid:stage3_karmesine>,
		"Osram"			:	<liquid:stage3_osram>,
		"Ovium"			:	<liquid:stage3_ovium>,
		"Prometheum"	:	<liquid:stage3_prometheum>,
		"Tiberium"		:	<liquid:stage3_tiberium>,
		"Tungsten"		:	<liquid:stage3_tungsten>,
		"Zirconium"		:	<liquid:stage3_zirconium>,
		"Boron"			:	<liquid:stage3_boron>,
		"Chromium"		:	<liquid:stage3_chromium>,
		"Valyrium"		:	<liquid:stage3_valyrium>,
		"Mithril"		:	<liquid:stage3_mithril>,
		"Abyssum"		:	<liquid:stage3_abyssum>,
		"Aurorum"		:	<liquid:stage3_aurorum>,
		"Meteorite"		:	<liquid:stage3_meteorite>,
		"Eezo"			:	<liquid:stage3_eezo>,
		"Duranite"		:	<liquid:stage3_duranite>,
		"Vibranium"		:	<liquid:stage3_vibranium>,
	};

		//	Stage 4 fluids _______________________________________________________________________________________________________________________________________________________________________
	global GlobalStage4MetalFluid as ILiquidStack[string] = {
		"Copper"		:	<liquid:stage4_copper>,
		"Gold"			:	<liquid:stage4_gold>,
		"Lead"			:	<liquid:stage4_lead>,
		"Lithium"		:	<liquid:stage4_lithium>,
		"Tin"			:	<liquid:stage4_tin>,
		"Magnesium"		:	<liquid:stage4_magnesium>,
		"Silver"		:	<liquid:stage4_silver>,
		"Zinc"			:	<liquid:stage4_zinc>,
		"Aluminum"		:	<liquid:stage4_aluminum>,
		"Iron"			:	<liquid:stage4_iron>,
		"Palladium"		:	<liquid:stage4_palladium>,
		"Cobalt"		:	<liquid:stage4_cobalt>,
		"Magnite"		:	<liquid:stage4_magnite>,
		"Manganese"		:	<liquid:stage4_manganese>,
		"Nickel"		:	<liquid:stage4_nickel>,
		"Thorium"		:	<liquid:stage4_thorium>,
		"Titanium"		:	<liquid:stage4_titanium>,
		"Uranium"		:	<liquid:stage4_uranium>,
		"Ardite"		:	<liquid:stage4_ardite>,
		"Osmium"		:	<liquid:stage4_osmium>,
		"Platinum"		:	<liquid:stage4_platinum>,
		"Iridium"		:	<liquid:stage4_iridium>,
		"Jauxum"		:	<liquid:stage4_jauxum>,
		"Karmesine"		:	<liquid:stage4_karmesine>,
		"Osram"			:	<liquid:stage4_osram>,
		"Ovium"			:	<liquid:stage4_ovium>,
		"Prometheum"	:	<liquid:stage4_prometheum>,
		"Tiberium"		:	<liquid:stage4_tiberium>,
		"Tungsten"		:	<liquid:stage4_tungsten>,
		"Zirconium"		:	<liquid:stage4_zirconium>,
		"Boron"			:	<liquid:stage4_boron>,
		"Chromium"		:	<liquid:stage4_chromium>,
		"Valyrium"		:	<liquid:stage4_valyrium>,
		"Mithril"		:	<liquid:stage4_mithril>,
		"Abyssum"		:	<liquid:stage4_abyssum>,
		"Aurorum"		:	<liquid:stage4_aurorum>,
		"Meteorite"		:	<liquid:stage4_meteorite>,
		"Eezo"			:	<liquid:stage4_eezo>,
		"Duranite"		:	<liquid:stage4_duranite>,
		"Vibranium"		:	<liquid:stage4_vibranium>,
	};


//=====================================================================================================================================================================================================	
//	Technical Tables
//=====================================================================================================================================================================================================


		//	Boiling Temperatures _______________________________________________________________________________________________________________________________________________________________________
	global GlobalMeltingTemp as int[string] = {
		"Coal"	:	3367,
		"Copper"	:	1000,
		"Gold"	:	1000,
		"Lead"	:	327,
		"Lithium"	:	180,
		"Molybdochalkos"	:	300,
		"Tin"	:	232,
		"Bronze"	:	950,
		"Cadmium"	:	321,
		"Magmolybdochalkosmuth"	:	600,
		"Magnesium"	:	650,
		"Silicon"	:	1414,
		"Silver"	:	961,
		"Zinc"	:	419,
		"Aluminum"	:	660,
		"Amber"	:	0,
		"Brass"	:	900,
		"Electrum"	:	1200,
		"Iron"	:	1555,
		"Sulfur"	:	115,
		"Aluminumbrass"	:	800,
		"Beryllium"	:	1287,
		"Bloodbronze"	:	1150,
		"Galvanizedsteel"	:	0,
		"InertBloodIron"	:	1755,
		"Lapis"	:	0,
		"Palladium"	:	1555,
		"Redstone"	:	1600,
		"Spectre"	:	404,
		"Steel"	:	1353,
		"Bloodinfusediron"	:	1555,
		"Cobalt"	:	1495,
		"Demonmetal"	:	1666,
		"Enori"	:	0,
		"Invar"	:	1500,
		"Knightslime"	:	1765,
		"Malachite"	:	0,
		"Magnite"	:	1657,
		"Manganese"	:	1246,
		"Nickel"	:	1455,
		"Palis"	:	0,
		"Restonia"	:	0,
		"AstralStarmetal"	:	1700,
		"Thorium"	:	1755,
		"Titanium"	:	1668,
		"Uranium"	:	1132,
		"Alnico"	:	1600,
		"Ardite"	:	2000,
		"Constantan"	:	1333,
		"Enchantedmetal"	:	1337,
		"Enderium"	:	1768,
		"Hexcite"	:	1750,
		"Obsidian"	:	1710,
		"Osmium"	:	3050,
		"Platinum"	:	1768,
		"Signalium"	:	1800,
		"Thortanium"	:	1800,
		"Titaniumaluminum"	:	1668,
		"Titaniumiridium"	:	2454,
		"Alumite"	:	1650,
		"BaseEssence"	:	4200,
		"Bassalt"	:	1800,
		"QuartzBlack"	:	0,
		"Dilithium"	:	1600,
		"Enderpearl"	:	4040,
		"Glowstone"	:	1600,
		"Hardenedsteel"	:	1370,
		"Iridium"	:	2454,
		"Jauxum"	:	2250,
		"Karmesine"	:	2250,
		"Lumium"	:	3500,
		"Manyullyn"	:	2345,
		"Obsidiansteel"	:	1700,
		"Osmiridium"	:	3333,
		"Osram"	:	2500,
		"Ovium"	:	2250,
		"Prometheum"	:	2750,
		"Quartz"	:	1700,
		"Refinedglowstone"	:	3050,
		"Siliconcarbide"	:	2828,
		"Tanzanite"	:	0,
		"Tiberium"	:	1340,
		"Tungsten"	:	3422,
		"Zirconium"	:	1855,
		"Boron"	:	2000,
		"Chromium"	:	1907,
		"emeradic"	:	0,
		"Emerald"	:	2044,
		"Hslasteel"	:	1852,
		"Nichrome"	:	1924,
		"Stainlesssteel"	:	2001,
		"Terrax"	:	2750,
		"Topaz"	:	0,
		"Tritonite"	:	1850,
		"Valyrium"	:	3807,
		"Evilinfusedmetal"	:	6666,
		"Ferroboron"	:	2555,
		"Ignitz"	:	4200,
		"Inferium"	:	4500,
		"Mithril"	:	3333,
		"NetherQuartz"	:	2100,
		"Ruby"	:	2044,
		"Sapphire"	:	0,
		"Triberium"	:	1680,
		"Abyssum"	:	4200,
		"Aurorum"	:	4225,
		"Diamond"	:	4000,
		"Hardcarbon"	:	4500,
		"Meteorite"	:	4040,
		"Prudentium"	:	4700,
		"Refinedobsidian"	:	3050,
		"Toughalloy"	:	2600,
		"Unstable"	:	0,
		"Astrium"	:	4500,
		"Diamantine"	:	0,
		"Dyonite"	:	2700,
		"Eezo"	:	4200,
		"Fractum"	:	4200,
		"Intermedium"	:	5000,
		"Lumix"	:	3333,
		"Obsidiorite"	:	5050,
		"Osgloglas"	:	3337,
		"Violium"	:	4300,
		"Crystalized"	:	3500,
		"Duranite"	:	5500,
		"Obsidiorite"	:	4500,
		"Proxii"	:	4300,
		"Seismum"	:	4242,
		"Superium"	:	5500,
		"Imperiomite"	:	5500,
		"Iox"	:	5000,
		"Niob"	:	5400,
		"Supremium"	:	6000,
		"Uru"	:	4500,
		"Insanium"	:	8001,
		"Nihilite"	:	5800,
		"Nucleum"	:	6666,
		"Solarium"	:	4700,
		"Vibranium"	:	5731,
		"Yrdeen"	:	4500,
		"Adamant"	:	6969,
	};

		//	Boiling Temperatures _______________________________________________________________________________________________________________________________________________________________________
	global GlobalBoilingTemp as int[string] = {
		"Coal"	:	4827,
		"Copper"	:	2562,
		"Gold"	:	2970,
		"Lead"	:	1750,
		"Lithium"	:	1342,
		"Molybdochalkos"	:	2000,
		"Tin"	:	2603,
		"Bronze"	:	2600,
		"Cadmium"	:	766,
		"Magmolybdochalkosmuth"	:	1500,
		"Magnesium"	:	1091,
		"Silicon"	:	3265,
		"Silver"	:	2162,
		"Zinc"	:	1665,
		"Aluminum"	:	2470,
		"Amber"	:	0,
		"Brass"	:	2750,
		"Electrum"	:	2500,
		"Iron"	:	2963,
		"Sulfur"	:	444,
		"Aluminumbrass"	:	2500,
		"Beryllium"	:	2970,
		"Bloodbronze"	:	2900,
		"Galvanizedsteel"	:	0,
		"InertBloodIron"	:	3300,
		"Lapis"	:	0,
		"Palladium"	:	2963,
		"Redstone"	:	3200,
		"Spectre"	:	808,
		"Steel"	:	2750,
		"Bloodinfusediron"	:	2963,
		"Cobalt"	:	2870,
		"Demonmetal"	:	6666,
		"Enori"	:	0,
		"Invar"	:	3000,
		"Knightslime"	:	2700,
		"Malachite"	:	0,
		"Magnite"	:	3000,
		"Manganese"	:	2061,
		"Nickel"	:	2913,
		"Palis"	:	0,
		"Restonia"	:	0,
		"AstralStarmetal"	:	3400,
		"Thorium"	:	4787,
		"Titanium"	:	3287,
		"Uranium"	:	4131,
		"Alnico"	:	3200,
		"Ardite"	:	4000,
		"Constantan"	:	2700,
		"Enchantedmetal"	:	2420,
		"Enderium"	:	3825,
		"Hexcite"	:	3300,
		"Obsidian"	:	2230,
		"Osmium"	:	5027,
		"Platinum"	:	3825,
		"Signalium"	:	3600,
		"Thortanium"	:	2890,
		"Titaniumaluminum"	:	3287,
		"Titaniumiridium"	:	4427,
		"Alumite"	:	3100,
		"BaseEssence"	:	6900,
		"Bassalt"	:	3000,
		"QuartzBlack"	:	0,
		"Dilithium"	:	3200,
		"Enderpearl"	:	4404,
		"Glowstone"	:	3200,
		"Hardenedsteel"	:	2850,
		"Iridium"	:	4427,
		"Jauxum"	:	4450,
		"Karmesine"	:	4450,
		"Lumium"	:	4700,
		"Manyullyn"	:	3456,
		"Obsidiansteel"	:	3400,
		"Osmiridium"	:	5027,
		"Osram"	:	4000,
		"Ovium"	:	4450,
		"Prometheum"	:	3570,
		"Quartz"	:	2230,
		"Refinedglowstone"	:	5027,
		"Siliconcarbide"	:	3232,
		"Tanzanite"	:	0,
		"Tiberium"	:	1670,
		"Tungsten"	:	5555,
		"Zirconium"	:	4409,
		"Boron"	:	3927,
		"Chromium"	:	2642,
		"emeradic"	:	0,
		"Emerald"	:	3088,
		"Hslasteel"	:	2500,
		"Nichrome"	:	2700,
		"Stainlesssteel"	:	3500,
		"Terrax"	:	3350,
		"Topaz"	:	0,
		"Tritonite"	:	4600,
		"Valyrium"	:	4807,
		"Evilinfusedmetal"	:	9999,
		"Ferroboron"	:	3600,
		"Ignitz"	:	5420,
		"Inferium"	:	7200,
		"Mithril"	:	5555,
		"NetherQuartz"	:	2750,
		"Ruby"	:	4088,
		"Sapphire"	:	0,
		"Triberium"	:	3670,
		"Abyssum"	:	6200,
		"Aurorum"	:	6225,
		"Diamond"	:	4800,
		"Hardcarbon"	:	4900,
		"Meteorite"	:	8080,
		"Prudentium"	:	7400,
		"Refinedobsidian"	:	5027,
		"Toughalloy"	:	3200,
		"Unstable"	:	0,
		"Astrium"	:	5800,
		"Diamantine"	:	0,
		"Dyonite"	:	3900,
		"Eezo"	:	4500,
		"Fractum"	:	5247,
		"Intermedium"	:	6000,
		"Lumix"	:	6666,
		"Obsidiorite"	:	6969,
		"Osgloglas"	:	5432,
		"Violium"	:	5600,
		"Crystalized"	:	7500,
		"Duranite"	:	7600,
		"Obsidiorite"	:	6400,
		"Proxii"	:	6300,
		"Seismum"	:	5454,
		"Superium"	:	6200,
		"Imperiomite"	:	6400,
		"Iox"	:	7200,
		"Niob"	:	6600,
		"Supremium"	:	6800,
		"Uru"	:	6500,
		"Insanium"	:	9001,
		"Nihilite"	:	7000,
		"Nucleum"	:	7777,
		"Solarium"	:	5800,
		"Vibranium"	:	7513,
		"Yrdeen"	:	6000,
		"Adamant"	:	8008,
	};

		//	Harvest Levels (Needs refinement) _______________________________________________________________________________________________________________________________________________________________________
	global GlobalHarvestLevel as int[string] = {
		"Coal"	:	2,
		"Copper"	:	2,
		"Gold"	:	2,
		"Lead"	:	2,
		"Lithium"	:	2,
		"Molybdochalkos"	:	2,
		"Tin"	:	2,
		"Bronze"	:	3,
		"Cadmium"	:	3,
		"Magmolybdochalkosmuth"	:	3,
		"Magnesium"	:	3,
		"Silicon"	:	3,
		"Silver"	:	3,
		"Zinc"	:	3,
		"Aluminum"	:	4,
		"Amber"	:	4,
		"Brass"	:	4,
		"Electrum"	:	4,
		"Iron"	:	4,
		"Sulfur"	:	4,
		"Aluminumbrass"	:	5,
		"Beryllium"	:	5,
		"Bloodbronze"	:	5,
		"Galvanizedsteel"	:	5,
		"InertBloodIron"	:	5,
		"Lapis"	:	5,
		"Palladium"	:	5,
		"Redstone"	:	5,
		"Spectre"	:	5,
		"Steel"	:	5,
		"Bloodinfusediron"	:	6,
		"Cobalt"	:	6,
		"Demonmetal"	:	6,
		"Enori"	:	6,
		"Invar"	:	6,
		"Knightslime"	:	6,
		"Malachite"	:	6,
		"Magnite"	:	6,
		"Manganese"	:	6,
		"Nickel"	:	6,
		"Palis"	:	6,
		"Restonia"	:	6,
		"AstralStarmetal"	:	6,
		"Thorium"	:	6,
		"Titanium"	:	6,
		"Uranium"	:	6,
		"Alnico"	:	7,
		"Ardite"	:	7,
		"Constantan"	:	7,
		"Enchantedmetal"	:	7,
		"Enderium"	:	7,
		"Hexcite"	:	7,
		"Obsidian"	:	7,
		"Osmium"	:	7,
		"Platinum"	:	7,
		"Signalium"	:	7,
		"Thortanium"	:	7,
		"Titaniumaluminum"	:	7,
		"Titaniumiridium"	:	7,
		"Alumite"	:	8,
		"BaseEssence"	:	8,
		"Bassalt"	:	8,
		"QuartzBlack"	:	8,
		"Dilithium"	:	8,
		"Enderpearl"	:	8,
		"Glowstone"	:	8,
		"Hardenedsteel"	:	8,
		"Iridium"	:	8,
		"Jauxum"	:	8,
		"Karmesine"	:	8,
		"Lumium"	:	8,
		"Manyullyn"	:	8,
		"Obsidiansteel"	:	8,
		"Osmiridium"	:	8,
		"Osram"	:	8,
		"Ovium"	:	8,
		"Prometheum"	:	8,
		"Quartz"	:	8,
		"Refinedglowstone"	:	8,
		"Siliconcarbide"	:	8,
		"Tanzanite"	:	8,
		"Tiberium"	:	8,
		"Tungsten"	:	8,
		"Zirconium"	:	8,
		"Boron"	:	9,
		"Chromium"	:	9,
		"emeradic"	:	9,
		"Emerald"	:	9,
		"Hslasteel"	:	9,
		"Nichrome"	:	9,
		"Stainlesssteel"	:	9,
		"Terrax"	:	9,
		"Topaz"	:	9,
		"Tritonite"	:	9,
		"Valyrium"	:	9,
		"Evilinfusedmetal"	:	10,
		"Ferroboron"	:	10,
		"Ignitz"	:	10,
		"Inferium"	:	10,
		"Mithril"	:	10,
		"NetherQuartz"	:	10,
		"Ruby"	:	10,
		"Sapphire"	:	10,
		"Triberium"	:	10,
		"Abyssum"	:	11,
		"Aurorum"	:	11,
		"Diamond"	:	11,
		"Hardcarbon"	:	11,
		"Meteorite"	:	11,
		"Prudentium"	:	11,
		"Refinedobsidian"	:	11,
		"Toughalloy"	:	11,
		"Unstable"	:	11,
		"Astrium"	:	12,
		"Diamantine"	:	12,
		"Dyonite"	:	12,
		"Eezo"	:	12,
		"Fractum"	:	12,
		"Intermedium"	:	12,
		"Lumix"	:	12,
		"Obsidiorite"	:	12,
		"Osgloglas"	:	12,
		"Violium"	:	12,
		"Crystalized"	:	13,
		"Duranite"	:	13,
		"Obsidiorite"	:	13,
		"Proxii"	:	13,
		"Seismum"	:	13,
		"Superium"	:	13,
		"Imperiomite"	:	14,
		"Iox"	:	14,
		"Niob"	:	14,
		"Supremium"	:	14,
		"Uru"	:	14,
		"Insanium"	:	15,
		"Nihilite"	:	15,
		"Nucleum"	:	15,
		"Solarium"	:	15,
		"Vibranium"	:	15,
		"Yrdeen"	:	15,
		"Adamant"	:	16,
	};