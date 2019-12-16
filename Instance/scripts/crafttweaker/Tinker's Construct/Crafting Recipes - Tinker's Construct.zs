import mods.artisanworktables.builder.RecipeBuilder;

/*

	//	Template	_______________________________________________________________________________________________________________________________________________________________________
RecipeBuilder.get("basic")
	.setShaped([
		[null,	null,	null, 	null,	null	],
		[null,	null,	null,	null,	null	],
		[null, 	null, 	null,	null, 	null	],
		[null, 	null, 	null, 	null,	null	],
		[null, 	null, 	null, 	null, 	null	]])
	.setFluid( <liquid:water> * 250 )
	.addOutput( <> )
	.addTool( <ore:artisansHammer>, 10 )
	.create();
	
*/


//=====================================================================================================================================================================================================	
//	Tool Tables
//=====================================================================================================================================================================================================


	//	Crafting Station	_______________________________________________________________________________________________________________________________________________________________________
RecipeBuilder.get("basic")
	.setShaped([
		[null, 				null, 			null, 				null,		null			],
		[<ore:fenceWood>,	<ore:slabWood>,	<ore:slabWood>,	<ore:slabWood>,	<ore:fenceWood>	],
		[<ore:fenceWood>, 	null, 			null, 			null, 			<ore:fenceWood>	],
		[<ore:fenceWood>, 	null, 			null, 			null,			<ore:fenceWood>	],
		[<ore:fenceWood>, 	null, 			null, 			null, 			<ore:fenceWood>	]])
	.addOutput( <tconstruct:tooltables> )
	.create();

	//	Stencil Table	______________________________________________________________________________________________________________________________________________________________________
RecipeBuilder.get("basic")
	.setShaped([
		[null, 				<ore:pattern>,	<ore:pattern>,	<ore:pattern>,	null			],
		[<ore:fenceWood>,	<ore:slabWood>,	<ore:slabWood>,	<ore:slabWood>,	<ore:fenceWood>	],
		[<ore:fenceWood>, 	null, 			null, 			null, 			<ore:fenceWood>	],
		[<ore:fenceWood>, 	null, 			null, 			null,			<ore:fenceWood>	],
		[<ore:fenceWood>, 	null, 			null, 			null, 			<ore:fenceWood>	]])
	.addOutput( <tconstruct:tooltables:1>.withTag({textureBlock: {id: "minecraft:planks", Count: 1 as byte, Damage: 0 as short}}) )
	.create();

	//	Pattern Chest	______________________________________________________________________________________________________________________________________________________________________________________________________
RecipeBuilder.get("basic")
	.setShaped([
		[<ore:plankWood>, 	<ore:slabWood>,	<ore:slabWood>,	<ore:slabWood>,	<ore:plankWood>	],
		[<ore:plankWood>,	<ore:pattern>,	<ore:chest>,	<ore:pattern>,	<ore:plankWood>	],
		[<ore:plankWood>, 	<ore:pattern>, 	<ore:chest>, 	<ore:pattern>, 	<ore:plankWood>	],
		[<ore:plankWood>, 	<ore:slabWood>,	<ore:slabWood>,	<ore:slabWood>,	<ore:plankWood>	],
		[<ore:fenceWood>, 	null, 			null, 			null, 			<ore:fenceWood>	]])
	.addOutput( <tconstruct:tooltables:4> )
	.create();

	//	Part Builder	______________________________________________________________________________________________________________________________________________________________________________________________________
val platePattern = <tconstruct:pattern>.withTag({PartType: "tconstruct:large_plate"});
RecipeBuilder.get("basic")
	.setShaped([
		[null, 					platePattern,	platePattern,	platePattern,	null					],
		[<quark:bark_oak_wall>,	<ore:slabWood>,	<ore:slabWood>,	<ore:slabWood>,	<quark:bark_oak_wall>	],
		[<quark:bark_oak_wall>, null, 			null, 			null, 			<quark:bark_oak_wall>	],
		[<quark:bark_oak_wall>, null, 			null, 			null,			<quark:bark_oak_wall>	],
		[<quark:bark_oak_wall>, null, 			null, 			null, 			<quark:bark_oak_wall>	]])
	.addOutput(<tconstruct:tooltables:2>.withTag({textureBlock: {id: "minecraft:log", Count: 1 as byte, Damage: 0 as short}}))
	.create();

	//	Part Chest	______________________________________________________________________________________________________________________________________________________________________________________________________
val bindPattern = <tconstruct:pattern>.withTag({PartType: "tconstruct:binding"});
RecipeBuilder.get("basic")
	.setShaped([
		[<ore:plankWood>, 	<ore:slabWood>,	<ore:slabWood>,	<ore:slabWood>,	<ore:plankWood>	],
		[<ore:plankWood>,	bindPattern,	<ore:chest>,	bindPattern,	<ore:plankWood>	],
		[<ore:plankWood>, 	bindPattern, 	<ore:chest>, 	bindPattern, 	<ore:plankWood>	],
		[<ore:plankWood>, 	<ore:slabWood>,	<ore:slabWood>,	<ore:slabWood>,	<ore:plankWood>	],
		[<ore:fenceWood>, 	null, 			null, 			null, 			<ore:fenceWood>	]])
	.addOutput( <tconstruct:tooltables:5> )
	.create();
	
	//	Tool Station	______________________________________________________________________________________________________________________________________________________________________
val rodPattern = <tconstruct:pattern>.withTag({PartType: "tconstruct:tool_rod"});
RecipeBuilder.get("basic")
	.setShaped([
		[null, 				rodPattern,		rodPattern,		rodPattern,		null			],
		[<ore:fenceWood>,	<ore:slabWood>,	<ore:slabWood>,	<ore:slabWood>,	<ore:fenceWood>	],
		[<ore:fenceWood>, 	null, 			null, 			null, 			<ore:fenceWood>	],
		[<ore:fenceWood>, 	null, 			null, 			null,			<ore:fenceWood>	],
		[<ore:fenceWood>, 	null, 			null, 			null, 			<ore:fenceWood>	]])
	.addOutput( <tconstruct:tooltables:3> )
	.create();
	
	//	Armor Station	______________________________________________________________________________________________________________________________________________________________________
val armorPattern = <tconstruct:pattern>.withTag({PartType: "conarm:armor_plate"});
RecipeBuilder.get("basic")
	.setShaped([
		[null, 				armorPattern,	armorPattern,	armorPattern,	null			],
		[<ore:fenceWood>,	<ore:slabWood>,	<ore:slabWood>,	<ore:slabWood>,	<ore:fenceWood>	],
		[<ore:fenceWood>, 	null, 			null, 			null, 			<ore:fenceWood>	],
		[<ore:fenceWood>, 	null, 			null, 			null,			<ore:fenceWood>	],
		[<ore:fenceWood>, 	null, 			null, 			null, 			<ore:fenceWood>	]])
	.addOutput( <conarm:armorstation> )
	.create();
	
	
//=====================================================================================================================================================================================================	
//	Seared and Smeltery
//=====================================================================================================================================================================================================
	

	//	Seared Brick Block	_______________________________________________________________________________________________________________________________________________________________________
RecipeBuilder.get("mason")
	.setShaped([
		[null,	null,					null, 					null,					null	],
		[null,	<ore:ingotBrickSeared>,	<ore:ingotBrickSeared>,	<ore:ingotBrickSeared>,	null	],
		[null, 	<ore:ingotBrickSeared>,	<ore:ingotBrickSeared>,	<ore:ingotBrickSeared>, null	],
		[null, 	<ore:ingotBrickSeared>, <ore:ingotBrickSeared>, <ore:ingotBrickSeared>,	null	],
		[null, 	null, 					null,				 	null, 					null	]])
	.setFluid( <liquid:mortar> * 100 )
	.addOutput( <tconstruct:seared:3> )
	.addTool( <ore:artisansTrowel>, 2 )
	.create();
	
	//	Smeltery Drain	_______________________________________________________________________________________________________________________________________________________________________
RecipeBuilder.get("mason")
	.setShaped([
		[<ore:ingotBrickSeared>,	<ore:ingotBrickSeared>,	<tconstruct:channel>,	<ore:ingotBrickSeared>,	<ore:ingotBrickSeared>	],
		[<ore:ingotBrickSeared>,	<ore:ingotBrickSeared>,	<tconstruct:channel>,	<ore:ingotBrickSeared>,	<ore:ingotBrickSeared>	],
		[<ore:ingotBrickSeared>, 	<ore:ingotBrickSeared>,	<tconstruct:channel>,	<ore:ingotBrickSeared>, <ore:ingotBrickSeared>	],
		[<ore:ingotBrickSeared>, 	<ore:ingotBrickSeared>, <tconstruct:channel>,	<ore:ingotBrickSeared>,	<ore:ingotBrickSeared>	],
		[<ore:ingotBrickSeared>, 	<ore:ingotBrickSeared>, <tconstruct:channel>,	<ore:ingotBrickSeared>, <ore:ingotBrickSeared>	]])
	.setFluid( <liquid:mortar> * 250 )
	.addOutput( <tconstruct:smeltery_io> )
	.addTool( <ore:artisansTrowel>, 5 )
	.create();
	
	//	Seared Faucet	_______________________________________________________________________________________________________________________________________________________________________
RecipeBuilder.get("mason")
	.setShaped([
		[null,	null,					null, 					null,					null	],
		[null,	null,					null, 					null,					null	],
		[null, 	<ore:ingotBrickSeared>,	null,					<ore:ingotBrickSeared>, null	],
		[null, 	<ore:ingotBrickSeared>, <ore:ingotBrickSeared>,	<ore:ingotBrickSeared>,	null	],
		[null,	null,					null, 					null,					null	]])
	.setFluid( <liquid:mortar> * 50 )
	.addOutput( <tconstruct:faucet> )
	.addTool( <ore:artisansTrowel>, 1 )
	.create();
	
	//	Casting Channel	_______________________________________________________________________________________________________________________________________________________________________
RecipeBuilder.get("mason")
	.setShaped([
		[null,						null,					null, 					null,					null					],
		[null,						null,					null, 					null,					null					],
		[<ore:ingotBrickSeared>, 	null,					null,					null, 					<ore:ingotBrickSeared>	],
		[<ore:ingotBrickSeared>, 	<ore:ingotBrickSeared>, <ore:ingotBrickSeared>,	<ore:ingotBrickSeared>,	<ore:ingotBrickSeared>	],
		[null,						null,					null, 					null,					null					]])
	.setFluid( <liquid:mortar> * 50 )
	.addOutput( <tconstruct:channel> )
	.addTool( <ore:artisansTrowel>, 1 )
	.create();
	
	//	Seared Tank	_______________________________________________________________________________________________________________________________________________________________________
RecipeBuilder.get("mason")
	.setShaped([
		[<ore:ingotBrickSeared>,	<ore:ingotBrickSeared>,	<ore:ingotBrickSeared>,	<ore:ingotBrickSeared>,	<ore:ingotBrickSeared>	],
		[<ore:ingotBrickSeared>,	<ore:ingotBrickSeared>,	<ore:blockGlass>,		<ore:ingotBrickSeared>,	<ore:ingotBrickSeared>	],
		[<ore:ingotBrickSeared>, 	<ore:ingotBrickSeared>,	<ore:blockGlass>,		<ore:ingotBrickSeared>, <ore:ingotBrickSeared>	],
		[<ore:ingotBrickSeared>, 	<ore:ingotBrickSeared>,	<ore:blockGlass>,		<ore:ingotBrickSeared>,	<ore:ingotBrickSeared>	],
		[<ore:ingotBrickSeared>, 	<ore:ingotBrickSeared>,	<ore:ingotBrickSeared>,	<ore:ingotBrickSeared>, <ore:ingotBrickSeared>	]])
	.setFluid( <liquid:mortar> * 250 )
	.addOutput( <tconstruct:seared_tank> )
	.addTool( <ore:artisansTrowel>, 5 )
	.create();
	
	//	Seared glass	_______________________________________________________________________________________________________________________________________________________________________
RecipeBuilder.get("mason")
	.setShaped([
		[null,						<ore:ingotBrickSeared>,	<ore:ingotBrickSeared>,	<ore:ingotBrickSeared>,	null					],
		[<ore:ingotBrickSeared>,	<ore:blockGlass>,		<ore:blockGlass>,		<ore:blockGlass>,		<ore:ingotBrickSeared>	],
		[<ore:ingotBrickSeared>, 	<ore:blockGlass>,		<ore:blockGlass>,		<ore:blockGlass>, 		<ore:ingotBrickSeared>	],
		[<ore:ingotBrickSeared>, 	<ore:blockGlass>, 		<ore:blockGlass>,		<ore:blockGlass>,		<ore:ingotBrickSeared>	],
		[null, 						<ore:ingotBrickSeared>, <ore:ingotBrickSeared>,	<ore:ingotBrickSeared>, null					]])
	.setFluid( <liquid:mortar> * 200 )
	.addOutput( <tconstruct:seared_glass> )
	.addTool( <ore:artisansTrowel>, 3 )
	.create();
	
	//	Seared Window	_______________________________________________________________________________________________________________________________________________________________________
RecipeBuilder.get("mason")
	.setShaped([
		[<ore:ingotBrickSeared>,	<ore:ingotBrickSeared>,	<ore:blockGlass>,	<ore:ingotBrickSeared>,	<ore:ingotBrickSeared>	],
		[<ore:ingotBrickSeared>,	<ore:blockGlass>,		<ore:blockGlass>,	<ore:blockGlass>,		<ore:ingotBrickSeared>	],
		[<ore:ingotBrickSeared>, 	<ore:blockGlass>,		<ore:blockGlass>,	<ore:blockGlass>, 		<ore:ingotBrickSeared>	],
		[<ore:ingotBrickSeared>, 	<ore:blockGlass>, 		<ore:blockGlass>,	<ore:blockGlass>,		<ore:ingotBrickSeared>	],
		[<ore:ingotBrickSeared>, 	<ore:ingotBrickSeared>, <ore:blockGlass>,	<ore:ingotBrickSeared>, <ore:ingotBrickSeared>	]])
	.setFluid( <liquid:mortar> * 250 )
	.addOutput( <tconstruct:seared_tank:2> )
	.addTool( <ore:artisansTrowel>, 5 )
	.create();
	
	//	Seared Gauge	_______________________________________________________________________________________________________________________________________________________________________
RecipeBuilder.get("mason")
	.setShaped([
		[<ore:ingotBrickSeared>,	<ore:ingotBrickSeared>,	<ore:blockGlass>,	<ore:ingotBrickSeared>,	<ore:ingotBrickSeared>	],
		[<ore:ingotBrickSeared>,	<ore:blockGlass>,		<ore:blockGlass>,	<ore:blockGlass>,		<ore:ingotBrickSeared>	],
		[<ore:ingotBrickSeared>, 	<ore:ingotBrickSeared>,	<ore:blockGlass>,	<ore:ingotBrickSeared>, <ore:ingotBrickSeared>	],
		[<ore:ingotBrickSeared>, 	<ore:blockGlass>, 		<ore:blockGlass>,	<ore:blockGlass>,		<ore:ingotBrickSeared>	],
		[<ore:ingotBrickSeared>, 	<ore:ingotBrickSeared>, <ore:blockGlass>,	<ore:ingotBrickSeared>, <ore:ingotBrickSeared>	]])
	.setFluid( <liquid:mortar> * 250 )
	.addOutput( <tconstruct:seared_tank:1> )
	.addTool( <ore:artisansTrowel>, 5 )
	.create();
	
	//	Casting Table	_______________________________________________________________________________________________________________________________________________________________________
RecipeBuilder.get("mason")
	.setShaped([
		[<ore:ingotBrickSeared>,	null,					null,					null,					<ore:ingotBrickSeared>	],
		[<ore:ingotBrickSeared>,	<ore:ingotBrickSeared>,	<ore:ingotBrickSeared>,	<ore:ingotBrickSeared>,	<ore:ingotBrickSeared>	],
		[<ore:ingotBrickSeared>, 	null,					null,					null,					<ore:ingotBrickSeared>	],
		[<ore:ingotBrickSeared>, 	null,					null,					null,					<ore:ingotBrickSeared>	],
		[<ore:ingotBrickSeared>, 	null,					null,					null,					<ore:ingotBrickSeared>	]])
	.setFluid( <liquid:mortar> * 100 )
	.addOutput( <tconstruct:casting> )
	.addTool( <ore:artisansTrowel>, 2 )
	.create();
	
	//	Casting Basin	_______________________________________________________________________________________________________________________________________________________________________
RecipeBuilder.get("mason")
	.setShaped([
		[<ore:ingotBrickSeared>,	null,					null,					null,					<ore:ingotBrickSeared>	],
		[<ore:ingotBrickSeared>,	null,					null,					null,					<ore:ingotBrickSeared>	],
		[<ore:ingotBrickSeared>, 	null,					null,					null,					<ore:ingotBrickSeared>	],
		[<ore:ingotBrickSeared>, 	<ore:ingotBrickSeared>,	<ore:ingotBrickSeared>,	<ore:ingotBrickSeared>,	<ore:ingotBrickSeared>	],
		[<ore:ingotBrickSeared>, 	null,					null,					null,					<ore:ingotBrickSeared>	]])
	.setFluid( <liquid:mortar> * 100 )
	.addOutput( <tconstruct:casting:1> )
	.addTool( <ore:artisansTrowel>, 2 )
	.create();
	
	//	Seared Heater	_______________________________________________________________________________________________________________________________________________________________________
RecipeBuilder.get("mason")
	.setShaped([
		[null,						<ore:ingotBrickSeared>,	<ore:ingotBrickSeared>,	<ore:ingotBrickSeared>,	null					],
		[<ore:ingotBrickSeared>,	<ore:ingotBrickSeared>,	<ore:ingotBrickSeared>,	<ore:ingotBrickSeared>,	<ore:ingotBrickSeared>	],
		[<ore:ingotBrickSeared>, 	<ore:ingotBrickSeared>,	<ore:ingotBrickSeared>,	<ore:ingotBrickSeared>, <ore:ingotBrickSeared>	],
		[<ore:ingotBrickSeared>, 	<minecraft:furnace>,	<minecraft:furnace>,	<minecraft:furnace>,	<ore:ingotBrickSeared>	],
		[<ore:ingotBrickSeared>, 	<minecraft:furnace>,	<minecraft:furnace>,	<minecraft:furnace>, 	<ore:ingotBrickSeared>	]])
	.setFluid( <liquid:mortar> * 250 )
	.addOutput( <tcomplement:melter:8> )
	.addTool( <ore:artisansTrowel>, 5 )
	.create();
	
	//	Alloy Tank	_______________________________________________________________________________________________________________________________________________________________________
RecipeBuilder.get("mason")
	.setShaped([
		[<tconstruct:seared_tank:1>,	<tconstruct:seared_tank:1>,	<tconstruct:faucet>,	<tconstruct:seared_tank:1>,	<tconstruct:seared_tank:1>,	],
		[<tconstruct:seared_tank:1>,	null,						<tconstruct:channel>,	null,					<tconstruct:seared_tank:1>,	],
		[<tconstruct:faucet>, 			<tconstruct:channel>,		null,					<tconstruct:channel>,	<tconstruct:faucet>, 		],
		[<tconstruct:seared_tank:1>, 	null,						<tconstruct:channel>,	null,					<tconstruct:seared_tank:1>,	],
		[<tconstruct:seared_tank:1>, 	<tconstruct:seared_tank:1>,	<tconstruct:faucet>,	<tconstruct:seared_tank:1>, 	<tconstruct:seared_tank:1>,	]])
	.setFluid( <liquid:mortar> * 250 )
	.addOutput( <tcomplement:alloy_tank> )
	.addTool( <ore:artisansTrowel>, 5 )
	.create();
	
	//	Melter	_______________________________________________________________________________________________________________________________________________________________________
RecipeBuilder.get("mason")
	.setShaped([
		[<tconstruct:seared_tank:1>,	<tconstruct:seared_tank:1>,	<tconstruct:seared_tank:1>,	<tconstruct:seared_tank:1>,	<tconstruct:seared_tank:1>	],
		[<tconstruct:seared_tank:1>,	<tconstruct:seared_tank:1>,	<tconstruct:seared_tank:1>,	<tconstruct:seared_tank:1>,	<tconstruct:seared_tank:1>	],
		[<ore:ingotBrickSeared>, 		<ore:ingotBrickSeared>,		<ore:ingotBrickSeared>,		<ore:ingotBrickSeared>, 	<ore:ingotBrickSeared>		],
		[<ore:ingotBrickSeared>, 		<ore:ingotBrickSeared>,		<ore:ingotBrickSeared>,		<ore:ingotBrickSeared>,		<ore:ingotBrickSeared>		],
		[<ore:ingotBrickSeared>, 		<ore:ingotBrickSeared>,		<ore:ingotBrickSeared>,		<ore:ingotBrickSeared>, 	<ore:ingotBrickSeared>		]])
	.setFluid( <liquid:mortar> * 250 )
	.addOutput( <tcomplement:melter> )
	.addTool( <ore:artisansTrowel>, 5 )
	.create();
	
	//	Seared Furnace Controller	_______________________________________________________________________________________________________________________________________________________________________
RecipeBuilder.get("mason")
	.setShaped([
		[<ore:ingotBrickSeared>,	<ore:ingotBrickSeared>,	<ore:ingotBrickSeared>,	<ore:ingotBrickSeared>,	<ore:ingotBrickSeared>	],
		[<ore:ingotBrickSeared>,	<tcomplement:melter:8>,	<tcomplement:melter:8>,	<tcomplement:melter:8>,	<ore:ingotBrickSeared>	],
		[<ore:ingotBrickSeared>, 	<tcomplement:melter:8>,	<tcomplement:melter:8>,	<tcomplement:melter:8>, <ore:ingotBrickSeared>	],
		[<ore:ingotBrickSeared>, 	<tcomplement:melter:8>,	<tcomplement:melter:8>,	<tcomplement:melter:8>,	<ore:ingotBrickSeared>	],
		[<ore:ingotBrickSeared>, 	<ore:ingotBrickSeared>,	<ore:ingotBrickSeared>,	<ore:ingotBrickSeared>, <ore:ingotBrickSeared>	]])
	.setFluid( <liquid:mortar> * 500 )
	.addOutput( <tconstruct:seared_furnace_controller> )
	.addTool( <ore:artisansTrowel>, 10 )
	.create();

	//	Tinker Tank Controller	_______________________________________________________________________________________________________________________________________________________________________
RecipeBuilder.get("mason")
	.setShaped([
		[<ore:ingotBrickSeared>,	<ore:ingotBrickSeared>,		<ore:ingotBrickSeared>,		<ore:ingotBrickSeared>,		<ore:ingotBrickSeared>	],
		[<ore:ingotBrickSeared>,	<tconstruct:seared_tank>,	<tconstruct:seared_tank>,	<tconstruct:seared_tank>,	<ore:ingotBrickSeared>	],
		[<ore:ingotBrickSeared>, 	<tconstruct:seared_tank>,	<tconstruct:seared_tank>,	<tconstruct:seared_tank>, 	<ore:ingotBrickSeared>	],
		[<ore:ingotBrickSeared>, 	<tconstruct:seared_tank>,	<tconstruct:seared_tank>,	<tconstruct:seared_tank>,	<ore:ingotBrickSeared>	],
		[<ore:ingotBrickSeared>, 	<ore:ingotBrickSeared>,		<ore:ingotBrickSeared>,		<ore:ingotBrickSeared>, 	<ore:ingotBrickSeared>	]])
	.setFluid( <liquid:mortar> * 500 )
	.addOutput( <tconstruct:tinker_tank_controller> )
	.addTool( <ore:artisansTrowel>, 10 )
	.create();
	
	//	Smeltery Controller	_______________________________________________________________________________________________________________________________________________________________________
val tinkertank = <tconstruct:tinker_tank_controller>;

RecipeBuilder.get("mason")
	.setShaped([
		[<ore:ingotBrickSeared>,	<ore:ingotBrickSeared>,		<ore:ingotBrickSeared>,		<ore:ingotBrickSeared>,		<ore:ingotBrickSeared>	],
		[<ore:ingotBrickSeared>,	<tcomplement:alloy_tank>,	null,						<tcomplement:alloy_tank>,	<ore:ingotBrickSeared>	],
		[<ore:ingotBrickSeared>, 	null,						tinkertank,					null, 						<ore:ingotBrickSeared>	],
		[<ore:ingotBrickSeared>, 	<tcomplement:melter>,		null,						<tcomplement:melter>,		<ore:ingotBrickSeared>	],
		[<ore:ingotBrickSeared>, 	<ore:ingotBrickSeared>,		<ore:ingotBrickSeared>,		<ore:ingotBrickSeared>, 	<ore:ingotBrickSeared>	]])
	.setFluid( <liquid:mortar> * 500 )
	.addOutput( <tconstruct:smeltery_controller> )
	.addTool( <ore:artisansTrowel>, 10 )
	.addTool( <saltmod:salt_pinch>, 0 )
	.create();


//=====================================================================================================================================================================================================	
//	Porcelain
//=====================================================================================================================================================================================================


<ore:ingotPorcelain>.add(<ceramics:unfired_clay:5>);

	//	Porcelain Seared Faucet	_______________________________________________________________________________________________________________________________________________________________________
RecipeBuilder.get("mason")
	.setShaped([
		[null,	null,					null, 					null,					null	],
		[null,	null,					null, 					null,					null	],
		[null, 	<ore:ingotPorcelain>,	null,					<ore:ingotPorcelain>, 	null	],
		[null, 	<ore:ingotPorcelain>, 	<ore:ingotPorcelain>,	<ore:ingotPorcelain>,	null	],
		[null,	null,					null, 					null,					null	]])
	.setFluid( <liquid:mortar> * 50 )
	.addOutput( <ceramics:faucet> )
	.addTool( <ore:artisansTrowel>, 1 )
	.create();
	
	//	Porcelain Casting Channel	_______________________________________________________________________________________________________________________________________________________________________
RecipeBuilder.get("mason")
	.setShaped([
		[null,						null,					null, 					null,					null					],
		[null,						null,					null, 					null,					null					],
		[<ore:ingotPorcelain>, 		null,					null,					null, 					<ore:ingotPorcelain>	],
		[<ore:ingotPorcelain>, 		<ore:ingotPorcelain>, 	<ore:ingotPorcelain>,	<ore:ingotPorcelain>,	<ore:ingotPorcelain>	],
		[null,						null,					null, 					null,					null					]])
	.setFluid( <liquid:mortar> * 50 )
	.addOutput( <ceramics:channel> )
	.addTool( <ore:artisansTrowel>, 1 )
	.create();
	
	//	Porcelain Tank	_______________________________________________________________________________________________________________________________________________________________________
RecipeBuilder.get("mason")
	.setShaped([
		[<ore:ingotPorcelain>,	<ore:ingotPorcelain>,	<ore:ingotPorcelain>,	<ore:ingotPorcelain>,	<ore:ingotPorcelain>	],
		[<ore:ingotPorcelain>,	<ore:ingotPorcelain>,	<ore:blockGlass>,		<ore:ingotPorcelain>,	<ore:ingotPorcelain>	],
		[<ore:ingotPorcelain>, 	<ore:ingotPorcelain>,	<ore:blockGlass>,		<ore:ingotPorcelain>, 	<ore:ingotPorcelain>	],
		[<ore:ingotPorcelain>, 	<ore:ingotPorcelain>,	<ore:blockGlass>,		<ore:ingotPorcelain>,	<ore:ingotPorcelain>	],
		[<ore:ingotPorcelain>, 	<ore:ingotPorcelain>,	<ore:ingotPorcelain>,	<ore:ingotPorcelain>,	<ore:ingotPorcelain>	]])
	.setFluid( <liquid:mortar> * 250 )
	.addOutput( <tcomplement:porcelain_tank> )
	.addTool( <ore:artisansTrowel>, 5 )
	.create();
		
	//	Porcelain Window	_______________________________________________________________________________________________________________________________________________________________________
RecipeBuilder.get("mason")
	.setShaped([
		[<ore:ingotPorcelain>,	<ore:ingotPorcelain>,	<ore:blockGlass>,	<ore:ingotPorcelain>,	<ore:ingotPorcelain>	],
		[<ore:ingotPorcelain>,	<ore:blockGlass>,		<ore:blockGlass>,	<ore:blockGlass>,		<ore:ingotPorcelain>	],
		[<ore:ingotPorcelain>, 	<ore:blockGlass>,		<ore:blockGlass>,	<ore:blockGlass>, 		<ore:ingotPorcelain>	],
		[<ore:ingotPorcelain>, 	<ore:blockGlass>, 		<ore:blockGlass>,	<ore:blockGlass>,		<ore:ingotPorcelain>	],
		[<ore:ingotPorcelain>, 	<ore:ingotPorcelain>, 	<ore:blockGlass>,	<ore:ingotPorcelain>, 	<ore:ingotPorcelain>	]])
	.setFluid( <liquid:mortar> * 250 )
	.addOutput( <tcomplement:porcelain_tank:2> )
	.addTool( <ore:artisansTrowel>, 5 )
	.create();
	
	//	Porcelain Gauge	_______________________________________________________________________________________________________________________________________________________________________
RecipeBuilder.get("mason")
	.setShaped([
		[<ore:ingotPorcelain>,	<ore:ingotPorcelain>,	<ore:blockGlass>,	<ore:ingotPorcelain>,	<ore:ingotPorcelain>	],
		[<ore:ingotPorcelain>,	<ore:blockGlass>,		<ore:blockGlass>,	<ore:blockGlass>,		<ore:ingotPorcelain>	],
		[<ore:ingotPorcelain>, 	<ore:ingotPorcelain>,	<ore:blockGlass>,	<ore:ingotPorcelain>,	<ore:ingotPorcelain>	],
		[<ore:ingotPorcelain>, 	<ore:blockGlass>, 		<ore:blockGlass>,	<ore:blockGlass>,		<ore:ingotPorcelain>	],
		[<ore:ingotPorcelain>, 	<ore:ingotPorcelain>, 	<ore:blockGlass>,	<ore:ingotPorcelain>,	<ore:ingotPorcelain>	]])
	.setFluid( <liquid:mortar> * 250 )
	.addOutput( <tcomplement:porcelain_tank:1> )
	.addTool( <ore:artisansTrowel>, 5 )
	.create();
	
	//	Porcelain Casting Table	_______________________________________________________________________________________________________________________________________________________________________
RecipeBuilder.get("mason")
	.setShaped([
		[<ore:ingotPorcelain>,	null,					null,					null,					<ore:ingotPorcelain>	],
		[<ore:ingotPorcelain>,	<ore:ingotPorcelain>,	<ore:ingotPorcelain>,	<ore:ingotPorcelain>,	<ore:ingotPorcelain>	],
		[<ore:ingotPorcelain>, 	null,					null,					null,					<ore:ingotPorcelain>	],
		[<ore:ingotPorcelain>, 	null,					null,					null,					<ore:ingotPorcelain>	],
		[<ore:ingotPorcelain>, 	null,					null,					null,					<ore:ingotPorcelain>	]])
	.setFluid( <liquid:mortar> * 100 )
	.addOutput( <tcomplement:porcelain_casting> )
	.addTool( <ore:artisansTrowel>, 2 )
	.create();
	
	//	Porcelain Casting Basin	_______________________________________________________________________________________________________________________________________________________________________
RecipeBuilder.get("mason")
	.setShaped([
		[<ore:ingotPorcelain>,	null,					null,					null,					<ore:ingotPorcelain>	],
		[<ore:ingotPorcelain>,	null,					null,					null,					<ore:ingotPorcelain>	],
		[<ore:ingotPorcelain>, 	null,					null,					null,					<ore:ingotPorcelain>	],
		[<ore:ingotPorcelain>, 	<ore:ingotPorcelain>,	<ore:ingotPorcelain>,	<ore:ingotPorcelain>,	<ore:ingotPorcelain>	],
		[<ore:ingotPorcelain>, 	null,					null,					null,					<ore:ingotPorcelain>	]])
	.setFluid( <liquid:mortar> * 100 )
	.addOutput( <tcomplement:porcelain_casting:1> )
	.addTool( <ore:artisansTrowel>, 2 )
	.create();
	
	//	Porcelain Heater	_______________________________________________________________________________________________________________________________________________________________________
RecipeBuilder.get("mason")
	.setShaped([
		[null,					<ore:ingotPorcelain>,	<ore:ingotPorcelain>,	<ore:ingotPorcelain>,	null					],
		[<ore:ingotPorcelain>,	<ore:ingotPorcelain>,	<ore:ingotPorcelain>,	<ore:ingotPorcelain>,	<ore:ingotPorcelain>	],
		[<ore:ingotPorcelain>, 	<ore:ingotPorcelain>,	<ore:ingotPorcelain>,	<ore:ingotPorcelain>, 	<ore:ingotPorcelain>	],
		[<ore:ingotPorcelain>, 	<minecraft:furnace>,	<minecraft:furnace>,	<minecraft:furnace>,	<ore:ingotPorcelain>	],
		[<ore:ingotPorcelain>, 	<minecraft:furnace>,	<minecraft:furnace>,	<minecraft:furnace>, 	<ore:ingotPorcelain>	]])
	.setFluid( <liquid:mortar> * 250 )
	.addOutput( <tcomplement:porcelain_melter:8> )
	.addTool( <ore:artisansTrowel>, 5 )
	.create();
	
	//	Porcelain Alloy Tank	_______________________________________________________________________________________________________________________________________________________________________
RecipeBuilder.get("mason")
	.setShaped([
		[<tcomplement:porcelain_tank:1>,	<tcomplement:porcelain_tank:1>,	<ceramics:faucet>,	<tcomplement:porcelain_tank:1>,	<tcomplement:porcelain_tank:1>,	],
		[<tcomplement:porcelain_tank:1>,	null,							<ceramics:channel>,	null,							<tcomplement:porcelain_tank:1>,	],
		[<ceramics:faucet>, 				<ceramics:channel>,				null,				<ceramics:channel>,				<ceramics:faucet>, 				],
		[<tcomplement:porcelain_tank:1>, 	null,							<ceramics:channel>,	null,							<tcomplement:porcelain_tank:1>,	],
		[<tcomplement:porcelain_tank:1>, 	<tcomplement:porcelain_tank:1>,	<ceramics:faucet>,	<tcomplement:porcelain_tank:1>,	<tcomplement:porcelain_tank:1>,	]])
	.setFluid( <liquid:mortar> * 250 )
	.addOutput( <tcomplement:porcelain_alloy_tank> )
	.addTool( <ore:artisansTrowel>, 5 )
	.create();
	
	//	Porcelain Melter	_______________________________________________________________________________________________________________________________________________________________________
RecipeBuilder.get("mason")
	.setShaped([
		[<tcomplement:porcelain_tank:1>,	<tcomplement:porcelain_tank:1>,	<tcomplement:porcelain_tank:1>,	<tcomplement:porcelain_tank:1>,	<tcomplement:porcelain_tank:1>	],
		[<tcomplement:porcelain_tank:1>,	<tcomplement:porcelain_tank:1>,	<tcomplement:porcelain_tank:1>,	<tcomplement:porcelain_tank:1>,	<tcomplement:porcelain_tank:1>	],
		[<ore:ingotPorcelain>, 				<ore:ingotPorcelain>,			<ore:ingotPorcelain>,			<ore:ingotPorcelain>, 			<ore:ingotPorcelain>			],
		[<ore:ingotPorcelain>, 				<ore:ingotPorcelain>,			<ore:ingotPorcelain>,			<ore:ingotPorcelain>,			<ore:ingotPorcelain>			],
		[<ore:ingotPorcelain>, 				<ore:ingotPorcelain>,			<ore:ingotPorcelain>,			<ore:ingotPorcelain>, 			<ore:ingotPorcelain>			]])
	.setFluid( <liquid:mortar> * 250 )
	.addOutput( <tcomplement:porcelain_melter> )
	.addTool( <ore:artisansTrowel>, 5 )
	.create();