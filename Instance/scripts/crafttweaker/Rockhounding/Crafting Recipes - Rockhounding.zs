//=====================================================================================================================================================================================================	
//	Import-ant things
//=====================================================================================================================================================================================================


import mods.artisanworktables.builder.RecipeBuilder;


//=====================================================================================================================================================================================================	
//	Bloomery and Coal refining
//=====================================================================================================================================================================================================


recipes.remove( <rockhounding_oretiers:bloomery> );
RecipeBuilder.get("mason")
    .setShaped([
        [null,              null,                       <ore:clayBarrelExtension>,  null,                       null                ],
        [null,              <ore:stairSeared>,          <ore:clayBarrelExtension>,  <ore:stairSeared>,          null                ],
        [<ore:stairSeared>, <ore:blockSeared>,          <ore:clayBarrelExtension>,  <ore:blockSeared>,          <ore:stairSeared>   ],
        [<ore:stairSeared>, <crossroads:coal_heater>,   <crossroads:coal_heater>,   <crossroads:coal_heater>,   <ore:stairSeared>   ],
        [<ore:blockSeared>, <crossroads:coal_heater>,   <crossroads:coal_heater>,   <crossroads:coal_heater>,   <ore:blockSeared>   ]])
    .setFluid( <liquid:mortar> * 500 )
    .addTool( <ore:artisansTrowel> , 10 )
    .addOutput( <rockhounding_oretiers:bloomery> )
    .create();

	//	Coal Refinery	_______________________________________________________________________________________________________________________________________________________________________
recipes.remove( <rockhounding_oretiers:coal_refiner> );
RecipeBuilder.get("mason")
    .setShaped([
        [null,                      null,                       <ore:clayBarrelExtension>,  null,                       null                        ],
        [null,                      <ore:slabSeared>,           <ore:slabSeared>,           <ore:slabSeared>,           null                        ],
        [<ore:blockSeared>,         <ore:blockSeared>,          <ore:blockSeared>,          <ore:blockSeared>,          <ore:blockSeared>           ],
        [<crossroads:coal_heater>,  <crossroads:coal_heater>,   <crossroads:coal_heater>,   <crossroads:coal_heater>,   <crossroads:coal_heater>    ]])
    .addTool( <ore:artisansTrowel> , 10 )
    .addOutput( <rockhounding_oretiers:coal_refiner> )
    .create();

	//	Drying Pallet	_______________________________________________________________________________________________________________________________________________________________________
recipes.remove( <rockhounding_oretiers:peat_drier> );
RecipeBuilder.get("carpenter")
    .setShaped([
        [<ore:stickTreatedWood>,    <ore:stickTreatedWood>, <ore:stickTreatedWood>, <ore:stickTreatedWood>, <ore:stickTreatedWood> ],
        [<ore:slabTreatedWood>,     <ore:slabTreatedWood>,  <ore:slabTreatedWood>,  <ore:slabTreatedWood>,  <ore:slabTreatedWood>  ],
        [<ore:plankTreatedWood>,    null,                   <ore:plankTreatedWood>, null,                   <ore:plankTreatedWood> ]])
    .addTool( <ore:artisansHammer> , 10 )
    .addOutput( <rockhounding_oretiers:peat_drier> )
    .create();


	//	Forge Hammer	_______________________________________________________________________________________________________________________________________________________________________
recipes.remove( <rockhounding_oretiers:forging_hammer> );
RecipeBuilder.get("basic")
    .setShapeless( [ <tconstruct:cast_custom> ] )
    .addOutput( <rockhounding_oretiers:forging_hammer> )
    .create();

RecipeBuilder.get("basic")
    .setShapeless([
        <contenttweaker:sand_ingot_cast>,   <contenttweaker:sand_ingot_cast>,   <contenttweaker:sand_ingot_cast>,   
        <contenttweaker:sand_ingot_cast>,   <contenttweaker:sand_ingot_cast>,   <contenttweaker:sand_ingot_cast>,
        <contenttweaker:sand_ingot_cast>,   <contenttweaker:sand_ingot_cast>,   <contenttweaker:sand_ingot_cast>    ])
    .addOutput( <rockhounding_oretiers:forging_hammer> )
    .create();