//=====================================================================================================================================================================================================	
//	Import-ant things
//=====================================================================================================================================================================================================


import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import mods.artisanworktables.builder.RecipeBuilder;


//=====================================================================================================================================================================================================	
//	Add recipes for custom added things that need to be things
//=====================================================================================================================================================================================================


	//	Clay Clay Nuggets Assemble!	_______________________________________________________________________________________________________________________________________________________________________
RecipeBuilder.get("potter")
	.setShapeless([
		<ore:nuggetClay>,	<ore:nuggetClay>,	<ore:nuggetClay>,	
		<ore:nuggetClay>,	<ore:nuggetClay>,	<ore:nuggetClay>,
		<ore:nuggetClay>,	<ore:nuggetClay>,	<ore:nuggetClay>])
	.setFluid( <liquid:water> * 50 )
	.setSecondaryIngredients( [ <minecraft:bowl> ] )
	.addTool( <ore:artisansTrowel> , 1 )
	.addOutput( <minecraft:clay_ball> )
	.setExtraOutputOne( <minecraft:bowl> , 1.0 )
	.create();

	//	Clay Clay Nuggets, divide and conquer.	_______________________________________________________________________________________________________________________________________________________________________
RecipeBuilder.get("potter")
	.setShapeless( [ <ore:clay> ] )
	.setFluid( <liquid:water> * 50 )
	.setSecondaryIngredients( [ <minecraft:bowl> ] )
	.addTool( <ore:artisansTrowel> , 1 )
	.addOutput( <contenttweaker:clay_nugget> * 9 )
	.setExtraOutputOne( <minecraft:bowl>, 1.0 )
	.create();


	//	Carbon Dusts Assemble!	_______________________________________________________________________________________________________________________________________________________________________
RecipeBuilder.get("basic")
	.setShapeless([
		<ore:dustTinyCarbon>,	<ore:dustTinyCarbon>,	<ore:dustTinyCarbon>,	
		<ore:dustTinyCarbon>,	<ore:dustTinyCarbon>,	<ore:dustTinyCarbon>,
		<ore:dustTinyCarbon>,	<ore:dustTinyCarbon>,	<ore:dustTinyCarbon>])
	.addOutput( <jaopca:item_dustcarbon> )
	.create();

	//	Carbon Dust, divide and conquer.	_______________________________________________________________________________________________________________________________________________________________________
RecipeBuilder.get("basic")
	.setShapeless( [ <ore:dustCarbon> ] )
	.addOutput( <jaopca:item_dusttinycarbon> * 9 )
	.create();

	//	Sulfur Dusts Assemble!	_______________________________________________________________________________________________________________________________________________________________________
RecipeBuilder.get("basic")
	.setShapeless([
		<ore:dustTinySulfur>,	<ore:dustTinySulfur>,	<ore:dustTinySulfur>,	
		<ore:dustTinySulfur>,	<ore:dustTinySulfur>,	<ore:dustTinySulfur>,
		<ore:dustTinySulfur>,	<ore:dustTinySulfur>,	<ore:dustTinySulfur>])
	.addOutput( <immersiveengineering:material:25> )
	.create();

	//	Sulfur Dust, divide and conquer.	_______________________________________________________________________________________________________________________________________________________________________
RecipeBuilder.get("basic")
	.setShapeless( [ <ore:dustSulfur> ] )
	.addOutput( <jaopca:item_dusttinysulfur> * 9 )
	.create();

	//	Dust to clay nugget	_______________________________________________________________________________________________________________________________________________________________________
RecipeBuilder.get("potter")
    .setShapeless( [ <ore:dustTinyDust> ] )
    .setFluid( <liquid:water> * 50 )
    .setSecondaryIngredients( [ <minecraft:bowl> ] )
    .addTool( <ore:partToolRod> , 0 )
    .addOutput( <contenttweaker:clay_nugget> )
    .setExtraOutputOne( <minecraft:bowl> , 1.0 )
    .create();

	//	Ash block to ash dust	_______________________________________________________________________________________________________________________________________________________________________
RecipeBuilder.get("basic")
  .setShapeless( [ <ore:blockAsh> ] )
  .addOutput( <contenttweaker:ashdust> * 4 )
  .create();