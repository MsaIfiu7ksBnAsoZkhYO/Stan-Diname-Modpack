//=====================================================================================================================================================================================================	
//	Import-ant things
//=====================================================================================================================================================================================================


import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import mods.artisanworktables.builder.RecipeBuilder;
	
	

//=====================================================================================================================================================================================================	
//  Remove Easy Tool recipes - Everything must be forged
//=====================================================================================================================================================================================================	


//recipes.removeByRecipeName("notreepunching:tools/iron_knife");
//recipes.removeByRecipeName("notreepunching:tools/iron_mattock");
//recipes.removeByRecipeName("notreepunching:tools/iron_saw");
//recipes.removeByRecipeName("notreepunching:tools/gold_knife");
//recipes.removeByRecipeName("notreepunching:tools/gold_mattock");
//recipes.removeByRecipeName("notreepunching:tools/gold_saw");
//recipes.removeByRecipeName("notreepunching:copper_knife");
//recipes.removeByRecipeName("notreepunching:copper_mattock");
//recipes.removeByRecipeName("notreepunching:copper_saw");
//recipes.removeByRecipeName("notreepunching:tin_knife");
//recipes.removeByRecipeName("notreepunching:tin_mattock");
//recipes.removeByRecipeName("notreepunching:tin_saw");
//recipes.removeByRecipeName("notreepunching:bronze_knife");
//recipes.removeByRecipeName("notreepunching:bronze_mattock");
//recipes.removeByRecipeName("notreepunching:bronze_saw");
//recipes.removeByRecipeName("notreepunching:steel_knife");
//recipes.removeByRecipeName("notreepunching:steel_mattock");
//recipes.removeByRecipeName("notreepunching:steel_saw");


//=====================================================================================================================================================================================================	
//  Flint starter tools
//=====================================================================================================================================================================================================	
	

	//	Tweak Plant string recipe	_______________________________________________________________________________________________________________________________________________________________________
//recipes.removeByRecipeName("notreepunching:misc/grass_string");
recipes.addShapeless(
  "Plant String", 
  <notreepunching:grass_string>, 
  [
    <ore:fiberPlant>, 
    <ore:fiberPlant>, 
    <ore:fiberPlant>, 
    <ore:fiberPlant>
  ]
);
  
	//	Flint Hatchet recipe using plant string	_______________________________________________________________________________________________________________________________________________________________________
recipes.addShapeless(
  "Flinty McHatchet", 
  <notreepunching:axe/flint>,
  [
    <ore:stringPlant>, 
    <ore:shardFlint>, 
    <ore:stickWood>
  ]
);
 
	//  Flint Pickaxe with plant string if you want to make one of these for some reason		_______________________________________________________________________________________________________________________________________________________________________
recipes.addShaped(
  "Flinty McPickaxe", 
  <notreepunching:pickaxe/flint>,
  [
    [	<ore:shardFlint>,	<ore:stringPlant>,	<ore:shardFlint>	],
    [	<ore:shardFlint>,	<ore:stickWood>,	  <ore:shardFlint>	],
    [	null,				      <ore:stickWood>,	  null      				]
  ]
);

  //  Flint shovel with plant string if you want to make one of these for some reason		_______________________________________________________________________________________________________________________________________________________________________
recipes.addShaped(
  "Flinty McShovel", 
  <notreepunching:shovel/flint>,
  [
    [	null,				      <ore:shardFlint>,   <ore:shardFlint>	],
    [	null,				      <ore:stringPlant>,  <ore:shardFlint>	],
    [	<ore:stickWood>,	null,			        	null	      			]
  ]
);
  

  //  Flint night companion with plant string.  I know why you want to make one of these.  ( ͡° ͜ʖ ͡°)		_______________________________________________________________________________________________________________________________________________________________________
recipes.addShaped(
  "Flinty McLadyoftheNight", 
  <notreepunching:hoe/flint>,
  [
    [	<ore:stringPlant>,  <ore:shardFlint>, <ore:shardFlint>	],
    [	<ore:stickWood>,    null,			        null			      	],
    [	<ore:stickWood>,    null,			        null			      	]
  ]
);
  
  //  Fire started with Plant String		_______________________________________________________________________________________________________________________________________________________________________
recipes.addShaped(
  "NTP FireStarter", 
  <notreepunching:fire_starter>,
  [
    [	<ore:stickWood>,	<ore:stringPlant> ],
    [	<ore:shardFlint>,	<ore:stickWood>   ],
]);
 

//=====================================================================================================================================================================================================	
//  Flint starter tools
//=====================================================================================================================================================================================================	


	//	Sandstone Rocks to Sandstone blocks	Shouldn't give 2 blocks.  _______________________________________________________________________________________________________________________________________________________________________
//recipes.removeByRecipeName("notreepunching:blocks/rocks_to_sandstone");
recipes.addShapeless(
  "Sandstone Rocks to Sandstone", 
  <minecraft:sandstone>, 
  [
    <notreepunching:rock/sandstone>, 
    <notreepunching:rock/sandstone>, 
    <notreepunching:rock/sandstone>, 
    <notreepunching:rock/sandstone>
  ]
);

	//	Red Sandstone Rocks to Red Sandstone blocks	Shouldn't give 2 blocks_______________________________________________________________________________________________________________________________________________________________________
//recipes.removeByRecipeName("notreepunching:blocks/rocks_to_red_sandstone");
recipes.addShapeless(
  "Red Sandstone Rocks to Red Sandstone", 
  <minecraft:red_sandstone>, 
  [
    <notreepunching:rock/red_sandstone>, 
    <notreepunching:rock/red_sandstone>, 
    <notreepunching:rock/red_sandstone>, 
    <notreepunching:rock/red_sandstone>
  ]
);



//=====================================================================================================================================================================================================	
//  Pottery on Potter's table
//=====================================================================================================================================================================================================	


	//	Clay ball > Unfired Clay Brick  _______________________________________________________________________________________________________________________________________________________________________
//recipes.remove(<notreepunching:clay_brick>);
RecipeBuilder.get("potter")
  .setShapeless( [ <minecraft:clay_ball> ] )
  .setFluid( <liquid:water> * 50 )
  .setSecondaryIngredients( [ <minecraft:bowl> ] )
  .addTool( <ore:artisansTrowel> , 1 )
  .addOutput( <notreepunching:clay_brick> )
  .setExtraOutputOne( <minecraft:bowl> , 1.0 )
  .create();

	//	Clay block > Large Vessel  _______________________________________________________________________________________________________________________________________________________________________
RecipeBuilder.get("potter")
  .setShapeless( [ <minecraft:clay> ] )
  .setFluid( <liquid:water> * 50 )
  .setSecondaryIngredients( [ <minecraft:bowl> ] )
  .addTool( <ore:artisansTrowel> , 1 )
  .addOutput( <notreepunching:pottery/large_vessel> )
  .setExtraOutputOne( <minecraft:bowl> , 1.0 )
  .create();

	//	Large Vessel > Small Vessel  _______________________________________________________________________________________________________________________________________________________________________
RecipeBuilder.get("potter")
  .setShapeless( [ <notreepunching:pottery/large_vessel> ] )
  .setFluid( <liquid:water> * 50 )
  .setSecondaryIngredients( [ <minecraft:bowl> ] )
  .addTool( <ore:artisansTrowel> , 1 )
  .addOutput( <notreepunching:pottery/small_vessel> )
  .setExtraOutputOne( <minecraft:bowl> , 1.0 )
  .create();

  //	Small Vessel > Clay Bucket  _______________________________________________________________________________________________________________________________________________________________________
RecipeBuilder.get("potter")
  .setShapeless( [ <notreepunching:pottery/small_vessel> ] )
  .setFluid( <liquid:water> * 50 )
  .setSecondaryIngredients( [ <minecraft:bowl> ] )
  .addTool( <ore:artisansTrowel> , 1 )
  .addOutput( <notreepunching:pottery/bucket> )
  .setExtraOutputOne( <minecraft:bowl> , 1.0 )
  .create();
  
  //	Clay Bucket > Clay Flowerpot  _______________________________________________________________________________________________________________________________________________________________________
RecipeBuilder.get("potter")
  .setShapeless( [ <notreepunching:pottery/bucket> ] )
  .setFluid( <liquid:water> * 50 )
  .setSecondaryIngredients( [ <minecraft:bowl> ] )
  .addTool( <ore:artisansTrowel> , 1 )
  .addOutput( <notreepunching:pottery/flower_pot> )
  .setExtraOutputOne( <minecraft:bowl> , 1.0 )
  .create();