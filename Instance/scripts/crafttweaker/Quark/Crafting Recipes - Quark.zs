//=====================================================================================================================================================================================================	
//	Import-ant things
//=====================================================================================================================================================================================================


import mods.artisanworktables.builder.RecipeBuilder;


//=====================================================================================================================================================================================================	
//	Tool Tables
//=====================================================================================================================================================================================================


	//	Sturdy Stone	_______________________________________________________________________________________________________________________________________________________________________
RecipeBuilder.get("mason")
    .setShaped([
        [<ore:stone>,       <ore:cobblestone>,          <ore:stone>,                <ore:cobblestone>,          <ore:stone>         ],
        [<ore:cobblestone>, <minecraft:stone>,          <minecraft:cobblestone>,    <minecraft:stone>,          <ore:cobblestone>   ],
        [<ore:stone>,       <minecraft:cobblestone>,    <minecraft:stone>,          <minecraft:cobblestone>,    <ore:stone>         ],
        [<ore:cobblestone>, <minecraft:stone>,          <minecraft:cobblestone>,    <minecraft:stone>,          <ore:cobblestone>   ],
        [<ore:stone>,       <ore:cobblestone>,          <ore:stone>,                <ore:cobblestone>,          <ore:stone>         ]])
    .setFluid( <liquid:mortar> * 250 )
    .addTool( <ore:artisansTrowel>, 5 )
    .addOutput( <quark:sturdy_stone> )
    .create();