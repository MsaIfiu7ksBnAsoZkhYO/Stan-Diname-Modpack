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
	1.00 , <weather2:sand_layer_placeable>,
	0.80 , <weather2:sand_layer_placeable>,
	0.60 , <weather2:sand_layer_placeable>,
	0.40 , <weather2:sand_layer_placeable>,
	0.20 , <weather2:sand_layer_placeable>,
	true
);


	//	Dynamically Add recipes for ore processing	_______________________________________________________________________________________________________________________________________________________________________
for Item in GlobalHarvestLevel {

    	//	Only add low level materials to require Sieve	_______________________________________________________________________________________________________________________________________________________________________
	if ( 4 >= GlobalHarvestLevel[Item] ) {

			//	Rocky Chunk > Chunk + tinydusts + rock	_______________________________________________________________________________________________________________________________________________________________________
		if(	
			!isNull( GlobalRockyChunk[Item] ) 
			&
			!isNull( GlobalChunk[Item] ) 
			&
			!isNull( GlobalNugget[Item] ) 
		) {
			mods.magneticraft.SluiceBox.addRecipe( 
				GlobalRockyChunk[Item].firstItem,
				1.00 , GlobalChunk[Item].firstItem,
				0.05 , GlobalNugget[Item].firstItem,
				0.25 , <notreepunching:rock/stone>,
				true
			);
		}
		
			//	Dirty Dust > Dust + tinydusts + rock	_______________________________________________________________________________________________________________________________________________________________________
		if(	
			!isNull( GlobalDustDirty[Item] ) 
			&
			!isNull( GlobalDust[Item] )
			&
			!isNull( GlobalNugget[Item] )  
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