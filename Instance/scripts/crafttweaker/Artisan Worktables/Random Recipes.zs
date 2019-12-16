import mods.artisanworktables.builder.RecipeBuilder;

//=====================================================================================================================================================================================================	
//	Mortar for mason table
//=====================================================================================================================================================================================================


	//	Mortar	_______________________________________________________________________________________________________________________________________________________________________
RecipeBuilder.get("mason")
	.setShaped([
		[<ore:sand>, <ore:sand>, 				null,			 	<ore:sand>, 				<ore:sand>	],
		[<ore:sand>, <contenttweaker:limedust>, <ore:stickWood>, 	<contenttweaker:limedust>,	<ore:sand>	],
		[null,		 null, 						<minecraft:bucket>,	null,						null		],
		[<ore:sand>, <contenttweaker:limedust>, null, 				<contenttweaker:limedust>,	<ore:sand>	],
		[<ore:sand>, <ore:sand>, 				null, 				<ore:sand>, 				<ore:sand>	]])
	.setFluid( <liquid:water> * 1000 )
	.addOutput( <forge:bucketfilled>.withTag({FluidName: "mortar", Amount: 1000}) )
	.create();
	
RecipeBuilder.get("mason")
	.setShaped([
		[<ore:sand>,	<ore:sand>,					null,					<ore:sand>,					<ore:sand>	],
		[<ore:sand>,	<contenttweaker:limedust>,	<ore:stickWood>,		<contenttweaker:limedust>,	<ore:sand>	],
		[null, 			null,						<ceramics:clay_bucket>, null, 						null		],
		[<ore:sand>,	<contenttweaker:limedust>,	null,					<contenttweaker:limedust>,	<ore:sand>	],
		[<ore:sand>,	<ore:sand>,					null,					<ore:sand>, 				<ore:sand>	]])
	.setFluid( <liquid:water> * 1000 )
	.addOutput( <ceramics:clay_bucket>.withTag({fluids: {FluidName: "mortar", Amount: 1000}}) )
	.create();
