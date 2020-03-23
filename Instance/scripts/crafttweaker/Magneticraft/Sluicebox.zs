//=====================================================================================================================================================================================================	
//	Import-ant things
//=====================================================================================================================================================================================================


import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;


//=====================================================================================================================================================================================================	
//	Remove existing recipes
//=====================================================================================================================================================================================================


    mods.magneticraft.SluiceBox.removeRecipe(<minecraft:sand>);
    mods.magneticraft.SluiceBox.removeRecipe(<minecraft:gravel>);
    mods.magneticraft.SluiceBox.removeRecipe(<magneticraft:rocky_chunks:0>);
    mods.magneticraft.SluiceBox.removeRecipe(<magneticraft:rocky_chunks:1>);
    mods.magneticraft.SluiceBox.removeRecipe(<magneticraft:rocky_chunks:2>);
    mods.magneticraft.SluiceBox.removeRecipe(<magneticraft:rocky_chunks:3>);
    mods.magneticraft.SluiceBox.removeRecipe(<magneticraft:rocky_chunks:4>);
    mods.magneticraft.SluiceBox.removeRecipe(<magneticraft:rocky_chunks:5>);
    mods.magneticraft.SluiceBox.removeRecipe(<magneticraft:rocky_chunks:7>);
    mods.magneticraft.SluiceBox.removeRecipe(<magneticraft:rocky_chunks:8>);
    mods.magneticraft.SluiceBox.removeRecipe(<magneticraft:rocky_chunks:9>);
    mods.magneticraft.SluiceBox.removeRecipe(<magneticraft:rocky_chunks:10>);
    mods.magneticraft.SluiceBox.removeRecipe(<magneticraft:rocky_chunks:11>);
    mods.magneticraft.SluiceBox.removeRecipe(<magneticraft:rocky_chunks:12>);
    mods.magneticraft.SluiceBox.removeRecipe(<magneticraft:rocky_chunks:13>);
    mods.magneticraft.SluiceBox.removeRecipe(<magneticraft:rocky_chunks:14>);


//=====================================================================================================================================================================================================	
//	Add new recipes
//=====================================================================================================================================================================================================


// addRecipe: Arguments:
// 1. input: the recipe input stack
// 3. output1Probability: The probability to get the ouput1
// 2. output1: The result of the recipe
// 4. [optional] Repeat 2 and 3 up to 6 times
// 5. oredictFlag: If true, it will use the oreDictionary to check if an input stack is equivalent to the recipe input

// Add a recipe with gold ore as input and 9 gold nuggets as output
//mods.magneticraft.SluiceBox.addRecipe(<minecraft:gold_ore>, 1.0, <minecraft:gold_nugget> * 9, true);

// Add a recipe with gravel as input where 50% of the time returns a flint piece and 15% of the time retuns a gold nugget
//mods.magneticraft.SluiceBox.addRecipe(<minecraft:gravel>, 0.15, <minecraft:gold_nugget>, 0.5, <minecraft:flint>, true);

// Add a recipe with sand as input where 5% of the time returns a gold nugget, 0.1% of the time retuns a flint pieze and 10% of the time returns a quarts pieze
//mods.magneticraft.SluiceBox.addRecipe(<minecraft:sand>, 0.05, <minecraft:gold_nugget>, 0.001, <minecraft:flint>, 0.1, <minecraft:quartz>, true);

/* - Layout as used in the script:
mods.magneticraft.SluiceBox.addRecipe(
	<IItemStack:Input>,
	Float.Chance , <IItemStack:Output>,
	[Float.Chance , <IItemStack:Output>,]
	[Float.Chance , <IItemStack:Output>,]
	[Float.Chance , <IItemStack:Output>,]
	[Float.Chance , <IItemStack:Output>,]
	[Float.Chance , <IItemStack:Output>,]
	bool (Use oredict for input?)
);
*/

	//	Gravel to Flint	_______________________________________________________________________________________________________________________________________________________________________
mods.magneticraft.SluiceBox.addRecipe(
	<minecraft:gravel>,
	1.0 , <minecraft:flint>,
	0.25 , <notreepunching:flint_shard>,
	0.15 , <terraqueous:item_main:215>,
	true
);

	//	Sand to Silica Sand	_______________________________________________________________________________________________________________________________________________________________________
mods.magneticraft.SluiceBox.addRecipe(
	<minecraft:sand>,
	1.00 , <contenttweaker:silica_sand>,
	0.75 , <weather2:sand_layer_placeable>,
	0.50 , <weather2:sand_layer_placeable>,
	0.25 , <weather2:sand_layer_placeable>,
	0.10 , <weather2:sand_layer_placeable>,
	0.05 , <weather2:sand_layer_placeable>,
	true
);


	
    //  Defines the Input / Output relationships to be extra dynamic
var Recipes = {
    "rockyChunk"	:  "chunk",
    "dustDirty"		:   "dust",
} as string[string];

for Item in GlobalHarvestLevel {
    var HarvestLevel = GlobalHarvestLevel[Item];
		//	Shut up.  I'll remove this later.
	if ( 5 >= HarvestLevel ) {
            //  Set the Left value as the input and the right value as the output
        for Left,Right in Recipes {
            var Input = GlobalGimmeOreDict(Left,Item);
            var Output = GlobalGimmeOreDict(Right,Item);
			var Output2 = GlobalGimmeOreDict("nugget",Item);
            if ( 
                !(Input.empty)
                &
                !(Output.empty)
            ) {
				mods.magneticraft.SluiceBox.addRecipe( 
					Input.firstItem,
					1.00 , Output.firstItem,
					0.05 , Output2.firstItem,
					0.25 , <notreepunching:rock/stone>,
					true
				);
            }
		}
	}
}		
	
/*
	//	Dynamically Add recipes for ore processing	_______________________________________________________________________________________________________________________________________________________________________
for Item in GlobalRockyChunk {
    	//	Only add low level materials to require Sieve	_______________________________________________________________________________________________________________________________________________________________________
	if ( 5 >= GlobalHarvestLevel[Item] ) {

			//	Rocky Chunk > Chunk + tinydusts + rock	_______________________________________________________________________________________________________________________________________________________________________
		if(	
			!isNull( GlobalRockyChunk[Item].firstItem ) 
			&
			!isNull( GlobalChunk[Item].firstItem ) 
			&
			!isNull( GlobalNugget[Item].firstItem ) 
		) {
			mods.magneticraft.SluiceBox.addRecipe( 
				GlobalRockyChunk[Item].firstItem,
				1.00 , GlobalChunk[Item].firstItem,
				0.05 , GlobalNugget[Item].firstItem,
				0.25 , <notreepunching:rock/stone>,
				true
			);
		}
	}
}

for Item in GlobalDustDirty {	
			//	Dirty Dust > Dust + tinydusts + rock	_______________________________________________________________________________________________________________________________________________________________________
	if ( 5 >= GlobalHarvestLevel[Item] ) {
		if(	
			!isNull( GlobalDustDirty[Item].firstItem ) 
			&
			!isNull( GlobalDust[Item].firstItem )
			&
			!isNull( GlobalNugget[Item].firstItem )  
		) {
    		mods.magneticraft.SluiceBox.addRecipe(
				GlobalDustDirty[Item].firstItem,
				1.00 , GlobalDust[Item].firstItem,
				0.05 , GlobalNugget[Item].firstItem,
				0.25 , <terraqueous:item_main:215>,
				true
			);
		}
	
	}
	
}
*/