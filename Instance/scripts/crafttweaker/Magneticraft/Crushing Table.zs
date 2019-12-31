//=====================================================================================================================================================================================================	
//	Import-ant things
//=====================================================================================================================================================================================================


import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;


//=====================================================================================================================================================================================================	
//	Remove exiting recipes
//=====================================================================================================================================================================================================


//	creeper head hammering	_______________________________________________________________________________________________________________________________________________________________________
mods.magneticraft.CrushingTable.removeRecipe(<minecraft:skull:0>);
mods.magneticraft.CrushingTable.removeRecipe(<minecraft:skull:2>);
mods.magneticraft.CrushingTable.removeRecipe(<minecraft:skull:4>);
mods.magneticraft.CrushingTable.removeRecipe(<minecraft:blaze_rod>);
mods.magneticraft.CrushingTable.removeRecipe(<minecraft:bone>);
mods.magneticraft.CrushingTable.removeRecipe(<minecraft:gold_block>);
mods.magneticraft.CrushingTable.removeRecipe(<minecraft:iron_block>);

mods.magneticraft.CrushingTable.removeRecipe(<ore:blockCopper>.firstItem);
mods.magneticraft.CrushingTable.removeRecipe(<ore:blockLead>.firstItem);
mods.magneticraft.CrushingTable.removeRecipe(<ore:blockTungsten>.firstItem);
mods.magneticraft.CrushingTable.removeRecipe(<ore:ingotSteel>.firstItem);


//==============================================================
//Making a new hammer to test mining levels
//==============================================================

mods.magneticraft.CrushingTable.addHammer(<tinkersforging:hammer/iron>, 20, 15, 1);



//mods.magneticraft.CrushingTable.addRecipe(<minecraft:quartz_ore>, <minecraft:diamond>, true);
