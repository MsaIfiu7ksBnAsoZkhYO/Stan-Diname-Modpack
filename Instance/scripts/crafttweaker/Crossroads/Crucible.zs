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
mods.crossroads.HeatingCrucible.addRecipe(
	<ore:sandSilica>, 
	<liquid:glass> * 1000, 
	"minecraft:blocks/sand"
);


//=====================================================================================================================================================================================================	
//  Dynamic melting recipes
//=====================================================================================================================================================================================================	

	
	//Defines the part types and fluid amounts that will get crucible melting recipes
var PartTypes = {
	chunk	:	144,
	dust	:	144,
	ingot	:	144,
	nugget	:	16,
} as  int[string];

	//	Output is liquids, so thats what we iterate through
for Liquid in GlobalMoltenMetal {
		//	Check that a melting temperature is defined for Liquid
	if(	!isNull( GlobalMeltingTemp[Liquid] ) ) {
			//	Only add recipes for melting temps 1000 and under
		if ( 1000 >= GlobalMeltingTemp[Liquid] ) { 
				//	Make the Crucible recipes based on the defined PartTypes above
			for Part,Amount in PartTypes {
					//	Assign the input item oredictionary entry so we only iterate throught the table once.
				var Input = GlobalGimmeOreDict(Part,Liquid);
					//	Check if the oredictionary entry has an item to use
				if( 
					!(Input.empty) 
				) { 
					mods.crossroads.HeatingCrucible.addRecipe( 
						Input, 
						GlobalMoltenMetal[Liquid] * Amount, 
						"minecraft:blocks/gravel" 
					); 
				}			
			/* - Old recipes before looping them.
			if( 
				!isNull( GlobalChunk[Liquid].firstItem ) 
			) { 
				mods.crossroads.HeatingCrucible.addRecipe( 
					GlobalChunk[Liquid], 
					GlobalMoltenMetal[Liquid] * 144, 
					"minecraft:blocks/gravel" 
				); 
			}
			*/
			//if( !isNull( GlobalDust[Liquid].firstItem ) ) { mods.crossroads.HeatingCrucible.addRecipe( GlobalDust[Liquid], GlobalMoltenMetal[Liquid] * 144, "minecraft:blocks/sand" ); }
			//if( !isNull( GlobalIngot[Liquid].firstItem ) ) { mods.crossroads.HeatingCrucible.addRecipe( GlobalIngot[Liquid], GlobalMoltenMetal[Liquid] * 144, "minecraft:blocks/gravel" ); }
			//if( !isNull( GlobalNugget[Liquid].firstItem ) ) { mods.crossroads.HeatingCrucible.addRecipe( GlobalNugget[Liquid], GlobalMoltenMetal[Liquid] * 16, "minecraft:blocks/gravel" ); }
		
			}
		}
	}
}