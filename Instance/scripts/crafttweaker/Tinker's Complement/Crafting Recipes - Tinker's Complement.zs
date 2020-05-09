//=====================================================================================================================================================================================================	
//	Import-ant things
//=====================================================================================================================================================================================================


import mods.artisanworktables.builder.RecipeBuilder;


//=====================================================================================================================================================================================================	
//	Porcelain
//=====================================================================================================================================================================================================



	//	Porcelain Tank	_______________________________________________________________________________________________________________________________________________________________________
recipes.remove( <tcomplement:porcelain_tank> );
RecipeBuilder.get("mason")
	.setShaped([
    	[<ore:ingotPorcelain>,	<ore:blockGlassThickended>,	<ore:ingotPorcelain>	],
    	[<ore:ingotPorcelain>,	<ore:porcelainBarrel>,		<ore:ingotPorcelain>	],
    	[<ore:ingotPorcelain>,	<ore:blockGlassThickended>,	<ore:ingotPorcelain>	]])
	.setFluid( <liquid:mortar> * 125 )
	.addOutput( <tcomplement:porcelain_tank> )
	.addTool( <ore:artisansTrowel>, 5 )
	.create();
		
	//	Porcelain Window	_______________________________________________________________________________________________________________________________________________________________________
recipes.remove( <tcomplement:porcelain_tank:2> );
RecipeBuilder.get("mason")
	.setShaped([
   		[<ore:ingotPorcelain>,	<ore:blockGlassThickended>,	<ore:ingotPorcelain>	],
   		[null,					<ore:porcelainBarrel>,		null					],
   		[<ore:ingotPorcelain>,	<ore:blockGlassThickended>,	<ore:ingotPorcelain>	]])
	.setFluid( <liquid:mortar> * 125 )
	.addOutput( <tcomplement:porcelain_tank:2> )
	.addTool( <ore:artisansTrowel>, 5 )
	.create();
	
	//	Porcelain Gauge	_______________________________________________________________________________________________________________________________________________________________________
recipes.remove( <tcomplement:porcelain_tank:1> );
RecipeBuilder.get("mason")
	.setShaped([
    	[null,					<ore:blockGlassThickended>,	null					],
    	[<ore:ingotPorcelain>,	<ore:porcelainBarrel>,		<ore:ingotPorcelain>	],
    	[null,					<ore:blockGlassThickended>,	null					]])
	.setFluid( <liquid:mortar> * 125 )
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
    	[null,					<ore:ingotPorcelain>,		null					],
    	[<ore:ingotPorcelain>,	<ore:ingotPorcelain>,		<ore:ingotPorcelain>	],
    	[<ore:ingotPorcelain>,	<crossroads:coal_heater>,	<ore:ingotPorcelain>	]])
	.setFluid( <liquid:mortar> * 125 )
	.addTool( <ore:artisansTrowel>, 5 )
	.addOutput( <tcomplement:porcelain_melter:8> )
	.create();
	
	//	Porcelain Alloy Tank	_______________________________________________________________________________________________________________________________________________________________________
recipes.remove( <tcomplement:porcelain_alloy_tank> );
RecipeBuilder.get("mason")
	.setShaped([
    	[<ceramics:faucet>,	<tcomplement:porcelain_tank:1>,	<ceramics:faucet>	]])
	.setFluid( <liquid:mortar> * 125 )
	.addTool( <ore:artisansTrowel>, 5 )
	.addOutput( <tcomplement:porcelain_alloy_tank> )
	.create();

	//	Porcelain Melter	_______________________________________________________________________________________________________________________________________________________________________
recipes.remove( <tcomplement:porcelain_melter> );
RecipeBuilder.get("mason")
	.setShaped([
    	[null,					<tcomplement:porcelain_tank:1>,	null					],
    	[<ore:ingotPorcelain>,	<ore:ingotPorcelain>,			<ore:ingotPorcelain>	],
    	[<ore:ingotPorcelain>,	<crossroads:heating_chamber>,	<ore:ingotPorcelain>	]])
	.setFluid( <liquid:mortar> * 125 )
	.addTool( <ore:artisansTrowel>, 5 )
	.addOutput( <tcomplement:porcelain_melter> )
	.create();


//=====================================================================================================================================================================================================	
//	Seared
//=====================================================================================================================================================================================================


	//	Seared Heater	_______________________________________________________________________________________________________________________________________________________________________
recipes.remove( <tcomplement:melter:8> );
RecipeBuilder.get("mason")
	.setShaped([
    	[<tconstruct:materials>,	<ore:ingotBrickSeared>,		<tconstruct:materials>	],
    	[<ore:ingotBrickSeared>,	<ore:ingotBrickSeared>,		<ore:ingotBrickSeared>	],
    	[<ore:ingotBrickSeared>,	<crossroads:coal_heater>,	<ore:ingotBrickSeared>	]])	
	.setFluid( <liquid:mortar> * 250 )
	.addTool( <ore:artisansTrowel>, 5)
	.addOutput( <tcomplement:melter:8> )
	.create();

	//	Alloy Tank	_______________________________________________________________________________________________________________________________________________________________________
recipes.remove( <tcomplement:alloy_tank> );
RecipeBuilder.get("mason")
	.setShaped([
    	[null,					<tconstruct:faucet>,		null				],
    	[<tconstruct:faucet>,	<tconstruct:seared_tank:1>,	<tconstruct:faucet>	],
    	[null,					<tconstruct:faucet>,		null				]])
	.setFluid( <liquid:mortar> * 250 )
	.addTool( <ore:artisansTrowel>, 5 )
	.addOutput( <tcomplement:alloy_tank> )
	.create();

	//	Melter	_______________________________________________________________________________________________________________________________________________________________________
recipes.remove( <tcomplement:melter> );
RecipeBuilder.get("mason")
	.setShaped([
    	[<tconstruct:seared_tank:1>,	<tconstruct:seared_tank:2>,		<tconstruct:seared_tank:1>	],
    	[<ore:ingotBrickSeared>,		<ore:ingotBrickSeared>,			<ore:ingotBrickSeared>		],
    	[<ore:ingotBrickSeared>,		<crossroads:heating_chamber>,	<ore:ingotBrickSeared>		]])
	.setFluid( <liquid:mortar> * 250 )
	.addTool( <ore:artisansTrowel>, 5)
	.addOutput( <tcomplement:melter> )
	.create();


//=====================================================================================================================================================================================================	
//	Scorched
//=====================================================================================================================================================================================================


	//	Scorched Clay Nuggets Assemble!	_______________________________________________________________________________________________________________________________________________________________________
RecipeBuilder.get("potter")
	.setShapeless([
		<ore:nuggetScorched>,	<ore:nuggetScorched>,	<ore:nuggetScorched>,	
		<ore:nuggetScorched>,	<ore:nuggetScorched>,	<ore:nuggetScorched>,
		<ore:nuggetScorched>,	<ore:nuggetScorched>,	<ore:nuggetScorched>])
	.setFluid( <liquid:water> * 50 )
	.addTool( <ore:artisansTrowel> , 1 )
	.addOutput( <contenttweaker:scorched_clay> )
	.create();


	//	Scorched Clay Nuggets, divide and conquer.	_______________________________________________________________________________________________________________________________________________________________________
RecipeBuilder.get("potter")
	.setShapeless( [ <ore:clayScorched> ] )
	.setFluid( <liquid:water> * 50 )
	.addTool( <ore:artisansTrowel> , 1 )
	.addTool( <ore:toolClay> , 1 )
	.addOutput( <contenttweaker:scorched_clay_nugget> * 9 )
	.create();

	//	Scorched Clay	_______________________________________________________________________________________________________________________________________________________________________
RecipeBuilder.get("potter")
	.setShaped([
		[<ore:nuggetBlast>,		<ore:nuggetSeared>,		<ore:nuggetBlast>	],
		[<ore:nuggetSeared>,	<ore:dustTinySulfur>,	<ore:nuggetSeared>	],
		[<ore:nuggetBlast>,		<ore:nuggetSeared>,		<ore:nuggetBlast>	]])
	.setFluid( <liquid:water> * 50 )
	.addTool( <ore:artisansTrowel> , 1 )
	.addOutput( <contenttweaker:scorched_clay> )
	.create();

	//	Unfired Scorched Clay Brick	_______________________________________________________________________________________________________________________________________________________________________
RecipeBuilder.get("potter")
	.setShapeless( [ <contenttweaker:scorched_clay> ] )
	.setFluid( <liquid:water> * 50 )
	.addTool( <ore:artisansTrowel> , 1 )
	.addTool( <contenttweaker:brick_mold> , 1 )
	.addOutput( <contenttweaker:unfired_scorched_brick> )
	.create();

	//	Scorched Brick Block	_______________________________________________________________________________________________________________________________________________________________________
recipes.remove( <tcomplement:scorched_block:3> );
RecipeBuilder.get("mason")
	.setShaped([
		[<ore:ingotBrickScorched>,	<ore:ingotBrickScorched>	],
		[<ore:ingotBrickScorched>,	<ore:ingotBrickScorched>	]])
	.setFluid( <liquid:mortar> * 100 )
	.addTool( <ore:artisansTrowel> , 1 )
	.addOutput( <tcomplement:scorched_block:3> )
	.create();

	//	Scorched Seared Faucet	_______________________________________________________________________________________________________________________________________________________________________
recipes.remove( <tcomplement:scorched_faucet> );
RecipeBuilder.get("mason")
	.setShaped([
		[<ore:ingotBrickScorched>,	null,						<ore:ingotBrickScorched>	],
		[<ore:ingotBrickScorched>, 	<ore:ingotBrickScorched>,	<ore:ingotBrickScorched>	]])
	.setFluid( <liquid:mortar> * 50 )
	.addOutput( <tcomplement:scorched_faucet> )
	.addTool( <ore:artisansTrowel>, 1 )
	.create();
	
	//	Scorched Casting Channel	_______________________________________________________________________________________________________________________________________________________________________
recipes.remove( <tcomplement:scorched_channel> );
RecipeBuilder.get("mason")
	.setShaped([
		[<ore:ingotBrickScorched>, 		null,						null,						null, 						<ore:ingotBrickScorched>	],
		[<ore:ingotBrickScorched>, 		<ore:ingotBrickScorched>, 	<ore:ingotBrickScorched>,	<ore:ingotBrickScorched>,	<ore:ingotBrickScorched>	]])
	.setFluid( <liquid:mortar> * 50 )
	.addOutput( <tcomplement:scorched_channel> )
	.addTool( <ore:artisansTrowel>, 1 )
	.create();

	//	Scorched Casting Table	_______________________________________________________________________________________________________________________________________________________________________
recipes.remove( <tcomplement:scorched_casting> );
RecipeBuilder.get("mason")
	.setShaped([
		[<ore:ingotBrickScorched>,	null,						null,						null,						<ore:ingotBrickScorched>	],
		[<ore:ingotBrickScorched>,	<ore:ingotBrickScorched>,	<ore:ingotBrickScorched>,	<ore:ingotBrickScorched>,	<ore:ingotBrickScorched>	],
		[<ore:ingotBrickScorched>, 	null,						null,						null,						<ore:ingotBrickScorched>	],
		[<ore:ingotBrickScorched>, 	null,						null,						null,						<ore:ingotBrickScorched>	],
		[<ore:ingotBrickScorched>, 	null,						null,						null,						<ore:ingotBrickScorched>	]])
	.setFluid( <liquid:mortar> * 100 )
	.addOutput( <tcomplement:scorched_casting> )
	.addTool( <ore:artisansTrowel>, 2 )
	.create();
	
	//	Scorched Casting Basin	_______________________________________________________________________________________________________________________________________________________________________
recipes.remove( <tcomplement:scorched_casting:1> );
RecipeBuilder.get("mason")
	.setShaped([
		[<ore:ingotBrickScorched>,	null,						null,						null,						<ore:ingotBrickScorched>	],
		[<ore:ingotBrickScorched>,	null,						null,						null,						<ore:ingotBrickScorched>	],
		[<ore:ingotBrickScorched>, 	null,						null,						null,						<ore:ingotBrickScorched>	],
		[<ore:ingotBrickScorched>, 	<ore:ingotBrickScorched>,	<ore:ingotBrickScorched>,	<ore:ingotBrickScorched>,	<ore:ingotBrickScorched>	],
		[<ore:ingotBrickScorched>, 	null,						null,						null,						<ore:ingotBrickScorched>	]])
	.setFluid( <liquid:mortar> * 100 )
	.addOutput( <tcomplement:scorched_casting:1> )
	.addTool( <ore:artisansTrowel>, 2 )
	.create();
	
	//	Scorched Drain	_______________________________________________________________________________________________________________________________________________________________________
recipes.remove( <tcomplement:high_oven_io> );
RecipeBuilder.get("mason")
	.setShaped([
		[<ore:ingotBrickScorched>,	<ore:ingotBrickScorched>,	<tcomplement:scorched_channel>,	<ore:ingotBrickScorched>,	<ore:ingotBrickScorched>	],
		[<ore:ingotBrickScorched>,	<ore:ingotBrickScorched>,	<tcomplement:scorched_channel>,	<ore:ingotBrickScorched>,	<ore:ingotBrickScorched>	],
		[<ore:ingotBrickScorched>, 	<ore:ingotBrickScorched>,	<tcomplement:scorched_channel>,	<ore:ingotBrickScorched>,	<ore:ingotBrickScorched>	],
		[<ore:ingotBrickScorched>, 	<ore:ingotBrickScorched>,	<tcomplement:scorched_channel>,	<ore:ingotBrickScorched>,	<ore:ingotBrickScorched>	],
		[<ore:ingotBrickScorched>, 	<ore:ingotBrickScorched>,	<tcomplement:scorched_channel>,	<ore:ingotBrickScorched>,	<ore:ingotBrickScorched>	]])
	.setFluid( <liquid:mortar> * 250 )
	.addOutput( <tcomplement:high_oven_io> )
	.addTool( <ore:artisansTrowel>, 5 )
	.create();
	
	//	Scorched Chute	_______________________________________________________________________________________________________________________________________________________________________
recipes.remove( <tcomplement:high_oven_io:1> );
RecipeBuilder.get("mason")
	.setShaped([
		[<ore:ingotBrickScorched>,			<ore:ingotBrickScorched>,		<ore:ingotBrickScorched>,		<ore:ingotBrickScorched>,		<ore:ingotBrickScorched>		],
		[<ore:ingotBrickScorched>,			<ore:ingotBrickScorched>,		<ore:ingotBrickScorched>,		<ore:ingotBrickScorched>,		<ore:ingotBrickScorched>		],
		[<tcomplement:scorched_channel>,	<tcomplement:scorched_channel>,	<tcomplement:scorched_channel>,	<tcomplement:scorched_channel>,	<tcomplement:scorched_channel>	],
		[<ore:ingotBrickScorched>,			<ore:ingotBrickScorched>,		<ore:ingotBrickScorched>,		<ore:ingotBrickScorched>,		<ore:ingotBrickScorched>		],
		[<ore:ingotBrickScorched>,			<ore:ingotBrickScorched>,		<ore:ingotBrickScorched>,		<ore:ingotBrickScorched>,		<ore:ingotBrickScorched>		]])
	.setFluid( <liquid:mortar> * 250 )
	.addTool( <ore:artisansTrowel> , 1 )
	.addOutput( <tcomplement:high_oven_io:1> )
	.create();

	//	Scorched Duct	_______________________________________________________________________________________________________________________________________________________________________
recipes.remove( <tcomplement:high_oven_io:2> );
RecipeBuilder.get("mason")
	.setShaped([
		[<ore:ingotBrickScorched>,			<ore:plateSteel>,				<ore:plateSteel>,				<ore:plateSteel>,				<ore:ingotBrickScorched>		],
		[<ore:ingotBrickScorched>,			<ore:ingotBrickScorched>,		<ore:ingotBrickScorched>,		<ore:ingotBrickScorched>,		<ore:ingotBrickScorched>		],
		[<tcomplement:scorched_channel>,	<tcomplement:scorched_channel>,	<tcomplement:scorched_channel>,	<tcomplement:scorched_channel>,	<tcomplement:scorched_channel>	],
		[<ore:ingotBrickScorched>,			<ore:ingotBrickScorched>,		<ore:ingotBrickScorched>,		<ore:ingotBrickScorched>,		<ore:ingotBrickScorched>		],
		[<ore:ingotBrickScorched>,			<ore:plateSteel>,				<ore:plateSteel>,				<ore:plateSteel>,				<ore:ingotBrickScorched>		]])
	.setFluid( <liquid:mortar> * 250 )
	.addTool( <ore:artisansTrowel> , 1 )
	.addOutput( <tcomplement:high_oven_io:2> )
	.create();

	//	High Oven Controller	_______________________________________________________________________________________________________________________________________________________________________
recipes.remove( <tcomplement:high_oven_controller> );
val tinkertank = <tconstruct:tinker_tank_controller>;
RecipeBuilder.get("mason")
	.setShaped([
		[<ore:ingotBrickScorched>,	<ore:ingotBrickScorched>,		<ore:ingotBrickScorched>,			<ore:ingotBrickScorched>,		<ore:ingotBrickScorched>	],
		[<ore:ingotBrickScorched>,	null,							<tcomplement:high_oven_io:2>,		null,							<ore:ingotBrickScorched>	],
		[<ore:ingotBrickScorched>, 	<tcomplement:high_oven_io:1>,	<tconstruct:smeltery_controller>,	<tcomplement:high_oven_io:1>,	<ore:ingotBrickScorched>	],
		[<ore:ingotBrickScorched>, 	null,							<tcomplement:high_oven_io:2>,		null,							<ore:ingotBrickScorched>	],
		[<ore:ingotBrickScorched>, 	<ore:ingotBrickScorched>,		<ore:ingotBrickScorched>,			<ore:ingotBrickScorched>, 		<ore:ingotBrickScorched>	]])
	.setFluid( <liquid:mortar> * 500 )
	.addOutput( <tcomplement:high_oven_controller> )
	.addTool( <ore:artisansTrowel>, 10 )
	.addTool( <saltmod:salt_pinch>, 0 )
	.create();