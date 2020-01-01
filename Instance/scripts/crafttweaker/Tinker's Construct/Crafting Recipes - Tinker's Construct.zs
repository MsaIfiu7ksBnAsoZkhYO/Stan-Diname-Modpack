//=====================================================================================================================================================================================================	
//	Import-ant things
//=====================================================================================================================================================================================================


import mods.artisanworktables.builder.RecipeBuilder;


//=====================================================================================================================================================================================================	
//	Tool Tables
//=====================================================================================================================================================================================================


	//	Crafting Station	_______________________________________________________________________________________________________________________________________________________________________
recipes.remove( <tconstruct:tooltables> );
RecipeBuilder.get("basic")
	.setShaped([
		[<ore:fenceWood>,	<ore:slabWood>,	<ore:slabWood>,	<ore:slabWood>,	<ore:fenceWood>	],
		[<ore:fenceWood>, 	null, 			null, 			null, 			<ore:fenceWood>	],
		[<ore:fenceWood>, 	null, 			null, 			null,			<ore:fenceWood>	],
		[<ore:fenceWood>, 	null, 			null, 			null, 			<ore:fenceWood>	]])
	.addOutput( <tconstruct:tooltables> )
	.create();

	//	Stencil Table	______________________________________________________________________________________________________________________________________________________________________
recipes.remove( <tconstruct:tooltables:1> );
RecipeBuilder.get("basic")
	.setShaped([
		[null, 				<ore:pattern>,	<ore:pattern>,	<ore:pattern>,	null			],
		[<ore:fenceWood>,	<ore:slabWood>,	<ore:slabWood>,	<ore:slabWood>,	<ore:fenceWood>	],
		[<ore:fenceWood>, 	null, 			<ore:pattern>, 	null, 			<ore:fenceWood>	],
		[<ore:fenceWood>, 	null, 			null, 			null,			<ore:fenceWood>	],
		[<ore:fenceWood>, 	null, 			null, 			null, 			<ore:fenceWood>	]])
	.addOutput( <tconstruct:tooltables:1>.withTag({textureBlock: {id: "minecraft:planks", Count: 1 as byte, Damage: 0 as short}}) )
	.create();

	//	Pattern Chest	______________________________________________________________________________________________________________________________________________________________________________________________________
recipes.remove( <tconstruct:tooltables:4> );
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
recipes.remove( <tconstruct:tooltables:2> );
val platePattern = <tconstruct:pattern>.withTag({PartType: "tconstruct:large_plate"});
RecipeBuilder.get("basic")
	.setShaped([
		[null, 				platePattern,	platePattern,	platePattern,	null					],
		[<ore:fenceWood>,	<ore:slabWood>,	<ore:slabWood>,	<ore:slabWood>,	<ore:fenceWood>	],
		[<ore:fenceWood>,	null, 			null, 			null, 			<ore:fenceWood>	],
		[<ore:fenceWood>,	null, 			null, 			null,			<ore:fenceWood>	],
		[<ore:fenceWood>,	null, 			null, 			null, 			<ore:fenceWood>	]])
	.addOutput(<tconstruct:tooltables:2>.withTag({textureBlock: {id: "minecraft:log", Count: 1 as byte, Damage: 0 as short}}))
	.create();

	//	Part Chest	______________________________________________________________________________________________________________________________________________________________________________________________________
recipes.remove( <tconstruct:tooltables:5> );
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
recipes.remove( <tconstruct:tooltables:3> );
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
recipes.remove( <conarm:armorstation> );
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
recipes.remove( <tconstruct:seared:3> );
RecipeBuilder.get("mason")
	.setShaped([
		[<ore:ingotBrickSeared>,	<ore:ingotBrickSeared>,	<ore:ingotBrickSeared>	],
		[<ore:ingotBrickSeared>,	<ore:ingotBrickSeared>,	<ore:ingotBrickSeared>	],
		[<ore:ingotBrickSeared>,	<ore:ingotBrickSeared>, <ore:ingotBrickSeared>	]])
	.setFluid( <liquid:mortar> * 100 )
	.addOutput( <tconstruct:seared:3> )
	.addTool( <ore:artisansTrowel>, 2 )
	.create();
	
	//	Smeltery Drain	_______________________________________________________________________________________________________________________________________________________________________
recipes.remove( <tconstruct:smeltery_io> );
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
recipes.remove( <tconstruct:faucet> );
RecipeBuilder.get("mason")
	.setShaped([
		[<ore:ingotBrickSeared>,	null,					<ore:ingotBrickSeared>	],
		[<ore:ingotBrickSeared>,	<ore:ingotBrickSeared>,	<ore:ingotBrickSeared>	]])
	.setFluid( <liquid:mortar> * 50 )
	.addOutput( <tconstruct:faucet> )
	.addTool( <ore:artisansTrowel>, 1 )
	.create();
	
	//	Casting Channel	_______________________________________________________________________________________________________________________________________________________________________
recipes.remove( <tconstruct:channel> );
RecipeBuilder.get("mason")
	.setShaped([
		[<ore:ingotBrickSeared>, 	null,					null,					null, 					<ore:ingotBrickSeared>	],
		[<ore:ingotBrickSeared>, 	<ore:ingotBrickSeared>, <ore:ingotBrickSeared>,	<ore:ingotBrickSeared>,	<ore:ingotBrickSeared>	]])
	.setFluid( <liquid:mortar> * 50 )
	.addOutput( <tconstruct:channel> )
	.addTool( <ore:artisansTrowel>, 1 )
	.create();
	
	//	Seared Tank	_______________________________________________________________________________________________________________________________________________________________________
recipes.remove( <tconstruct:seared_tank> );
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
recipes.remove( <tconstruct:seared_glass> );
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
recipes.remove( <tconstruct:seared_tank:2> );
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
recipes.remove( <tconstruct:seared_tank:1> );
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
recipes.remove( <tconstruct:casting> );
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
recipes.remove( <tconstruct:casting:1> );
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
recipes.remove( <tcomplement:melter:8> );
RecipeBuilder.get("mason")
	.setShaped([
		[null,						<ore:ingotBrickSeared>,		<ore:ingotBrickSeared>,		<ore:ingotBrickSeared>,		null					],
		[<ore:ingotBrickSeared>,	<ore:ingotBrickSeared>,		<ore:ingotBrickSeared>,		<ore:ingotBrickSeared>,		<ore:ingotBrickSeared>	],
		[<ore:ingotBrickSeared>,	<ore:ingotBrickSeared>,		<crossroads:coal_heater>,	<ore:ingotBrickSeared>,		<ore:ingotBrickSeared>	],
		[<ore:ingotBrickSeared>,	<crossroads:coal_heater>,	<crossroads:coal_heater>,	<crossroads:coal_heater>,	<ore:ingotBrickSeared>	],
		[<ore:ingotBrickSeared>,	<crossroads:coal_heater>,	<crossroads:coal_heater>,	<crossroads:coal_heater>,	<ore:ingotBrickSeared>	]])
	.setFluid( <liquid:mortar> * 250 )
	.addTool( <ore:artisansTrowel>, 5)
	.addOutput( <tcomplement:melter:8> )
	.create();

	//	Alloy Tank	_______________________________________________________________________________________________________________________________________________________________________
recipes.remove( <tcomplement:alloy_tank> );
RecipeBuilder.get("mason")
	.setShaped([
		[<tconstruct:seared_glass>,	<ore:ingotBrickSeared>,	<tconstruct:seared_glass>,	<ore:ingotBrickSeared>,	<tconstruct:seared_glass>	],
		[<ore:ingotBrickSeared>,	null,					null,						null,					<ore:ingotBrickSeared>		],
		[<tconstruct:seared_glass>,	<tconstruct:faucet>,	<tconstruct:seared_tank:1>,	<tconstruct:faucet>,	<tconstruct:seared_glass>	],
		[<ore:ingotBrickSeared>,	null,					null,						null,					<ore:ingotBrickSeared>		],
		[<tconstruct:seared_glass>,	<ore:ingotBrickSeared>,	<tconstruct:seared_glass>,	<ore:ingotBrickSeared>,	<tconstruct:seared_glass>	]])
	.setFluid( <liquid:mortar> * 250 )
	.addTool( <ore:artisansTrowel>, 5 )
	.addOutput( <tcomplement:alloy_tank> )
	.create();

	//	Melter	_______________________________________________________________________________________________________________________________________________________________________
recipes.remove( <tcomplement:melter> );
RecipeBuilder.get("mason")
  .setShaped([
    [<ore:ingotBrickSeared>,	<ore:ingotBrickSeared>,		<tconstruct:seared_glass>,	<ore:ingotBrickSeared>,		<ore:ingotBrickSeared>	],
    [<ore:ingotBrickSeared>,	<tconstruct:seared_glass>,	<tconstruct:seared_tank:1>,	<tconstruct:seared_glass>,	<ore:ingotBrickSeared>	],
    [<ore:ingotBrickSeared>,	<ore:ingotBrickSeared>,		<ore:ingotBrickSeared>,		<ore:ingotBrickSeared>,		<ore:ingotBrickSeared>	],
    [<ore:ingotBrickSeared>,	<ore:ingotBrickSeared>,		<ore:ingotBrickSeared>,		<ore:ingotBrickSeared>,		<ore:ingotBrickSeared>	]])
  .setFluid( <liquid:mortar> * 250 )
  .addTool( <ore:artisansTrowel>, 5)
  .addOutput( <tcomplement:melter> )
  .create();

	//	Seared Furnace Controller	_______________________________________________________________________________________________________________________________________________________________________
recipes.remove( <tconstruct:seared_furnace_controller> );
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
recipes.remove( <tconstruct:tinker_tank_controller> );
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
recipes.remove( <tconstruct:smeltery_controller> );
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


	//	Porcelain Seared Faucet	_______________________________________________________________________________________________________________________________________________________________________
recipes.remove( <ceramics:faucet> );
RecipeBuilder.get("mason")
	.setShaped([
		[<ore:ingotPorcelain>,	null,					<ore:ingotPorcelain>	],
		[<ore:ingotPorcelain>, 	<ore:ingotPorcelain>,	<ore:ingotPorcelain>	]])
	.setFluid( <liquid:mortar> * 50 )
	.addOutput( <ceramics:faucet> )
	.addTool( <ore:artisansTrowel>, 1 )
	.create();
	
	//	Porcelain Casting Channel	_______________________________________________________________________________________________________________________________________________________________________
recipes.remove( <ceramics:channel> );
RecipeBuilder.get("mason")
	.setShaped([
		[<ore:ingotPorcelain>, 		null,					null,					null, 					<ore:ingotPorcelain>	],
		[<ore:ingotPorcelain>, 		<ore:ingotPorcelain>, 	<ore:ingotPorcelain>,	<ore:ingotPorcelain>,	<ore:ingotPorcelain>	]])
	.setFluid( <liquid:mortar> * 50 )
	.addOutput( <ceramics:channel> )
	.addTool( <ore:artisansTrowel>, 1 )
	.create();
	
	//	Porcelain Tank	_______________________________________________________________________________________________________________________________________________________________________
recipes.remove( <tcomplement:porcelain_tank> );
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
recipes.remove( <tcomplement:porcelain_tank:2> );
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
recipes.remove( <tcomplement:porcelain_tank:1> );
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
recipes.remove( <tcomplement:porcelain_casting> );
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
recipes.remove( <tcomplement:porcelain_casting:1> );
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
recipes.remove( <tcomplement:porcelain_melter:8> );
RecipeBuilder.get("mason")
	.setShaped([
		[null,					<ore:ingotPorcelain>,		<ore:ingotPorcelain>,		<ore:ingotPorcelain>,		null					],
		[<ore:ingotPorcelain>,	<ore:ingotPorcelain>,		<ore:ingotPorcelain>,		<ore:ingotPorcelain>,		<ore:ingotPorcelain>	],
		[<ore:ingotPorcelain>,	<ore:ingotPorcelain>,		<crossroads:coal_heater>,	<ore:ingotPorcelain>,		<ore:ingotPorcelain>	],
		[<ore:ingotPorcelain>,	<crossroads:coal_heater>,	<crossroads:coal_heater>,	<crossroads:coal_heater>,	<ore:ingotPorcelain>	],
		[<ore:ingotPorcelain>,	<crossroads:coal_heater>,	<crossroads:coal_heater>,	<crossroads:coal_heater>,	<ore:ingotPorcelain>	]])
	.setFluid( <liquid:mortar> * 250 )
	.addTool( <ore:artisansTrowel>, 5 )
	.addOutput( <tcomplement:porcelain_melter:8> )
	.create();
	
	//	Porcelain Alloy Tank	_______________________________________________________________________________________________________________________________________________________________________
recipes.remove( <tcomplement:porcelain_alloy_tank> );
RecipeBuilder.get("mason")
	.setShaped([
		[<extrautils2:decorativeglass>,	<ore:ingotPorcelain>,	<extrautils2:decorativeglass>,	<ore:ingotPorcelain>,	<extrautils2:decorativeglass>	],
		[<ore:ingotPorcelain>,			null,					null,							null, 					<ore:ingotPorcelain>			],
		[<extrautils2:decorativeglass>,	<ceramics:faucet>,		<tcomplement:porcelain_tank:1>,	<ceramics:faucet>,		<extrautils2:decorativeglass>	],
		[<ore:ingotPorcelain>,			null,					null,							null,					<ore:ingotPorcelain>			],
		[<extrautils2:decorativeglass>,	<ore:ingotPorcelain>,	<extrautils2:decorativeglass>,	<ore:ingotPorcelain>,	<extrautils2:decorativeglass>	]])
	.setFluid( <liquid:mortar> * 250 )
	.addTool( <ore:artisansTrowel>, 5 )
	.addOutput( <tcomplement:porcelain_alloy_tank> )
	.create();

	//	Porcelain Melter	_______________________________________________________________________________________________________________________________________________________________________
recipes.remove( <tcomplement:porcelain_melter> );
RecipeBuilder.get("mason")
	.setShaped([
		[<ore:ingotPorcelain>,	<ore:ingotPorcelain>,			<extrautils2:decorativeglass>,	<ore:ingotPorcelain>,			<ore:ingotPorcelain>	],
		[<ore:ingotPorcelain>,	<extrautils2:decorativeglass>,	<tcomplement:porcelain_tank:1>,	<extrautils2:decorativeglass>,	<ore:ingotPorcelain>	],
		[<ore:ingotPorcelain>,	<ore:ingotPorcelain>,			<ore:ingotPorcelain>,			<ore:ingotPorcelain>,			<ore:ingotPorcelain>	],
		[<ore:ingotPorcelain>,	<ore:ingotPorcelain>,			<ore:ingotPorcelain>,			<ore:ingotPorcelain>,			<ore:ingotPorcelain>	]])
	.setFluid( <liquid:mortar> * 250 )
	.addTool( <ore:artisansTrowel>, 5 )
	.addOutput( <tcomplement:porcelain_melter> )
	.create();