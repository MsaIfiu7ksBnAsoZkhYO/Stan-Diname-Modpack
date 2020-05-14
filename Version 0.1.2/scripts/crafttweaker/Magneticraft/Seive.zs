//=====================================================================================================================================================================================================	
//	Remove existing recipes
//=====================================================================================================================================================================================================
    
	
	mods.magneticraft.Sieve.removeRecipe(<minecraft:sand>);
    mods.magneticraft.Sieve.removeRecipe(<minecraft:gravel>);
	mods.magneticraft.Sieve.removeRecipe(<minecraft:soul_sand>);
    mods.magneticraft.Sieve.removeRecipe(<magneticraft:rocky_chunks:0>);
    mods.magneticraft.Sieve.removeRecipe(<magneticraft:rocky_chunks:1>);
    mods.magneticraft.Sieve.removeRecipe(<magneticraft:rocky_chunks:2>);
    mods.magneticraft.Sieve.removeRecipe(<magneticraft:rocky_chunks:3>);
    mods.magneticraft.Sieve.removeRecipe(<magneticraft:rocky_chunks:4>);
    mods.magneticraft.Sieve.removeRecipe(<magneticraft:rocky_chunks:5>);
    mods.magneticraft.Sieve.removeRecipe(<magneticraft:rocky_chunks:7>);
    mods.magneticraft.Sieve.removeRecipe(<magneticraft:rocky_chunks:8>);
    mods.magneticraft.Sieve.removeRecipe(<magneticraft:rocky_chunks:9>);
    mods.magneticraft.Sieve.removeRecipe(<magneticraft:rocky_chunks:10>);
    mods.magneticraft.Sieve.removeRecipe(<magneticraft:rocky_chunks:11>);
    mods.magneticraft.Sieve.removeRecipe(<magneticraft:rocky_chunks:12>);
    mods.magneticraft.Sieve.removeRecipe(<magneticraft:rocky_chunks:13>);
    mods.magneticraft.Sieve.removeRecipe(<magneticraft:rocky_chunks:14>);


//=====================================================================================================================================================================================================	
//	Add new recipes
//=====================================================================================================================================================================================================
	/*
	# Remove all recipes with iron rocky chunk as input
	mods.magneticraft.Sieve.removeRecipe(<magneticraft:rocky_chunks>);

	# addRecipe: Arguments:
	# 1. input: the recipe input stack
	# 2. output1: The primary result of the recipe
	# 3. output1Probability: The probability to get the output1
	# 4. output2: The secondary result of the recipe
	# 5. output2Probability: The probability to get the output2
	# 6. output3: The tertiary result of the recipe
	# 7. output3Probability: The probability to get the output3
	# 8. ticks: amount of game ticks need to complete the recipe
	# 9. oredictFlag: If true, it will use the oreDictionary to check if an input stack is equivalent to the recipe input

	# Add a recipe with iron ore as input,
	mods.magneticraft.Sieve.addRecipe(<minecraft:iron_ore>, <minecraft:iron_ingot>, 1.0, <minecraft:gold_ingot>, 0.25, <minecraft:gravel>, 0.15, 40, true);

	# Adds a recipe with only one output, basically anything with 0 chance is ignored
	mods.magneticraft.Sieve.addRecipe(<minecraft:iron_ore>, <minecraft:iron_ingot>, 1.0, <minecraft:stone>, 0.0, <minecraft:stone>, 0.0, 100, true);

	//	Recipe as used in scripts
	//	Note that all output are required, but can be set to 0.0 for no output.	_______________________________________________________________________________________________________________________________________________________________________
mods.magneticraft.Sieve.addRecipe(
	<IItemStack:Input>,
	<IItemStack:Output> , float.Chance,
	<IItemStack:Output> , float.Chance,
	<IItemStack:Output> , float.Chance,
	int (processing time in TICKS),
	bool (use oredict for input?)
);

*/


	//	Gravel to Flint	_______________________________________________________________________________________________________________________________________________________________________
mods.magneticraft.Sieve.addRecipe(
	<minecraft:gravel>,
	<minecraft:flint> , 1.00,
	<minecraft:flint> , 0.50,
	<terraqueous:item_main:215> * 2 , 0.25,
	120,
	true
);

	//	Sand to Silica Sand	_______________________________________________________________________________________________________________________________________________________________________
mods.magneticraft.Sieve.addRecipe(
	<minecraft:sand>,
	<contenttweaker:silica_sand> , 1.00,
	<ore:layerSand>.firstItem * 3 , 0.50,
	<ore:layerSand>.firstItem * 2 , 0.50,
	120,
	true
);


/*  - Seive specific recipes that probably won't come back
	Sand - gold nugets and nether quartz
	Soul Sand - Nether Quartz
*/

//=====================================================================================================================================================================================================	
//	Add new recipes Dynamically
//=====================================================================================================================================================================================================

	
	
    //  Defines the Input / Output relationships to be extra dynamic
var Recipes = {
    "rockyChunk"   :   "chunk",
    "dustDirty"    :   "dust",
} as string[string];

for Item in GlobalHarvestLevel {
    var HarvestLevel = GlobalHarvestLevel[Item];
		//	Shut up.  I'll remove this later.
	if ( 100 >= HarvestLevel ) {
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
				mods.magneticraft.Sieve.addRecipe( 
					Input.firstItem,
					Output.firstItem , 1.00,
					Output2.firstItem , 0.10,
					<notreepunching:rock/stone> , 0.25,
					240,
					true
				);
            }
		}
	}
}	
	
/*
	//	Rocky Chunk > Chunk + tinydusts + rock	_______________________________________________________________________________________________________________________________________________________________________
for Item in GlobalRockyChunk {
		
		if(	
			!isNull( GlobalRockyChunk[Item] ) 
			&
			!isNull( GlobalChunk[Item].firstItem ) 
			&
			!isNull( GlobalNugget[Item].firstItem ) 
		) {
    		mods.magneticraft.Sieve.addRecipe( 
				GlobalRockyChunk[Item].firstItem,
				GlobalChunk[Item].firstItem , 1.00,
				GlobalNugget[Item].firstItem , 0.10,
				<notreepunching:rock/stone> , 0.25,
				240,
				true
			);
		}

}

	//	Dirty Dust > Dust > gravel lumps	_______________________________________________________________________________________________________________________________________________________________________
for Item in GlobalDustDirty {
		
		if(	
			!isNull( GlobalDustDirty[Item].firstItem ) 
			&
			!isNull( GlobalDust[Item].firstItem )
			&
			!isNull( GlobalNugget[Item].firstItem )  
		) {
    		mods.magneticraft.Sieve.addRecipe( 
				GlobalDustDirty[Item].firstItem,
				GlobalDust[Item].firstItem , 1.00,
				GlobalNugget[Item].firstItem , 0.1,
				<terraqueous:item_main:215> , 0.25,
				240,
				true
			);
		}

}
*/

//Old POC recipes
//mods.magneticraft.Sieve.addRecipe(<magneticraft:rocky_chunks:2> , 1.0,<magneticraft:chunks:2> , 0.25,<notreepunching:rock/stone> , true);
//mods.magneticraft.Sieve.addRecipe(<mekanism:dirtydust:3> , 1.0,<magneticraft:dusts:2> , 0.25,<terraqueous:item_main:215> , true);


//mods.magneticraft.Sieve.addRecipe(<ore:dustDirtyGold>.firstItem , 1.0,<ore:dustGold>.firstItem , 0.25,<terraqueous:item_main:215> , true);