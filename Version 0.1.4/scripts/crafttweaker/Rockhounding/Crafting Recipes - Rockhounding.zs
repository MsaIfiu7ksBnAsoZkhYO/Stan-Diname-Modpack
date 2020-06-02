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
        [null,              null,                   <ore:porcelainBarrelExtension>, null,                               null                ],
        [null,              <ore:stairSeared>,      <ore:porcelainBarrelExtension>, <ore:stairSeared>,                  null                ],
        [<ore:stairSeared>, <ore:blockSeared>,      <ore:porcelainBarrelExtension>, <ore:blockSeared>,                  <ore:stairSeared>   ],
        [<ore:stairSeared>, <tcomplement:melter>,   <crossroads:fluid_tank>,        <crossroads:fluid_cooling_chamber>, <ore:stairSeared>   ],
        [<ore:blockSeared>, <tcomplement:melter:8>, <tcomplement:melter:8>,         <tcomplement:melter:8>,             <ore:blockSeared>   ]])
    .setFluid(<liquid:mortar> * 500)
    .addTool( <ore:artisansTrowel> , 10 )
    .addOutput( <rockhounding_oretiers:bloomery> )
    .create();

	//	Coal Refinery	_______________________________________________________________________________________________________________________________________________________________________
recipes.remove( <rockhounding_oretiers:coal_refiner> );
RecipeBuilder.get("mason")
    .setShaped([
        [null,              null,                           <ore:porcelainBarrelExtension>, null,                           null                ],
        [null,              <ore:slabSeared>,               <ore:slabSeared>,               <ore:slabSeared>,               null                ],
        [<ore:blockSeared>, <crossroads:heating_chamber>,   <crossroads:heating_chamber>,   <crossroads:heating_chamber>,   <ore:blockSeared>   ],
        [<ore:blockSeared>, <ore:slabSeared>,               <ore:slabSeared>,               <ore:slabSeared>,               <ore:blockSeared>   ]])
    .setFluid( <liquid:mortar> * 500 )
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