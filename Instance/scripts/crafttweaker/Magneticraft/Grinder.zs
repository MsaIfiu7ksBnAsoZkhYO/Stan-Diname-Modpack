//=====================================================================================================================================================================================================	
//	Remove existing recipes
//=====================================================================================================================================================================================================

#priority -100000

    mods.magneticraft.Grinder.removeRecipe(<minecraft:iron_ore>);
    mods.magneticraft.Grinder.removeRecipe(<minecraft:gold_ore>);
	mods.magneticraft.Grinder.removeRecipe(<thermalfoundation:ore>);
    mods.magneticraft.Grinder.removeRecipe(<thermalfoundation:ore:3>);
    mods.magneticraft.Grinder.removeRecipe(<tconstruct:ore>);
    //mods.magneticraft.Grinder.removeRecipe(<modernmetals:tungsten_ore>);
    mods.magneticraft.Grinder.removeRecipe(<thermalfoundation:ore:4>);
    mods.magneticraft.Grinder.removeRecipe(<thermalfoundation:ore:8>);
    mods.magneticraft.Grinder.removeRecipe(<thermalfoundation:ore:5>);
    //mods.magneticraft.Grinder.removeRecipe(<mekanism:oreblock>);
    mods.magneticraft.Grinder.removeRecipe(<thermalfoundation:ore:2>);
    mods.magneticraft.Grinder.removeRecipe(<thermalfoundation:ore:1>);
    //mods.magneticraft.Grinder.removeRecipe(<basemetals:zinc_ore>);
    mods.magneticraft.Grinder.removeRecipe(<minecraft:redstone_ore>);
    mods.magneticraft.Grinder.removeRecipe(<minecraft:lapis_ore>);
    mods.magneticraft.Grinder.removeRecipe(<minecraft:quartz_ore>);
    mods.magneticraft.Grinder.removeRecipe(<minecraft:emerald_ore>);
    mods.magneticraft.Grinder.removeRecipe(<minecraft:diamond_ore>);
    mods.magneticraft.Grinder.removeRecipe(<minecraft:coal_ore>);
    mods.magneticraft.Grinder.removeRecipe(<minecraft:glowstone>);
    mods.magneticraft.Grinder.removeRecipe(<minecraft:sandstone>);
    mods.magneticraft.Grinder.removeRecipe(<minecraft:blaze_rod>);
    mods.magneticraft.Grinder.removeRecipe(<minecraft:wool>);
    mods.magneticraft.Grinder.removeRecipe(<minecraft:bone>);
    mods.magneticraft.Grinder.removeRecipe(<minecraft:reeds>);
    mods.magneticraft.Grinder.removeRecipe(<minecraft:cobblestone>);
    mods.magneticraft.Grinder.removeRecipe(<minecraft:quartz_block>);
    mods.magneticraft.Grinder.removeRecipe(<magneticraft:limestone>);
    mods.magneticraft.Grinder.removeRecipe(<magneticraft:burnt_limestone>);
    mods.magneticraft.Grinder.removeRecipe(<magneticraft:ores:4>);
    mods.magneticraft.Grinder.removeRecipe(<minecraft:log>);
    mods.magneticraft.Grinder.removeRecipe(<minecraft:planks>);
    mods.magneticraft.Grinder.removeRecipe(<minecraft:coal_block>);
    mods.magneticraft.Grinder.removeRecipe(<minecraft:coal>);
    mods.magneticraft.Grinder.removeRecipe(<minecraft:obsidian>);
    mods.magneticraft.Grinder.removeRecipe(<minecraft:coal:1>);
		//	Contentweaker ore blocks, zinc, steel, tungsten
	//mods.magneticraft.Grinder.removeRecipe(<ore:oreZinc>.firstItem);
	//mods.magneticraft.Grinder.removeRecipe(<ore:oreSteel>.firstItem);
	//mods.magneticraft.Grinder.removeRecipe(<ore:oreTungsten>.firstItem);


//=====================================================================================================================================================================================================	
//	Add new recipes
//=====================================================================================================================================================================================================
/*

# Remove all recipes with iron ore as input
mods.magneticraft.Grinder.removeRecipe(<minecraft:iron_ore>);

# addRecipe: Arguments:
# 1. input: the recipe input stack
# 2. primaryOutput: The result of the recipe, there is a 100% chance to get it
# 3. extraOutput: Extra result that you get sometimes
# 4. probability: the probability to get an extra output, for example 0.5 is 50% of the time and 0.0 is never
# 5. ticks: amount of game ticks need to complete the recipe
# 6. oredictFlag: If true, it will use the oreDictionary to check if an input stack is equivalent to the recipe input

# Add a recipe with iron ore as input, iron ingot as output and with a 0.5 (50%) extra chance to get a gold ingot as extra output
mods.magneticraft.Grinder.addRecipe(<minecraft:iron_ore>, <minecraft:iron_ingot>, <minecraft:gold_ingot>, 0.5, 80, true);

# Adds a recipe with only one output, basically anything with 0 chance is ignored
mods.magneticraft.Grinder.addRecipe(<minecraft:gold_ore>, <minecraft:gold_ingot>, <minecraft:stone>, 0.0, 50, true);

*/

	//	Grindinate up cobblestone into rocks and rocks into gravel lumps
mods.magneticraft.Grinder.addRecipe(
    <minecraft:cobblestone>, 
    <notreepunching:rock/stone> * 4, 
    <terraqueous:item_main:215>, 0.25, 
    80, 
    true
);

	//	Grind gravel into sand
mods.magneticraft.Grinder.addRecipe(
    <minecraft:gravel>, 
    <minecraft:sand>, 
    <weather2:sand_layer_placeable>, 0.25, 
    40, 
    true
);

	//	Grind loose rocks into gravel lumps
mods.magneticraft.Grinder.addRecipe(
    <notreepunching:rock/stone>, 
    <terraqueous:item_main:215>, 
    <terraqueous:item_main:215>, 0.25, 
    40, 
    true
);

//  I can merge these together right?
//  only differences are inputs and outputs.
//  So make a table with:
//  Input   :   Output
//  Input2  :   Output2

//  Then call it in a for loop


    //  Defines the Input / Output relationships to be extra dynamic
var Recipes = {
    "oreChunk"  :   "rockyChunk",
    "rock"      :   "rockyChunk",
} as string[string];

for Item in GlobalHarvestLevel {
    var HarvestLevel = GlobalHarvestLevel[Item];
    if ( 10 >= HarvestLevel ) {
            //  Set the Left value as the input and the right value as the output
        for Left,Right in Recipes {
            var Input = GlobalGimmeOreDict(Left,Item);
            var Output = GlobalGimmeOreDict(Right,Item);
            if ( 
                !(Input.empty)
                &
                !(Output.empty)
            ) {
                mods.magneticraft.Grinder.addRecipe(
                    Input.firstItem, 
                    Output.firstItem,
                    Output.firstItem, 
                    0.05, 
                    200, 
                    true
                );
            }
        }
    }
}
        

/*
	//	Ore Chunk > Rocky Chunk + Chance to double + rock	_______________________________________________________________________________________________________________________________________________________________________
for Item in GlobalOreChunk {	
	if ( 10 >= GlobalHarvestLevel[Item] ) {
		if(	
			!isNull( GlobalOreChunk[Item].firstItem ) 
			&
			!isNull( GlobalRockyChunk[Item].firstItem ) 
		) {
    		mods.magneticraft.Grinder.addRecipe(GlobalOreChunk[Item].firstItem, GlobalRockyChunk[Item].firstItem, GlobalRockyChunk[Item].firstItem, 0.05, 200, true);
		}
    }
}

	//	Ore Rocks > Rocky Chunk + Chance to double + rock	_______________________________________________________________________________________________________________________________________________________________________
for Item in GlobalOreRock {	
	if ( 10 >= GlobalHarvestLevel[Item] ) {
		if(	
			!isNull( GlobalOreRock[Item].firstItem ) 
			&
			!isNull( GlobalRockyChunk[Item].firstItem ) 
		) {
    		mods.magneticraft.Grinder.addRecipe(GlobalOreRock[Item].firstItem, GlobalRockyChunk[Item].firstItem, GlobalRockyChunk[Item].firstItem, 0.05, 200, true);
		}
    }
}
*/