//=====================================================================================================================================================================================================	
//	Alter ore harvest levels dynamically.
//=====================================================================================================================================================================================================	

#priority -9001

//=====================================================================================================================================================================================================	
//These imports must be included to cast the arrays
//=====================================================================================================================================================================================================	


import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.oredict.IOreDict;
import crafttweaker.block.IBlockDefinition;

//=====================================================================================================================================================================================================	
//	Let's make the magic happen
//=====================================================================================================================================================================================================

    //  Swapping to harvest level table
for Item,HarvestLevel in GlobalHarvestLevel {
        //  Get us the oredict object we want
    var ODEntry = GlobalGimmeOreDict("ore",Item);
        //  Iterate through all the itemstack objects in the current oredictionary entry
    for ItemStack in ODEntry.items {
            //  Verify the itemstack we are working on is actually a block
        if (
            !isNull( ItemStack.asBlock() ) 
        ) {
                //  Set the specific block's harvest level
            ItemStack.asBlock().definition
                .setHarvestLevel( "pickaxe", HarvestLevel )
            ;
        }
    }
}

/* - Old method being replaced by global harvest level table
for Name,Entry in GlobalOreBlock {
    for Item in Entry.items {
        Item.asBlock().definition
            .setHarvestLevel( "pickaxe", GlobalHarvestLevel[ Name ] )
        ;
    }  
}
*/