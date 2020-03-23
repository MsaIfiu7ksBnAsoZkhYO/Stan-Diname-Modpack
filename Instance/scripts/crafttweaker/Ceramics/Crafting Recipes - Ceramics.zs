//=====================================================================================================================================================================================================	
//	Import-ant things
//=====================================================================================================================================================================================================


import mods.artisanworktables.builder.RecipeBuilder;


//=====================================================================================================================================================================================================	
//	Remove Recipes
//=====================================================================================================================================================================================================


	//	Unfired Clay bucket	(using NTP unfired clay bucket)_______________________________________________________________________________________________________________________________________________________________________
//recipes.remove(<ceramics:unfired_clay>);


//=====================================================================================================================================================================================================	
//	Alternate Porcelain recipe
//=====================================================================================================================================================================================================


	//	Porcelain Clay Nuggets Assemble!	_______________________________________________________________________________________________________________________________________________________________________
RecipeBuilder.get("potter")
	.setShapeless([
		<ore:nuggetPorcelain>,	<ore:nuggetPorcelain>,	<ore:nuggetPorcelain>,	
		<ore:nuggetPorcelain>,	<ore:nuggetPorcelain>,	<ore:nuggetPorcelain>,
		<ore:nuggetPorcelain>,	<ore:nuggetPorcelain>,	<ore:nuggetPorcelain>])
	.setFluid( <liquid:water> * 50 )
	.setSecondaryIngredients( [ <minecraft:bowl> ] )
	.addTool( <ore:artisansTrowel> , 1 )
	.addOutput( <ceramics:unfired_clay:4> )
	.setExtraOutputOne( <minecraft:bowl> , 1.0 )
	.create();

	//	Porcelain Clay Nuggets, divide and conquer.	_______________________________________________________________________________________________________________________________________________________________________
RecipeBuilder.get("potter")
	.setShapeless( [ <ore:clayPorcelain> ] )
	.setFluid( <liquid:water> * 50 )
	.setSecondaryIngredients( [ <minecraft:bowl> ] )
	.addTool( <ore:artisansTrowel> , 1 )
	.addTool( <ore:toolClay> , 1 )
	.addOutput( <contenttweaker:porcelain_clay_nugget> * 9 )
	.setExtraOutputOne( <minecraft:bowl>, 1.0 )
	.create();
	
	//	Unfired Porcelain Clay Ball	_______________________________________________________________________________________________________________________________________________________________________
/* - Making a better recipe
RecipeBuilder.get("potter")
	.setShaped([
    	[null,				<ore:layerSand>,			<ore:nuggetClay>,			<ore:layerSand>,			null				],
    	[<ore:layerSand>,	<ore:nuggetClay>,			<ore:ingredientPorcelain>,	<ore:nuggetClay>,			<ore:layerSand>		],
    	[<ore:nuggetClay>,	<ore:ingredientPorcelain>,	<ore:nuggetClay>,			<ore:ingredientPorcelain>,	<ore:nuggetClay>	],
    	[<ore:layerSand>,	<ore:nuggetClay>,			<ore:ingredientPorcelain>,	<ore:nuggetClay>,			<ore:layerSand>		],
    	[null,				<ore:layerSand>,			<ore:nuggetClay>,			<ore:layerSand>,			null				]])
	.setFluid( <liquid:water> * 50 )
	.setSecondaryIngredients( [ <minecraft:bowl> ] )
	.addTool( <ore:artisansTrowel> , 1 )
	.addOutput( <ceramics:unfired_clay:4> * 2 )
	.setExtraOutputOne( <minecraft:bowl> , 1.0 )
	.create();
*/

RecipeBuilder.get("potter")
	.setShaped([
		[<ore:layerSand>,	<ore:nuggetClay>,			<ore:layerSand>		],
		[<ore:nuggetClay>,	<ore:ingredientPorcelain>,	<ore:nuggetClay>	],
		[<ore:layerSand>,	<ore:nuggetClay>,			<ore:layerSand>		]])
	.setFluid( <liquid:water> * 50 )
	.setSecondaryIngredients( [ <minecraft:bowl> ] )
	.addTool( <ore:artisansTrowel> , 1 )
	.addOutput( <ceramics:unfired_clay:4> )
	.setExtraOutputOne( <minecraft:bowl> , 1.0 )
	.create();

	//	Unfired Porcelain Brick	_______________________________________________________________________________________________________________________________________________________________________
RecipeBuilder.get("potter")
	.setShapeless( [ <ore:clayPorcelain> ] )
	.setFluid( <liquid:water> * 50 )
	.setSecondaryIngredients( [ <minecraft:bowl> ] )
	.addTool( <ore:artisansTrowel> , 1 )
	.addTool( <contenttweaker:brick_mold> , 1 )
	.addOutput( <ceramics:unfired_clay:5> )
	.setExtraOutputOne (<minecraft:bowl> , 1.0 )
	.create();

	//	Porcelain Seared Faucet	_______________________________________________________________________________________________________________________________________________________________________
//recipes.remove( <ceramics:faucet> );
RecipeBuilder.get("potter")
	.setShaped([
		[<ore:clayPorcelain>,	null,					<ore:clayPorcelain>	],
		[null,					<ore:clayPorcelain>,	null				]])
	.setFluid( <liquid:water> * 50 )
	.setSecondaryIngredients( [ <minecraft:bowl> ] )
	.addTool( <ore:artisansTrowel> , 1 )
	.addOutput( <ceramics:unfired_clay:6> )
	.setExtraOutputOne( <minecraft:bowl> , 1.0 )
	.create();
	
	//	Porcelain Casting Channel	_______________________________________________________________________________________________________________________________________________________________________
//recipes.remove( <ceramics:channel> );
RecipeBuilder.get("potter")
	.setShaped([
		[<ore:clayPorcelain>,	null,					<ore:clayPorcelain>	],
		[<ore:clayPorcelain>,	<ore:clayPorcelain>,	<ore:clayPorcelain>	]])
	.setFluid( <liquid:water> * 50 )
	.setSecondaryIngredients( [ <minecraft:bowl> ] )
	.addTool( <ore:artisansTrowel>, 1 )
	.addOutput( <ceramics:unfired_clay:7> )
	.setExtraOutputOne( <minecraft:bowl>, 1.0 )
	.create();


//=====================================================================================================================================================================================================	
//	Clay Tool porcelain bricks
//=====================================================================================================================================================================================================


	//	Unfired Clay Plate	_______________________________________________________________________________________________________________________________________________________________________
//recipes.remove(<ceramics:unfired_clay:8>);
RecipeBuilder.get("potter")
  .setShapeless( [ <ore:brickClay> ] )
  .setFluid( <liquid:water> * 50 )
  .setSecondaryIngredients( [ <minecraft:bowl> ] )
  .addTool( <ore:artisansTrowel> , 1 )
  .addOutput( <ceramics:unfired_clay:8> )
  .setExtraOutputOne( <minecraft:bowl> , 1.0 )
  .create();

	//	Unfired Clay Shears	_______________________________________________________________________________________________________________________________________________________________________
//recipes.remove(<ceramics:unfired_clay:1>);
RecipeBuilder.get("potter")
	.setShaped([
	 	[null,					<ore:plateClayRaw>	],
	 	[<ore:plateClayRaw>,	null				]])
	.setFluid( <liquid:water> * 50 )
	.setSecondaryIngredients( [ <minecraft:bowl> ] )
	.addTool( <ore:artisansTrowel> , 1 )
	.addOutput( <ceramics:unfired_clay:1> )
	.setExtraOutputOne( <minecraft:bowl> , 1.0 )
	.create();

//=====================================================================================================================================================================================================	
//	Fix default recipes to use oredict
//=====================================================================================================================================================================================================


	//	Add the recipes back in with oredict entry	_______________________________________________________________________________________________________________________________________________________________________
recipes.addShaped(
	"ceramics_decoration/porcelain_bricks/slab",
	<ceramics:clay_slab>, 
	[
		[<ore:ingotPorcelain>,	<ore:ingotPorcelain>	]
	]);
	

recipes.addShaped(
	"ceramics_decoration/monochrome_bricks/block",
	<ceramics:clay_hard:7> * 2, 
	[
		[<ore:ingotPorcelain>,	<ore:ingotPorcelain>,	<ore:ingotPorcelain>	], 
		[<ore:ingotPorcelain>,	<ore:dyeBlack>,			<ore:ingotPorcelain>	], 
		[<ore:ingotPorcelain>,	<ore:ingotPorcelain>,	<ore:ingotPorcelain>	]
	]
);

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
//	Artisan Workbenh recipes 
//=====================================================================================================================================================================================================

	
	//	Porcelin Brick block	_______________________________________________________________________________________________________________________________________________________________________
RecipeBuilder.get("mason")
	.setShaped([
		[<ore:ingotPorcelain>,	<ore:ingotPorcelain>	],
		[<ore:ingotPorcelain>,	<ore:ingotPorcelain>	]])
  	.setFluid( <liquid:mortar> * 100 )
	.addTool( <ore:artisansTrowel>, 2 )
	.addOutput( <ceramics:clay_hard> )
	.create();

	//	Clay Barrel	_______________________________________________________________________________________________________________________________________________________________________
RecipeBuilder.get("potter")
	.setShaped([
		[<ore:plateClayRaw>,	null,				<ore:plateClayRaw>	],
		[<ore:plateClayRaw>,	null,				<ore:plateClayRaw>	],
		[<ore:plateClayRaw>,	<ore:plateClayRaw>,	<ore:plateClayRaw>	]])
	.setFluid( <liquid:water> * 100	)
	.addTool( <ore:artisansTrowel> , 1 )
	.addOutput( <ceramics:clay_barrel_unfired> )
	.create();

	//	Clay Barrel Extension	_______________________________________________________________________________________________________________________________________________________________________
RecipeBuilder.get("potter")
	.setShaped([
		[<ore:plateClayRaw>,	null,	<ore:plateClayRaw>],
		[<ore:plateClayRaw>,	null,	<ore:plateClayRaw>]])
	.setFluid( <liquid:water> * 100 )
	.addTool( <ore:artisansTrowel> , 1 )
	.addOutput( <ceramics:clay_barrel_unfired:1> )
	.create();

	//	Porcelin barrel	_______________________________________________________________________________________________________________________________________________________________________
RecipeBuilder.get("potter")
	.setShaped([
		[<ore:brickPorcelain>,	null,					<ore:brickPorcelain>	],
		[<ore:brickPorcelain>,	null,					<ore:brickPorcelain>	],
		[<ore:brickPorcelain>,	<ore:brickPorcelain>,	<ore:brickPorcelain>	]])
	.setFluid( <liquid:water> * 100 )
	.addTool( <ore:artisansTrowel> , 1 )
	.addOutput( <ceramics:clay_barrel_unfired:2> )
	.create();

	//	Porcelin barrel extension	_______________________________________________________________________________________________________________________________________________________________________
RecipeBuilder.get("potter")
	.setShaped([
		[<ore:brickPorcelain>,	null,	<ore:brickPorcelain>	],
		[<ore:brickPorcelain>,	null,	<ore:brickPorcelain>	]])
	.setFluid( <liquid:water> * 100 )
	.addTool( <ore:artisansTrowel> , 1 )
	.addOutput( <ceramics:clay_barrel_unfired:3> )
	.create();
