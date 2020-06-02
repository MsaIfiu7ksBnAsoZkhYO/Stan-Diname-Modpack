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
//	Arrays for Dynamic thingies
//==============================================================


	//	Ingots	_______________________________________________________________________________________________________________________________________________________________________
val Ingot = {
	iron : <ore:ingotIron>,
	gold : <ore:ingotGold>,
	copper : <ore:ingotCopper>,
	lead : <ore:ingotLead>,
	silver : <ore:ingotSilver>,
	tin : <ore:ingotTin>,
	zinc : <ore:ingotZinc>,
	bronze : <ore:ingotBronze>,
	brass : <ore:ingotBrass>,
	steel : <ore:ingotSteel>,
} as IOreDictEntry[string];

	//	Sticks	_______________________________________________________________________________________________________________________________________________________________________
val Stick = {
	iron : <ore:stickIron>,
	gold : <ore:stickGold>,
	copper : <ore:stickCopper>,
	lead : <ore:stickLead>,
	silver : <ore:stickSilver>,
	tin : <ore:stickTin>,
	zinc : <ore:stickZinc>,
	bronze : <ore:stickBronze>,
	brass : <ore:stickBrass>,
	steel : <ore:stickSteel>,
} as IOreDictEntry[string];

	//	Plates	_______________________________________________________________________________________________________________________________________________________________________
val Plate = {
	iron : <ore:plateIron>,
	gold : <ore:plateGold>,
	copper : <ore:plateCopper>,
	lead : <ore:plateLead>,
	silver : <ore:plateSilver>,
	tin : <ore:plateTin>,
	zinc : <ore:plateZinc>,
	bronze : <ore:plateBronze>,
	brass : <ore:plateBrass>,
	steel : <ore:plateSteel>,
} as IOreDictEntry[string];

	//	Anvil Tier _______________________________________________________________________________________________________________________________________________________________________
val Tier = {
	iron : 4,
	gold : 2,
	copper : 1,
	lead : 1,
	silver : 3,
	tin : 1,
	zinc : 3,
	bronze : 2,
	brass : 3,
	steel : 5,
} as int[string];



//==============================================================
//	Add Heat to items to allow them to be forged
//==============================================================


	//	Slag iron ingot	_______________________________________________________________________________________________________________________________________________________________________
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


/* - Making a dynamic loop function
	//	Plates	_______________________________________________________________________________________________________________________________________________________________________
Anvil.addRecipe(<ore:ingotCopper>, <thermalfoundation:material:320>, 1, "hit_any", "draw_second_last", "punch_last");
Anvil.addRecipe(<ore:ingotTin>, <thermalfoundation:material:321>, 1, "hit_any", "draw_second_last", "punch_last");
Anvil.addRecipe(<ore:ingotIron>, <thermalfoundation:material:32>, 4, "hit_any", "draw_second_last", "punch_last");
Anvil.addRecipe(<ore:ingotSteel>, <libvulpes:productplate:6>, 5, "hit_last", "hit_any");


	//	Rods	_______________________________________________________________________________________________________________________________________________________________________
Anvil.addRecipe(<ore:ingotIron>, <immersiveengineering:material:1>, 4, "hit_any", "draw_second_last", "punch_last");
Anvil.addRecipe(<ore:ingotSteel>, <libvulpes:productrod:6>, 5, "draw_any", "hit_not_last");
*/

for item in Ingot {
	Anvil.addRecipe( Ingot[item] , Plate[item].firstItem , Tier[item] , "hit_any", "draw_second_last", "punch_last");
	Anvil.addRecipe( Ingot[item] , Stick[item].firstItem , Tier[item] , "hit_any", "draw_second_last", "punch_last");
}


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