//=====================================================================================================================================================================================================	
//	Import-ant things
//=====================================================================================================================================================================================================


import mods.artisanworktables.builder.RecipeBuilder;


//=====================================================================================================================================================================================================	
//	Recipes for building the workbenches
//=====================================================================================================================================================================================================


	//	Basic Workbench	_______________________________________________________________________________________________________________________________________________________________________
recipes.addShaped(
	"Basic Workshop", 
	<artisanworktables:workshop:5>,
	[
		[<ore:craftingTableWood>,	<ore:craftingTableWood>,	<ore:craftingTableWood>		],
		[null,						<ore:chest>,				null						],
		[<ore:logWood>,				<ore:logWood>,				<ore:logWood>				]
	]
);
  
	//	Mason Table	_______________________________________________________________________________________________________________________________________________________________________
RecipeBuilder.get("basic")
	.setShaped([
		[<ore:ingotBrick>,	<ore:ingotBrick>,			<ore:ingotBrick>,			<ore:ingotBrick>,			<ore:ingotBrick>	],
		[<ore:ingotBrick>,	<ore:stone>,				<ore:stone>,				<ore:stone>,				<ore:ingotBrick>	],
		[null,				<ore:stone>,				<ore:chest>,				<ore:stone>,				null				],
		[<ore:logWood>,		<ore:craftingTableWood>,	<ore:craftingTableWood>,	<ore:craftingTableWood>,	<ore:logWood>		],
		[<ore:logWood>,		<ore:logWood>,				<ore:logWood>,				<ore:logWood>,				<ore:logWood>		]])
	.addOutput( <artisanworktables:workshop:2> )
	.create();
	
	//	Carpenter Table	_______________________________________________________________________________________________________________________________________________________________________
RecipeBuilder.get("basic")
	.setShaped([
		[<ore:plankWood>,	<ore:plankWood>,			<ore:plankWood>,			<ore:plankWood>,			<ore:plankWood>	],
		[<ore:plankWood>,	<ore:logWood>,				<ore:logWood>,				<ore:logWood>,				<ore:plankWood>	],
		[null,				<ore:logWood>,				<ore:chest>,				<ore:logWood>,				null			],
		[<ore:logWood>,		<ore:craftingTableWood>,	<ore:craftingTableWood>,	<ore:craftingTableWood>,	<ore:logWood>	],
		[<ore:logWood>,		<ore:logWood>,				<ore:logWood>,				<ore:logWood>,				<ore:logWood>	]])
	.addOutput( <artisanworktables:workshop:1> )
	.create();
	
	//	Potter Table	_______________________________________________________________________________________________________________________________________________________________________
RecipeBuilder.get("basic")
	.setShaped([
		[<ore:stone>,			<ore:hardenedClay>,			<ore:hardenedClay>,			<ore:hardenedClay>,			<ore:stone>			],
		[<ore:hardenedClay>,	<ore:stone>,				<ore:stone>,				<ore:stone>,				<ore:hardenedClay>	],
		[null,					<ore:logWood>,				<ore:chest>,				<ore:logWood>,				null				],
		[<ore:logWood>,			<ore:craftingTableWood>,	<ore:craftingTableWood>,	<ore:craftingTableWood>,	<ore:logWood>		],
		[<ore:logWood>,			<ore:logWood>,				<ore:logWood>,				<ore:logWood>,				<ore:logWood>		]])
	.addOutput( <artisanworktables:workshop:14> )
	.create();