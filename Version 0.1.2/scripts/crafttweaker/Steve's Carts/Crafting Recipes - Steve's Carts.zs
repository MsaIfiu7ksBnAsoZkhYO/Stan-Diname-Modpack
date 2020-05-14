//=====================================================================================================================================================================================================	
//	Import-ant things
//=====================================================================================================================================================================================================


import mods.artisanworktables.builder.RecipeBuilder;


//=====================================================================================================================================================================================================
//  Cart Assembler
//=====================================================================================================================================================================================================


recipes.remove( <stevescarts:blockcartassembler> );
RecipeBuilder.get("basic")
  .setShaped([
    [<ore:stone>, <ore:stone>, <ore:blockGlass>, <ore:stone>, <ore:stone>],
    [<ore:stone>, <tconstruct:wooden_hopper>, <ore:artisansHammer>, <crossroads:heat_cable_copper_wool>, <ore:stone>],
    [<ore:blockGlass>, <ore:chest>, <notreepunching:ceramic_large_vessel>, <crossroads:heat_cable_copper_wool>, <ore:blockGlass>],
    [<ore:stone>, <ore:chest>, <artisanworktables:workshop:5>, <crossroads:coal_heater>, <ore:stone>],
    [<ore:stone>, <ore:stone>, <ore:blockGlass>, <ore:stone>, <ore:stone>]])
  .addTool( <ore:artisansHammer>, 5 )
  .addOutput( <stevescarts:blockcartassembler> )
  .create();


//=====================================================================================================================================================================================================
//  Wooden Wheels
//=====================================================================================================================================================================================================

recipes.remove( <stevescarts:modulecomponents> );
RecipeBuilder.get("carpenter")
  .setShaped([
    [<tconstruct:pattern>, <minecraft:stick>, <tconstruct:pattern>],
    [<minecraft:stick>, <ancientwarfare:component:3>, <minecraft:stick>],
    [<tconstruct:pattern>, <minecraft:stick>, <tconstruct:pattern>]])
  .addTool(<ore:artisansHammer>, 1)
  .addOutput(<stevescarts:modulecomponents>)
  .create();


//=====================================================================================================================================================================================================
//  Wooden Hull
//=====================================================================================================================================================================================================


recipes.remove( <stevescarts:cartmodule:37> );
RecipeBuilder.get("carpenter")
  .setShaped([
    [<ore:plankWood>, null, <ore:plankWood>],
    [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],
    [<stevescarts:modulecomponents>, null, <stevescarts:modulecomponents>]])
  .addTool(<ore:artisansHammer>, 1)
  .addOutput( <stevescarts:cartmodule:37> )
  .create();


//=====================================================================================================================================================================================================
//  Tiny Coal Engine
//=====================================================================================================================================================================================================


recipes.remove( <stevescarts:cartmodule:44> );
RecipeBuilder.get("basic")
  .setShaped([
    [null, <ore:itemCoalpellet>, null],
    [<ore:itemCoalpellet>, <minecraft:furnace>, <ore:itemCoalpellet>],
    [null, <stevescarts:modulecomponents>, null]])
  .addTool(<ore:artisansHammer>, 1)
  .addOutput(<stevescarts:cartmodule:44>)
  .create();
  

//=====================================================================================================================================================================================================
//  Chest Pane
//=====================================================================================================================================================================================================


recipes.remove( <stevescarts:modulecomponents:30> );
RecipeBuilder.get("carpenter")
  .setShaped([
    [<ore:pattern>, <ore:pattern>, <ore:pattern>],
    [<ore:pattern>, <ore:pattern>, <ore:pattern>],
    [<ore:pattern>, <ore:pattern>, <ore:pattern>]])
  .addTool(<ore:artisansHammer>, 1)
  .addOutput(<stevescarts:modulecomponents:30>)
  .create();


//=====================================================================================================================================================================================================
//  Large Chest Pane
//=====================================================================================================================================================================================================


recipes.remove( <stevescarts:modulecomponents:31> );
RecipeBuilder.get("carpenter")
  .setShaped([
    [<stevescarts:modulecomponents:30>, <stevescarts:modulecomponents:30>, <stevescarts:modulecomponents:30>],
    [<stevescarts:modulecomponents:30>, <stevescarts:modulecomponents:30>, <stevescarts:modulecomponents:30>],
    [<stevescarts:modulecomponents:30>, <stevescarts:modulecomponents:30>, <stevescarts:modulecomponents:30>]])
  .addTool(<ore:artisansHammer>, 1)
  .addOutput(<stevescarts:modulecomponents:31>)
  .create();


//=====================================================================================================================================================================================================
//  Huge Chest Pane
//=====================================================================================================================================================================================================


recipes.remove( <stevescarts:modulecomponents:32> );
RecipeBuilder.get("carpenter")
  .setShaped([
    [<stevescarts:modulecomponents:31>, <stevescarts:modulecomponents:31>, <stevescarts:modulecomponents:31>],
    [<stevescarts:modulecomponents:31>, <stevescarts:modulecomponents:31>, <stevescarts:modulecomponents:31>],
    [<stevescarts:modulecomponents:31>, <stevescarts:modulecomponents:31>, <stevescarts:modulecomponents:31>]])
  .addTool(<ore:artisansHammer>, 1)
  .addOutput(<stevescarts:modulecomponents:32>)
  .create();


//=====================================================================================================================================================================================================
//  Top Chest
//=====================================================================================================================================================================================================


recipes.remove( <stevescarts:cartmodule:3> );
RecipeBuilder.get("carpenter")
  .setShaped([
    [<stevescarts:modulecomponents:32>, <stevescarts:modulecomponents:32>, <stevescarts:modulecomponents:32>],
    [<stevescarts:modulecomponents:30>, <ore:chest>, <stevescarts:modulecomponents:30>],
    [<stevescarts:modulecomponents:32>, <stevescarts:modulecomponents:32>, <stevescarts:modulecomponents:32>]])
  .addTool(<ore:artisansHammer>, 1)
  .addOutput(<stevescarts:cartmodule:3>)
  .create();


//=====================================================================================================================================================================================================
//  Front Chest
//=====================================================================================================================================================================================================


recipes.remove( <stevescarts:cartmodule:4> );
RecipeBuilder.get("carpenter")
  .setShaped([
    [<stevescarts:modulecomponents:30>, <stevescarts:modulecomponents:31>, <stevescarts:modulecomponents:30>],
    [<stevescarts:modulecomponents:30>, <ore:chest>, <stevescarts:modulecomponents:30>],
    [<stevescarts:modulecomponents:31>, <stevescarts:modulecomponents:31>, <stevescarts:modulecomponents:31>]])
  .addTool(<ore:artisansHammer>, 1)
  .addOutput(<stevescarts:cartmodule:4>)
  .create();


//=====================================================================================================================================================================================================
//  Side Chest
//=====================================================================================================================================================================================================


recipes.remove( <stevescarts:cartmodule:2> );
RecipeBuilder.get("carpenter")
  .setShaped([
    [<stevescarts:modulecomponents:32>, <stevescarts:modulecomponents:30>, <stevescarts:modulecomponents:32>],
    [<stevescarts:modulecomponents:31>, <ore:chest>, <stevescarts:modulecomponents:31>],
    [<stevescarts:modulecomponents:32>, <stevescarts:modulecomponents:30>, <stevescarts:modulecomponents:32>]])
  .addTool(<ore:artisansHammer>, 1)
  .addOutput(<stevescarts:cartmodule:2>)
  .create();


//=====================================================================================================================================================================================================
//  Internal Storage
//=====================================================================================================================================================================================================


recipes.remove( <stevescarts:cartmodule:5> );
RecipeBuilder.get("carpenter")
  .setShaped([
    [<stevescarts:modulecomponents:30>, <stevescarts:modulecomponents:30>, <stevescarts:modulecomponents:30>],
    [<stevescarts:modulecomponents:30>, <ore:chest>, <stevescarts:modulecomponents:30>],
    [<stevescarts:modulecomponents:30>, <stevescarts:modulecomponents:30>, <stevescarts:modulecomponents:30>]])
  .addTool(<ore:artisansHammer>, 1)
  .addOutput(<stevescarts:cartmodule:5>)
  .create();


//=====================================================================================================================================================================================================
//  Tank pane
//=====================================================================================================================================================================================================


recipes.remove( <stevescarts:modulecomponents:61> );
RecipeBuilder.get("basic")
  .setShaped([
    [<ore:paneGlass>, <ore:paneGlass>, <ore:paneGlass>],
    [<ore:paneGlass>, <ore:paneGlass>, <ore:paneGlass>],
    [<ore:paneGlass>, <ore:paneGlass>, <ore:paneGlass>]])
  .addTool(<ore:artisansHammer>, 1)
  .addOutput(<stevescarts:modulecomponents:61>)
  .create();


//=====================================================================================================================================================================================================
//  Large Tank pane
//=====================================================================================================================================================================================================


recipes.remove( <stevescarts:modulecomponents:62> );
RecipeBuilder.get("basic")
  .setShaped([
    [<stevescarts:modulecomponents:61>, <stevescarts:modulecomponents:61>, <stevescarts:modulecomponents:61>],
    [<stevescarts:modulecomponents:61>, <stevescarts:modulecomponents:61>, <stevescarts:modulecomponents:61>],
    [<stevescarts:modulecomponents:61>, <stevescarts:modulecomponents:61>, <stevescarts:modulecomponents:61>]])
  .addTool(<ore:artisansHammer>, 1)
  .addOutput(<stevescarts:modulecomponents:62>)
  .create();


//=====================================================================================================================================================================================================
//  Large Tank pane
//=====================================================================================================================================================================================================


recipes.remove( <stevescarts:modulecomponents:63> );
RecipeBuilder.get("basic")
  .setShaped([
    [<stevescarts:modulecomponents:62>, <stevescarts:modulecomponents:62>, <stevescarts:modulecomponents:62>],
    [<stevescarts:modulecomponents:62>, <stevescarts:modulecomponents:62>, <stevescarts:modulecomponents:62>],
    [<stevescarts:modulecomponents:62>, <stevescarts:modulecomponents:62>, <stevescarts:modulecomponents:62>]])
  .addTool(<ore:artisansHammer>, 1)
  .addOutput(<stevescarts:modulecomponents:63>)
  .create();


//=====================================================================================================================================================================================================
//  Top Tank
//=====================================================================================================================================================================================================


recipes.remove( <stevescarts:cartmodule:65> );
RecipeBuilder.get("basic")
  .setShaped([
    [<stevescarts:modulecomponents:63>, <stevescarts:modulecomponents:63>, <stevescarts:modulecomponents:63>],
    [<stevescarts:modulecomponents:61>, <tcomplement:porcelain_tank:1>, <stevescarts:modulecomponents:61>],
    [<stevescarts:modulecomponents:63>, <stevescarts:modulecomponents:63>, <stevescarts:modulecomponents:63>]])
  .addTool(<ore:artisansHammer>, 1)
  .addOutput(<stevescarts:cartmodule:65>)
  .create();


//=====================================================================================================================================================================================================
//  Front Tank
//=====================================================================================================================================================================================================


recipes.remove( <stevescarts:cartmodule:67> );
RecipeBuilder.get("basic")
  .setShaped([
    [<stevescarts:modulecomponents:61>, <stevescarts:modulecomponents:62>, <stevescarts:modulecomponents:61>],
    [<stevescarts:modulecomponents:61>, <tcomplement:porcelain_tank:1>, <stevescarts:modulecomponents:61>],
    [<stevescarts:modulecomponents:62>, <stevescarts:modulecomponents:62>, <stevescarts:modulecomponents:62>]])
  .addTool(<ore:artisansHammer>, 1)
  .addOutput(<stevescarts:cartmodule:67>)
  .create();


//=====================================================================================================================================================================================================
//  Side Tank
//=====================================================================================================================================================================================================


recipes.remove( <stevescarts:cartmodule:64> );
RecipeBuilder.get("basic")
  .setShaped([
    [<stevescarts:modulecomponents:63>, <stevescarts:modulecomponents:61>, <stevescarts:modulecomponents:63>],
    [<stevescarts:modulecomponents:62>, <tcomplement:porcelain_tank:1>, <stevescarts:modulecomponents:62>],
    [<stevescarts:modulecomponents:63>, <stevescarts:modulecomponents:61>, <stevescarts:modulecomponents:63>]])
  .addTool(<ore:artisansHammer>, 1)
  .addOutput(<stevescarts:cartmodule:64>)
  .create();


//=====================================================================================================================================================================================================
//  Internal Tank
//=====================================================================================================================================================================================================


recipes.remove( <stevescarts:cartmodule:63> );
RecipeBuilder.get("basic")
  .setShaped([
    [<stevescarts:modulecomponents:61>, <stevescarts:modulecomponents:61>, <stevescarts:modulecomponents:61>],
    [<stevescarts:modulecomponents:61>, <tcomplement:porcelain_tank:1>, <stevescarts:modulecomponents:61>],
    [<stevescarts:modulecomponents:61>, <stevescarts:modulecomponents:61>, <stevescarts:modulecomponents:61>]])
  .addTool(<ore:artisansHammer>, 1)
  .addOutput(<stevescarts:cartmodule:63>)
  .create();