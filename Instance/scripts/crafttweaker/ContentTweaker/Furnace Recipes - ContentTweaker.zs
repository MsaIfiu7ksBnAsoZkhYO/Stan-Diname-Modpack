//=====================================================================================================================================================================================================	
//  Importinating the classes
//=====================================================================================================================================================================================================	


import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.oredict.IOreDict;


//=====================================================================================================================================================================================================	
//	Furnace Recipes for Custom things
//=====================================================================================================================================================================================================


	//	Limestone rock > quicklime	_______________________________________________________________________________________________________________________________________________________________________
furnace.addRecipe(
    <contenttweaker:quicklime>, 
    <notreepunching:rock/limestone>,
    0.2
);

	//	Compressed Sawdust > Ash dust	_______________________________________________________________________________________________________________________________________________________________________
furnace.addRecipe(
    <contenttweaker:ashdust>, 
    <thermalfoundation:material:801>,
    0.2
);