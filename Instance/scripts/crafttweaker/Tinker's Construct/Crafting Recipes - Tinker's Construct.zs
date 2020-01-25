//=====================================================================================================================================================================================================	
//	Import-ant things
//=====================================================================================================================================================================================================


import mods.artisanworktables.builder.RecipeBuilder;


//=====================================================================================================================================================================================================	
//	Components
//=====================================================================================================================================================================================================


	//	Blank Patterns	_______________________________________________________________________________________________________________________________________________________________________
//recipes.remove( <tconstruct:pattern> );
recipes.addShaped(
    "Tconstuct Blank Pattern",
    <tconstruct:pattern> * 2, 
    [
        [<ore:stickWood>,	null,				<ore:stickWood>	],
        [null,				<ore:plankWood>,	null			], 
        [<ore:stickWood>,	null,				<ore:stickWood>	]
    ]
);

	//	Tconstruct flint shards to NTP flint shards	_______________________________________________________________________________________________________________________________________________________________________
recipes.addShapeless(
	"tconstruct flint shard to NTP flint shard",
	<notreepunching:flint_shard>, 
	[<tconstruct:shard>.withTag({Material: "flint"})]
);


//=====================================================================================================================================================================================================	
//	Tool Tables
//=====================================================================================================================================================================================================


	//	Crafting Station	_______________________________________________________________________________________________________________________________________________________________________
//recipes.remove( <tconstruct:tooltables> );
RecipeBuilder.get("basic")
	.setShaped([
		[<ore:fenceWood>,	<ore:slabWood>,	<ore:slabWood>,	<ore:slabWood>,	<ore:fenceWood>	],
		[<ore:fenceWood>, 	null, 			null, 			null, 			<ore:fenceWood>	],
		[<ore:fenceWood>, 	null, 			null, 			null,			<ore:fenceWood>	],
		[<ore:fenceWood>, 	null, 			null, 			null, 			<ore:fenceWood>	]])
	.addOutput( <tconstruct:tooltables> )
	.create();

	//	Stencil Table	______________________________________________________________________________________________________________________________________________________________________
//recipes.remove( <tconstruct:tooltables:1> );
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
//recipes.remove( <tconstruct:tooltables:4> );
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
//recipes.remove( <tconstruct:tooltables:2> );
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
//recipes.remove( <tconstruct:tooltables:5> );
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
//recipes.remove( <tconstruct:tooltables:3> );
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
//recipes.remove( <conarm:armorstation> );
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
	

	//	Seared Clay Nuggets Assemble!	_______________________________________________________________________________________________________________________________________________________________________
RecipeBuilder.get("potter")
	.setShapeless([
		<ore:nuggetSeared>,	<ore:nuggetSeared>,	<ore:nuggetSeared>,	
		<ore:nuggetSeared>,	<ore:nuggetSeared>,	<ore:nuggetSeared>,
		<ore:nuggetSeared>,	<ore:nuggetSeared>,	<ore:nuggetSeared>])
	.setFluid( <liquid:water> * 50 )
	.setSecondaryIngredients( [ <minecraft:bowl> ] )
	.addTool( <ore:artisansTrowel> , 1 )
	.addOutput( <contenttweaker:seared_clay> )
	.setExtraOutputOne( <minecraft:bowl> , 1.0 )
	.create();


	//	Seared Clay Nuggets, divide and conquer.	_______________________________________________________________________________________________________________________________________________________________________
RecipeBuilder.get("potter")
	.setShapeless( [ <ore:claySeared> ] )
	.setFluid( <liquid:water> * 50 )
	.setSecondaryIngredients( [ <minecraft:bowl> ] )
	.addTool( <ore:artisansTrowel> , 1 )
	.addOutput( <contenttweaker:seared_clay_nugget> * 9 )
	.setExtraOutputOne( <minecraft:bowl>, 1.0 )
	.create();

	//	Seared Clay Ball	_______________________________________________________________________________________________________________________________________________________________________
val PorcelainNugget = <ore:nuggetPorcelain>;
val SandLayer = <ore:layerSand>;
RecipeBuilder.get("potter")
	.setShaped([
		[null,				SandLayer,			PorcelainNugget,	SandLayer,			null			],
		[SandLayer,			PorcelainNugget,	<ore:lumpGravel>,	PorcelainNugget,	SandLayer		],
		[PorcelainNugget,	<ore:lumpGravel>,	PorcelainNugget,	<ore:lumpGravel>,	PorcelainNugget	],
		[SandLayer,			PorcelainNugget,	<ore:lumpGravel>,	PorcelainNugget,	SandLayer		],
		[null,				SandLayer,			PorcelainNugget,	SandLayer,			null			]])
	.setFluid( <liquid:water> * 50 )
	.setSecondaryIngredients( [ <minecraft:bowl> ] )
	.addTool( <ore:artisansTrowel> , 1 )
	.addOutput( <ore:claySeared>.firstItem )
	.setExtraOutputOne( <minecraft:bowl> , 1.0 )
	.create();

	//	Unfired Seared Brick	_______________________________________________________________________________________________________________________________________________________________________
RecipeBuilder.get("potter")
	.setShapeless( [ <ore:claySeared> ] )
	.setFluid( <liquid:water> * 50 )
	.setSecondaryIngredients( [ <minecraft:bowl> ] )
	.addTool( <ore:artisansTrowel> , 1 )
	.addTool( <tconstruct:pattern> , 0 )
	.addOutput( <contenttweaker:unfired_seared_brick> )
	.setExtraOutputOne( <minecraft:bowl> , 1.0 )
	.create();

	//	Seared Brick Block	_______________________________________________________________________________________________________________________________________________________________________
//recipes.remove( <tconstruct:seared:3> );
RecipeBuilder.get("mason")
	.setShaped([
		[<ore:ingotBrickSeared>,	<ore:ingotBrickSeared>,	<ore:ingotBrickSeared>	],
		[<ore:ingotBrickSeared>,	<ore:ingotBrickSeared>,	<ore:ingotBrickSeared>	],
		[<ore:ingotBrickSeared>,	<ore:ingotBrickSeared>, <ore:ingotBrickSeared>	]])
	.setFluid( <liquid:mortar> * 100 )
	.addOutput( <tconstruct:seared:3> )
	.addTool( <ore:artisansTrowel>, 2 )
	.create();
	
	//	Seared Faucet	_______________________________________________________________________________________________________________________________________________________________________
//recipes.remove( <tconstruct:faucet> );
RecipeBuilder.get("mason")
	.setShaped([
		[<ore:ingotBrickSeared>,	null,					<ore:ingotBrickSeared>	],
		[<ore:ingotBrickSeared>,	<ore:ingotBrickSeared>,	<ore:ingotBrickSeared>	]])
	.setFluid( <liquid:mortar> * 50 )
	.addOutput( <tconstruct:faucet> )
	.addTool( <ore:artisansTrowel>, 1 )
	.create();
	
	//	Casting Channel	_______________________________________________________________________________________________________________________________________________________________________
//recipes.remove( <tconstruct:channel> );
RecipeBuilder.get("mason")
	.setShaped([
		[<ore:ingotBrickSeared>, 	null,					null,					null, 					<ore:ingotBrickSeared>	],
		[<ore:ingotBrickSeared>, 	<ore:ingotBrickSeared>, <ore:ingotBrickSeared>,	<ore:ingotBrickSeared>,	<ore:ingotBrickSeared>	]])
	.setFluid( <liquid:mortar> * 50 )
	.addOutput( <tconstruct:channel> )
	.addTool( <ore:artisansTrowel>, 1 )
	.create();
	
	//	Seared Tank	_______________________________________________________________________________________________________________________________________________________________________
//recipes.remove( <tconstruct:seared_tank> );
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
//recipes.remove( <tconstruct:seared_glass> );
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
//recipes.remove( <tconstruct:seared_tank:2> );
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
//recipes.remove( <tconstruct:seared_tank:1> );
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
//recipes.remove( <tconstruct:casting> );
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
//recipes.remove( <tconstruct:casting:1> );
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
//recipes.remove( <tconstruct:smeltery_io> );
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
//recipes.remove( <tconstruct:seared_furnace_controller> );
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
//recipes.remove( <tconstruct:tinker_tank_controller> );
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
//recipes.remove( <tconstruct:smeltery_controller> );
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