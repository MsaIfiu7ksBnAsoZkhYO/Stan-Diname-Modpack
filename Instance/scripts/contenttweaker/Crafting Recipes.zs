//=====================================================================================================================================================================================================	
//	Import-ant things
//=====================================================================================================================================================================================================


import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import mods.artisanworktables.builder.RecipeBuilder;


//=====================================================================================================================================================================================================	
//	Add recipes for custom added things that need to be things
//=====================================================================================================================================================================================================


	//	Mortar for brickwork	_______________________________________________________________________________________________________________________________________________________________________
RecipeBuilder.get("basic")
	.setShaped([
    	[<ore:layerSand>,	null,			<ore:layerSand>	],
    	[null,				<ore:dustLime>,	null			],
    	[<ore:layerSand>,	<ore:sand>,		<ore:layerSand>	]])
	.setFluid( <liquid:water> * 500 )
	.setSecondaryIngredients( [ <minecraft:bucket> ] )
	.addTool( <ore:partToolRod>, 0 )
	.addOutput( <forge:bucketfilled>.withTag({FluidName: "mortar", Amount: 1000}) )
	.create();
	
	//	Mortar Ceramic Bucket	_______________________________________________________________________________________________________________________________________________________________________
RecipeBuilder.get("basic")
	.setShaped([
    	[<ore:layerSand>,	null,			<ore:layerSand>	],
    	[null,				<ore:dustLime>,	null			],
    	[<ore:layerSand>,	<ore:sand>,		<ore:layerSand>	]])
	.setFluid( <liquid:water> * 500 )
	.setSecondaryIngredients( [ <ceramics:clay_bucket> ] )
	.addTool( <ore:partToolRod>, 0 )
	.addOutput( <ceramics:clay_bucket>.withTag({fluids: {FluidName: "mortar", Amount: 1000}}) )
	.create();

	//	mold sand for sand casting	_______________________________________________________________________________________________________________________________________________________________________
RecipeBuilder.get("basic")
	.setShaped([
    	[<ore:layerSand>,	<ore:nuggetClay>,	<ore:layerSand>		],
    	[<ore:nuggetClay>,	<ore:nuggetClay>,	<ore:nuggetClay>	],
    	[<ore:layerSand>,	<minecraft:bucket>,	<ore:layerSand>		]])
	.setFluid( <liquid:water> * 250 )
	.setSecondaryIngredients( [ <minecraft:bucket> ] )
	.addTool( <ore:partToolRod>, 0 )
	.addOutput( <forge:bucketfilled>.withTag({FluidName: "moldsand", Amount: 1000}) )
	.create();

	//	mold sand for sand casting Ceramic Bucket	_______________________________________________________________________________________________________________________________________________________________________
RecipeBuilder.get("basic")
	.setShaped([
    	[<ore:layerSand>,	<ore:nuggetClay>,		<ore:layerSand>		],
    	[<ore:nuggetClay>,	<ore:nuggetClay>,		<ore:nuggetClay>	],
    	[<ore:layerSand>,	<ceramics:clay_bucket>,	<ore:layerSand>		]])
	.setFluid( <liquid:water> * 250 )
	.setSecondaryIngredients( [ <ceramics:clay_bucket> ] )
	.addTool( <ore:partToolRod>, 0 )
	.addOutput( <ceramics:clay_bucket>.withTag({fluids: {FluidName: "moldsand", Amount: 1000}}) )
	.create();



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
	.addTool( <ore:toolClay> , 1 )
	.addOutput( <contenttweaker:clay_nugget> * 9 )
	.setExtraOutputOne( <minecraft:bowl>, 1.0 )
	.create();


	//	Carbon Dusts Assemble!	_______________________________________________________________________________________________________________________________________________________________________
RecipeBuilder.get("basic")
	.setShapeless([
		<ore:dustTinyCarbon>,	<ore:dustTinyCarbon>,	<ore:dustTinyCarbon>,	
		<ore:dustTinyCarbon>,	<ore:dustTinyCarbon>,	<ore:dustTinyCarbon>,
		<ore:dustTinyCarbon>,	<ore:dustTinyCarbon>,	<ore:dustTinyCarbon>])
	.addOutput( <ore:dustCarbon>.firstItem )
	.create();

	//	Carbon Dust, divide and conquer.	_______________________________________________________________________________________________________________________________________________________________________
RecipeBuilder.get("basic")
	.setShapeless( [ <ore:dustCarbon> ] )
	.addOutput( <ore:dustTinyCarbon>.firstItem * 9 )
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
	.addOutput( <ore:dustSulfur>.firstItem * 9 )
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


	//	Brick Mold	_______________________________________________________________________________________________________________________________________________________________________
RecipeBuilder.get("carpenter")
	.setShaped([
		[<ore:pattern>,	null,			<ore:pattern>	],
		[null,			<ore:pattern>,	null			]])
	.addTool( <ore:artisansHammer> , 1 )
	.addOutput( <contenttweaker:brick_mold> )
	.create();