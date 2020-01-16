//=====================================================================================================================================================================================================	
//	Import-ant things
//=====================================================================================================================================================================================================


import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import modtweaker.tconstruct.ITICMaterial;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;


///=====================================================================================================================================================================================================	
//	Predefining arrays and stuff
//=====================================================================================================================================================================================================	


	//	define all liquids that can be used to make the metal casts.
var CastMetals = [
	<liquid:gold>,
	<liquid:brass>,
	<liquid:alubrass>,
] as  ILiquidStack[];

	//	Custom Cast Crafting table
	//	Source Material Part : Output Material Fluid	_______________________________________________________________________________________________________________________________________________________________________
var TconMaterials = {
	<ticmat:silver> : <liquid:xu_enchanted_metal>,
	<ticmat:xu_enchanted_metal> : <liquid:xu_demonic_metal>,
	<ticmat:xu_demonic_metal> : <liquid:xu_evil_metal>,
	<ticmat:osmiridium> : <liquid:refinedobsidian>,
	<ticmat:mithril> : <liquid:mythril>,
} as ILiquidStack[ITICMaterial];

	//	Table of parts	_______________________________________________________________________________________________________________________________________________________________________
var TconParts = {
	<tconstruct:sharpening_kit> : 2,
	<tconstruct:pick_head> : 2,
	<tconstruct:shovel_head> : 2,
	<tconstruct:axe_head> : 2,
	<tconstruct:broad_axe_head> : 8,
	<tconstruct:sword_blade> : 2,
	<tconstruct:large_sword_blade> : 8,
	<tconstruct:hammer_head> : 8,
	<tconstruct:excavator_head> : 8,
	<tconstruct:scythe_head> : 8,
	<tconstruct:large_plate> : 8,
	<tconstruct:kama_head> : 2,
	<tconstruct:arrow_head> : 2,
	<tconstruct:pan_head> : 3,
	<tconstruct:sign_head> : 3,
	<tconstruct:tough_tool_rod> : 3,
	<tconstruct:tough_binding> : 3,
	<tconstruct:bow_limb> : 3,
	<tconstruct:tool_rod> : 1,
	<tconstruct:binding> : 1,
	<tconstruct:wide_guard> : 1,
	<tconstruct:hand_guard> : 1,
	<tconstruct:cross_guard> : 1,
	<tconstruct:knife_blade> : 1,
	<conarm:polishing_kit> : 3,
	<conarm:helmet_core> : 4,
	<conarm:chest_core> : 6,
	<conarm:leggings_core> : 5,
	<conarm:boots_core> : 4,
	<conarm:armor_plate> : 3,
	<conarm:armor_trim> : 1,
	<totaltinkers:greatbladecore> : 12,
	<totaltinkers:fullguard> : 3,
	<tcomplement:chisel_head> : 1,
} as int[IItemStack];

var SandCastable = {
	<ore:ingotCopper> : <liquid:copper>,
	<ore:ingotTin> : <liquid:tin>,
	<ore:ingotLead> : <liquid:lead>,
	<ore:ingotBronze> : <liquid:bronze>,
	<ore:ingotMolybdochalkos> : <liquid:molybdochalkos>,
	<ore:ingotMagmolybdochalkosmuth> : <liquid:magmolybdochalkosmuth>,
	<ore:ingotBismuth> : <liquid:bismuth>,
	<ore:ingotCadmium> : <liquid:cadmium>,
	<ore:ingotSilver> : <liquid:silver>,
	<ore:ingotZinc> : <liquid:zinc>,
	<ore:ingotBrass> : <liquid:brass>,
	<ore:ingotElectrum> : <liquid:electrum>,
} as ILiquidStack[IOreDictEntry];

var AnvilCast = {
	<tinkersforging:tinkers_anvil/copper> : <liquid:copper>,
	<tinkersforging:tinkers_anvil/tin> : <liquid:tin>,
	<tinkersforging:tinkers_anvil/bronze> : <liquid:bronze>,
	<tinkersforging:tinkers_anvil/silver> : <liquid:silver>,
	<tinkersforging:tinkers_anvil/iron> : <liquid:iron>,
	<tinkersforging:tinkers_anvil/alumifun> : <liquid:aluminum>,
	<tinkersforging:tinkers_anvil/brass> : <liquid:brass>,
	<tinkersforging:tinkers_anvil/steel> : <liquid:steel>,
} as ILiquidStack[IItemStack];
	//<tinkersforging:tinkers_anvil/zinc> : <liquid:zinc>,



//=====================================================================================================================================================================================================	
//	Remove casts for forged tool parts
//=====================================================================================================================================================================================================	


	//	Remove recipes for making casts	_______________________________________________________________________________________________________________________________________________________________________
mods.tconstruct.Casting.removeTableRecipe(<tconstruct:clay_cast>);
mods.tconstruct.Casting.removeTableRecipe(<tconstruct:cast>);


	//	Add back casts for things that are not forged for each type of cast metal defined above	_______________________________________________________________________________________________________________________________________________________________________
for Metal in CastMetals{   
	mods.tconstruct.Casting.addTableRecipe(<tconstruct:cast>, null, Metal, 144, false, 200);
	mods.tconstruct.Casting.addTableRecipe(<tconstruct:cast_custom:4>, <ore:gearWood>, Metal, 144, true, 200);
	mods.tconstruct.Casting.addTableRecipe(<tconstruct:cast>.withTag({PartType:"tcomplement:chisel_head"}), <tcomplement:chisel_head>.withTag({Material:"moldclay"}), Metal, 144, true, 200);
	mods.tconstruct.Casting.addTableRecipe(<tconstruct:cast>.withTag({PartType:"tconstruct:fletching"}), <tconstruct:fletching>.withTag({Material: "moldclay"}), Metal, 144, true, 200);
	mods.tconstruct.Casting.addTableRecipe(<tconstruct:cast>.withTag({PartType:"tconstruct:arrow_shaft"}), <tconstruct:arrow_shaft>.withTag({Material:"moldclay"}), Metal, 144, true, 200);
	mods.tconstruct.Casting.addTableRecipe(<tconstruct:cast>.withTag({PartType:"tconstruct:bow_string"}), <tconstruct:bow_string>.withTag({Material: "moldclay"}), Metal, 144, true, 200);
	mods.tconstruct.Casting.addTableRecipe(<tconstruct:cast>.withTag({PartType:"tconstruct:sharpening_kit"}), <tconstruct:sharpening_kit>.withTag({Material:"moldclay"}), Metal, 144, true, 200);
	mods.tconstruct.Casting.addTableRecipe(<tconstruct:cast>.withTag({PartType:"conarm:polishing_kit"}), <conarm:polishing_kit>.withTag({Material:"moldclay"}), Metal, 144, true, 200);
}


//=====================================================================================================================================================================================================	
//	Make new Casting recipes.
//=====================================================================================================================================================================================================


	//	Thermal Foundation Components	_______________________________________________________________________________________________________________________________________________________________________
mods.tconstruct.Casting.addTableRecipe(<thermalfoundation:material:512> , <immersiveengineering:material:9>, <liquid:redstone> , 400 , true, 300 );
mods.tconstruct.Casting.addTableRecipe(<thermalfoundation:material:513> , <ore:gearGold>, <liquid:redstone> , 200 , true, 200 );
mods.tconstruct.Casting.addTableRecipe(<thermalfoundation:material:514> , <ore:gearSilver>, <liquid:redstone> , 200 , true, 200 );
//mods.tconstruct.Casting.addTableRecipe(<extrautils2:ingredients:1> , <ore:gearCopper>, <liquid:redstone> , 1600 , true, 200 );
//mods.tconstruct.Casting.addBasinRecipe(<thermalexpansion:frame> , <thermalexpansion:frame:64>, <liquid:iron> , 144*4 , true, 400 );
mods.tconstruct.Casting.addBasinRecipe(<thermalfoundation:ore_fluid:2> , <minecraft:redstone_ore>, <liquid:redstone> , 1000 , true, 400 );

	//	Treated Wood Planks	_______________________________________________________________________________________________________________________________________________________________________
//recipes.removeByRecipeName("immersiveengineering:treated_wood/treated_wood");
mods.tconstruct.Casting.addBasinRecipe(<immersiveengineering:treated_wood> , <ore:plankWood>, <liquid:creosote> , 300 , true, 900 );	

	//	Alternate Bucket materials	_______________________________________________________________________________________________________________________________________________________________________
mods.tconstruct.Casting.addTableRecipe(<minecraft:bucket> , <tcomplement:cast_clay>, <liquid:tin> , 432 , false, 140 );
mods.tconstruct.Casting.addTableRecipe(<minecraft:bucket> , <tcomplement:cast>, <liquid:tin> , 432 , false, 140 );
mods.tconstruct.Casting.addTableRecipe(<minecraft:bucket> , <tcomplement:cast>, <liquid:aluminum> , 432 , false, 140 );
mods.tconstruct.Casting.addTableRecipe(<minecraft:bucket> , <tcomplement:cast>, <liquid:titanium> , 432 , false, 140 );
mods.tconstruct.Casting.addTableRecipe(<minecraft:bucket> , <tcomplement:cast>, <liquid:silver> , 432 , false, 140 );

	//	Nuclearcraft Frames	_______________________________________________________________________________________________________________________________________________________________________
mods.tconstruct.Casting.addBasinRecipe(<nuclearcraft:part:10> , <nuclearcraft:part:11>, <liquid:tough> , 144 , true, 500 );


	//	Silky Cloth	_______________________________________________________________________________________________________________________________________________________________________
//mods.tconstruct.Casting.addTableRecipe(<tconstruct:materials:15> , <ebwizardry:magic_silk>, <liquid:xu_enchanted_metal> , 144 , true, 180 );

	//	Custom Ingots (Contenttweaker)	_______________________________________________________________________________________________________________________________________________________________________
mods.tconstruct.Casting.addTableRecipe(<contenttweaker:molybdochalkos_ingot> , <tconstruct:cast_custom>, <liquid:molybdochalkos> , 144 , false, 100 );
mods.tconstruct.Casting.addTableRecipe(<contenttweaker:magmolybdochalkosmuth_ingot> , <tconstruct:cast_custom>, <liquid:magmolybdochalkosmuth> , 144 , false, 120 );

	//	Sand Ingot Cast	_______________________________________________________________________________________________________________________________________________________________________
mods.tconstruct.Casting.addTableRecipe(<contenttweaker:sand_ingot_cast_wet> , <ore:ingotStackable>, <liquid:moldsand> , 250 , true, 100 );

	//	Sand Castable ingots for early game	_______________________________________________________________________________________________________________________________________________________________________
for Item , Fluid in SandCastable {
	mods.tconstruct.Casting.addTableRecipe(Item.firstItem , <contenttweaker:sand_ingot_cast> , Fluid , 144 , true , 100);
}

	//	Anvil Cast	_______________________________________________________________________________________________________________________________________________________________________
mods.tconstruct.Casting.addBasinRecipe(<contenttweaker:forging_anvil_cast_wet> , <tinkersforging:tinkers_anvil/moldclay>, <liquid:moldsand> , 2000 , true, 800 );

	//	Forging Anvil casting	_______________________________________________________________________________________________________________________________________________________________________
for Anvil , Fluid in AnvilCast {
	recipes.remove( Anvil );
	mods.tconstruct.Casting.addBasinRecipe(Anvil , <contenttweaker:forging_anvil_cast> , Fluid , 2160 , true , 3000);
	//mods.tconstruct.Melting.addRecipe(Fluid * 2160 , Anvil , 1300);
}
	
	//	Glass Casting	_______________________________________________________________________________________________________________________________________________________________________
mods.tconstruct.Casting.removeBasinRecipe(<tconstruct:clear_glass>);
mods.tconstruct.Casting.addBasinRecipe(<minecraft:glass> , null, <liquid:glass> , 1000 , false, 200 );
//mods.tconstruct.Casting.addTableRecipe(<minecraft:glass_pane> , null, <liquid:glass> , 375 , false, 80 );
	//	Sandy Glass	_______________________________________________________________________________________________________________________________________________________________________
recipes.remove( <extrautils2:decorativesolid:4> );
mods.tconstruct.Casting.addBasinRecipe(<extrautils2:decorativesolid:4> , <ore:sand>, <liquid:glass> , 1000 , true, 220 );
	//	Thickened Glass	_______________________________________________________________________________________________________________________________________________________________________
mods.tconstruct.Casting.addBasinRecipe(<extrautils2:decorativeglass> , <tconstruct:clear_glass>, <liquid:glass> , 1000 , true, 300 );

//=====================================================================================================================================================================================================	
//	Super Awesome Kustom Kast Krafting system...  Wait...
//=====================================================================================================================================================================================================	


	//	Magic happens here. Now in a recursive function!	_______________________________________________________________________________________________________________________________________________________________________
for Table , Liquid in TconMaterials {
	for Part , Int in TconParts {
		mods.tconstruct.Casting.addTableRecipe(Part.withTag({Material:Liquid.name}) , Part.withTag({Material:Table.getName}) , Liquid , Int*144 , true, Int*100 );
	}
}	