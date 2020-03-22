//=====================================================================================================================================================================================================	
//	Import-ant things
//=====================================================================================================================================================================================================


import mods.artisanworktables.builder.RecipeBuilder;


//=====================================================================================================================================================================================================	
//	Adjusting Recipes for thingies
//=====================================================================================================================================================================================================


    //  Furnace
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
RecipeBuilder.get("basic")
  .setShapeless([<artisanworktables:workstation:5>])
  .addOutput(<minecraft:crafting_table>)
  .create();

RecipeBuilder.get("basic")
  .setShapeless([<minecraft:crafting_table>])
  .addOutput(<artisanworktables:workstation:5>)
  .create();

    //  Torches so you can still make them on the go
recipes.addShapeless(<actuallyadditions:block_tiny_torch>, [<ore:itemCoalpellet>,<ore:stickWood>]);
recipes.addShapeless(<minecraft:torch> * 4, [<ore:charcoal>,<ore:stickWood>]);
recipes.addShapeless(<minecraft:torch> * 4, [<ore:coal>,<ore:stickWood>]);
recipes.addShapeless(<minecraft:torch> * 3, [<ore:itemLignite>,<ore:stickWood>]);
recipes.addShapeless(<minecraft:torch> * 6, [<ore:itemBituminous>,<ore:stickWood>]);
recipes.addShapeless(<minecraft:torch> * 8, [<ore:itemAnthracite>,<ore:stickWood>]);
recipes.addShapeless(<minecraft:torch> * 10, [<ore:fuelCoke>,<ore:stickWood>]);