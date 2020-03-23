//=====================================================================================================================================================================================================	
//	Import-ant things
//=====================================================================================================================================================================================================


import mods.artisanworktables.builder.RecipeBuilder;


//=====================================================================================================================================================================================================	
//	Removing Anvil recipes
//=====================================================================================================================================================================================================


//=====================================================================================================================================================================================================	
//	Anvil Mold
//=====================================================================================================================================================================================================


	//	Mold the anvil out of clay because I can't think of anything else to use.	______________________________________________________________________________________________________________________________________________________________________
RecipeBuilder.get("potter")
    .setShaped([
        [<ore:plateClayRaw>,    <ore:plateClayRaw>, <ore:plateClayRaw>, null,               null            ],
        [<ore:brickClay>,       <ore:brickClay>,    <ore:blockClay>,    <ore:brickClay>,    <ore:brickClay> ],
        [null,                  <ore:plateClayRaw>, <ore:blockClay>,    <ore:plateClayRaw>, null            ],
        [<ore:brickClay>,       <ore:brickClay>,    <ore:blockClay>,    <ore:brickClay>,    <ore:brickClay> ]])
    .setFluid( <liquid:water> * 250 )
    .setSecondaryIngredients( [ <minecraft:bowl> ] )
    .addTool( <ore:artisansTrowel> , 10 )
    .addOutput( <tinkersforging:tinkers_anvil/moldclaywet> )
    .setExtraOutputOne( <minecraft:bowl> , 1.0 )
    .create();

	//	Brick Forge	______________________________________________________________________________________________________________________________________________________________________
RecipeBuilder.get("mason")
    .setShaped([
        [<ore:ingotKiln>,   <ore:ingotKiln>,                <ore:ingotKiln>,                <ore:ingotKiln>,                <ore:ingotKiln> ],
        [<ore:ingotKiln>,   <ore:clayBarrelExtension>,      <ore:clayBarrelExtension>,      <ore:clayBarrelExtension>,      <ore:ingotKiln> ],
        [<ore:ingotKiln>,   <crossroads:heating_chamber>,   <crossroads:heating_chamber>,   <crossroads:heating_chamber>,   <ore:ingotKiln> ],
        [<ore:ingotKiln>,   <crossroads:coal_heater>,       <crossroads:coal_heater>,       <crossroads:coal_heater>,       <ore:ingotKiln> ],
        [<ore:ingotKiln>,   <ore:ingotKiln>,                <ore:ingotKiln>,                <ore:ingotKiln>,                <ore:ingotKiln> ]])
    .setFluid( <liquid:mortar> * 500 )
    .addTool( <ore:artisansTrowel> , 10 )
    .addOutput( <tinkersforging:forge> )
    .create();