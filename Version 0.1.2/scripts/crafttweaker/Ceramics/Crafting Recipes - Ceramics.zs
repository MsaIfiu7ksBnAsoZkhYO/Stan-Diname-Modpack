//=====================================================================================================================================================================================================	
//	Import-ant things
//=====================================================================================================================================================================================================


import mods.artisanworktables.builder.RecipeBuilder;


//=====================================================================================================================================================================================================	
//	Remove Recipes
//=====================================================================================================================================================================================================


	//	Unfired Clay bucket	(using NTP unfired clay bucket)
recipes.remove(<ceramics:unfired_clay>);


//=====================================================================================================================================================================================================	
//	Alternate Porcelain recipe
//=====================================================================================================================================================================================================


//=====================================================================================================================================================================================================
//	Porcelain Clay Nuggets Assemble!	
//=====================================================================================================================================================================================================


RecipeBuilder.get("potter")
	.setShapeless([
		<ore:nuggetPorcelain>,	<ore:nuggetPorcelain>,	<ore:nuggetPorcelain>,	
		<ore:nuggetPorcelain>,	<ore:nuggetPorcelain>,	<ore:nuggetPorcelain>,
		<ore:nuggetPorcelain>,	<ore:nuggetPorcelain>,	<ore:nuggetPorcelain>])
	.setFluid( <liquid:water> * 50 )
	.addTool( <ore:artisansTrowel> , 1 )
	.addOutput( <ceramics:unfired_clay:4> )
	.create();


//=====================================================================================================================================================================================================
//	Porcelain Clay Nuggets, divide and conquer.	
//=====================================================================================================================================================================================================


RecipeBuilder.get("potter")
	.setShapeless( [ <ore:clayPorcelain> ] )
	.setFluid( <liquid:water> * 50 )
	.addTool( <ore:artisansTrowel> , 1 )
	.addTool( <ore:artisansHandsaw> , 1 )
	.addOutput( <contenttweaker:porcelain_clay_nugget> * 9 )
	.create();


//=====================================================================================================================================================================================================
//	Unfired Porcelain Clay Ball	
//=====================================================================================================================================================================================================


recipes.remove(<ceramics:unfired_clay:4>);
RecipeBuilder.get("potter")
	.setShaped([
		[<ore:layerSand>,	<ore:nuggetClay>,			<ore:layerSand>		],
		[<ore:nuggetClay>,	<ore:ingredientPorcelain>,	<ore:nuggetClay>	],
		[<ore:layerSand>,	<ore:nuggetClay>,			<ore:layerSand>		]])
	.setFluid( <liquid:water> * 50 )
	.addTool( <ore:artisansTrowel> , 1 )
	.addOutput( <ceramics:unfired_clay:4> )
	.create();


//=====================================================================================================================================================================================================
//	Unfired Porcelain Brick	
//=====================================================================================================================================================================================================


recipes.remove(<ceramics:unfired_clay:5>);
RecipeBuilder.get("potter")
	.setShapeless( [ <ore:clayPorcelain> ] )
	.setFluid( <liquid:water> * 50 )
	.addTool( <ore:artisansTrowel> , 1 )
	.addTool( <contenttweaker:brick_mold> , 1 )
	.addOutput( <ceramics:unfired_clay:5> )
	.create();


//=====================================================================================================================================================================================================
//	Porcelain Seared Faucet	
//=====================================================================================================================================================================================================


recipes.remove( <ceramics:unfired_clay:6> );
RecipeBuilder.get("potter")
	.setShaped([
		[<ore:clayPorcelain>,	null,					<ore:clayPorcelain>	],
		[null,					<ore:clayPorcelain>,	null				]])
	.setFluid( <liquid:water> * 50 )
	.addTool( <ore:artisansTrowel> , 1 )
	.addOutput( <ceramics:unfired_clay:6> )
	.create();

	//	Undo craft back to clay
RecipeBuilder.get("potter")
  .setShapeless([ <ceramics:unfired_clay:6> ])
  .setFluid( <liquid:water> * 50 )
  .addTool( <ore:artisansTrowel>, 1 )
  .addTool( <ore:artisansHandsaw>, 1 )
  .addOutput( <ceramics:unfired_clay:4>  * 3 )
  .create();


//=====================================================================================================================================================================================================
//	Porcelain Casting Channel	
//=====================================================================================================================================================================================================


recipes.remove( <ceramics:unfired_clay:7> );
RecipeBuilder.get("potter")
	.setShaped([
		[<ore:clayPorcelain>,	null,					<ore:clayPorcelain>	],
		[<ore:clayPorcelain>,	<ore:clayPorcelain>,	<ore:clayPorcelain>	]])
	.setFluid( <liquid:water> * 50 )
	.addTool( <ore:artisansTrowel>, 1 )
	.addOutput( <ceramics:unfired_clay:7> )
	.create();

	//	Undo craft back to clay
RecipeBuilder.get("potter")
  .setShapeless([ <ceramics:unfired_clay:7> ])
  .setFluid( <liquid:water> * 50 )
  .addTool( <ore:artisansTrowel>, 1 )
  .addTool( <ore:artisansHandsaw>, 1 )
  .addOutput( <ceramics:unfired_clay:4>  * 5 )
  .create();


//=====================================================================================================================================================================================================	
//	Clay porcelain bricks
//=====================================================================================================================================================================================================


	//	Unfired Clay Plate	
recipes.remove(<ceramics:unfired_clay:8>);
RecipeBuilder.get("basic")
	.setShaped([
		[<ore:rock>,	<ore:rock>	],
		[<ore:clay>,	<ore:clay>	],
		[<ore:rock>,	<ore:rock>	]])
	.addTool( <ore:artisansHammer> , 1 )
	.addOutput( <ceramics:unfired_clay:8> )
	.create();

RecipeBuilder.get("potter")
	.setShapeless( [ <ore:brickClay> ] )
	.setFluid( <liquid:water> * 50 )
	.addTool( <ore:artisansTrowel> , 1 )
	.addOutput( <ceramics:unfired_clay:8> )
	.create();


//=====================================================================================================================================================================================================
//	Unfired Clay Shears	
//=====================================================================================================================================================================================================


recipes.remove(<ceramics:unfired_clay:1>);
RecipeBuilder.get("potter")
	.setShaped([
	 	[null,					<ore:plateClayRaw>	],
	 	[<ore:plateClayRaw>,	null				]])
	.setFluid( <liquid:water> * 50 )
	.addTool( <ore:artisansTrowel> , 1 )
	.addOutput( <ceramics:unfired_clay:1> )
	.create();

	//	Undo craft back to clay
RecipeBuilder.get("potter")
  .setShapeless([ <ceramics:unfired_clay:1> ])
  .setFluid( <liquid:water> * 50 )
  .addTool( <ore:artisansTrowel>, 1 )
  .addTool( <ore:artisansHandsaw>, 1 )
  .addOutput( <minecraft:clay_ball>  * 2 )
  .create();



//=====================================================================================================================================================================================================	
//	Fix default recipes to use oredict
//=====================================================================================================================================================================================================


	//	Add the recipes back in with oredict entry	
recipes.remove(<ceramics:clay_slab>);
recipes.addShaped(
	"ceramics_decoration/porcelain_bricks/slab",
	<ceramics:clay_slab>, 
	[
		[<ore:ingotPorcelain>,	<ore:ingotPorcelain>	]
	]);
	

recipes.remove(<ceramics:clay_hard:7>);
recipes.addShaped(
	"ceramics_decoration/monochrome_bricks/block",
	<ceramics:clay_hard:7> * 2, 
	[
		[<ore:ingotPorcelain>,	<ore:ingotPorcelain>,	<ore:ingotPorcelain>	], 
		[<ore:ingotPorcelain>,	<ore:dyeBlack>,			<ore:ingotPorcelain>	], 
		[<ore:ingotPorcelain>,	<ore:ingotPorcelain>,	<ore:ingotPorcelain>	]
	]
);

recipes.remove(<ceramics:clay_hard:2>);
recipes.addShaped(
	"ceramics_decoration/marine_bricks/block",
	<ceramics:clay_hard:2> * 2, 
	[
		[<ore:ingotPorcelain>,	<ore:ingotPorcelain>,	<ore:ingotPorcelain>	], 
		[<ore:ingotPorcelain>,	<ore:dyeBlue>,			<ore:ingotPorcelain>	], 
		[<ore:ingotPorcelain>,	<ore:ingotPorcelain>,	<ore:ingotPorcelain>	]
	]
);


//=====================================================================================================================================================================================================	
//	Artisan Workbench recipes 
//=====================================================================================================================================================================================================

	
//=====================================================================================================================================================================================================
//	Porcelin Brick block	
//=====================================================================================================================================================================================================


recipes.remove(<ceramics:clay_hard>);
RecipeBuilder.get("mason")
	.setShaped([
		[<ore:ingotPorcelain>,	<ore:ingotPorcelain>	],
		[<ore:ingotPorcelain>,	<ore:ingotPorcelain>	]])
  	.setFluid( <liquid:mortar> * 100 )
	.addTool( <ore:artisansTrowel>, 2 )
	.addOutput( <ceramics:clay_hard> )
	.create();


//=====================================================================================================================================================================================================
//	Clay Barrel	
//=====================================================================================================================================================================================================


recipes.remove(<ceramics:clay_barrel_unfired>);
RecipeBuilder.get("potter")
	.setShaped([
		[<ore:plateClayRaw>,	null,				<ore:plateClayRaw>	],
		[<ore:plateClayRaw>,	<ore:clayBucket>,	<ore:plateClayRaw>	]])
	.setFluid( <liquid:water> * 100	)
	.addTool( <ore:artisansTrowel> , 1 )
	.addOutput( <ceramics:clay_barrel_unfired> )
	.create();

	//	Undo craft back to clay
RecipeBuilder.get("potter")
  .setShapeless([ <ceramics:clay_barrel_unfired> ])
  .setFluid( <liquid:water> * 50 )
  .addTool( <ore:artisansTrowel>, 1 )
  .addTool( <ore:artisansHandsaw>, 1 )
  .addOutput( <minecraft:clay_ball>  * 4 )
  .setExtraOutputOne( <minecraft:clay_ball> * 4, 1.0 )
  .create();


//=====================================================================================================================================================================================================
//	Clay Barrel Extension	
//=====================================================================================================================================================================================================


recipes.remove(<ceramics:clay_barrel_unfired:1>);
RecipeBuilder.get("potter")
	.setShaped([
		[<ore:plateClayRaw>,	null,	<ore:plateClayRaw>],
		[<ore:plateClayRaw>,	null,	<ore:plateClayRaw>]])
	.setFluid( <liquid:water> * 100 )
	.addTool( <ore:artisansTrowel> , 1 )
	.addOutput( <ceramics:clay_barrel_unfired:1> )
	.create();

	//	Undo craft back to clay
RecipeBuilder.get("potter")
  .setShapeless([ <ceramics:clay_barrel_unfired:1> ])
  .setFluid( <liquid:water> * 50 )
  .addTool( <ore:artisansTrowel>, 1 )
  .addTool( <ore:artisansHandsaw>, 1 )
  .addOutput( <minecraft:clay_ball>  * 4 )
  .create();


//=====================================================================================================================================================================================================
//	Porcelin barrel
//=====================================================================================================================================================================================================


recipes.remove(<ceramics:clay_barrel_unfired:2>);
RecipeBuilder.get("potter")
	.setShaped([
		[<ore:brickPorcelain>,	null,					<ore:brickPorcelain>	],
		[<ore:brickPorcelain>,	<ore:clayBucket>,		<ore:brickPorcelain>	]])
	.setFluid( <liquid:water> * 100 )
	.addTool( <ore:artisansTrowel> , 1 )
	.addOutput( <ceramics:clay_barrel_unfired:2> )
	.create();

	//	Undo craft back to porcelain
RecipeBuilder.get("potter")
  .setShapeless([ <ceramics:clay_barrel_unfired:2> ])
  .setFluid( <liquid:water> * 50 )
  .addTool( <ore:artisansTrowel>, 1 )
  .addTool( <ore:artisansHandsaw>, 1 )
  .addOutput( <ceramics:unfired_clay:4>  * 4 )
  .setExtraOutputOne(<minecraft:clay_ball> * 4, 1.0)
  .create();


//=====================================================================================================================================================================================================
//	Porcelin barrel extension
//=====================================================================================================================================================================================================


recipes.remove(<ceramics:clay_barrel_unfired:3>);
RecipeBuilder.get("potter")
	.setShaped([
		[<ore:brickPorcelain>,	null,	<ore:brickPorcelain>	],
		[<ore:brickPorcelain>,	null,	<ore:brickPorcelain>	]])
	.setFluid( <liquid:water> * 100 )
	.addTool( <ore:artisansTrowel> , 1 )
	.addOutput( <ceramics:clay_barrel_unfired:3> )
	.create();

	//	Undo craft back to porcelain	
RecipeBuilder.get("potter")
  .setShapeless([ <ceramics:clay_barrel_unfired:3> ])
  .setFluid( <liquid:water> * 50 )
  .addTool( <ore:artisansTrowel>, 1 )
  .addTool( <ore:artisansHandsaw>, 1 )
  .addOutput( <ceramics:unfired_clay:4>  * 4 )
  .create();