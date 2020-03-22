//=====================================================================================================================================================================================================	
//Importinating the classes
//=====================================================================================================================================================================================================	


import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.oredict.IOreDict;


//=====================================================================================================================================================================================================	
//	Remove Recipes
//=====================================================================================================================================================================================================


	//	Remove Vanilla Charcoal_______________________________________________________________________________________________________________________________________________________________________
furnace.remove(<minecraft:coal:1>);

//	Special case removals.	_______________________________________________________________________________________________________________________________________________________________________
furnace.remove(<minecraft:iron_ingot>);
furnace.remove(<minecraft:glass>);
furnace.remove(<ore:ingotAstralStarmetal>);

/* - Moved into the dynamic loop below
//	Dynamically Remove all ingots	_______________________________________________________________________________________________________________________________________________________________________
for Item in GlobalIngot {
	if( !isNull( GlobalIngot[Item] ) ) { furnace.remove( GlobalIngot[Item] ); }
}

for Item in GlobalGem {
	if( !isNull( GlobalGem[Item] ) ) { furnace.remove( GlobalGem[Item] ); }
}
*/

//=====================================================================================================================================================================================================	
//	Add 
//=====================================================================================================================================================================================================


	//	Logs > rockhouding charcoal lump	_______________________________________________________________________________________________________________________________________________________________________
furnace.addRecipe(<rockhounding_oretiers:tier_items:4>, <ore:logWood>, 0.1);


    //  Defines the Input / Output relationships to be extra dynamic
var Recipes = {
    "chunk"   :   "nugget",
} as string[string];

	//	Define what part types to remove furnace recipes for
var RemoveRecipes = [
    "ingot",
	"gem",
 ] as string[];

for Item in GlobalHarvestLevel {
	var MeltingTemp = GlobalMeltingTemp[Item];

			//	Remove 	furnace recipes for the part types defined above
		for Part in RemoveRecipes {
			var Removal = GlobalGimmeOreDict(Part,Item);
			if ( 
				!(Removal.empty) 
				) { 
				furnace.remove( Removal ); 
				}
		}
		
		//	Limit recipes to only items that melt at 1000c or less
	if ( 1000 >= MeltingTemp ) {
            //  Set the Left value as the input and the right value as the output
        for Left,Right in Recipes {
            var Input = GlobalGimmeOreDict(Left,Item);
            var Output = GlobalGimmeOreDict(Right,Item);
            if ( 
                !(Input.empty)
                &
                !(Output.empty)
            ) {
    	   		furnace.addRecipe(
					Output.firstItem * 3, 
					Input, 
					0.3
				);
            }
		}
	}
}		
	
/*

//	Dynamically Add chunk to nugget	_______________________________________________________________________________________________________________________________________________________________________
for Item in GlobalChunk {
	if(	
		!isNull( GlobalMeltingTemp[Item] ) 
		&
		!isNull( GlobalNugget[Item].firstItem ) 
		&
		!isNull( GlobalChunk[Item].firstItem )
	) {
		//	Only add recipes for melting temps 1000 and under
		if ( 1000 >= GlobalMeltingTemp[Item] ) {
    	    furnace.addRecipe(GlobalNugget[Item].firstItem * 3, GlobalChunk[Item], 0.3);
		}
	}
}
*/