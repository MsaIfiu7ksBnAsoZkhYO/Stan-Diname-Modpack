//=====================================================================================================================================================================================================	
//	Alter ore harvest levels dynamically.
//=====================================================================================================================================================================================================	

#norun
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
    print("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=");
    print("ITEM IN GHL TABLE: "~Item);
    print("HL IN GHL TABLE: "~HarvestLevel);
        //  Get us the oredict object we want
    var ODEntry = GlobalGimmeOreDict("ore",Item);
    print("Ore Dictionary Entry: "~ODEntry.name);
    var HLRequirement = HarvestLevel - 1;
    print("HLRequirement: "~HLRequirement);
        //  Iterate through all the itemstack objects in the current oredictionary entry
    print("Iterate through that Oredict for each IItemstack");
    for ItemStack in ODEntry.items {
        print("Current IITemstack: "~ItemStack.name);
            //  Verify the itemstack we are working on is actually a block
        if (
            !isNull( ItemStack.asBlock() ) 
        ) {
                //  Set the specific block's harvest level
            print("Item has a blockto set");
            print("BlockID: "~ItemStack.asBlock().definition.id);
            print("Block HarvestLevel before: "~ItemStack.asBlock().definition.harvestLevel);
            ItemStack.asBlock().definition
                .setHarvestLevel( "pickaxe", HLRequirement )
            ;
            print("Block HarvestLevel after: "~ItemStack.asBlock().definition.harvestLevel);
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