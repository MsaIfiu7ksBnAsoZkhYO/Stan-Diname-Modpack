//=====================================================================================================================================================================================================	
//	Standard recipe for stairs and slabs are handed by the carpenter table script like other wood types
//=====================================================================================================================================================================================================


//=====================================================================================================================================================================================================	
//	Import-ant things
//=====================================================================================================================================================================================================


import mods.artisanworktables.builder.RecipeBuilder;


//=====================================================================================================================================================================================================	
//	Adjusting Recipes for thingies
//=====================================================================================================================================================================================================


//=====================================================================================================================================================================================================	
//  Framed block
//=====================================================================================================================================================================================================


recipes.remove( <blockcraftery:editable_block> );
RecipeBuilder.get("carpenter")
  .setShaped([
    [<bibliocraft:framingboard>, null, <bibliocraft:framingboard>],
    [null, <bibliocraft:framingboard>, null],
    [<bibliocraft:framingboard>, null, <bibliocraft:framingboard>]])
  .addTool(<ore:artisansHammer>, 1)
  .addOutput( <blockcraftery:editable_block> )
  .create();

//=====================================================================================================================================================================================================	
//  Framed Reinforced block
//=====================================================================================================================================================================================================


recipes.remove( <blockcraftery:editable_block_reinforced> );
RecipeBuilder.get("carpenter")
  .setShaped([
    [<bibliocraft:framingboard>, <ore:nuggetIron>, <bibliocraft:framingboard>],
    [<ore:nuggetIron>, <bibliocraft:framingboard>, <ore:nuggetIron>],
    [<bibliocraft:framingboard>, <ore:nuggetIron>, <bibliocraft:framingboard>]])
  .addTool(<ore:artisansHammer>, 1)
  .addOutput(<blockcraftery:editable_block_reinforced>)
  .create();


  //  Framed Slant
recipes.remove( <blockcraftery:editable_slant> );
RecipeBuilder.get("carpenter")
  .setShaped([
    [<blockcraftery:editable_block>, null],
    [null, <blockcraftery:editable_block>]])
  .addTool(<ore:artisansHammer>, 1)
  .addOutput( <blockcraftery:editable_slant> )
  .create();

  //  Framed outer slant
recipes.remove( <blockcraftery:editable_outer_corner> );
RecipeBuilder.get("carpenter")
  .setShapeless([<blockcraftery:editable_slant>])
  .addTool(<ore:artisansHammer>, 1)
  .addOutput( <blockcraftery:editable_outer_corner> )
  .create();

  //  Framed inner slant
recipes.remove( <blockcraftery:editable_inner_corner> );
RecipeBuilder.get("carpenter")
  .setShaped([
    [null, <blockcraftery:editable_slant>],
    [<blockcraftery:editable_slant>, <blockcraftery:editable_slant>]])
  .addTool(<ore:artisansHammer>, 1)
  .addOutput( <blockcraftery:editable_inner_corner> )
  .create();


  //  Framed Reinforced Slant
recipes.remove( <blockcraftery:editable_slant_reinforced> );
RecipeBuilder.get("carpenter")
  .setShaped([
    [<blockcraftery:editable_block_reinforced>, null],
    [null, <blockcraftery:editable_block_reinforced>]])
  .addTool(<ore:artisansHammer>, 1)
  .addOutput( <blockcraftery:editable_slant_reinforced> )
  .create();

  //  Framed Reinforced outer slant
recipes.remove( <blockcraftery:editable_outer_corner_reinforced> );
RecipeBuilder.get("carpenter")
  .setShapeless([<blockcraftery:editable_slant_reinforced>])
  .addTool(<ore:artisansHammer>, 1)
  .addOutput( <blockcraftery:editable_outer_corner_reinforced> )
  .create();

  //  Framed Reinforced inner slant
recipes.remove( <blockcraftery:editable_inner_corner_reinforced> );
RecipeBuilder.get("carpenter")
  .setShaped([
    [null, <blockcraftery:editable_slant_reinforced>],
    [<blockcraftery:editable_slant_reinforced>, <blockcraftery:editable_slant_reinforced>]])
  .addTool(<ore:artisansHammer>, 1)
  .addOutput( <blockcraftery:editable_inner_corner_reinforced> )
  .create();

  //  Framed Wall
recipes.remove( <blockcraftery:editable_wall> );
RecipeBuilder.get("carpenter")
  .setShaped([
    [<blockcraftery:editable_block>, <blockcraftery:editable_fence>, <blockcraftery:editable_block>]])
  .addTool(<ore:artisansHammer>, 1)
  .addOutput( <blockcraftery:editable_wall> )
  .create();

  //  Framed Reinforced Wall
recipes.remove( <blockcraftery:editable_wall_reinforced> );
RecipeBuilder.get("carpenter")
  .setShaped([
    [<blockcraftery:editable_block_reinforced>, <blockcraftery:editable_fence_reinforced>, <blockcraftery:editable_block_reinforced>]])
  .addTool(<ore:artisansHammer>, 1)
  .addOutput( <blockcraftery:editable_wall_reinforced> )
  .create();



  //  Framed pressure plate
recipes.removeByRecipeName( "blockcraftery:editable_pressure_plate" );
RecipeBuilder.get("carpenter")
  .setShapeless([<blockcraftery:editable_block>, <ore:pressurePlateWood>, <blockcraftery:editable_block>])
  .addTool(<ore:artisansHammer>, 1)
  .addOutput( <blockcraftery:editable_pressure_plate_all> )
  .create();

  //  Framed Reinforced pressure plate
recipes.removeByRecipeName( "blockcraftery:editable_pressure_plate_reinforced" );
RecipeBuilder.get("carpenter")
  .setShapeless([<blockcraftery:editable_block_reinforced>, <ore:pressurePlateWood>, <blockcraftery:editable_block_reinforced>])
  .addTool(<ore:artisansHammer>, 1)
  .addOutput( <blockcraftery:editable_pressure_plate_all_reinforced> )
  .create();