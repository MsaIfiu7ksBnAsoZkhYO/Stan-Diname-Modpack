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
	.setFluid( <liquid:mortar> * 250 )
	.addTool( <ore:artisansTrowel>, 5 )
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

	//	Tailor Table	_______________________________________________________________________________________________________________________________________________________________________
RecipeBuilder.get("basic")
	.setShaped([
		[<magneticraft:crafting:6>,	<magneticraft:crafting:6>,	<magneticraft:crafting:6>,	<magneticraft:crafting:6>,	<magneticraft:crafting:6>	],
		[<magneticraft:crafting:6>,	<ore:wool>,					<ore:wool>,					<ore:wool>,					<magneticraft:crafting:6>	],
		[null,						<ore:wool>,					<ore:chest>,				<ore:wool>,					null						],
		[<ore:logWood>,				<ore:craftingTableWood>,	<ore:craftingTableWood>,	<ore:craftingTableWood>,	<ore:logWood>				],
		[<ore:logWood>,				<ore:logWood>,				<ore:logWood>,				<ore:logWood>,				<ore:logWood>				]])
	.addOutput( <artisanworktables:workshop> )
	.create();
  
	//	Blacksmith Table	_______________________________________________________________________________________________________________________________________________________________________
RecipeBuilder.get("basic")
	.setShaped([
		[<ore:plateIron>,					<ore:plateIron>,			<ore:plateIron>,			<ore:plateIron>,			<ore:plateIron>						],
		[<ore:plateIron>,					<ore:blockSeared>,			<ore:blockSeared>,			<ore:blockSeared>,			<ore:plateIron>						],
		[null,								<ore:blockSeared>,			<ore:chest>,				<ore:blockSeared>,			null								],
		[<actuallyadditions:block_misc:4>,	<ore:craftingTableWood>,	<ore:craftingTableWood>,	<ore:craftingTableWood>,	<actuallyadditions:block_misc:4>	],
		[<ore:logWood>,						<ore:logWood>,				<ore:logWood>,				<ore:logWood>,				<ore:logWood>						]])
	.addOutput( <artisanworktables:workshop:3> )
	.create();

	//Engineer Table	_______________________________________________________________________________________________________________________________________________________________________
RecipeBuilder.get("basic")
	.setShaped([
		[<ore:plateTin>,					<ore:plateBronze>,			<ore:plateBronze>,			<ore:plateBronze>,			<ore:plateTin>						],
		[<ore:plateBronze>,					<quark:sturdy_stone>,		<quark:sturdy_stone>,		<quark:sturdy_stone>,		<ore:plateBronze>					],
		[null,								<quark:sturdy_stone>,		<minecraft:chest>,			<quark:sturdy_stone>,		null								],
		[<actuallyadditions:block_misc:4>,	<ore:craftingTableWood>,	<ore:craftingTableWood>,	<ore:craftingTableWood>,	<actuallyadditions:block_misc:4>	],
		[<ore:logWood>,						<ore:logWood>,				<ore:logWood>,				<ore:logWood>,				<ore:logWood>						]])
	.addOutput( <artisanworktables:workshop:6> )
	.create();

	//Tanner's Table	_______________________________________________________________________________________________________________________________________________________________________
RecipeBuilder.get("basic")
	.setShaped([
		[<ore:leather>,			<ore:leatherSheet>,			<ore:leatherSheet>,			<ore:leatherSheet>,			<ore:leather>		],
		[<ore:leatherSheet>,	<ore:plankWood>,			<ore:plankWood>,			<ore:plankWood>,			<ore:leatherSheet>	],
		[null,					<ore:logWood>,				<ore:chest>,				<ore:logWood>,				null				],
		[<ore:logWood>,			<ore:craftingTableWood>,	<ore:craftingTableWood>,	<ore:craftingTableWood>,	<ore:logWood>		],
		[<ore:logWood>,			<ore:logWood>,				<ore:logWood>,				<ore:logWood>,				<ore:logWood>		]])
	.addOutput( <artisanworktables:workshop:13> )
	.create();