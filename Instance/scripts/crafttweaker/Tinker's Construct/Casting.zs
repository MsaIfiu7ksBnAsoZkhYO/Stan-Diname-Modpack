//=====================================================================================================================================================================================================	
//	Import-ant things
//=====================================================================================================================================================================================================


import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import modtweaker.tconstruct.ITICMaterial;



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



/*

//==============================================================
//	Super Awesome Kustom Kast Krafting system...  Wait...
//==============================================================

//Assign the Source material and the newly cast materials here.
//Source Material Part : Output Material Fluid
var TconMaterials = {
	<ticmat:gold> : <liquid:xu_enchanted_metal>,
	<ticmat:xu_enchanted_metal> : <liquid:xu_demonic_metal>,
	<ticmat:xu_demonic_metal> : <liquid:xu_evil_metal>,
	<ticmat:osmiridium> : <liquid:refinedobsidian>,
	<ticmat:lumium> : <liquid:refinedglowstone>,
	<ticmat:bronze> : <liquid:bloodbronze>,
	<ticmat:mithril> : <liquid:mythril>,
	<ticmat:titanium> : <liquid:titaniumiridium>,
	<ticmat:titanium> : <liquid:titaniumaluminide>,
	<ticmat:enori_actadd_plustic> : <liquid:hexcite>,
	<ticmat:enderium> : <liquid:emerald>,

} as ILiquidStack[ITICMaterial];

//Magic happens here.  If additional meterial types are needed, add them here.

for Table , Liquid in TconMaterials {
	mods.tconstruct.Casting.addTableRecipe(<tconstruct:sharpening_kit>.withTag({Material:Liquid.name}) , <tconstruct:sharpening_kit>.withTag({Material:Table.getName}) , Liquid , 2*144 , true, 2*100 );
	mods.tconstruct.Casting.addTableRecipe(<tconstruct:pick_head>.withTag({Material:Liquid.name}) , <tconstruct:pick_head>.withTag({Material:Table.getName}) , Liquid , 2*144 , true, 2*100 );
	mods.tconstruct.Casting.addTableRecipe(<tconstruct:shovel_head>.withTag({Material:Liquid.name}) , <tconstruct:shovel_head>.withTag({Material:Table.getName}) , Liquid , 1*144 , true, 1*100 );
	mods.tconstruct.Casting.addTableRecipe(<tconstruct:axe_head>.withTag({Material:Liquid.name}) , <tconstruct:axe_head>.withTag({Material:Table.getName}) , Liquid , 2*144 , true, 2*100 );
	mods.tconstruct.Casting.addTableRecipe(<tconstruct:broad_axe_head>.withTag({Material:Liquid.name}) , <tconstruct:broad_axe_head>.withTag({Material:Table.getName}) , Liquid , 8*144 , true, 8*100 );
	mods.tconstruct.Casting.addTableRecipe(<tconstruct:sword_blade>.withTag({Material:Liquid.name}) , <tconstruct:sword_blade>.withTag({Material:Table.getName}) , Liquid , 2*144 , true, 2*100 );
	mods.tconstruct.Casting.addTableRecipe(<tconstruct:large_sword_blade>.withTag({Material:Liquid.name}) , <tconstruct:large_sword_blade>.withTag({Material:Table.getName}) , Liquid , 8*144 , true, 8*100 );
	mods.tconstruct.Casting.addTableRecipe(<tconstruct:hammer_head>.withTag({Material:Liquid.name}) , <tconstruct:hammer_head>.withTag({Material:Table.getName}) , Liquid , 8*144 , true, 8*100 );
	mods.tconstruct.Casting.addTableRecipe(<tconstruct:excavator_head>.withTag({Material:Liquid.name}) , <tconstruct:excavator_head>.withTag({Material:Table.getName}) , Liquid , 8*144 , true, 8*100 );
	mods.tconstruct.Casting.addTableRecipe(<tconstruct:scythe_head>.withTag({Material:Liquid.name}) , <tconstruct:scythe_head>.withTag({Material:Table.getName}) , Liquid , 8*144 , true, 8*100 );
	mods.tconstruct.Casting.addTableRecipe(<tconstruct:large_plate>.withTag({Material:Liquid.name}) , <tconstruct:large_plate>.withTag({Material:Table.getName}) , Liquid , 8*144 , true, 8*100 );
	mods.tconstruct.Casting.addTableRecipe(<tconstruct:kama_head>.withTag({Material:Liquid.name}) , <tconstruct:kama_head>.withTag({Material:Table.getName}) , Liquid , 2*144 , true, 2*100 );
	mods.tconstruct.Casting.addTableRecipe(<tconstruct:arrow_head>.withTag({Material:Liquid.name}) , <tconstruct:arrow_head>.withTag({Material:Table.getName}) , Liquid , 2*144 , true, 2*100 );
	mods.tconstruct.Casting.addTableRecipe(<tconstruct:pan_head>.withTag({Material:Liquid.name}) , <tconstruct:pan_head>.withTag({Material:Table.getName}) , Liquid , 3*144 , true, 3*100 );
	mods.tconstruct.Casting.addTableRecipe(<tconstruct:sign_head>.withTag({Material:Liquid.name}) , <tconstruct:sign_head>.withTag({Material:Table.getName}) , Liquid , 3*144 , true, 3*100 );
	mods.tconstruct.Casting.addTableRecipe(<tconstruct:tough_tool_rod>.withTag({Material:Liquid.name}) , <tconstruct:tough_tool_rod>.withTag({Material:Table.getName}) , Liquid , 3*144 , true, 3*100 );
	mods.tconstruct.Casting.addTableRecipe(<tconstruct:tough_binding>.withTag({Material:Liquid.name}) , <tconstruct:tough_binding>.withTag({Material:Table.getName}) , Liquid , 3*144 , true, 3*100 );
	mods.tconstruct.Casting.addTableRecipe(<tconstruct:bow_limb>.withTag({Material:Liquid.name}) , <tconstruct:bow_limb>.withTag({Material:Table.getName}) , Liquid , 3*144 , true, 3*100 );
	mods.tconstruct.Casting.addTableRecipe(<tconstruct:tool_rod>.withTag({Material:Liquid.name}) , <tconstruct:tool_rod>.withTag({Material:Table.getName}) , Liquid , 1*144 , true, 1*100 );
	mods.tconstruct.Casting.addTableRecipe(<tconstruct:binding>.withTag({Material:Liquid.name}) , <tconstruct:binding>.withTag({Material:Table.getName}) , Liquid , 1*144 , true, 1*100 );
	mods.tconstruct.Casting.addTableRecipe(<tconstruct:wide_guard>.withTag({Material:Liquid.name}) , <tconstruct:wide_guard>.withTag({Material:Table.getName}) , Liquid , 1*144 , true, 1*100 );
	mods.tconstruct.Casting.addTableRecipe(<tconstruct:hand_guard>.withTag({Material:Liquid.name}) , <tconstruct:hand_guard>.withTag({Material:Table.getName}) , Liquid , 1*144 , true, 1*100 );
	mods.tconstruct.Casting.addTableRecipe(<tconstruct:cross_guard>.withTag({Material:Liquid.name}) , <tconstruct:cross_guard>.withTag({Material:Table.getName}) , Liquid , 1*144 , true, 1*100 );
	mods.tconstruct.Casting.addTableRecipe(<tconstruct:knife_blade>.withTag({Material:Liquid.name}) , <tconstruct:knife_blade>.withTag({Material:Table.getName}) , Liquid , 1*144 , true, 1*100 );
	mods.tconstruct.Casting.addTableRecipe(<conarm:polishing_kit>.withTag({Material:Liquid.name}) , <conarm:polishing_kit>.withTag({Material:Table.getName}) , Liquid , 3*144 , true, 3*100 );
	mods.tconstruct.Casting.addTableRecipe(<conarm:helmet_core>.withTag({Material:Liquid.name}) , <conarm:helmet_core>.withTag({Material:Table.getName}) , Liquid , 4*144 , true, 4*100 );
	mods.tconstruct.Casting.addTableRecipe(<conarm:chest_core>.withTag({Material:Liquid.name}) , <conarm:chest_core>.withTag({Material:Table.getName}) , Liquid , 6*144 , true, 6*100 );
	mods.tconstruct.Casting.addTableRecipe(<conarm:leggings_core>.withTag({Material:Liquid.name}) , <conarm:leggings_core>.withTag({Material:Table.getName}) , Liquid , 5*144 , true, 5*100 );
	mods.tconstruct.Casting.addTableRecipe(<conarm:boots_core>.withTag({Material:Liquid.name}) , <conarm:boots_core>.withTag({Material:Table.getName}) , Liquid , 4*144 , true, 4*100 );
	mods.tconstruct.Casting.addTableRecipe(<conarm:armor_plate>.withTag({Material:Liquid.name}) , <conarm:armor_plate>.withTag({Material:Table.getName}) , Liquid , 3*144 , true, 3*100 );
	mods.tconstruct.Casting.addTableRecipe(<conarm:armor_trim>.withTag({Material:Liquid.name}) , <conarm:armor_trim>.withTag({Material:Table.getName}) , Liquid , 1*144 , true, 1*100 );
	//mods.tconstruct.Casting.addTableRecipe(<tinkerscompendium:td_filigree>.withTag({Material:Liquid.name}) , <tinkerscompendium:td_filigree>.withTag({Material:Table.getName}) , Liquid , 1*144 , true, 1*100 );
	//mods.tconstruct.Casting.addTableRecipe(<tinkerscompendium:td_armor_plate>.withTag({Material:Liquid.name}) , <tinkerscompendium:td_armor_plate>.withTag({Material:Table.getName}) , Liquid , 1*144 , true, 1*100 );
	//mods.tconstruct.Casting.addTableRecipe(<tinkerscompendium:td_chainmail>.withTag({Material:Liquid.name}) , <tinkerscompendium:td_chainmail>.withTag({Material:Table.getName}) , Liquid , 1*144 , true, 1*100 );
	//mods.tconstruct.Casting.addTableRecipe(<tinkerscompendium:td_rivets>.withTag({Material:Liquid.name}) , <tinkerscompendium:td_rivets>.withTag({Material:Table.getName}) , Liquid , 1*144 , true, 1*100 );
	//mods.tconstruct.Casting.addTableRecipe(<tinkerscompendium:td_clasp>.withTag({Material:Liquid.name}) , <tinkerscompendium:td_clasp>.withTag({Material:Table.getName}) , Liquid , 1*144 , true, 1*100 );
	//mods.tconstruct.Casting.addTableRecipe(<tinkerscompendium:td_ringshank>.withTag({Material:Liquid.name}) , <tinkerscompendium:td_ringshank>.withTag({Material:Table.getName}) , Liquid , 2*144 , true, 2*100 );
	//mods.tconstruct.Casting.addTableRecipe(<tinkerscompendium:td_setting>.withTag({Material:Liquid.name}) , <tinkerscompendium:td_setting>.withTag({Material:Table.getName}) , Liquid , 1*144 , true, 1*100 );
}

*/
