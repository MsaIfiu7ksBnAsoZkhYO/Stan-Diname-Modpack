//=====================================================================================================================================================================================================	
//	Import-ant things
//=====================================================================================================================================================================================================


import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.oredict.IOreDict;

//=====================================================================================================================================================================================================	
//	Crafting Recipes
//=====================================================================================================================================================================================================


	//	Remove sandstone lumps to sandstone blocks	_______________________________________________________________________________________________________________________________________________________________________
recipes.removeByRecipeName("terraqueous:dust-sandstone");
recipes.removeByRecipeName("terraqueous:dust-red_sandstone");

	//	Remove Tiny dusts to large dusts	_______________________________________________________________________________________________________________________________________________________________________
recipes.removeByRecipeName("terraqueous:dust-diamond_dust");
recipes.removeByRecipeName("terraqueous:dust-emerald_dust");
recipes.removeByRecipeName("terraqueous:dust-lapis");
recipes.removeByRecipeName("terraqueous:dust-redstone");

	//	Split Gravel blocks into gravel lumps	_______________________________________________________________________________________________________________________________________________________________________
recipes.addShapeless(
  "Gravel to Gravel Lumps",
  <terraqueous:item_main:215> * 4, 
  [
    <ore:gravel>
  ]
);
