//=====================================================================================================================================================================================================	
//	Import-ant things
//=====================================================================================================================================================================================================


import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import modtweaker.tconstruct.ITICMaterial;
import mods.TinkersForging.Anvil;

//==============================================================
//	Add Heat to items to allow them to be forged
//==============================================================


Anvil.addItemHeat(<minecraft:iron_ingot>, 700, 2000);

//Anvil.addItemHeat(<mysticalagriculture:crafting:37>, 300, 2000);
//Anvil.addItemHeat(<refinedstorage:quartz_enriched_iron>, 1100, 2000);
//Anvil.addItemHeat(<astralsorcery:itemcraftingcomponent:1>, 1100, 2000);
//Anvil.addItemHeat(<thermalfoundation:material:165>, 1100, 2000);
//Anvil.addItemHeat(<bloodtinker:blood_bronze_ingot>, 800, 2000);
//Anvil.addItemHeat(<bloodtinker:blood_bronze_ingot>, 800, 2000);



//==============================================================
//Create forging Recipes for things
//==============================================================


	//	Slag iron refining	_______________________________________________________________________________________________________________________________________________________________________
Anvil.addRecipe(<minecraft:iron_ingot>, <contenttweaker:wrought_iron_ingot>, 4, "hit_any", "hit_any", "hit_any");



	//	Plates	_______________________________________________________________________________________________________________________________________________________________________
Anvil.addRecipe(<ore:ingotCopper>, <thermalfoundation:material:320>, 1, "hit_any", "draw_second_last", "punch_last");
Anvil.addRecipe(<ore:ingotTin>, <thermalfoundation:material:321>, 1, "hit_any", "draw_second_last", "punch_last");
Anvil.addRecipe(<ore:ingotIron>, <thermalfoundation:material:32>, 4, "hit_any", "draw_second_last", "punch_last");
Anvil.addRecipe(<ore:ingotSteel>, <libvulpes:productplate:6>, 5, "hit_last", "hit_any");


	//	Rods	_______________________________________________________________________________________________________________________________________________________________________
Anvil.addRecipe(<ore:ingotIron>, <immersiveengineering:material:1>, 4, "hit_any", "draw_second_last", "punch_last");
Anvil.addRecipe(<ore:ingotSteel>, <libvulpes:productrod:6>, 5, "draw_any", "hit_not_last");



//Anvil.removeRecipe(<minecraft:iron_chestplate>);


/*

Need to ensure everything actually has the ingot available to use in this fucking thing,

for Material in scripts.crafttweaker.Tinkers_Construct.TconMaterialsList.TconToolMaterials{	
	//Anvil.addItemHeat(<ore:ingotMaterial.getName>, 300, 2000);
	print(<ore:ingotMaterial.getName>)
	
	Heat = Material.harvestlevel
	MeltPoint = Material.harvestlevel * (230 * material.harvestlevel) 

Anvil.addRecipe(<ore:ingotMaterial>, <tconstruct:tool_rod>.withTag({Material:Material}), 5, "hit_last", "draw_any");
iingredient can be multiplied.

Heat range
Tier 0 300 
Tier 1 400
Tier 2 600
Tier 3 1000
Tier 4 1300
Tier 5 1400

anvil tier requirement
	Anvil itself is based on mining level.  




*/