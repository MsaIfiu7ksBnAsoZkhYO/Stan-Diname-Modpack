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
	<ticmat:livingrock> : <liquid:lead>,
	<ticmat:copper> : <liquid:bronze>,
	<ticmat:lead> : <liquid:molybdochalkos>,

	<ticmat:magnesium> : <liquid:magmolybdochalkosmuth>,


	<ticmat:silver> : <liquid:nickel>,
	<ticmat:electrum> : <liquid:invar>,

	<ticmat:alumifun> : <liquid:titaniumaluminide>,
	<ticmat:bronze> : <liquid:water>,

	<ticmat:nickel> : <liquid:water>,
	<ticmat:steel> : <liquid:ferroboron>,

	<ticmat:silver> : <liquid:xu_enchanted_metal>,
	<ticmat:xu_enchanted_metal> : <liquid:xu_demonic_metal>,
	<ticmat:xu_demonic_metal> : <liquid:xu_evil_metal>,
	<ticmat:iron> : <liquid:nickel>,
	<ticmat:invar> : <liquid:platinum>,
	<ticmat:mythril> : <liquid:mythril>,
	<ticmat:terrasteel> : <liquid:mirion>,
	<ticmat:lumium> : <liquid:refinedglowstone>,
	<ticmat:osmiridium> : <liquid:refinedobsidian>,
	<ticmat:adamant> : <liquid:dragonsteel_fire>,
	<ticmat:adamant> : <liquid:dragonsteel_ice>,
} as ILiquidStack[ITICMaterial];

// - Technicall this is metals under 1000 C, or under HL 4.
var SandCastable = {
	<ore:ingotCopper>					:	<liquid:copper>,
	<ore:ingotTin>						:	<liquid:tin>,
	<ore:ingotLead>						:	<liquid:lead>,
	<ore:ingotBronze>					:	<liquid:bronze>,
	<ore:ingotMolybdochalkos>			:	<liquid:molybdochalkos>,
	<ore:ingotMagmolybdochalkosmuth>	:	<liquid:magmolybdochalkosmuth>,
	<ore:ingotSilver>					:	<liquid:silver>,
	<ore:ingotZinc>						:	<liquid:zinc>,
	<ore:ingotBrass>					:	<liquid:brass>,
	<ore:ingotElectrum>					:	<liquid:electrum>,
} as ILiquidStack[IOreDictEntry];


// - Clay bricks and things
var ClayBrickItems = {
	<notreepunching:clay_brick>				:	<liquid:clay>,
	<ceramics:unfired_clay:5>				:	<liquid:porcelain_clay_liquid>,
	<contenttweaker:unfired_coke_brick>		:	<liquid:coke_clay_liquid>,
	<contenttweaker:unfired_kiln_brick>		:	<liquid:kiln_clay_liquid>,
	<contenttweaker:unfired_blast_brick>	:	<liquid:blast_clay_liquid>,
	<contenttweaker:unfired_seared_brick>	:	<liquid:seared_clay_liquid>,
	<contenttweaker:unfired_scorched_brick>	:	<liquid:scorched_clay_liquid>,
} as ILiquidStack[IItemStack];


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

	//	You can make clay casts of these things if you really want to.  They are even self drying on the casting table.  :D	_______________________________________________________________________________________________________________________________________________________________________
mods.tconstruct.Casting.addTableRecipe(<tconstruct:clay_cast>.withTag({PartType:"tcomplement:chisel_head"}), <tcomplement:chisel_head>.withTag({Material:"moldclay"}), <liquid:moldsand>, 250, true, 6200);
mods.tconstruct.Casting.addTableRecipe(<tconstruct:clay_cast>.withTag({PartType:"tconstruct:fletching"}), <tconstruct:fletching>.withTag({Material: "moldclay"}), <liquid:moldsand>, 250, true, 6200);
mods.tconstruct.Casting.addTableRecipe(<tconstruct:clay_cast>.withTag({PartType:"tconstruct:arrow_shaft"}), <tconstruct:arrow_shaft>.withTag({Material:"moldclay"}), <liquid:moldsand>, 250, true, 6200);
mods.tconstruct.Casting.addTableRecipe(<tconstruct:clay_cast>.withTag({PartType:"tconstruct:bow_string"}), <tconstruct:bow_string>.withTag({Material: "moldclay"}), <liquid:moldsand>, 250, true, 6200);
mods.tconstruct.Casting.addTableRecipe(<tconstruct:clay_cast>.withTag({PartType:"tconstruct:sharpening_kit"}), <tconstruct:sharpening_kit>.withTag({Material:"moldclay"}), <liquid:moldsand>, 250, true, 6200);
mods.tconstruct.Casting.addTableRecipe(<tconstruct:clay_cast>.withTag({PartType:"conarm:polishing_kit"}), <conarm:polishing_kit>.withTag({Material:"moldclay"}), <liquid:moldsand>, 250, true, 6200);


//=====================================================================================================================================================================================================	
//	Make new Casting recipes.
//=====================================================================================================================================================================================================


	//	Thermal Foundation Components	_______________________________________________________________________________________________________________________________________________________________________
mods.tconstruct.Casting.addTableRecipe(<thermalfoundation:material:512> , <immersiveengineering:material:9>, <liquid:redstone> , 400 , true, 300 );
mods.tconstruct.Casting.addTableRecipe(<thermalfoundation:material:513> , <ore:gearGold>, <liquid:redstone> , 200 , true, 200 );
mods.tconstruct.Casting.addTableRecipe(<thermalfoundation:material:514> , <ore:gearSilver>, <liquid:redstone> , 200 , true, 200 );
mods.tconstruct.Casting.addTableRecipe(<extrautils2:ingredients:1> , <ore:gearCopper>, <liquid:redstone> , 1600 , true, 200 );
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
mods.tconstruct.Casting.addTableRecipe(<contenttweaker:sand_ingot_cast_wet> , <ore:ingotCastBase>, <liquid:moldsand> , 250 , true, 100 );

	//	Sand Castable ingots for early game	_______________________________________________________________________________________________________________________________________________________________________
for Item , Fluid in SandCastable {
	mods.tconstruct.Casting.addTableRecipe(Item.firstItem , <contenttweaker:sand_ingot_cast> , Fluid , 144 , true , 140);
}

	//	Cast Clays into unfired bricks	_______________________________________________________________________________________________________________________________________________________________________
for Item , Fluid in ClayBrickItems {
	if(	
		!isNull( Item ) 
		& 
		!isNull( Fluid ) 
	) {
		mods.tconstruct.Casting.addTableRecipe(Item , <contenttweaker:sand_ingot_cast> , Fluid , 144 , true , 80);
		mods.tconstruct.Casting.addTableRecipe(Item , <tconstruct:cast_custom> , Fluid , 144 , false , 60);
	}
}
	
	//	Glass Casting	_______________________________________________________________________________________________________________________________________________________________________
mods.tconstruct.Casting.removeBasinRecipe(<tconstruct:clear_glass>);
mods.tconstruct.Casting.addBasinRecipe(
	<minecraft:glass>,
	null,
	<liquid:glass>,
	1000,
	false,
	200
);

//mods.tconstruct.Casting.addTableRecipe(<minecraft:glass_pane> , null, <liquid:glass> , 375 , false, 80 );
	//	Sandy Glass	_______________________________________________________________________________________________________________________________________________________________________
//recipes.remove( <extrautils2:decorativesolid:4> );
mods.tconstruct.Casting.addBasinRecipe(<extrautils2:decorativesolid:4> , <ore:sand>, <liquid:glass> , 1000 , true, 220 );
	//	Thickened Glass	_______________________________________________________________________________________________________________________________________________________________________
mods.tconstruct.Casting.addBasinRecipe(<extrautils2:decorativeglass> , <tconstruct:clear_glass>, <liquid:glass> , 1000 , true, 300 );

	//	Anvil Casting	_______________________________________________________________________________________________________________________________________________________________________
mods.tconstruct.Casting.addBasinRecipe(<contenttweaker:forging_anvil_cast_wet> , <tinkersforging:tinkers_anvil/moldclay>, <liquid:moldsand> , 2000 , true, 800 );

	//	Forging Anvil casting	_______________________________________________________________________________________________________________________________________________________________________
for Item in GlobalAnvil {

	mods.tconstruct.Casting.addBasinRecipe(GlobalAnvil[Item] , <contenttweaker:forging_anvil_cast> , GlobalMoltenMetal[Item] , 2160 , true , 3000);

}


//=====================================================================================================================================================================================================	
//	Super Awesome Kustom Kast Krafting system...  Wait...
//=====================================================================================================================================================================================================	


	//	Magic happens here. Now in a recursive function!	_______________________________________________________________________________________________________________________________________________________________________
for Table , Liquid in TconMaterials {
	for Part , Int in GlobalTconParts {
		mods.tconstruct.Casting.addTableRecipe(Part.withTag({Material:Liquid.name}) , Part.withTag({Material:Table.getName}) , Liquid , Int*144 , true, Int*100 );
	}
}	

//=====================================================================================================================================================================================================	
//	Casting the ore oil into an ore cluster for the ore processing chain
//=====================================================================================================================================================================================================	
	
	
	//	Stage 4 ore oil to ore cluster
for Item in GlobalCluster {
	if ( 10 >= GlobalHarvestLevel[Item] ) {
		if (	
			!isNull( GlobalCluster[Item].firstItem ) 
            &
			!isNull( GlobalHarvestLevel[Item] )
		) {		
			mods.tconstruct.Casting.addTableRecipe(
				GlobalCluster[Item].firstItem,
				<ore:rock>, 
				GlobalStage4MetalFluid[Item], 
				200 , 
				true, 
				GlobalHarvestLevel[Item]*120 
			);
		}
	}
}