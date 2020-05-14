//=====================================================================================================================================================================================================	
//	Import-ant things
//=====================================================================================================================================================================================================

import crafttweaker.item.IItemStack;
import mods.artisanworktables.builder.RecipeBuilder;

//=====================================================================================================================================================================================================	
//	Add crafting recipes to turn layers back into blocks.
//=====================================================================================================================================================================================================

val BlockLayers = {
  <minecraft:clay>                : <blocklayering:layer_clay>,
  <minecraft:sand>                : <blocklayering:layer_sand>,
  <minecraft:sand:1>              : <blocklayering:layer_red_sand>,
  <minecraft:gravel>              : <blocklayering:layer_gravel>,
  <minecraft:hay_block>           : <blocklayering:layer_hay>,
  <minecraft:soul_sand>           : <blocklayering:layer_soulsand>,
  <minecraft:dirt>                : <blocklayering:layer_dirt>,
  <minecraft:dirt:1>              : <blocklayering:layer_coarse_dirt>,
  <minecraft:dirt:2>              : <blocklayering:layer_podzol>,
  <minecraft:mycelium>            : <blocklayering:layer_mycelium>,
  <minecraft:grass>               : <blocklayering:layer_grass>,
  <minecraft:grass_path>          : <blocklayering:layer_path>,
  <minecraft:concrete_powder:15>  : <blocklayering:layer_concrete_powder_black>,
  <minecraft:concrete_powder:11>  : <blocklayering:layer_concrete_powder_blue>,
  <minecraft:concrete_powder:12>  : <blocklayering:layer_concrete_powder_brown>,
  <minecraft:concrete_powder:9>   : <blocklayering:layer_concrete_powder_cyan>,
  <minecraft:concrete_powder:7>   : <blocklayering:layer_concrete_powder_gray>,
  <minecraft:concrete_powder:13>  : <blocklayering:layer_concrete_powder_green>,
  <minecraft:concrete_powder:3>   : <blocklayering:layer_concrete_powder_light_blue>,
  <minecraft:concrete_powder:5>   : <blocklayering:layer_concrete_powder_lime>,
  <minecraft:concrete_powder:2>   : <blocklayering:layer_concrete_powder_magenta>,
  <minecraft:concrete_powder:1>   : <blocklayering:layer_concrete_powder_orange>,
  <minecraft:concrete_powder:6>   : <blocklayering:layer_concrete_powder_pink>,
  <minecraft:concrete_powder:10>  : <blocklayering:layer_concrete_powder_purple>,
  <minecraft:concrete_powder:14>  : <blocklayering:layer_concrete_powder_red>,
  <minecraft:concrete_powder:8>   : <blocklayering:layer_concrete_powder_silver>,
  <minecraft:concrete_powder>     : <blocklayering:layer_concrete_powder_white>,
  <minecraft:concrete_powder:4>   : <blocklayering:layer_concrete_powder_yellow>,
  <minecraft:leaves>              : <blocklayering:layer_leaves_oak>,
  <minecraft:leaves:2>            : <blocklayering:layer_leaves_birch>,
  <minecraft:leaves:1>            : <blocklayering:layer_leaves_spruce>,
  <minecraft:leaves:3>            : <blocklayering:layer_leaves_jungle>,
  <minecraft:leaves2:1>           : <blocklayering:layer_leaves_big_oak>,
  <minecraft:leaves2>             : <blocklayering:layer_leaves_acacia>,

} as IItemStack[IItemStack];


for Block,Layer in BlockLayers {

RecipeBuilder.get("basic")
  .setShapeless([ 
    Layer, 
    Layer, 
    Layer, 
    Layer, 
    Layer, 
    Layer, 
    Layer, 
    Layer
  ])
  .addOutput( Block )
  .create();

}


/* - vanilla table
recipes.addShapeless( 
  Block, 
  [
    Layer,    Layer,    Layer,
    Layer,              Layer,    
    Layer,    Layer,    Layer,
  ]
);
*/
