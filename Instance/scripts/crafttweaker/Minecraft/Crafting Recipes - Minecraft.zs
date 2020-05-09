//=====================================================================================================================================================================================================	
//	Import-ant things
//=====================================================================================================================================================================================================


import mods.artisanworktables.builder.RecipeBuilder;


//=====================================================================================================================================================================================================	
//	Adjusting Recipes for thingies
//=====================================================================================================================================================================================================


  //  Test Recipes for tool slotting
  RecipeBuilder.get("potter")
  .setShaped([
    [<minecraft:stone>, null, <minecraft:stone>],
    [null, null, null],
    [<minecraft:stone>, null, <minecraft:stone>]])
  .addTool( <tconstruct:shovel:*> , 1 )
  .addOutput(<minecraft:stone>)
  .create();


    //  Furnace
recipes.remove( <minecraft:furnace> );
RecipeBuilder.get("mason")
    .setShaped([
        [<quark:sturdy_stone>,  <quark:sturdy_stone>,           <quark:sturdy_stone>    ],
        [<quark:sturdy_stone>,  <crossroads:heating_chamber>,   <quark:sturdy_stone>    ],
        [<quark:sturdy_stone>,  <crossroads:coal_heater>,       <quark:sturdy_stone>    ]])
    .setFluid( <liquid:mortar> * 100 )
    .addTool( <ore:artisansTrowel> , 1 )
    .addOutput( <minecraft:furnace> )
    .create();

    //  Vanilla Crafting table if needed for recipes or something
recipes.remove( <minecraft:crafting_table> );
RecipeBuilder.get("basic")
  .setShapeless([ <artisanworktables:workstation:5> ])
  .addOutput( <minecraft:crafting_table> )
  .create();

RecipeBuilder.get("basic")
  .setShapeless([ <minecraft:crafting_table> ])
  .addOutput( <artisanworktables:workstation:5> )
  .create();

    //  Torches so you can still make them on the go
recipes.remove( <actuallyadditions:block_tiny_torch> );
recipes.remove( <minecraft:torch> );
recipes.addShapeless( <actuallyadditions:block_tiny_torch>, [<ore:itemCoalpellet>,<ore:stickWood>]);
recipes.addShapeless( <minecraft:torch> * 4, [<ore:charcoal>,<ore:stickWood>]);
recipes.addShapeless( <minecraft:torch> * 4, [<ore:coal>,<ore:stickWood>]);
recipes.addShapeless( <minecraft:torch> * 3, [<ore:itemLignite>,<ore:stickWood>]);
recipes.addShapeless( <minecraft:torch> * 6, [<ore:itemBituminous>,<ore:stickWood>]);
recipes.addShapeless( <minecraft:torch> * 8, [<ore:itemAnthracite>,<ore:stickWood>]);
recipes.addShapeless( <minecraft:torch> * 10, [<ore:fuelCoke>,<ore:stickWood>]);

  //  Remove Tipped arrow crfting table recipes
recipes.remove( <minecraft:tipped_arrow:*> );

  //  Clay Block from other Clay block types
recipes.addShapeless( <minecraft:clay>, [<ore:blockClay>]);

  //  Clay ball recipes
recipes.remove( <minecraft:clay_ball> );
RecipeBuilder.get( "potter" )
  .setShapeless([ <ore:blockClay> ])
  .setFluid( <liquid:water> * 50 )
  .addTool( <ore:artisansTrowel> , 1 )
  .addOutput( <minecraft:clay_ball> * 4 )
  .create();

recipes.remove( <minecraft:clay> );
RecipeBuilder.get( "potter" )
  .setShapeless([ <ore:clay>, <ore:clay>, <ore:clay>, <ore:clay> ])
  .setFluid( <liquid:water> * 50 )
  .addTool( <ore:artisansTrowel> , 1 )
  .addOutput( <minecraft:clay> )
  .create();

  //  Wooden Bowl
recipes.remove( <minecraft:bowl> );
RecipeBuilder.get( "carpenter" )
  .setShaped([
    [<ore:slabWood>,  null,           <ore:slabWood>  ],
    [null,            <ore:slabWood>, null            ]])
  .addTool( <ore:artisansHammer> , 1 )
  .addOutput( <minecraft:bowl> )
  .create();

  //  Sticks
recipes.remove( <minecraft:stick> );
RecipeBuilder.get( "carpenter" )
  .setShaped([
    [<ore:plankWood>  ],
    [<ore:plankWood>  ]])
  .addTool( <ore:artisansHandsaw> , 1 )
  .addOutput( <minecraft:stick> * 4 )
  .create();