#norun

//=====================================================================================================================================================================================================	
//	Import-ant things
//=====================================================================================================================================================================================================


import mods.artisanworktables.builder.RecipeBuilder;


//=====================================================================================================================================================================================================	
//	Custom fluids used in recipes
//=====================================================================================================================================================================================================


	//	Mortar for brickwork	_______________________________________________________________________________________________________________________________________________________________________
RecipeBuilder.get("basic")
	.setShaped([
		[<ore:sand>, <ore:sand>, 				null,			 	<ore:sand>, 				<ore:sand>	],
		[<ore:sand>, <contenttweaker:limedust>, null, 				<contenttweaker:limedust>,	<ore:sand>	],
		[null,		 null, 						<minecraft:bucket>,	null,						null		],
		[<ore:sand>, <contenttweaker:limedust>, null, 				<contenttweaker:limedust>,	<ore:sand>	],
		[<ore:sand>, <ore:sand>, 				null, 				<ore:sand>, 				<ore:sand>	]])
	.setFluid( <liquid:water> * 1000 )
	.addTool( <ore:partToolRod>, 0 )
	.addOutput( <forge:bucketfilled>.withTag({FluidName: "mortar", Amount: 1000}) )
	.create();
	
RecipeBuilder.get("basic")
	.setShaped([
		[<ore:sand>,	<ore:sand>,					null,					<ore:sand>,					<ore:sand>	],
		[<ore:sand>,	<contenttweaker:limedust>,	null,					<contenttweaker:limedust>,	<ore:sand>	],
		[null, 			null,						<ceramics:clay_bucket>, null, 						null		],
		[<ore:sand>,	<contenttweaker:limedust>,	null,					<contenttweaker:limedust>,	<ore:sand>	],
		[<ore:sand>,	<ore:sand>,					null,					<ore:sand>, 				<ore:sand>	]])
	.setFluid( <liquid:water> * 1000 )
	.addTool( <ore:partToolRod>, 0 )
	.addOutput( <ceramics:clay_bucket>.withTag({fluids: {FluidName: "mortar", Amount: 1000}}) )
	.create();

	//	mold sand for sand casting	_______________________________________________________________________________________________________________________________________________________________________
RecipeBuilder.get("basic")
	.setShapeless([
		<ore:sand>, 
		<ore:nuggetClay>, 
		<minecraft:bucket>
	])
	.setFluid( <liquid:water> * 250 )
	.addTool( <ore:partToolRod>, 0 )
	.addOutput( <forge:bucketfilled>.withTag({FluidName: "moldsand", Amount: 1000}) )
	.create();

RecipeBuilder.get("basic")
	.setShapeless([
		<ore:sand>, 
		<ore:nuggetClay>, 
		<ceramics:clay_bucket>
	])
	.setFluid( <liquid:water> * 250 )
	.addTool( <ore:partToolRod>, 0 )
	.addOutput( <ceramics:clay_bucket>.withTag({fluids: {FluidName: "moldsand", Amount: 1000}}) )
	.create();