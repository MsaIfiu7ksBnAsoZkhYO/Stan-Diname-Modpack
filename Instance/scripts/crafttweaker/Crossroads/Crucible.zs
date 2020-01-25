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


    //	Silica Sand to molten Glass	_______________________________________________________________________________________________________________________________________________________________________
mods.crossroads.HeatingCrucible.addRecipe(<ore:sandSilica>, <liquid:glass> * 1000, "minecraft:blocks/sand");


//=====================================================================================================================================================================================================	
//  Dynamic melting recipes
//=====================================================================================================================================================================================================	

	
	//	Output is liquids, so thats what we're iterating through
for Liquid in GlobalMoltenMetal {
		
		//	Check that a melting temperature is defined
	if(	!isNull( GlobalMeltingTemp[Liquid] ) ) {
			
			//	Only add recipes for melting temps 1000 and under
		if ( 1000 >= GlobalMeltingTemp[Liquid] ) { 

				//	Make the Crucible recipes.
			if( !isNull( oreDict[ "chunk"~GlobalPostfixMetals[Liquid] ].firstItem ) ) { mods.crossroads.HeatingCrucible.addRecipe( oreDict[ "chunk"~GlobalPostfixMetals[Liquid] ], GlobalMoltenMetal[Liquid] * 144, "minecraft:blocks/gravel" ); }
			if( !isNull( oreDict[ "dust"~GlobalPostfixMetals[Liquid] ].firstItem ) ) { mods.crossroads.HeatingCrucible.addRecipe( oreDict[ "dust"~GlobalPostfixMetals[Liquid] ], GlobalMoltenMetal[Liquid] * 144, "minecraft:blocks/sand" ); }
			if( !isNull( oreDict[ "ingot"~GlobalPostfixMetals[Liquid] ].firstItem ) ) { mods.crossroads.HeatingCrucible.addRecipe( oreDict[ "ingot"~GlobalPostfixMetals[Liquid] ], GlobalMoltenMetal[Liquid] * 144, "minecraft:blocks/gravel" ); }
			if( !isNull( oreDict[ "nugget"~GlobalPostfixMetals[Liquid] ].firstItem ) ) { mods.crossroads.HeatingCrucible.addRecipe( oreDict[ "nugget"~GlobalPostfixMetals[Liquid] ], GlobalMoltenMetal[Liquid] * 16, "minecraft:blocks/gravel" ); }
		
		}
	}
}