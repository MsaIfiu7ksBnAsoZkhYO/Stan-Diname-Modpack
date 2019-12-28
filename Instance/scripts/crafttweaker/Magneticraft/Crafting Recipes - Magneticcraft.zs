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
		[<minecraft:planks>,	null,						<minecraft:planks>,	null,				null				],
		[<minecraft:fence>,		<magneticraft:crafting:6>,	<minecraft:fence>,	null,				null				],
		[<minecraft:fence>,		<magneticraft:crafting:6>,	<minecraft:fence>,	null,				null				],
		[<minecraft:planks>,	<minecraft:stick>,			<minecraft:planks>,	<minecraft:stick>,	<minecraft:planks>	],
		[<minecraft:stone>,		<minecraft:stone>,			<minecraft:stone>,	<minecraft:stone>,	<minecraft:stone>	]])
	.addOutput( <magneticraft:sluice_box> )
	.create();