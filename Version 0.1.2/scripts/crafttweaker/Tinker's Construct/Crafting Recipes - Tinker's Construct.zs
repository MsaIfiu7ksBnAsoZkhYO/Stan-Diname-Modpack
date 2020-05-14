//=====================================================================================================================================================================================================	
//	Import-ant things
//=====================================================================================================================================================================================================


import mods.artisanworktables.builder.RecipeBuilder;


//=====================================================================================================================================================================================================	
//	Components
//=====================================================================================================================================================================================================


	//	Blank Patterns	_______________________________________________________________________________________________________________________________________________________________________
recipes.remove( <tconstruct:pattern> );
RecipeBuilder.get("carpenter")
	.setShaped([
		[<ore:stickWood>,	null,				<ore:stickWood>	],
		[null,				<ore:plankWood>,	null			],
		[<ore:stickWood>,	null,				<ore:stickWood>	]])
	.addTool( <ore:artisansHammer> , 1 )
	.addOutput( <tconstruct:pattern> )
	.create();

	//	Tconstruct flint shards to NTP flint shards	_______________________________________________________________________________________________________________________________________________________________________
RecipeBuilder.get("basic")
	.setShapeless( [ <tconstruct:shard>.withTag({Material: "flint"}) ] )
	.addOutput( <notreepunching:flint_shard> )
	.create();


//=====================================================================================================================================================================================================	
//	Tool Tables
//=====================================================================================================================================================================================================


	//	Crafting Station	_______________________________________________________________________________________________________________________________________________________________________
recipes.remove( <tconstruct:tooltables> );
RecipeBuilder.get("carpenter")
	.setShaped([
		[<ore:fenceWood>,	<ore:slabWood>,	<ore:slabWood>,	<ore:slabWood>,	<ore:fenceWood>	],
		[<ore:fenceWood>, 	null, 			null, 			null, 			<ore:fenceWood>	],
		[<ore:fenceWood>, 	null, 			null, 			null,			<ore:fenceWood>	],
		[<ore:fenceWood>, 	null, 			null, 			null, 			<ore:fenceWood>	]])
	.addTool( <ore:artisansHammer>, 6 )
	.addOutput( <tconstruct:tooltables> )
	.create();

	//	Stencil Table	______________________________________________________________________________________________________________________________________________________________________
recipes.remove( <tconstruct:tooltables:1> );
RecipeBuilder.get("carpenter")
	.setShaped([
		[null, 				<ore:pattern>,	<ore:pattern>,	<ore:pattern>,	null			],
		[<ore:fenceWood>,	<ore:slabWood>,	<ore:slabWood>,	<ore:slabWood>,	<ore:fenceWood>	],
		[<ore:fenceWood>, 	null, 			<ore:pattern>, 	null, 			<ore:fenceWood>	],
		[<ore:fenceWood>, 	null, 			null, 			null,			<ore:fenceWood>	],
		[<ore:fenceWood>, 	null, 			null, 			null, 			<ore:fenceWood>	]])
	.addTool( <ore:artisansHammer>, 6 )
	.addOutput( <tconstruct:tooltables:1>.withTag({textureBlock: {id: "minecraft:planks", Count: 1 as byte, Damage: 0 as short}}) )
	.create();

	//	Pattern Chest	______________________________________________________________________________________________________________________________________________________________________________________________________
recipes.remove( <tconstruct:tooltables:4> );
RecipeBuilder.get("carpenter")
	.setShaped([
		[<ore:plankWood>, 	<ore:slabWood>,	<ore:slabWood>,	<ore:slabWood>,	<ore:plankWood>	],
		[<ore:plankWood>,	<ore:pattern>,	<ore:chest>,	<ore:pattern>,	<ore:plankWood>	],
		[<ore:plankWood>, 	<ore:pattern>, 	<ore:chest>, 	<ore:pattern>, 	<ore:plankWood>	],
		[<ore:plankWood>, 	<ore:slabWood>,	<ore:slabWood>,	<ore:slabWood>,	<ore:plankWood>	],
		[<ore:fenceWood>, 	null, 			null, 			null, 			<ore:fenceWood>	]])
	.addTool( <ore:artisansHammer>, 6 )
	.addOutput( <tconstruct:tooltables:4> )
	.create();

	//	Part Builder	______________________________________________________________________________________________________________________________________________________________________________________________________
recipes.remove( <tconstruct:tooltables:2> );
val platePattern = <tconstruct:pattern>.withTag({PartType: "tconstruct:large_plate"});
RecipeBuilder.get("carpenter")
	.setShaped([
		[null, 				platePattern,	platePattern,	platePattern,	null					],
		[<ore:fenceWood>,	<ore:slabWood>,	<ore:slabWood>,	<ore:slabWood>,	<ore:fenceWood>	],
		[<ore:fenceWood>,	null, 			null, 			null, 			<ore:fenceWood>	],
		[<ore:fenceWood>,	null, 			null, 			null,			<ore:fenceWood>	],
		[<ore:fenceWood>,	null, 			null, 			null, 			<ore:fenceWood>	]])
	.addTool( <ore:artisansHammer>, 6 )
	.addOutput(<tconstruct:tooltables:2>.withTag({textureBlock: {id: "minecraft:log", Count: 1 as byte, Damage: 0 as short}}))
	.create();

	//	Part Chest	______________________________________________________________________________________________________________________________________________________________________________________________________
recipes.remove( <tconstruct:tooltables:5> );
val bindPattern = <tconstruct:pattern>.withTag({PartType: "tconstruct:binding"});
RecipeBuilder.get("carpenter")
	.setShaped([
		[<ore:plankWood>, 	<ore:slabWood>,	<ore:slabWood>,	<ore:slabWood>,	<ore:plankWood>	],
		[<ore:plankWood>,	bindPattern,	<ore:chest>,	bindPattern,	<ore:plankWood>	],
		[<ore:plankWood>, 	bindPattern, 	<ore:chest>, 	bindPattern, 	<ore:plankWood>	],
		[<ore:plankWood>, 	<ore:slabWood>,	<ore:slabWood>,	<ore:slabWood>,	<ore:plankWood>	],
		[<ore:fenceWood>, 	null, 			null, 			null, 			<ore:fenceWood>	]])
	.addTool( <ore:artisansHammer>, 6 )
	.addOutput( <tconstruct:tooltables:5> )
	.create();
	
	//	Tool Station	______________________________________________________________________________________________________________________________________________________________________
recipes.remove( <tconstruct:tooltables:3> );
val rodPattern = <tconstruct:pattern>.withTag({PartType: "tconstruct:tool_rod"});
RecipeBuilder.get("carpenter")
	.setShaped([
		[null, 				rodPattern,		rodPattern,		rodPattern,		null			],
		[<ore:fenceWood>,	<ore:slabWood>,	<ore:slabWood>,	<ore:slabWood>,	<ore:fenceWood>	],
		[<ore:fenceWood>, 	null, 			null, 			null, 			<ore:fenceWood>	],
		[<ore:fenceWood>, 	null, 			null, 			null,			<ore:fenceWood>	],
		[<ore:fenceWood>, 	null, 			null, 			null, 			<ore:fenceWood>	]])
	.addTool( <ore:artisansHammer>, 6 )
	.addOutput( <tconstruct:tooltables:3> )
	.create();
	
	//	Armor Station	______________________________________________________________________________________________________________________________________________________________________
recipes.remove( <conarm:armorstation> );
val armorPattern = <tconstruct:pattern>.withTag({PartType: "conarm:armor_plate"});
RecipeBuilder.get("carpenter")
	.setShaped([
		[null, 				armorPattern,	armorPattern,	armorPattern,	null			],
		[<ore:fenceWood>,	<ore:slabWood>,	<ore:slabWood>,	<ore:slabWood>,	<ore:fenceWood>	],
		[<ore:fenceWood>, 	null, 			null, 			null, 			<ore:fenceWood>	],
		[<ore:fenceWood>, 	null, 			null, 			null,			<ore:fenceWood>	],
		[<ore:fenceWood>, 	null, 			null, 			null, 			<ore:fenceWood>	]])
	.addTool( <ore:artisansHammer>, 6 )
	.addOutput( <conarm:armorstation> )
	.create();
	
	
//=====================================================================================================================================================================================================	
//	Seared and Smeltery
//=====================================================================================================================================================================================================
	

	//	Seared Clay Nuggets Assemble!	_______________________________________________________________________________________________________________________________________________________________________
RecipeBuilder.get("potter")
	.setShapeless([
		<ore:nuggetSeared>,	<ore:nuggetSeared>,	<ore:nuggetSeared>,	
		<ore:nuggetSeared>,	<ore:nuggetSeared>,	<ore:nuggetSeared>,
		<ore:nuggetSeared>,	<ore:nuggetSeared>,	<ore:nuggetSeared>])
	.setFluid( <liquid:water> * 50 )
	.addTool( <ore:artisansTrowel> , 1 )
	.addOutput( <contenttweaker:seared_clay> )
	.create();


	//	Seared Clay Nuggets, divide and conquer.	_______________________________________________________________________________________________________________________________________________________________________
RecipeBuilder.get("potter")
	.setShapeless( [ <ore:claySeared> ] )
	.setFluid( <liquid:water> * 50 )
	.addTool( <ore:artisansTrowel> , 1 )
	.addTool( <ore:artisansHandsaw> , 1 )
	.addOutput( <contenttweaker:seared_clay_nugget> * 9 )
	.create();

	//	Seared Clay Ball	_______________________________________________________________________________________________________________________________________________________________________
RecipeBuilder.get("potter")
	.setShaped([
		[<ore:nuggetPorcelain>,	<ore:layerGravel>,	<ore:nuggetPorcelain>	],
		[<ore:layerSand>,		<ore:dustFlint>,	<ore:layerSand>			],
		[<ore:nuggetPorcelain>,	<ore:layerGravel>,	<ore:nuggetPorcelain>	]])
	.setFluid( <liquid:water> * 50 )
	.addTool( <ore:artisansTrowel> , 1 )
	.addOutput( <contenttweaker:seared_clay> )
	.create();

	//	Unfired Seared Brick	_______________________________________________________________________________________________________________________________________________________________________
RecipeBuilder.get("potter")
	.setShapeless( [ <ore:claySeared> ] )
	.setFluid( <liquid:water> * 50 )
	.addTool( <ore:artisansTrowel> , 1 )
	.addTool( <contenttweaker:brick_mold> , 1 )
	.addOutput( <contenttweaker:unfired_seared_brick> )
	.create();

	//	Seared Brick Block	_______________________________________________________________________________________________________________________________________________________________________
recipes.remove( <tconstruct:seared:3> );
RecipeBuilder.get("mason")
	.setShaped([
		[<ore:ingotBrickSeared>,	<ore:ingotBrickSeared>	],
		[<ore:ingotBrickSeared>,	<ore:ingotBrickSeared>	]])
	.setFluid( <liquid:mortar> * 100 )
	.addOutput( <tconstruct:seared:3> )
	.addTool( <ore:artisansTrowel>, 2 )
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
    	[<ore:ingotBrickSeared>,	<tconstruct:seared_glass>,	<ore:ingotBrickSeared>	],
    	[<ore:ingotBrickSeared>,	<openblocks:tank>,			<ore:ingotBrickSeared>	],
    	[<ore:ingotBrickSeared>,	<tconstruct:seared_glass>,	<ore:ingotBrickSeared>	]])
	.setFluid( <liquid:mortar> * 250 )
	.addOutput( <tconstruct:seared_tank> )
	.addTool( <ore:artisansTrowel>, 5 )
	.create();
	
	//	Seared glass	_______________________________________________________________________________________________________________________________________________________________________
recipes.remove( <tconstruct:seared_glass> );
RecipeBuilder.get("mason")
	.setShaped([
    	[<ore:ingotBrickSeared>,	null,						<ore:ingotBrickSeared>	],
    	[null,						<ore:blockGlassThickended>,	null					],
    	[<ore:ingotBrickSeared>,	null,						<ore:ingotBrickSeared>	]])
	.setFluid( <liquid:mortar> * 100 )
	.addOutput( <tconstruct:seared_glass> )
	.addTool( <ore:artisansTrowel>, 3 )
	.create();
	
	//	Seared Window	_______________________________________________________________________________________________________________________________________________________________________
recipes.remove( <tconstruct:seared_tank:2> );
RecipeBuilder.get("mason")
	.setShaped([
    	[<tconstruct:seared_glass>	],
    	[<openblocks:tank>			],
    	[<tconstruct:seared_glass>	]])
	.setFluid( <liquid:mortar> * 250 )
	.addOutput( <tconstruct:seared_tank:2> )
	.addTool( <ore:artisansTrowel>, 5 )
	.create();
	
	//	Seared Gauge	_______________________________________________________________________________________________________________________________________________________________________
recipes.remove( <tconstruct:seared_tank:1> );
RecipeBuilder.get("mason")
	.setShaped([
    	[null,						<tconstruct:seared_glass>,	null					],
    	[<ore:ingotBrickSeared>,	<openblocks:tank>,			<ore:ingotBrickSeared>	],
    	[null,						<tconstruct:seared_glass>,	null					]])
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
	
	//	Smeltery Drain	_______________________________________________________________________________________________________________________________________________________________________
recipes.remove( <tconstruct:smeltery_io> );
RecipeBuilder.get("mason")
	.setShaped([
    	[<ore:ingotBrickSeared>,	<quark:sturdy_stone>,	<tconstruct:channel>,	<quark:sturdy_stone>,	<ore:ingotBrickSeared>	],
    	[<tconstruct:materials>,	<quark:sturdy_stone>,	<ore:stickCopper>,		<quark:sturdy_stone>,	<tconstruct:materials>	],
    	[<ore:ingotBrickSeared>,	<quark:sturdy_stone>,	<ore:stickCopper>,		<quark:sturdy_stone>,	<ore:ingotBrickSeared>	],
    	[<tconstruct:materials>,	<quark:sturdy_stone>,	<ore:stickCopper>,		<quark:sturdy_stone>,	<tconstruct:materials>	],
    	[<ore:ingotBrickSeared>,	<quark:sturdy_stone>,	<tconstruct:channel>,	<quark:sturdy_stone>,	<ore:ingotBrickSeared>	]])
	.setFluid( <liquid:mortar> * 250 )
	.addOutput( <tconstruct:smeltery_io> )
	.addTool( <ore:artisansTrowel>, 5 )
	.create();


	//	Seared Furnace Controller	_______________________________________________________________________________________________________________________________________________________________________
recipes.remove( <tconstruct:seared_furnace_controller> );
RecipeBuilder.get("mason")
	.setShaped([
    	[<ore:ingotBrickSeared>,	<quark:sturdy_stone>,			<ore:ingotBrickSeared>,			<quark:sturdy_stone>,			<ore:ingotBrickSeared>	],
    	[<quark:sturdy_stone>,		<crossroads:heating_chamber>,	<ore:stickCopper>,				<crossroads:heating_chamber>,	<quark:sturdy_stone>	],
    	[<ore:ingotBrickSeared>,	<ore:stickCopper>,				<crossroads:heating_chamber>,	<ore:stickCopper>,				<ore:ingotBrickSeared>	],
    	[<quark:sturdy_stone>,		<crossroads:heating_chamber>,	<ore:stickCopper>,				<crossroads:heating_chamber>,	<quark:sturdy_stone>	],
    	[<ore:ingotBrickSeared>,	<quark:sturdy_stone>,			<ore:ingotBrickSeared>,			<quark:sturdy_stone>,			<ore:ingotBrickSeared>	]])
	.setFluid( <liquid:mortar> * 500 )
	.addOutput( <tconstruct:seared_furnace_controller> )
	.addTool( <ore:artisansTrowel>, 10 )
	.create();

	//	Tinker Tank Controller	_______________________________________________________________________________________________________________________________________________________________________
recipes.remove( <tconstruct:tinker_tank_controller> );
RecipeBuilder.get("mason")
	.setShaped([
    	[<ore:ingotBrickSeared>,	<quark:sturdy_stone>,		<ore:ingotBrickSeared>,		<quark:sturdy_stone>,		<ore:ingotBrickSeared>	],
    	[<quark:sturdy_stone>,		<tconstruct:seared_tank>,	<ore:stickCopper>,			<tconstruct:seared_tank>,	<quark:sturdy_stone>	],
    	[<ore:ingotBrickSeared>,	<ore:stickCopper>,			<tconstruct:seared_tank>,	<ore:stickCopper>,			<ore:ingotBrickSeared>	],
    	[<quark:sturdy_stone>,		<tconstruct:seared_tank>,	<ore:stickCopper>,			<tconstruct:seared_tank>,	<quark:sturdy_stone>	],
    	[<ore:ingotBrickSeared>,	<quark:sturdy_stone>,		<ore:ingotBrickSeared>,		<quark:sturdy_stone>,		<ore:ingotBrickSeared>	]])
	.setFluid( <liquid:mortar> * 500 )
	.addOutput( <tconstruct:tinker_tank_controller> )
	.addTool( <ore:artisansTrowel>, 10 )
	.create();
	
	//	Smeltery Controller	_______________________________________________________________________________________________________________________________________________________________________
recipes.remove( <tconstruct:smeltery_controller> );
val tinkertank = <tconstruct:tinker_tank_controller>;
RecipeBuilder.get("mason")
	.setShaped([
    	[<ore:ingotBrickSeared>,	<quark:sturdy_stone>,	<ore:ingotBrickSeared>,	<quark:sturdy_stone>,		<ore:ingotBrickSeared>	],
    	[<quark:sturdy_stone>,		<tcomplement:melter>,	<ore:stickCopper>,		<tcomplement:alloy_tank>,	<quark:sturdy_stone>	],
    	[<ore:ingotBrickSeared>,	<ore:stickCopper>,		tinkertank,				<ore:stickCopper>,			<ore:ingotBrickSeared>	],
    	[<quark:sturdy_stone>,		<ore:stickCopper>,		<tcomplement:melter:8>,	<ore:stickCopper>,			<quark:sturdy_stone>	],
    	[<ore:ingotBrickSeared>,	<quark:sturdy_stone>,	<ore:ingotBrickSeared>,	<quark:sturdy_stone>,		<ore:ingotBrickSeared>	]])
	.setFluid( <liquid:mortar> * 500 )
	.addOutput( <tconstruct:smeltery_controller> )
	.addTool( <ore:artisansTrowel>, 10 )
	.addTool( <saltmod:salt_pinch>, 0 )
	.create();


//=====================================================================================================================================================================================================	
//	Clay Parts for Castable parts
//=====================================================================================================================================================================================================
	

	//	Chisel Head	_______________________________________________________________________________________________________________________________________________________________________
RecipeBuilder.get("potter")
	.setShaped([
		[<ore:nuggetClay>,	<ore:plateClayRaw>	],
		[<ore:brickClay>,	<ore:nuggetClay>	]])
	.setFluid(	<liquid:water> * 100	)
	.addTool( <ore:artisansTrowel> , 1 )
	.addOutput( <tcomplement:chisel_head>.withTag({Material: "moldclaywet"}) )
	.create();

	//	Sharpening Kit	_______________________________________________________________________________________________________________________________________________________________________
RecipeBuilder.get("potter")
	.setShaped([
		[<ore:brickClay>,	<ore:nuggetClay>	],
		[<ore:nuggetClay>,	<ore:brickClay>		]])
	.setFluid( <liquid:water> * 100 )
	.addTool( <ore:artisansTrowel> , 1 )
	.addOutput( <tconstruct:sharpening_kit>.withTag({Material: "moldclaywet"}) )
	.create();

	//	Polishing Kit	_______________________________________________________________________________________________________________________________________________________________________
RecipeBuilder.get("potter")
	.setShaped([
		[<ore:clay>,		<ore:nuggetClay>	],
		[<ore:nuggetClay>,	<ore:clay>			]])
	.setFluid(<liquid:water> * 100)
	.addTool( <ore:artisansTrowel> , 1 )
	.addOutput( <conarm:polishing_kit>.withTag({Material: "moldclaywet"}) )
	.create();

	//	Bowstring	_______________________________________________________________________________________________________________________________________________________________________
RecipeBuilder.get("potter")
	.setShaped([
		[null,				null,				null,				<ore:nuggetClay>,	<ore:nuggetClay>	],
		[null,				null,				<ore:nuggetClay>,	<ore:stickWood>,	null				],
		[null,				null,				null,				<ore:nuggetClay>,	null				],
		[<ore:nuggetClay>,	<ore:stickWood>,	null,				<ore:stickWood>,	<ore:nuggetClay>	],
		[null,				<ore:nuggetClay>,	<ore:nuggetClay>,	<ore:nuggetClay>,	null				]])
	.setFluid( <liquid:water> * 100	)
	.addTool( <ore:artisansTrowel> , 1 )
	.addOutput( <tconstruct:bow_string>.withTag({Material: "moldclaywet"}) )
	.create();

	//	Arrow Shaft	_______________________________________________________________________________________________________________________________________________________________________
RecipeBuilder.get("potter")
	.setShaped([
		[null,				null,				<ore:brickClay>	],
		[null,				<ore:stickWood>,	null			],
		[<ore:brickClay>,	null,				null			]])
	.setFluid( <liquid:water> * 100 )
	.addTool( <ore:artisansTrowel> , 1 )
	.addOutput( <tconstruct:arrow_shaft>.withTag({Material: "moldclaywet"}) )
	.create();

	//	Fletching	_______________________________________________________________________________________________________________________________________________________________________
RecipeBuilder.get("potter")
	.setShaped([
		[<ore:plateClayRaw>,	null,				null				],
		[null,					<ore:stickWood>,	null				],
		[null,					null,				<ore:plateClayRaw>	]])
	.setFluid( <liquid:water> * 100 )
	.addTool( <ore:artisansTrowel> , 1 )
	.addOutput( <tconstruct:fletching>.withTag({Material: "moldclaywet"}) )
	.create();