//=====================================================================================================================================================================================================	
//	Import-ant things
//=====================================================================================================================================================================================================


import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;


//=====================================================================================================================================================================================================	
//	Remove exiting recipes
//=====================================================================================================================================================================================================

    //  Head Hammering	_______________________________________________________________________________________________________________________________________________________________________
mods.magneticraft.CrushingTable.removeRecipe(<minecraft:skull:0>);
mods.magneticraft.CrushingTable.removeRecipe(<minecraft:skull:2>);
mods.magneticraft.CrushingTable.removeRecipe(<minecraft:skull:4>);
mods.magneticraft.CrushingTable.removeRecipe(<minecraft:blaze_rod>);
mods.magneticraft.CrushingTable.removeRecipe(<minecraft:bone>);
mods.magneticraft.CrushingTable.removeRecipe(<minecraft:gold_block>);
mods.magneticraft.CrushingTable.removeRecipe(<minecraft:iron_block>);

    //	No plates for you!	_______________________________________________________________________________________________________________________________________________________________________
mods.magneticraft.CrushingTable.removeRecipe(<ore:blockCopper>.firstItem);
mods.magneticraft.CrushingTable.removeRecipe(<ore:blockLead>.firstItem);
mods.magneticraft.CrushingTable.removeRecipe(<ore:blockTungsten>.firstItem);
mods.magneticraft.CrushingTable.removeRecipe(<ore:ingotSteel>.firstItem);

    //	Crushing table is only good for low tier ores.	_______________________________________________________________________________________________________________________________________________________________________
mods.magneticraft.CrushingTable.removeRecipe(<ore:oreCobalt>.firstItem);
mods.magneticraft.CrushingTable.removeRecipe(<ore:oreTungsten>.firstItem);
mods.magneticraft.CrushingTable.removeRecipe(<ore:oreMithril>.firstItem);
mods.magneticraft.CrushingTable.removeRecipe(<ore:oreNickel>.firstItem);
mods.magneticraft.CrushingTable.removeRecipe(<ore:oreOsmium>.firstItem);
mods.magneticraft.CrushingTable.removeRecipe(<ore:oreIron>.firstItem);
//mods.magneticraft.CrushingTable.removeRecipe(<ore:oreSteel>.firstItem);



//=====================================================================================================================================================================================================	
//  Add Artisan hammers as crushing table hammers.
//=====================================================================================================================================================================================================	


for Hammer in <ore:artisansHammer>.items {
    mods.magneticraft.CrushingTable.addHammer(Hammer, 20, 15, 1);
}


//=====================================================================================================================================================================================================	
//	Adding recipes
//=====================================================================================================================================================================================================


	//	Flint to flint shards
mods.magneticraft.CrushingTable.addRecipe( 
    <minecraft:flint>, 
    <notreepunching:flint_shard> * 3, 
    true
);

    //  Defines the Input / Output relationships to be extra dynamic
var Recipes = {
    "oreChunk"  :   "rockyChunk",
    "rock"      :   "RockyChunk",
} as string[string];


for Item in GlobalHarvestLevel {
    var HarvestLevel = GlobalHarvestLevel[Item];
    if ( 5 >= HarvestLevel ) {
            //  Set the Left value as the input and the right value as the output
        for Left,Right in Recipes {
            var Input = GlobalGimmeOreDict(Left,Item);
            var Output = GlobalGimmeOreDict(Right,Item);
            if ( 
                !(Input.empty)
                &
                !(Output.empty)
            ) {
                mods.magneticraft.CrushingTable.addRecipe( 
                    Input.firstItem, 
                    Output.firstItem, 
                    true);
            }
        }
    }
}

/* - Previous rebuild that's already outdated.  Lol
for Item in GlobalHarvestLevel {
    var HarvestLevel = GlobalHarvestLevel[Item];
    if ( 5 >= HarvestLevel ) {
            //  Ore Chunk to Rocky Chunk
        var Input = GlobalGimmeOreDict("chunk",Item);
        var Output = GlobalGimmeOreDict("rockyChunk",Item);
        if ( 
            !(Input.empty)
            &
            !(Output.empty)
        ) {
            mods.magneticraft.CrushingTable.addRecipe( 
                Input.firstItem, 
                Output.firstItem, 
                true);
        }
         
         
            //  Ore Rock to Rocky Chunk
        var Input = GlobalGimmeOreDict("rock",Item);
        var Output = GlobalGimmeOreDict("rockyChunk",Item);
        if ( 
            !(Input.empty)
            &
            !(Output.empty)
        ) {
            mods.magneticraft.CrushingTable.addRecipe( 
                Input.firstItem, 
                Output.firstItem, 
                true);
        }

}
*/


/*
	//	Ore chunk to rocky chunks
for Item in GlobalOreChunk {
    if ( 5 >= GlobalHarvestLevel[Item] ) {
        if ( 
            !isNull( GlobalOreChunk[Item].firstItem ) 
            &
            !isNull( GlobalRockyChunk[Item].firstItem ) 
        ) {
            mods.magneticraft.CrushingTable.addRecipe( GlobalOreChunk[Item].firstItem , GlobalRockyChunk[Item].firstItem, true);
        }
    }
}

	//	Ore Rocks to rocky chunks
for Item in GlobalOreRock {
    if ( 5 >= GlobalHarvestLevel[Item] ) {
        if ( 
            !isNull( GlobalOreRock[Item].firstItem ) 
            &
            !isNull( GlobalRockyChunk[Item].firstItem ) 
        ) {
            mods.magneticraft.CrushingTable.addRecipe( GlobalOreRock[Item].firstItem , GlobalRockyChunk[Item].firstItem, true);
        }
    }
}
*/