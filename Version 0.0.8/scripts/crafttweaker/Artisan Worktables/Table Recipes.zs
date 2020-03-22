//=====================================================================================================================================================================================================	
//	Import-ant things
//=====================================================================================================================================================================================================


import mods.artisanworktables.builder.RecipeBuilder;


//=====================================================================================================================================================================================================	
//	Recipes for building the workbenches
//=====================================================================================================================================================================================================


	//	Basic Workstation	_______________________________________________________________________________________________________________________________________________________________________
recipes.addShaped(
	"Artisan Basic Workstation", 
	<artisanworktables:workstation:5>,
	[
		[<ore:plankWood>,	<ore:plankWood>	],
		[<ore:plankWood>,	<ore:plankWood>	]
	]
);
	//	Basic Workshop	_______________________________________________________________________________________________________________________________________________________________________
RecipeBuilder.get("basic")
	.setShaped([
		[<artisanworktables:workstation:5>,	<artisanworktables:workstation:5>,	<artisanworktables:workstation:5>	],
		[null,								<ore:chest>,						null								],
		[<ore:logWood>,						<ore:logWood>,						<ore:logWood>						]])
	.addOutput(<artisanworktables:workshop:5>)
	.create();
  

	//	Carpenter WorkStation	_______________________________________________________________________________________________________________________________________________________________________
RecipeBuilder.get("basic")
	.setShaped([
		[<ore:plankWood>,	<ore:plankWood>,					<ore:plankWood>	],
		[null,				<artisanworktables:workstation:5>,	null			],
		[<ore:logWood>,		<ore:logWood>,						<ore:logWood>	]])
	.addOutput(<artisanworktables:workstation:1>)
	.create();
	//	Carpenter WorkShop	_______________________________________________________________________________________________________________________________________________________________________
RecipeBuilder.get("basic")
	.setShaped([
		[<ore:plankWood>,	<ore:plankWood>,			<ore:plankWood>,			<ore:plankWood>,			<ore:plankWood>	],
		[<ore:plankWood>,	<ore:logWood>,				<ore:logWood>,				<ore:logWood>,				<ore:plankWood>	],
		[null,				<ore:logWood>,				<ore:chest>,				<ore:logWood>,				null			],
		[<ore:logWood>,		<ore:craftingTableWood>,	<ore:craftingTableWood>,	<ore:craftingTableWood>,	<ore:logWood>	],
		[<ore:logWood>,		<ore:logWood>,				<ore:logWood>,				<ore:logWood>,				<ore:logWood>	]])
	.addOutput( <artisanworktables:workshop:1> )
	.create();
	
	//	Potter Workstation	_______________________________________________________________________________________________________________________________________________________________________
RecipeBuilder.get("basic")
	.setShaped([
		[<ore:ingotBrick>,	<ore:hardenedClay>,					<ore:ingotBrick>	],
		[null,				<artisanworktables:workstation:5>,	null				],
		[<ore:logWood>,		<ore:logWood>,						<ore:logWood>		]])
	.addOutput( <artisanworktables:workstation:14> )
	.create();	
	//	Potter Workshop	_______________________________________________________________________________________________________________________________________________________________________
RecipeBuilder.get("basic")
	.setShaped([
		[<ore:stone>,			<ore:hardenedClay>,			<ore:hardenedClay>,			<ore:hardenedClay>,			<ore:stone>			],
		[<ore:hardenedClay>,	<ore:stone>,				<ore:stone>,				<ore:stone>,				<ore:hardenedClay>	],
		[null,					<ore:logWood>,				<ore:chest>,				<ore:logWood>,				null				],
		[<ore:logWood>,			<ore:craftingTableWood>,	<ore:craftingTableWood>,	<ore:craftingTableWood>,	<ore:logWood>		],
		[<ore:logWood>,			<ore:logWood>,				<ore:logWood>,				<ore:logWood>,				<ore:logWood>		]])
	.addOutput( <artisanworktables:workshop:14> )
	.create();


	//	Mason Workstation	_______________________________________________________________________________________________________________________________________________________________________
RecipeBuilder.get("basic")
	.setShaped([
		[<ore:ingotBrick>,	<ore:stone>,						<ore:ingotBrick>	],
		[null,				<artisanworktables:workstation:5>,	null				],
		[<ore:logWood>,		<ore:logWood>,						<ore:logWood>		]])
	.addOutput( <artisanworktables:workstation:2> )
	.create();
	//	Mason Workshop	_______________________________________________________________________________________________________________________________________________________________________
RecipeBuilder.get("basic")
	.setShaped([
		[<ore:ingotBrick>,	<ore:ingotBrick>,			<ore:ingotBrick>,			<ore:ingotBrick>,			<ore:ingotBrick>	],
		[<ore:ingotBrick>,	<ore:stone>,				<ore:stone>,				<ore:stone>,				<ore:ingotBrick>	],
		[null,				<ore:stone>,				<ore:chest>,				<ore:stone>,				null				],
		[<ore:logWood>,		<ore:craftingTableWood>,	<ore:craftingTableWood>,	<ore:craftingTableWood>,	<ore:logWood>		],
		[<ore:logWood>,		<ore:logWood>,				<ore:logWood>,				<ore:logWood>,				<ore:logWood>		]])
	.addOutput( <artisanworktables:workshop:2> )
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

	//Tanner's Workstation	_______________________________________________________________________________________________________________________________________________________________________
RecipeBuilder.get("basic")
	.setShaped([
		[<ore:leatherSheet>,	<ore:leatherSheet>,					<ore:leatherSheet>	],
		[null,					<artisanworktables:workstation:5>,	null				],
		[<ore:logWood>,			<ore:logWood>,						<ore:logWood>		]])
	.addOutput( <artisanworktables:workstation:13> )
	.create();
	//Tanner's Workshop	_______________________________________________________________________________________________________________________________________________________________________
RecipeBuilder.get("basic")
	.setShaped([
		[<ore:leather>,			<ore:leatherSheet>,			<ore:leatherSheet>,			<ore:leatherSheet>,			<ore:leather>		],
		[<ore:leatherSheet>,	<ore:plankWood>,			<ore:plankWood>,			<ore:plankWood>,			<ore:leatherSheet>	],
		[null,					<ore:logWood>,				<ore:chest>,				<ore:logWood>,				null				],
		[<ore:logWood>,			<ore:craftingTableWood>,	<ore:craftingTableWood>,	<ore:craftingTableWood>,	<ore:logWood>		],
		[<ore:logWood>,			<ore:logWood>,				<ore:logWood>,				<ore:logWood>,				<ore:logWood>		]])
	.addOutput( <artisanworktables:workshop:13> )
	.create();