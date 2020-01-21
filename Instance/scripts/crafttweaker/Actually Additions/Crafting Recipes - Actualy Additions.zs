//=====================================================================================================================================================================================================	
//	Import-ant things
//=====================================================================================================================================================================================================


import mods.artisanworktables.builder.RecipeBuilder;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;


//=====================================================================================================================================================================================================	
//	Removing Recipes - Migrating to Recuce Load Times Exceptions
//=====================================================================================================================================================================================================


	//	There are other thigns that acomplish these functions, but are more involved.	_______________________________________________________________________________________________________________________________________________________________________
//recipes.remove( <actuallyadditions:block_breaker> );
//recipes.remove( <actuallyadditions:block_placer> );
//recipes.remove( <actuallyadditions:block_fluid_collector> );
//recipes.remove( <actuallyadditions:block_fluid_placer> );
//recipes.remove( <actuallyadditions:block_lava_factory_controller> );
//recipes.remove( <actuallyadditions:block_grinder> );
//recipes.remove( <actuallyadditions:block_grinder_double> );
//recipes.remove( <actuallyadditions:block_furnace_double> );
//recipes.remove( <actuallyadditions:block_phantom_breaker> );
//recipes.remove( <actuallyadditions:block_directional_breaker> );
//recipes.remove( <actuallyadditions:block_miner> );
//recipes.remove( <actuallyadditions:block_farmer> );
//recipes.remove( <actuallyadditions:block_furnace_solar> );


//=====================================================================================================================================================================================================	
//	Adding Crafting Recipes
//=====================================================================================================================================================================================================


	//	Wood Casing	_______________________________________________________________________________________________________________________________________________________________________
//recipes.remove( <actuallyadditions:block_misc:4> );
RecipeBuilder.get("carpenter")
	.setShaped([
		[<ore:plankTreatedWood>,	<ore:fenceTreatedWood>,			<ore:plankTreatedWood>	],
		[<ore:fenceTreatedWood>,	<ore:scaffoldingTreatedWood>,	<ore:fenceTreatedWood>	],
		[<ore:plankTreatedWood>,	<ore:fenceTreatedWood>,			<ore:plankTreatedWood>	]])
	.addTool( <ore:artisansHammer>, 3 )
	.addOutput( <actuallyadditions:block_misc:4> )
	.create();

