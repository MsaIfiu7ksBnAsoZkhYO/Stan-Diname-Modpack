//=====================================================================================================================================================================================================	
//	Import-ant things
//=====================================================================================================================================================================================================


/*
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.liquid.ILiquidStack;
*/

//=====================================================================================================================================================================================================	
//  Predefining arrays
//=====================================================================================================================================================================================================	

/* - Globals now.
    //	Ore Chunks	_______________________________________________________________________________________________________________________________________________________________________
val OreChunk = {
	Gold : <ore:chunkGold>,
	Copper : <ore:chunkCopper>,
	Lead : <ore:chunkLead>,
	Aluminum : <ore:chunkAluminium>,
	Silver : <ore:chunkSilver>,
	Tin : <ore:chunkTin>,
	Zinc : <ore:chunkZinc>,
	bismuth : <ore:chunkBismuth>,
	lithium : <ore:chunkLithium>,
	magnesium : <ore:chunkMagnesium>,
	mercury : <ore:chunkMercury>,
} as IOreDictEntry[string];

    //	Liquids	_______________________________________________________________________________________________________________________________________________________________________
val MoltenMetal = {
	Gold : <liquid:gold>,
	Copper : <liquid:copper>,
	Lead : <liquid:lead>,
	Aluminum : <liquid:aluminum>,
	Silver : <liquid:silver>,
	Tin : <liquid:tin>,
	Zinc : <liquid:zinc>,
	bismuth : <liquid:bismuth>,
	lithium : <liquid:lithium>,
	magnesium : <liquid:magnesium>,
	mercury : <liquid:mercury>,
    Bronze : <liquid:bronze>,
    Molybdochalkos : <liquid:molybdochalkos>,
    Magmolybdochalkosmuth : <liquid:magmolybdochalkosmuth>,
    Cerrosafe : <liquid:cerrosafe>,
    Brass : <liquid:brass>,
    Electrum : <liquid:electrum>,
} as ILiquidStack[string];

    //	Ingots	_______________________________________________________________________________________________________________________________________________________________________
val Ingot = {
	Gold : <ore:ingotGold>,
	Copper : <ore:ingotCopper>,
	Lead : <ore:ingotLead>,
	Aluminum : <ore:ingotAluminium>,
	Silver : <ore:ingotSilver>,
	Tin : <ore:ingotTin>,
	Zinc : <ore:ingotZinc>,
	bismuth : <ore:ingotBismuth>,
	lithium : <ore:ingotLithium>,
	magnesium : <ore:ingotMagnesium>,
	mercury : <ore:ingotMercury>,
    Bronze : <ore:ingotBronze>,
    Molybdochalkos : <ore:ingotMolybdochalkos>,
    Magmolybdochalkosmuth : <ore:ingotMagmolybdochalkosmuth>,
    Cerrosafe : <ore:ingotCerrosafe>,
    Brass : <ore:ingotBrass>,
    Electrum : <ore:ingotElectrum>,
} as IOreDictEntry[string];

//	Dusts	_______________________________________________________________________________________________________________________________________________________________________
val Dust = {
	Gold : <ore:dustGold>,
	Copper : <ore:dustCopper>,
	Lead : <ore:dustLead>,
	Aluminum : <ore:dustAluminium>,
	Silver : <ore:dustSilver>,
	Tin : <ore:dustTin>,
	Zinc : <ore:dustZinc>,
	bismuth : <ore:dustBismuth>,
	lithium : <ore:dustLithium>,
	magnesium : <ore:dustMagnesium>,
	mercury : <ore:dustMercury>,
    Bronze : <ore:dustBronze>,
    Brass : <ore:dustBrass>,
    Electrum : <ore:dustElectrum>,
} as IOreDictEntry[string];
*/

//=====================================================================================================================================================================================================	
//  Remove Melting Recipes
//=====================================================================================================================================================================================================	


//mods.crossroads.HeatingCrucible.removeRecipe(Input Item);
mods.crossroads.HeatingCrucible.removeRecipe(<ore:cobblestone>);
mods.crossroads.HeatingCrucible.removeRecipe(<ore:oreCopper>);
mods.crossroads.HeatingCrucible.removeRecipe(<ore:dustCopper>);
mods.crossroads.HeatingCrucible.removeRecipe(<ore:ingotCopper>);
mods.crossroads.HeatingCrucible.removeRecipe(<ore:ingotIron>);
mods.crossroads.HeatingCrucible.removeRecipe(<ore:ingotGold>);
mods.crossroads.HeatingCrucible.removeRecipe(<ore:ingotTin>);


//=====================================================================================================================================================================================================	
//  Add melting recipes.
//=====================================================================================================================================================================================================	


//mods.crossroads.HeatingCrucible.addRecipe(IOreDictEntry input, ILiquidStack out, String texture)
//texture The texture to be displayed in the crucible while in solid form. In format modid:blocks/texture_name, ex: minecraft:blocks/cobblestone, crossroads:blocks/ore_native_copper. 


    //	Sand to molten Glass	_______________________________________________________________________________________________________________________________________________________________________
mods.crossroads.HeatingCrucible.addRecipe(<ore:sand>, <liquid:glass> * 1000, "minecraft:blocks/sand");


//=====================================================================================================================================================================================================	
//  Dynamic melting recipes
//=====================================================================================================================================================================================================	

	//	Output is liquids, so thats what we're iterating through
for Liquid in GlobalMoltenMetal {
		
		//	Check that a melting temperature is defined
	if(	!isNull( GlobalMeltingTemp[Liquid] ) ) {
			
			//	Only add recipes for melting temps 1000 and under
		if ( GlobalMeltingTemp[Liquid] <= 1000 ) {    //>

				//	Make the Crucible recipes.
			if( !isNull( GlobalChunk[Liquid] ) ) { mods.crossroads.HeatingCrucible.addRecipe( GlobalChunk[Liquid], GlobalMoltenMetal[Liquid] * 144, "minecraft:blocks/gravel" ); }
			if( !isNull( GlobalDust[Liquid] ) ) { mods.crossroads.HeatingCrucible.addRecipe( GlobalDust[Liquid], GlobalMoltenMetal[Liquid] * 144, "minecraft:blocks/sand" ); }
			if( !isNull( GlobalIngot[Liquid] ) ) { mods.crossroads.HeatingCrucible.addRecipe( GlobalIngot[Liquid], GlobalMoltenMetal[Liquid] * 144, "minecraft:blocks/gravel" ); }
			if( !isNull( GlobalNugget[Liquid] ) ) { mods.crossroads.HeatingCrucible.addRecipe( GlobalNugget[Liquid], GlobalMoltenMetal[Liquid] * 16, "minecraft:blocks/gravel" ); }
		
		}
	}
}


/* - Replacing with Globals
	//	Melt clean chunks	_______________________________________________________________________________________________________________________________________________________________________
for item in OreChunk { mods.crossroads.HeatingCrucible.addRecipe( OreChunk[item], MoltenMetal[item] * 144, "minecraft:blocks/gravel" ); }

    //	Melt dusts	_______________________________________________________________________________________________________________________________________________________________________
for item in Dust { mods.crossroads.HeatingCrucible.addRecipe( Dust[item], MoltenMetal[item] * 144, "minecraft:blocks/sand" ); }

    //	Melt Ingots	_______________________________________________________________________________________________________________________________________________________________________
for item in Ingot { mods.crossroads.HeatingCrucible.addRecipe( Ingot[item], MoltenMetal[item] * 144, "minecraft:blocks/gravel" ); }
*/

/* - Old POC recipes
mods.crossroads.HeatingCrucible.addRecipe(<ore:chunkCopper>, <liquid:copper> * 144, "magneticraft:items/chunk/copper");
mods.crossroads.HeatingCrucible.addRecipe(<ore:chunkCopper>, <liquid:copper> * 144, "magneticraft:items/chunk/copper");
mods.crossroads.HeatingCrucible.addRecipe(<ore:chunkTin>, <liquid:tin> * 144, "magneticraft:items/chunk/tin");
*/