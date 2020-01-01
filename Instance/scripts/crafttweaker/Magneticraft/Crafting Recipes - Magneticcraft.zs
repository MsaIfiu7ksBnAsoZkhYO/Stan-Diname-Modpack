//=====================================================================================================================================================================================================	
//	Import-ant things
//=====================================================================================================================================================================================================


import mods.artisanworktables.builder.RecipeBuilder;


//=====================================================================================================================================================================================================	
//	Base Stations
//=====================================================================================================================================================================================================


	//	Crushing Table	_______________________________________________________________________________________________________________________________________________________________________
RecipeBuilder.get("basic")
	.setShaped([
		[<ore:stone>,		<ore:stone>,		<ore:stone>,	<ore:stone>,		<ore:stone>		],
		[<ore:stone>,		<ore:stone>,		<ore:stone>,	<ore:stone>,		<ore:stone>		],
		[null,				<ore:plankWood>,	<ore:logWood>,	<ore:plankWood>,	null			],
		[null,				<ore:plankWood>,	<ore:logWood>,	<ore:plankWood>,	null			],
		[<ore:plankWood>,	<ore:logWood>,		<ore:logWood>,	<ore:logWood>,		<ore:plankWood>	]])
	.addOutput( <magneticraft:crushing_table> )
	.create();

	//	Sluice Box	_______________________________________________________________________________________________________________________________________________________________________
RecipeBuilder.get("basic")
	.setShaped([
		[<ore:plankWood>,	null,						<ore:plankWood>,	null,				null			],
		[<ore:fenceWood>,	<magneticraft:crafting:6>,	<ore:fenceWood>,	null,				null			],
		[<ore:fenceWood>,	<magneticraft:crafting:6>,	<ore:fenceWood>,	null,				null			],
		[<ore:plankWood>,	<ore:stickWood>,			<ore:plankWood>,	<ore:stickWood>,	<ore:plankWood>	],
		[<ore:stone>,		<ore:stone>,				<ore:stone>,		<ore:stone>,		<ore:stone>		]])
	.addOutput( <magneticraft:sluice_box> )
	.create();