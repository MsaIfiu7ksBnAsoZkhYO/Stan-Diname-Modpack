//=====================================================================================================================================================================================================	
//	Import-ant things
//=====================================================================================================================================================================================================


import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import mods.artisanworktables.builder.RecipeBuilder;

//=====================================================================================================================================================================================================	
//	Leather processing on a tanner's table
//=====================================================================================================================================================================================================


recipes.remove( <minecraft:leather> );

	//	Scrape the hides	_______________________________________________________________________________________________________________________________________________________________________
RecipeBuilder.get("tanner")
    .setShapeless( [ <ore:rawhide> ] )
    .addTool( <ore:toolKnife> , 20 )
    .addOutput( <leatherworks:crafting_leather_scraped> )
    .create();
	//	Scrape the hides	_______________________________________________________________________________________________________________________________________________________________________
RecipeBuilder.get("basic")
    .setShapeless( [ <ore:rawhide> ] )
    .addTool( <ore:toolKnife> , 20 )
    .addOutput( <leatherworks:crafting_leather_scraped> )
    .create();

	//	Wash the hides	_______________________________________________________________________________________________________________________________________________________________________
RecipeBuilder.get("tanner")
    .setShapeless([<leatherworks:crafting_leather_scraped>])
    .setFluid(<liquid:water> * 250)
    .addOutput(<leatherworks:crafting_leather_washed>)
    .create();

	//	Tinker's construct style washing	_______________________________________________________________________________________________________________________________________________________________________
mods.tconstruct.Casting.addTableRecipe( <leatherworks:crafting_leather_washed> , <leatherworks:crafting_leather_scraped>, <liquid:water>, 250, true, 300);
	
	//	Soak the hide in Tannis	_______________________________________________________________________________________________________________________________________________________________________
RecipeBuilder.get("tanner")
    .setShapeless( [ <leatherworks:crafting_leather_washed> ] )
    .setFluid( <liquid:leatherworks:tannin> * 250 )
    .addOutput( <leatherworks:crafting_leather_soaked> )
    .create();
	
    //	Tinker's construct style soaking	_______________________________________________________________________________________________________________________________________________________________________
mods.tconstruct.Casting.addTableRecipe( <leatherworks:crafting_leather_soaked> , <leatherworks:crafting_leather_washed>, <liquid:leatherworks:tannin>, 250, true, 600);

 	//	Dry the hide on a proper drying rack	_______________________________________________________________________________________________________________________________________________________________________
mods.tconstruct.Drying.addRecipe(<minecraft:leather> , <leatherworks:crafting_leather_soaked> , 6000);