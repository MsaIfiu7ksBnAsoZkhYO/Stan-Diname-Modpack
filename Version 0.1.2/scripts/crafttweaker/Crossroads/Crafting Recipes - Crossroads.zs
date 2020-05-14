//=====================================================================================================================================================================================================	
//	Import-ant things
//=====================================================================================================================================================================================================


import mods.artisanworktables.builder.RecipeBuilder;


//=====================================================================================================================================================================================================	
//	Adjusting Recipes for thingies
//=====================================================================================================================================================================================================


//=====================================================================================================================================================================================================
//	Fuel Heater 
//=====================================================================================================================================================================================================


recipes.remove( <crossroads:coal_heater> );
RecipeBuilder.get("basic")
    .setShaped([
      [<ore:cobblestone>,   <ore:ingotCopper>,      <ore:cobblestone>   ],
      [<ore:cobblestone>,   <ore:itemCoalpellet>,   <ore:cobblestone>   ],
      [<ore:cobblestone>,   <ore:cobblestone>,      <ore:cobblestone>   ]])
    .addOutput( <crossroads:coal_heater> )
    .create();


//=====================================================================================================================================================================================================
//	Heating Chamber	
//=====================================================================================================================================================================================================


recipes.remove( <crossroads:heating_chamber> );
RecipeBuilder.get("basic")
    .setShaped([
        [<ore:cobblestone>, <ore:ingotCopper>,                      <ore:cobblestone>   ],
        [<ore:cobblestone>, <notreepunching:ceramic_large_vessel>,  <ore:cobblestone>   ],
        [<ore:cobblestone>, <ore:cobblestone>,                      <ore:cobblestone>   ]])
    .addOutput( <crossroads:heating_chamber> )
    .create();


//=====================================================================================================================================================================================================
//	Wool Insulated Heat Cable	
//=====================================================================================================================================================================================================


recipes.remove( <crossroads:heat_cable_copper_wool> );
RecipeBuilder.get("basic")
  .setShaped([
    [null,                  <ore:wool>,         null                ],
    [<ore:nuggetCopper>,    <ore:nuggetCopper>, <ore:nuggetCopper>  ],
    [null,                  <ore:wool>,         null                ]])
  .addOutput( <crossroads:heat_cable_copper_wool> )
  .create();


//=====================================================================================================================================================================================================
//	Fluid Cooling Chamber	
//=====================================================================================================================================================================================================


recipes.remove( <crossroads:fluid_cooling_chamber> );
RecipeBuilder.get("mason")
    .setShaped([
        [<ceramics:porcelain>,  <crossroads:coal_heater>,               <ceramics:porcelain>    ],
        [<ceramics:channel>,    <ore:clayBarrel>,                       <ceramics:channel>      ],
        [<quark:sturdy_stone>,  <notreepunching:ceramic_large_vessel>,  <quark:sturdy_stone>    ]])
    .setFluid( <liquid:mortar> * 100 )
    .addTool( <ore:artisansHammer>, 10 )
    .addOutput( <crossroads:fluid_cooling_chamber> )
    .create();


//=====================================================================================================================================================================================================
//	Heating Crucible	
//=====================================================================================================================================================================================================


recipes.remove( <crossroads:heating_crucible> );
RecipeBuilder.get("mason")
  .setShaped([
    [<ore:clayBarrel>               ],
    [<crossroads:heating_chamber>   ]])
  .setFluid( <liquid:mortar> * 200 )
  .addTool( <ore:artisansTrowel>, 5 )
  .addOutput( <crossroads:heating_crucible> )
  .create();


//=====================================================================================================================================================================================================
//	Grindstone	
//=====================================================================================================================================================================================================


recipes.remove( <crossroads:grindstone> );
RecipeBuilder.get("basic")
    .setShaped([
        [<quark:sturdy_stone>,  <quark:sturdy_stone>,           <crossroads:axle>,              <quark:sturdy_stone>,           <quark:sturdy_stone>    ],
        [<quark:sturdy_stone>,  <crossroads:gear_bronze>,       <crossroads:axle>,              <crossroads:gear_bronze>,       <quark:sturdy_stone>    ],
        [<minecraft:piston>,    <horsepower:hand_grindstone>,   <crossroads:gear_bronze>,       <horsepower:hand_grindstone>,   <minecraft:piston>      ],
        [<quark:sturdy_stone>,  <magneticraft:crushing_table>,  <magneticraft:crushing_table>,  <magneticraft:crushing_table>,  <quark:sturdy_stone>    ],
        [<quark:sturdy_stone>,  <quark:sturdy_stone>,           <quark:sturdy_stone>,           <quark:sturdy_stone>,           <quark:sturdy_stone>    ]])
    .addOutput( <crossroads:grindstone> )
    .create();


//=====================================================================================================================================================================================================
//	Master Axis	
//=====================================================================================================================================================================================================


recipes.remove( <crossroads:master_axis> );
RecipeBuilder.get("blacksmith")
    .setShaped([
        [<ore:plateIron>,   <ore:plateIron>,    <ore:plateIron>,    <ore:plateIron>,    <ore:plateIron> ],
        [<ore:plateIron>,   <ore:plateBronze>,  <ore:plateBronze>,  <ore:plateBronze>,  <ore:plateIron> ],
        [<ore:plateIron>,   <ore:plateBronze>,  <crossroads:axle>,  <ore:plateBronze>,  <ore:plateIron> ],
        [<ore:plateIron>,   <ore:plateBronze>,  <crossroads:axle>,  <ore:plateBronze>,  <ore:plateIron> ],
        [<ore:plateIron>,   <ore:plateIron>,    <crossroads:axle>,  <ore:plateIron>,    <ore:plateIron> ]])
    .setFluid( <liquid:iron> * 16 )
    .addTool( <ore:artisansHammer>, 5 )
    .addTool( <ore:artisansPliers>, 5 )   
    .addOutput( <crossroads:master_axis> )
    .create();


//=====================================================================================================================================================================================================
//	Rotary Pump / Steam Turbine	
//=====================================================================================================================================================================================================


recipes.remove( <crossroads:rotary_pump> );
RecipeBuilder.get("blacksmith")
    .setShaped([
        [<ore:plateBronze>,             <ore:plateBronze>,          <crossroads:axle>,          <ore:plateBronze>,          <ore:plateBronze>           ],
        [<ore:plateBronze>,             <crossroads:fluid_tank>,    <crossroads:axle>,          <crossroads:fluid_tank>,    <ore:plateBronze>           ],
        [<ore:plateBronze>,             <crossroads:fluid_tube>,    <crossroads:axle>,          <crossroads:fluid_tube>,    <ore:plateBronze>           ],
        [<ore:blockGlassThickended>,    <ore:plateIron>,            <crossroads:axle>,          <ore:plateIron>,            <ore:blockGlassThickended>  ],
        [<ore:blockGlassThickended>,    <ore:plateIron>,            <crossroads:fluid_tube>,    <ore:plateIron>,            <ore:blockGlassThickended>  ]])
    .setFluid( <liquid:bronze> * 16 )
    .addTool( <ore:artisansHammer>, 5 )
    .addTool( <ore:artisansPliers>, 5 )
    .addOutput( <crossroads:rotary_pump> )
    .create();


//=====================================================================================================================================================================================================
//	Fluid Tubes	
//=====================================================================================================================================================================================================


recipes.remove( <crossroads:fluid_tube> );
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<ore:plateBronze>, <ore:plateBronze>,  <ore:plateBronze>   ],
    [null,              null,               null                ],
    [<ore:plateBronze>, <ore:plateBronze>,  <ore:plateBronze>   ]])
  .setFluid( <liquid:bronze> * 16 )
  .addTool( <ore:artisansHammer>, 5 )
  .addTool( <ore:artisansPliers>, 5 )
  .addOutput( <crossroads:fluid_tube> * 4 )
  .create();


//=====================================================================================================================================================================================================
//	Fluid Tank	
//=====================================================================================================================================================================================================


recipes.remove( <crossroads:fluid_tank> );
RecipeBuilder.get("blacksmith")
    .setShaped([
        [<ore:plateBronze>, <ore:plateBronze>,          <ore:plateBronze>,          <ore:plateBronze>,          <ore:plateBronze>   ],
        [<ore:plateBronze>, <openblocks:tank>,          <crossroads:fluid_tube>,    <openblocks:tank>,          <ore:plateBronze>   ],
        [<ore:plateBronze>, <crossroads:fluid_tube>,    null,                       <crossroads:fluid_tube>,    <ore:plateBronze>   ],
        [<ore:plateBronze>, <openblocks:tank>,          <crossroads:fluid_tube>,    <openblocks:tank>,          <ore:plateBronze>   ],
        [<ore:plateBronze>, <ore:plateBronze>,          <ore:plateBronze>,          <ore:plateBronze>,          <ore:plateBronze>   ]])
    .setFluid( <liquid:bronze> * 16 )
    .addTool( <ore:artisansHammer>, 5 )
    .addTool( <ore:artisansPliers>, 5 )
    .addOutput( <crossroads:fluid_tank> )
    .create();


//=====================================================================================================================================================================================================
//	Steam Boiler	
//=====================================================================================================================================================================================================


recipes.remove( <crossroads:steam_boiler> );
RecipeBuilder.get("blacksmith")
    .setShaped([
        [<ore:plateBronze>, <ore:plateBronze>,              <ore:plateBronze>,              <ore:plateBronze>,              <ore:plateBronze>   ],
        [<ore:plateBronze>, <crossroads:fluid_tank>,        <crossroads:fluid_tube>,        <crossroads:fluid_tank>,        <ore:plateBronze>   ],
        [<ore:plateBronze>, <crossroads:fluid_tube>,        null,                           <crossroads:fluid_tube>,        <ore:plateBronze>   ],
        [<ore:plateBronze>, <crossroads:heating_chamber>,   <crossroads:fluid_tank>,        <crossroads:heating_chamber>,   <ore:plateBronze>   ],
        [<ore:plateBronze>, <ore:plateCopper>,              <essentials:sorting_hopper>,    <ore:plateCopper>,              <ore:plateBronze>   ]])
    .setFluid( <liquid:bronze> * 16 )
    .addTool( <ore:artisansHammer>, 5 )
    .addTool( <ore:artisansPliers>, 5 )
    .addOutput( <crossroads:steam_boiler> )
    .create();


//=====================================================================================================================================================================================================
//	Axle	
//=====================================================================================================================================================================================================


recipes.remove( <crossroads:axle> );
RecipeBuilder.get("blacksmith")
    .setShaped([
        [null,          null,               null,               null,               <ore:stone> ],
        [null,          null,               null,               <ore:stickIron>,    null        ],
        [null,          null,               <ore:stickIron>,    null,               null        ],
        [null,          <ore:stickIron>,    null,               null,               null        ],
        [<ore:stone>,   null,               null,               null,               null        ]])
    .setFluid( <liquid:iron> * 16 )
    .addTool( <ore:artisansHammer> , 5 )
    .addTool( <ore:artisansPliers> , 5 )
    .addOutput( <crossroads:axle> )
    .create();


//=====================================================================================================================================================================================================	
//	Gears
//=====================================================================================================================================================================================================


	//	Make All the gear recipes!	
for Item in GlobalCrossroadsGear {
        //  Assign to variable to reduce the number of times a table is accessed
    var Nugget = GlobalGimmeOreDict("nugget",Item);
    var Plate =  GlobalGimmeOreDict("Plate",Item);
        //  Verify the Oredicts have items in them to avoid null errors
    if (  
        !(Nugget.empty)
        &
        !(Plate.empty)
    ){
        recipes.remove( GlobalCrossroadsGear[Item] );        
        RecipeBuilder.get("blacksmith")
            .setShaped([
                [Nugget,    null,   Nugget, null,   Nugget  ],
                [null,      Plate,  null,   Plate,  null    ],
                [Nugget,    null,   Plate,  null,   Nugget  ],
                [null,      Plate,  null,   Plate,  null    ],
                [Nugget,    null,   Nugget, null,   Nugget  ]])
            .setFluid( GlobalMoltenMetal[Item] * 16 )
            .addTool( <ore:artisansHammer>, 5 )
            .addTool( <ore:artisansPliers>, 5 )
            .addOutput( GlobalCrossroadsGear[Item] )
            .create();
    }

}


