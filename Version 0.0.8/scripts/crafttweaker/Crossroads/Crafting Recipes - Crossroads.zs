//=====================================================================================================================================================================================================	
//	Import-ant things
//=====================================================================================================================================================================================================


import mods.artisanworktables.builder.RecipeBuilder;


//=====================================================================================================================================================================================================	
//	Adjusting Recipes for thingies
//=====================================================================================================================================================================================================


	//	Fuel Heater _______________________________________________________________________________________________________________________________________________________________________
RecipeBuilder.get("basic")
    .setShaped([
      [<ore:cobblestone>,   <ore:ingotCopper>,      <ore:cobblestone>   ],
      [<ore:cobblestone>,   <ore:itemCoalpellet>,   <ore:cobblestone>   ],
      [<ore:cobblestone>,   <ore:cobblestone>,      <ore:cobblestone>   ]])
    .addOutput( <crossroads:coal_heater> )
    .create();

	//	Heating Chamber	_______________________________________________________________________________________________________________________________________________________________________
RecipeBuilder.get("basic")
    .setShaped([
        [<ore:cobblestone>, <ore:ingotCopper>,                      <ore:cobblestone>   ],
        [<ore:cobblestone>, <notreepunching:ceramic_large_vessel>,  <ore:cobblestone>   ],
        [<ore:cobblestone>, <ore:cobblestone>,                      <ore:cobblestone>   ]])
    .addOutput( <crossroads:heating_chamber> )
    .create();

	//	Wool Insulated Heat Cable	_______________________________________________________________________________________________________________________________________________________________________
//recipes.remove( <crossroads:heat_cable_copper_wool> );
RecipeBuilder.get("basic")
    .setShaped([
        [null,                  null,               <ore:nuggetCopper>, null,               null                ],
        [null,                  <ore:nuggetCopper>, <ore:wool>,         <ore:nuggetCopper>, null                ],
        [<ore:nuggetCopper>,    <ore:wool>,         <ore:nuggetCopper>, <ore:wool>,         <ore:nuggetCopper>  ],
        [null,                  <ore:nuggetCopper>, <ore:wool>,         <ore:nuggetCopper>, null                ],
        [null,                  null,               <ore:nuggetCopper>, null,               null                ]])
    .addOutput( <crossroads:heat_cable_copper_wool> )
    .create();

	//	Fluid Cooling Chamber	_______________________________________________________________________________________________________________________________________________________________________
//recipes.remove( <crossroads:fluid_cooling_chamber> );
RecipeBuilder.get("blacksmith")
    .setShaped([
        [<ore:plateIron>,       <ore:plateIron>,            <ore:plateCopper>,          <ore:plateIron>,            <ore:plateIron>         ],
        [<ore:plateIron>,       <ore:plateBronze>,          <ore:plateCopper>,          <ore:plateBronze>,          <ore:plateIron>         ],
        [<ore:plateIron>,       <crossroads:fluid_tube>,    <tconstruct:cast_custom>,   <crossroads:fluid_tube>,    <ore:plateIron>         ],
        [<quark:sturdy_stone>,  <ore:plateBronze>,          <ore:hopper>,               <ore:plateBronze>,          <quark:sturdy_stone>    ],
        [<quark:sturdy_stone>,  <quark:sturdy_stone>,       <quark:sturdy_stone>,       <quark:sturdy_stone>,       <quark:sturdy_stone>    ]])
    .setFluid( <liquid:iron> * 16 )
    .addTool( <ore:artisansHammer>, 5 )
    .addTool( <ore:artisansPliers>, 5 ) 
    .addOutput( <crossroads:fluid_cooling_chamber> )
    .create();

	//	Heating Crucible	_______________________________________________________________________________________________________________________________________________________________________
//recipes.remove( <crossroads:heating_crucible> );
RecipeBuilder.get("mason")
    .setShaped([
        [<ore:ingotPorcelain>,  null,                   null,               null,                   <ore:ingotPorcelain>    ],
        [<ore:ingotPorcelain>,  null,                   null,               null,                   <ore:ingotPorcelain>    ],
        [<ore:ingotPorcelain>,  null,                   null,               null,                   <ore:ingotPorcelain>    ],
        [null,                  <ore:ingotPorcelain>,   <ore:ingotCopper>,  <ore:ingotPorcelain>,   null                    ]])
    .setFluid( <liquid:mortar> * 200 )
    .addTool( <ore:artisansTrowel>, 3 )
    .addOutput( <crossroads:heating_crucible> )
    .create();

	//	Grindstone	_______________________________________________________________________________________________________________________________________________________________________
//recipes.remove( <crossroads:grindstone> );
RecipeBuilder.get("basic")
    .setShaped([
        [<quark:sturdy_stone>,  <quark:sturdy_stone>,           <crossroads:axle>,              <quark:sturdy_stone>,           <quark:sturdy_stone>    ],
        [<quark:sturdy_stone>,  <crossroads:gear_bronze>,       <crossroads:axle>,              <crossroads:gear_bronze>,       <quark:sturdy_stone>    ],
        [<minecraft:piston>,    <horsepower:hand_grindstone>,   <crossroads:gear_bronze>,       <horsepower:hand_grindstone>,   <minecraft:piston>      ],
        [<quark:sturdy_stone>,  <magneticraft:crushing_table>,  <magneticraft:crushing_table>,  <magneticraft:crushing_table>,  <quark:sturdy_stone>    ],
        [<quark:sturdy_stone>,  <quark:sturdy_stone>,           <quark:sturdy_stone>,           <quark:sturdy_stone>,           <quark:sturdy_stone>    ]])
    .addOutput( <crossroads:grindstone> )
    .create();

	//	Master Axis	_______________________________________________________________________________________________________________________________________________________________________
//recipes.remove( <crossroads:master_axis> );
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

	//	Rotary Pump / Steam Turbine	_______________________________________________________________________________________________________________________________________________________________________
//recipes.remove( <crossroads:rotary_pump> );
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

	//	Fluid Tubes	_______________________________________________________________________________________________________________________________________________________________________
//recipes.remove( <crossroads:fluid_tube> );
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
  
  	//	Fluid Tank	_______________________________________________________________________________________________________________________________________________________________________
//recipes.remove( <crossroads:fluid_tank> );
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

 	//	Steam Boiler	_______________________________________________________________________________________________________________________________________________________________________
//recipes.remove( <crossroads:steam_boiler> );
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

 	//	Axle	_______________________________________________________________________________________________________________________________________________________________________
//recipes.remove( <crossroads:axle> );
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


	//	Make All the gear recipes!	_______________________________________________________________________________________________________________________________________________________________________
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
        //recipes.remove( GlobalCrossroadsGear[Item] );        
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


