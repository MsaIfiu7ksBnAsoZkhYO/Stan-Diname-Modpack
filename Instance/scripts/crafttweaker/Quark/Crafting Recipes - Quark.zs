//=====================================================================================================================================================================================================	
//	Import-ant things
//=====================================================================================================================================================================================================


import mods.artisanworktables.builder.RecipeBuilder;


//=====================================================================================================================================================================================================	
//	Recipes and things
//=====================================================================================================================================================================================================


	//	Sturdy Stone	_______________________________________________________________________________________________________________________________________________________________________
RecipeBuilder.get("mason")
    .setShaped([
        [<ore:stone>,       <ore:cobblestone>,  <ore:stone>         ],
        [<ore:cobblestone>, <ore:stone>,        <ore:cobblestone>   ],
        [<ore:stone>,       <ore:cobblestone>,  <ore:stone>         ]])
    .setFluid( <liquid:mortar> * 100 )
    .addTool( <ore:artisansTrowel>, 3 )
    .addOutput( <quark:sturdy_stone> )
    .create();

   	//	Torch Arrow	_______________________________________________________________________________________________________________________________________________________________________
recipes.addShapeless(
    "Tconstruct Torch Arrows",
    <quark:arrow_torch>, 
    [
        <ore:torch>,
        (<tconstruct:arrow:*>.anyDamage()).transformDamage(10)
    ]
);