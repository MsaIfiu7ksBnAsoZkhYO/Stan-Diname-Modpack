//=====================================================================================================================================================================================================	
//	Import-ant things
//=====================================================================================================================================================================================================


import mods.artisanworktables.builder.RecipeBuilder;


//=====================================================================================================================================================================================================	
//	Funnel Recipes
//=====================================================================================================================================================================================================

recipes.remove( <fluidfunnel:funnel> );
RecipeBuilder.get("mason")
  .setShaped([
    [<ore:ingotPorcelain>,	null,					<ore:ingotPorcelain>	],
    [<ore:ingotPorcelain>,	<ceramics:clay_bucket>,	<ore:ingotPorcelain>	],
    [null,					<ore:ingotPorcelain>,	null					]])
  .setFluid( <liquid:mortar> * 100 )
  .addTool( <ore:artisansTrowel> , 1 )
  .addOutput( <fluidfunnel:funnel> )
  .create();