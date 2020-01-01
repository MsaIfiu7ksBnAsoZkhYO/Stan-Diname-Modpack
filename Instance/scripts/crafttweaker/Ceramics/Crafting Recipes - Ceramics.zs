//=====================================================================================================================================================================================================	
//	Import-ant things
//=====================================================================================================================================================================================================


import mods.artisanworktables.builder.RecipeBuilder;


//=====================================================================================================================================================================================================	
//	Alternate Porcelain recipe
//=====================================================================================================================================================================================================


	//	Unfired Porcelain	_______________________________________________________________________________________________________________________________________________________________________
recipes.addShapeless(
	"ceramics_unfired_clay_ball_custom",
	<ceramics:unfired_clay:4> * 2, 
	[
		<contenttweaker:flintdust>,
		<ore:sand>,
		<ore:clay>
	]
);

//=====================================================================================================================================================================================================	
//	Clay Tool on porcelain bricks
//=====================================================================================================================================================================================================


recipes.remove(<ceramics:unfired_clay:8>);

recipes.addShapeless(
	"ceramics_unfired_Clay_Brick",
	<ceramics:unfired_clay:5>,
	[
		<ore:clayPorcelain>,
		<ore:toolClay>
	]
);

recipes.addShapeless(
	"ceramics_unfired_Clay_Brick_x4",
	<ceramics:unfired_clay:5> * 4, 
	[
		<ceramics:clay_soft>,
		<ore:toolClay>
	]
);

recipes.addShapeless(
	"ceramics_unfired_clay_plate",
	<ceramics:unfired_clay:8>, 
	[
		<ore:clay>,
		<ore:clay>,
		<ore:toolClay>
	]
);


//=====================================================================================================================================================================================================	
//	Fix default recipes to use oredict
//=====================================================================================================================================================================================================

	//	Remove Existing Recipes	_______________________________________________________________________________________________________________________________________________________________________
recipes.removeByRecipeName("ceramics:decoration/porcelain_bricks/slab");
recipes.removeByRecipeName("ceramics:decoration/porcelain_bricks/block");
recipes.removeByRecipeName("ceramics:decoration/monochrome_bricks/block");
recipes.removeByRecipeName("ceramics:decoration/marine_bricks/block");


	//	Add the recipes back in with oredict entry	_______________________________________________________________________________________________________________________________________________________________________
recipes.addShaped(
	"ceramics_decoration/porcelain_bricks/slab",
	<ceramics:clay_slab>, 
	[
		[<ore:ingotPorcelain>,	<ore:ingotPorcelain>	]
	]);
	
recipes.addShaped(
	"ceramics_decoration/porcelain_bricks/block",
	<ceramics:clay_hard>, 
	[
		[<ore:ingotPorcelain>,	<ore:ingotPorcelain>	],
		[<ore:ingotPorcelain>,	<ore:ingotPorcelain>	],
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
		[<ore:ingotPorcelain>,	<ore:ingotPorcelain>,	<ore:ingotPorcelain>	],
		[<ore:ingotPorcelain>,	<ore:ingotPorcelain>,	<ore:ingotPorcelain>	],
		[<ore:ingotPorcelain>,	<ore:ingotPorcelain>,	<ore:ingotPorcelain>	]])
  	.setFluid( <liquid:mortar> * 100 )
	.addTool( <ore:artisansTrowel>, 2 )
	.addOutput( <ceramics:clay_hard> )
	.create();




