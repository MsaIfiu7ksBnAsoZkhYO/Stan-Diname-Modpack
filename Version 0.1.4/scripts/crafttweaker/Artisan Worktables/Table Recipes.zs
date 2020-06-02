//=====================================================================================================================================================================================================	
//	Import-ant things
//=====================================================================================================================================================================================================


import mods.artisanworktables.builder.RecipeBuilder;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IIngredient;

//=====================================================================================================================================================================================================	
//	Recipes for building the workbenches
//=====================================================================================================================================================================================================


var ArtisanWorkstationInput as IItemStack;


//=====================================================================================================================================================================================================	
//	Fancy new dynamic function
//=====================================================================================================================================================================================================


	//	Associating tables and metadatas to do a fancy
val ArtisanWorktable = {
	tailor		:	0,
	carpenter	:	1,
	mason		:	2,
	blacksmith	:	3,
	jeweler		:	4,
	basic		:	5,
	engineer	:	6,
	mage		:	7,
	scribe		:	8,
	chemist		:	9,
	farmer		:	10,
	chef		:	11,
	designer	:	12,
	tanner		:	13,
	potter		:	14,
} as int[string];

	//	Table maker function for uniformity
function WorktableBuilder (
	
	TableMeta as int,
	TableTopBasic as IIngredient,
	TableTopAdvanced as IIngredient,
	Tableizer as IIngredient,
	WoodPlus as IIngredient
	) {
	
	var StationCore = <artisanworktables:workstation:5>;
	var ShopCore = <artisanworktables:workshop:5>;
	var WorkStation = <artisanworktables:workstation>.definition.makeStack( TableMeta );
	var WorkShop = <artisanworktables:workshop>.definition.makeStack( TableMeta );

	RecipeBuilder.get("basic")
		.setShaped([
			[TableTopBasic,	TableTopBasic,	TableTopBasic	],
			[null,			StationCore,		null		],
			[<ore:logWood>,	<ore:logWood>,	<ore:logWood>	]])
		.addOutput( WorkStation )
		.create();

	RecipeBuilder.get("basic")
		.setShaped([
			[TableTopAdvanced,	TableTopBasic,		TableTopAdvanced,	TableTopBasic,		TableTopAdvanced	],
			[TableTopBasic,		Tableizer,			Tableizer,			Tableizer,			TableTopBasic		],
			[null,				WoodPlus,			ShopCore,			WoodPlus,			null				],
			[WoodPlus,			WorkStation,		WorkStation,		WorkStation,		WoodPlus			],
			[<ore:logWood>,		WoodPlus,			<ore:logWood>,		WoodPlus,			<ore:logWood>		]])
		.addOutput( WorkShop )
		.create();

}

	//	Calling the fancy new function
WorktableBuilder (
	ArtisanWorktable["carpenter"],
	<ore:plankWood>,
	<ore:slabWood>,
	<ore:plankWood>,
	<ore:logWood>
	);

WorktableBuilder (
	ArtisanWorktable["mason"],
	<ore:ingotBrick>,
	<minecraft:brick_block>,
	<quark:sturdy_stone>,
	<ore:plankTreatedWood>
	);



//=====================================================================================================================================================================================================
//	Basic Workstation & shop
//=====================================================================================================================================================================================================


recipes.addShaped(
	"Artisan Basic Workstation", 
	<artisanworktables:workstation:5>,
	[
		[<ore:plankWood>,	<ore:plankWood>	],
		[<ore:plankWood>,	<ore:plankWood>	]
	]
);
	//	Basic Workshop
RecipeBuilder.get("basic")
	.setShaped([
		[<artisanworktables:workstation:5>,	<artisanworktables:workstation:5>,	<artisanworktables:workstation:5>	],
		[null,								<ore:chest>,						null								],
		[<ore:logWood>,						<ore:logWood>,						<ore:logWood>						]])
	.addOutput(<artisanworktables:workshop:5>)
	.create();
  

//=====================================================================================================================================================================================================
//	Carpenter WorkStation
//=====================================================================================================================================================================================================


RecipeBuilder.get("basic")
	.setShaped([
		[<ore:plankWood>,	<ore:plankWood>,					<ore:plankWood>	],
		[null,				<artisanworktables:workstation:5>,	null			],
		[<ore:logWood>,		<ore:logWood>,						<ore:logWood>	]])
	.addOutput(<artisanworktables:workstation:1>)
	.create();
	//	Carpenter WorkShop
ArtisanWorkstationInput = <artisanworktables:workstation:1>;
RecipeBuilder.get("basic")
	.setShaped([
		[<ore:plankWood>,	<ore:plankWood>,			<ore:plankWood>,			<ore:plankWood>,			<ore:plankWood>	],
		[<ore:plankWood>,	<ore:logWood>,				<ore:logWood>,				<ore:logWood>,				<ore:plankWood>	],
		[null,				<ore:logWood>,				<ore:chest>,				<ore:logWood>,				null			],
		[<ore:logWood>,		ArtisanWorkstationInput,	ArtisanWorkstationInput,	ArtisanWorkstationInput,	<ore:logWood>	],
		[<ore:logWood>,		<ore:logWood>,				<ore:logWood>,				<ore:logWood>,				<ore:logWood>	]])
	.addOutput( <artisanworktables:workshop:1> )
	.create();


//=====================================================================================================================================================================================================
//	Potter Workstation
//=====================================================================================================================================================================================================


RecipeBuilder.get("basic")
	.setShaped([
		[<ore:plateBrick>,	<ore:plateBrick>,					<ore:plateBrick>	],
		[null,				<artisanworktables:workstation:5>,	null				],
		[<ore:logWood>,		<ore:logWood>,						<ore:logWood>		]])
	.addOutput( <artisanworktables:workstation:14> )
	.create();

ArtisanWorkstationInput = <artisanworktables:workstation:14>;
RecipeBuilder.get("basic")
	.setShaped([
		[<ore:stone>,			<ore:hardenedClay>,			<ore:hardenedClay>,			<ore:hardenedClay>,			<ore:stone>			],
		[<ore:hardenedClay>,	<ore:stone>,				<ore:stone>,				<ore:stone>,				<ore:hardenedClay>	],
		[null,					<ore:logWood>,				<ore:chest>,				<ore:logWood>,				null				],
		[<ore:logWood>,			ArtisanWorkstationInput,	ArtisanWorkstationInput,	ArtisanWorkstationInput,	<ore:logWood>		],
		[<ore:logWood>,			<ore:logWood>,				<ore:logWood>,				<ore:logWood>,				<ore:logWood>		]])
	.addOutput( <artisanworktables:workshop:14> )
	.create();


//=====================================================================================================================================================================================================
//	Mason Workstation
//=====================================================================================================================================================================================================


RecipeBuilder.get("basic")
	.setShaped([
		[<ore:ingotBrick>,	<ore:stone>,						<ore:ingotBrick>	],
		[null,				<artisanworktables:workstation:5>,	null				],
		[<ore:logWood>,		<ore:logWood>,						<ore:logWood>		]])
	.addOutput( <artisanworktables:workstation:2> )
	.create();

ArtisanWorkstationInput = <artisanworktables:workstation:2>;
RecipeBuilder.get("basic")
	.setShaped([
		[<minecraft:brick_block>,			<ore:ingotBrick>,			<minecraft:brick_block>,		<ore:ingotBrick>,			<minecraft:brick_block>				],
		[<ore:ingotBrick>,					<quark:sturdy_stone>,		<quark:sturdy_stone>,			<quark:sturdy_stone>,		<ore:ingotBrick>					],
		[null,								<quark:sturdy_stone>,		<artisanworktables:workshop:5>,	<quark:sturdy_stone>,		null								],
		[<actuallyadditions:block_misc:4>,	ArtisanWorkstationInput,	ArtisanWorkstationInput,		ArtisanWorkstationInput,	<actuallyadditions:block_misc:4>	],
		[<ore:logWood>,						<ore:logWood>,				<ore:logWood>,					<ore:logWood>,				<ore:logWood>						]])
	.addOutput( <artisanworktables:workshop:2> )
	.create();
	

//=====================================================================================================================================================================================================
//	Tailor Table
//=====================================================================================================================================================================================================


RecipeBuilder.get("basic")
	.setShaped([
		[<magneticraft:crafting:6>,	<magneticraft:crafting:6>,			<magneticraft:crafting:6>	],
		[null,						<artisanworktables:workstation:5>,	null						],
		[<ore:logWood>,				<ore:logWood>,						<ore:logWood>				]])
	.addOutput( <artisanworktables:workstation> )
	.create();

ArtisanWorkstationInput = <artisanworktables:workstation>;
RecipeBuilder.get("basic")
	.setShaped([
		[<magneticraft:crafting:6>,	<magneticraft:crafting:6>,	<magneticraft:crafting:6>,	<magneticraft:crafting:6>,	<magneticraft:crafting:6>	],
		[<magneticraft:crafting:6>,	<ore:wool>,					<ore:wool>,					<ore:wool>,					<magneticraft:crafting:6>	],
		[null,						<ore:wool>,					<ore:chest>,				<ore:wool>,					null						],
		[<ore:logWood>,				ArtisanWorkstationInput,	ArtisanWorkstationInput,	ArtisanWorkstationInput,	<ore:logWood>				],
		[<ore:logWood>,				<ore:logWood>,				<ore:logWood>,				<ore:logWood>,				<ore:logWood>				]])
	.addOutput( <artisanworktables:workshop> )
	.create();


//=====================================================================================================================================================================================================
//	Blacksmith Table
//=====================================================================================================================================================================================================


RecipeBuilder.get("basic")
	.setShaped([
		[<ore:plateIron>,		<ore:plateIron>,					<ore:plateIron>	],
		[null,					<artisanworktables:workstation:5>,	null				],
		[<ore:logWood>,			<ore:logWood>,						<ore:logWood>		]])
	.addOutput( <artisanworktables:workstation:3> )
	.create();
ArtisanWorkstationInput = <artisanworktables:workstation:3>;

RecipeBuilder.get("basic")
	.setShaped([
		[<ore:plateIron>,					<ore:plateIron>,			<ore:plateIron>,			<ore:plateIron>,			<ore:plateIron>						],
		[<ore:plateIron>,					<ore:blockSeared>,			<ore:blockSeared>,			<ore:blockSeared>,			<ore:plateIron>						],
		[null,								<ore:blockSeared>,			<ore:chest>,				<ore:blockSeared>,			null								],
		[<actuallyadditions:block_misc:4>,	ArtisanWorkstationInput,	ArtisanWorkstationInput,	ArtisanWorkstationInput,	<actuallyadditions:block_misc:4>	],
		[<ore:logWood>,						<ore:logWood>,				<ore:logWood>,				<ore:logWood>,				<ore:logWood>						]])
	.addOutput( <artisanworktables:workshop:3> )
	.create();


//=====================================================================================================================================================================================================
//Engineer Table
//=====================================================================================================================================================================================================


RecipeBuilder.get("basic")
	.setShaped([
		[<ore:plateTin>,		<ore:plateBronze>,					<ore:plateTin>		],
		[null,					<artisanworktables:workstation:5>,	null				],
		[<ore:logWood>,			<ore:logWood>,						<ore:logWood>		]])
	.addOutput( <artisanworktables:workstation:6> )
	.create();
ArtisanWorkstationInput = <artisanworktables:workstation:6>;

RecipeBuilder.get("basic")
	.setShaped([
		[<ore:plateTin>,					<ore:plateBronze>,			<ore:plateBronze>,			<ore:plateBronze>,			<ore:plateTin>						],
		[<ore:plateBronze>,					<quark:sturdy_stone>,		<quark:sturdy_stone>,		<quark:sturdy_stone>,		<ore:plateBronze>					],
		[null,								<quark:sturdy_stone>,		<minecraft:chest>,			<quark:sturdy_stone>,		null								],
		[<actuallyadditions:block_misc:4>,	ArtisanWorkstationInput,	ArtisanWorkstationInput,	ArtisanWorkstationInput,	<actuallyadditions:block_misc:4>	],
		[<ore:logWood>,						<ore:logWood>,				<ore:logWood>,				<ore:logWood>,				<ore:logWood>						]])
	.addOutput( <artisanworktables:workshop:6> )
	.create();


//=====================================================================================================================================================================================================
//Tanner's Workstation
//=====================================================================================================================================================================================================


RecipeBuilder.get("basic")
	.setShaped([
		[<ore:leatherSheet>,	<ore:leatherSheet>,					<ore:leatherSheet>	],
		[null,					<artisanworktables:workstation:5>,	null				],
		[<ore:logWood>,			<ore:logWood>,						<ore:logWood>		]])
	.addOutput( <artisanworktables:workstation:13> )
	.create();

ArtisanWorkstationInput = <artisanworktables:workstation:13>;
RecipeBuilder.get("basic")
	.setShaped([
		[<ore:leather>,			<ore:leatherSheet>,			<ore:leatherSheet>,			<ore:leatherSheet>,			<ore:leather>		],
		[<ore:leatherSheet>,	<ore:plankWood>,			<ore:plankWood>,			<ore:plankWood>,			<ore:leatherSheet>	],
		[null,					<ore:logWood>,				<ore:chest>,				<ore:logWood>,				null				],
		[<ore:logWood>,			ArtisanWorkstationInput,	ArtisanWorkstationInput,	ArtisanWorkstationInput,	<ore:logWood>		],
		[<ore:logWood>,			<ore:logWood>,				<ore:logWood>,				<ore:logWood>,				<ore:logWood>		]])
	.addOutput( <artisanworktables:workshop:13> )
	.create();


