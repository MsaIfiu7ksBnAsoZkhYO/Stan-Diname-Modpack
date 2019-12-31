//=====================================================================================================================================================================================================	
//	Import-ant things
//=====================================================================================================================================================================================================


import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

//=====================================================================================================================================================================================================	
//	Adjustifying melting recipes.
//=====================================================================================================================================================================================================


mods.tconstruct.Melting.addRecipe(<liquid:molybdochalkos> * 144,<contenttweaker:molybdochalkos_ingot>, 570);
mods.tconstruct.Melting.addRecipe(<liquid:magmolybdochalkosmuth> * 144,<contenttweaker:magmolybdochalkosmuth_ingot>, 500);


	//	Fix magneticraft chunks 	_______________________________________________________________________________________________________________________________________________________________________
mods.tconstruct.Melting.removeRecipe(<liquid:copper>,<ore:chunkCopper>.firstItem);
mods.tconstruct.Melting.removeRecipe(<liquid:copper>,<ore:rockyChunkCopper>.firstItem);

mods.tconstruct.Melting.addRecipe(<liquid:copper> * 72,<ore:chunkCopper>, 500);
mods.tconstruct.Melting.addRecipe(<liquid:copper> * 36,<ore:rockyChunkCopper>, 500);