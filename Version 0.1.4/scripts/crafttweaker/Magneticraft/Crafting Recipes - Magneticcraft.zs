//=====================================================================================================================================================================================================	
//	Import-ant things
//=====================================================================================================================================================================================================


import mods.artisanworktables.builder.RecipeBuilder;


//=====================================================================================================================================================================================================	
//	Base Stations
//=====================================================================================================================================================================================================


	//	Crushing Table	_______________________________________________________________________________________________________________________________________________________________________
recipes.remove( <magneticraft:crushing_table> );
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
recipes.remove( <magneticraft:sluice_box> );
RecipeBuilder.get("basic")
	.setShaped([
		[<ore:plankWood>,	null,						<ore:plankWood>,	null,				null			],
		[<ore:fenceWood>,	<magneticraft:crafting:6>,	<ore:fenceWood>,	null,				null			],
		[<ore:fenceWood>,	<magneticraft:crafting:6>,	<ore:fenceWood>,	null,				null			],
		[<ore:plankWood>,	<ore:stickWood>,			<ore:plankWood>,	<ore:stickWood>,	<ore:plankWood>	],
		[<ore:stone>,		<ore:stone>,				<ore:stone>,		<ore:stone>,		<ore:stone>		]])
	.addOutput( <magneticraft:sluice_box> )
	.create();

//=====================================================================================================================================================================================================	
//	Motor
//=====================================================================================================================================================================================================


recipes.remove( <magneticraft:crafting:2> );
RecipeBuilder.get( "engineer" )
  .setShaped([
    [<ore:plateLead>,			<ore:plateLead>,	null			],
    [<magneticraft:crafting:3>,	<ore:dustRedstone>,	<ore:rodIron>	],
    [<ore:plateLead>,			<ore:plateLead>,	null			]])
  .addTool( <ore:artisansHammer>, 3 )
  .addOutput( <magneticraft:crafting:2> )
  .create();


//=====================================================================================================================================================================================================	
//	Copper Coil Machien Block
//=====================================================================================================================================================================================================


recipes.remove( <magneticraft:multiblock_parts:4> );
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<ore:plateLead>, <magneticraft:crafting:3>, <ore:plateLead>],
    [<magneticraft:crafting:3>, <ore:rodIron>, <magneticraft:crafting:3>],
    [<ore:plateLead>, <magneticraft:crafting:3>, <ore:plateLead>]])
  .addTool(<ore:artisansHammer>, 3)
  .addOutput( <magneticraft:multiblock_parts:4> )
  .create();


//=====================================================================================================================================================================================================	
//	Striped Machine Block
//=====================================================================================================================================================================================================


recipes.remove( <magneticraft:multiblock_parts:3> );
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<ore:plateLead>, <ore:plateAluminiumbrass>, <ore:plateLead>],
    [<ore:plateAluminiumbrass>, <ore:plateLead>, <ore:plateAluminiumbrass>],
    [<ore:plateLead>, <ore:plateAluminiumbrass>, <ore:plateLead>]])
  .addOutput( <magneticraft:multiblock_parts:3> )
  .addTool(<ore:artisansHammer>, 3)
  .create();


//=====================================================================================================================================================================================================	
//	Iron Grate Machine Block
//=====================================================================================================================================================================================================


recipes.remove( <magneticraft:multiblock_parts:2> );
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<minecraft:iron_bars>, <quark:grate>, <minecraft:iron_bars>],
    [<quark:grate>, <minecraft:iron_bars>, <quark:grate>],
    [<minecraft:iron_bars>, <quark:grate>, <minecraft:iron_bars>]])
  .addOutput( <magneticraft:multiblock_parts:2> )
  .addTool(<ore:artisansHammer>, 3)
  .create();


//=====================================================================================================================================================================================================	
//	Corrugated Iron Machine Block
//=====================================================================================================================================================================================================


recipes.remove( <magneticraft:multiblock_parts:5> );
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<ore:plateIron>, <ore:rodIron>, <ore:plateIron>],
    [<ore:rodIron>, <ore:plateIron>, <ore:rodIron>],
    [<ore:plateIron>, <ore:rodIron>, <ore:plateIron>]])
  .addTool( <ore:artisansHammer>, 3 )
  .addOutput( <magneticraft:multiblock_parts:5> )
  .create();


//=====================================================================================================================================================================================================	
//	Support Column
//=====================================================================================================================================================================================================


recipes.remove( <magneticraft:multiblock_column> );
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<ore:plateLead>, <ore:plateIron>, <ore:plateLead>],
    [<ore:plateLead>, <ore:plateIron>, <ore:plateLead>],
    [<ore:plateLead>, <ore:plateIron>, <ore:plateLead>]])
  .addTool( <ore:artisansHammer>, 3 )
  .addOutput( <magneticraft:multiblock_column> )
  .create();


//=====================================================================================================================================================================================================	
//	Machine Block
//=====================================================================================================================================================================================================


recipes.remove( <magneticraft:multiblock_parts> );
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<ore:plateIron>, <ore:plateIron>, <ore:plateIron>],
    [<ore:plateIron>, <magneticraft:crafting:2>, <ore:plateIron>],
    [<ore:plateLead>, <ore:plateLead>, <ore:plateLead>]])
  .addTool( <ore:artisansHammer>, 3 )
  .addOutput( <magneticraft:multiblock_parts> )
  .create();


//=====================================================================================================================================================================================================	
//	Tank
//=====================================================================================================================================================================================================


recipes.remove( <magneticraft:small_tank> );
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<ore:rodIron>, <ore:blockGlassHardened>, <ore:rodIron>],
    [<ore:blockGlassHardened>, <openblocks:tank>, <ore:blockGlassHardened>],
    [<ore:rodIron>, <ore:blockGlassHardened>, <ore:rodIron>]])
  .addTool( <ore:artisansHammer>, 3 )
  .addOutput( <magneticraft:small_tank> )
  .create();



//=====================================================================================================================================================================================================	
//	Shelving Unit
//=====================================================================================================================================================================================================


recipes.remove( <magneticraft:shelving_unit> );
RecipeBuilder.get("designer")
  .setShaped([
    [<ore:paper>, <ore:paper>, <ore:paper>, <ore:paper>, <ore:paper>],
    [<ore:paper>, <minecraft:iron_bars>, <minecraft:iron_bars>, <minecraft:iron_bars>, <ore:paper>],
    [<ore:paper>, <ore:chest>, <ore:chest>, <ore:chest>, <ore:paper>],
    [<ore:paper>, <minecraft:iron_bars>, <minecraft:iron_bars>, <minecraft:iron_bars>, <ore:paper>],
    [<ore:paper>, <ore:paper>, <ore:paper>, <ore:paper>, <ore:paper>]])
  .addOutput( <magneticraft:shelving_unit> )
  .create();


//=====================================================================================================================================================================================================	
//	Shipping Container
//=====================================================================================================================================================================================================


recipes.remove( <magneticraft:container> );
RecipeBuilder.get("designer")
  .setShaped([
    [<ore:paper>, <ore:paper>, <ore:paper>, <ore:paper>, <ore:paper>],
    [<ore:paper>, <magneticraft:multiblock_parts:5>, <ore:drawerBasic>, <magneticraft:multiblock_parts:5>, <ore:paper>],
    [<ore:paper>, <ore:drawerBasic>, <storagedrawers:compdrawers>, <ore:drawerBasic>, <ore:paper>],
    [<ore:paper>, <magneticraft:multiblock_parts:5>, <ore:drawerBasic>, <magneticraft:multiblock_parts:5>, <ore:paper>],
    [<ore:paper>, <ore:paper>, <ore:paper>, <ore:paper>, <ore:paper>]])
  .addOutput( <magneticraft:container> )
  .create();


//=====================================================================================================================================================================================================	
//	Small Steam Engine
//=====================================================================================================================================================================================================


recipes.remove( <magneticraft:steam_engine> );
RecipeBuilder.get("designer")
  .setShaped([
    [<ore:paper>, <ore:paper>, <ore:paper>, <ore:paper>, <ore:paper>],
    [<ore:paper>, <ore:rodIron>, <ore:rodIron>, <ore:rodIron>, <ore:paper>],
    [<ore:paper>, <magneticraft:multiblock_parts:4>, <ore:fenceIron>, <magneticraft:steam_boiler>, <ore:paper>],
    [<ore:paper>, <minecraft:brick_block>, <crossroads:gear_iron>, <minecraft:brick_block>, <ore:paper>],
    [<ore:paper>, <ore:paper>, <ore:paper>, <ore:paper>, <ore:paper>]])
  .addOutput(<magneticraft:steam_engine>)
  .create();


//=====================================================================================================================================================================================================	
//	Grinder
//=====================================================================================================================================================================================================


recipes.remove( <magneticraft:grinder> );
RecipeBuilder.get("designer")
  .setShaped([
    [<ore:paper>, <ore:paper>, <ore:paper>, <ore:paper>, <ore:paper>],
    [<ore:paper>, <ore:fenceIron>, <ore:hopper>, <ore:fenceIron>, <ore:paper>],
    [<ore:paper>, <ore:fenceIron>, <crossroads:grindstone>, <ore:fenceIron>, <ore:paper>],
    [<ore:paper>, <ore:fenceIron>, <magneticraft:crushing_table>, <ore:fenceIron>, <ore:paper>],
    [<ore:paper>, <ore:paper>, <ore:paper>, <ore:paper>, <ore:paper>]])
  .addOutput(<magneticraft:grinder>)
  .create();


//=====================================================================================================================================================================================================	
//	Sieve
//=====================================================================================================================================================================================================


recipes.remove( <magneticraft:sieve> );
RecipeBuilder.get("designer")
  .setShaped([
    [<ore:paper>, <ore:paper>, <ore:paper>, <ore:paper>, <ore:paper>],
    [<ore:paper>, <magneticraft:sluice_box>, <minecraft:iron_bars>, null, <ore:paper>],
    [<ore:paper>, <ore:hopper>, <magneticraft:sluice_box>, <minecraft:iron_bars>, <ore:paper>],
    [<ore:paper>, null, <ore:hopper>, <magneticraft:sluice_box>, <ore:paper>],
    [<ore:paper>, <ore:paper>, <ore:paper>, <ore:paper>, <ore:paper>]])
  .addOutput( <magneticraft:sieve> )
  .create();


//=====================================================================================================================================================================================================	
//	Solar Tower
//=====================================================================================================================================================================================================


recipes.remove( <magneticraft:solar_tower> );
RecipeBuilder.get("designer")
  .setShaped([
    [<ore:paper>, <ore:paper>, <ore:paper>, <ore:paper>, <ore:paper>],
    [<ore:paper>, <ore:fenceIron>, <ore:blockCopper>, <ore:fenceIron>, <ore:paper>],
    [<ore:paper>, <ore:fenceIron>, <ore:blockCopper>, <ore:fenceIron>, <ore:paper>],
    [<ore:paper>, <ore:fenceIron>, <ore:blockCopper>, <ore:fenceIron>, <ore:paper>],
    [<ore:paper>, <ore:paper>, <ore:paper>, <ore:paper>, <ore:paper>]])
  .addOutput(<magneticraft:solar_tower>)
  .create();


//=====================================================================================================================================================================================================	
//	Solar Mirror
//=====================================================================================================================================================================================================


recipes.remove( <magneticraft:solar_mirror> );
RecipeBuilder.get("designer")
  .setShaped([
    [<ore:paper>, <ore:paper>, <ore:paper>, <ore:paper>, <ore:paper>],
    [<ore:paper>, <ore:plateSilver>, null, <ore:plateSilver>, <ore:paper>],
    [<ore:paper>, <ore:plateSilver>, <ore:rodIron>, <ore:plateSilver>, <ore:paper>],
    [<ore:paper>, <ore:plateSilver>, <ore:fenceIron>, <ore:plateSilver>, <ore:paper>],
    [<ore:paper>, <ore:paper>, <ore:paper>, <ore:paper>, <ore:paper>]])
  .addOutput( <magneticraft:solar_mirror> )
  .create();


//=====================================================================================================================================================================================================	
//	Pumpjack
//=====================================================================================================================================================================================================


recipes.remove( <magneticraft:pumpjack> );
RecipeBuilder.get("designer")
  .setShaped([
    [<ore:paper>, <ore:paper>, <ore:paper>, <ore:paper>, <ore:paper>],
    [<ore:paper>, <ore:fenceIron>, <ore:fenceIron>, <ore:fenceIron>, <ore:paper>],
    [<ore:paper>, <ore:fenceIron>, <crossroads:rotary_pump>, <ore:fenceIron>, <ore:paper>],
    [<ore:paper>, <magneticraft:multiblock_parts:4>, <ore:fenceIron>, <magneticraft:small_tank>.withTag({}), <ore:paper>],
    [<ore:paper>, <ore:paper>, <ore:paper>, <ore:paper>, <ore:paper>]])
  .addOutput( <magneticraft:pumpjack> )
  .create();