//=====================================================================================================================================================================================================	
//	Import-ant things
//=====================================================================================================================================================================================================


#priority -1

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.oredict.IOreDict;


//=====================================================================================================================================================================================================	
//	Adjust Burn times
//=====================================================================================================================================================================================================


furnace.setFuel(<minecraft:torch>, 0);
furnace.setFuel(<minecraft:sugar>, 0);
furnace.setFuel(<minecraft:wool>, 0);

furnace.setFuel(<ore:treeSapling>, 25);
furnace.setFuel(<ore:stickWood>, 50);
furnace.setFuel(<ore:slabWood>, 50);
furnace.setFuel(<ore:stairWood>, 100);
furnace.setFuel(<ore:plankWood>, 100);
furnace.setFuel(<ore:logWood>, 200);