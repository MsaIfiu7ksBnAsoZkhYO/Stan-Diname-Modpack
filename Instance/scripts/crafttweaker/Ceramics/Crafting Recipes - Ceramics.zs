//=====================================================================================================================================================================================================	
//	Alternate Porcelain recipe
//=====================================================================================================================================================================================================


	//	Unfired Porcelain	_______________________________________________________________________________________________________________________________________________________________________
recipes.addShapeless(
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
	<ceramics:unfired_clay:5>,
	[
		<ore:clayPorcelain>,
		<ore:toolClay>
	]
);

recipes.addShapeless(
	<contenttweaker:porcelain_brick> * 4, 
	[
		<ceramics:clay_soft>,
		<ore:toolClay>
	]
);

recipes.addShapeless(
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
	<ceramics:clay_slab>, 
	[
		[<ore:ingotPorcelain>,	<ore:ingotPorcelain>	]
	]);
	
recipes.addShaped(
	<ceramics:clay_hard>, 
	[
		[<ore:ingotPorcelain>,	<ore:ingotPorcelain>	],
		[<ore:ingotPorcelain>,	<ore:ingotPorcelain>	],
	]);

recipes.addShaped(
	<ceramics:clay_hard:7> * 2, 
	[
		[<ore:ingotPorcelain>,	<ore:ingotPorcelain>,	<ore:ingotPorcelain>	], 
		[<ore:ingotPorcelain>,	<ore:dyeBlack>,			<ore:ingotPorcelain>	], 
		[<ore:ingotPorcelain>,	<ore:ingotPorcelain>,	<ore:ingotPorcelain>	]
	]
);

recipes.addShaped(
	<ceramics:clay_hard:2> * 2, 
	[
		[<ore:ingotPorcelain>,	<ore:ingotPorcelain>,	<ore:ingotPorcelain>	], 
		[<ore:ingotPorcelain>,	<ore:dyeBlue>,			<ore:ingotPorcelain>	], 
		[<ore:ingotPorcelain>,	<ore:ingotPorcelain>,	<ore:ingotPorcelain>	]
	]
);





