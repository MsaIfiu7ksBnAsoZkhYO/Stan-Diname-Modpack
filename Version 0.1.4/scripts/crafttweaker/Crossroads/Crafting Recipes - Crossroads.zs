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
RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:rodTin>,      <ore:plateTin>,     <ore:rodTin>    ],
    [<ore:plateTin>,    <ore:bearingWood>,  <ore:plateTin>  ],
    [<ore:rodTin>,      <crossroads:axle>,  <ore:rodTin>    ]])
  .addTool( <ore:artisansHammer> , 1 )
  .addOutput( <crossroads:master_axis> )
  .create();


//=====================================================================================================================================================================================================
//	Rotary Pump / Steam Turbine	
//=====================================================================================================================================================================================================


recipes.remove( <crossroads:rotary_pump> );
RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:rodTin>, <crossroads:axle>, <ore:rodTin>],
    [<crossroads:fluid_tube>, <crossroads:fluid_tank>, <crossroads:fluid_tube>],
    [<ore:blockGlass>, <ore:gearTin>, <ore:blockGlass>]])
  .addTool( <ore:artisansHammer> , 1 )
  .addOutput(<crossroads:rotary_pump>)
  .create();


//=====================================================================================================================================================================================================
//	Fluid Tubes	
//=====================================================================================================================================================================================================


recipes.remove( <crossroads:fluid_tube> );
RecipeBuilder.get("engineer")
  .setShaped([
    [null, <ore:plateBronze>, null],
    [<ore:plateBronze>, null, <ore:plateBronze>],
    [null, <ore:plateBronze>, null]])
  .addTool(<ore:artisansHammer>, 1)
  .addOutput(<crossroads:fluid_tube> * 4)
  .create();

//=====================================================================================================================================================================================================
//	Fluid Tank	
//=====================================================================================================================================================================================================


recipes.remove( <crossroads:fluid_tank> );
RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:rodBronze>, <ore:plateBronze>, <ore:rodBronze>],
    [<ore:plateBronze>, <openblocks:tank>, <ore:plateBronze>],
    [<ore:rodBronze>, <ore:plateBronze>, <ore:rodBronze>]])
  .addTool(<ore:artisansHammer>, 1)
  .addOutput(<crossroads:fluid_tank>)
  .create();


//=====================================================================================================================================================================================================
//	Steam Boiler	
//=====================================================================================================================================================================================================


recipes.remove( <crossroads:steam_boiler> );
RecipeBuilder.get("engineer")
  .setShaped([
    [<crossroads:fluid_tank>],
    [<crossroads:heating_chamber>]])
  .addTool(<ore:artisansHammer>, 1)
  .addOutput(<crossroads:steam_boiler>)
  .create();

//=====================================================================================================================================================================================================
//	Axle	
//=====================================================================================================================================================================================================


recipes.remove( <crossroads:axle> );
RecipeBuilder.get("engineer")
  .setShaped([
    [null, null, <quark:sturdy_stone>],
    [null, <ore:rodTin>, null],
    [<quark:sturdy_stone>, null, null]])
  .addOutput(<crossroads:axle>)
  .create();


//=====================================================================================================================================================================================================
//	Radiator	
//=====================================================================================================================================================================================================


recipes.remove( <crossroads:radiator> );
RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:plateBronze>, <crossroads:fluid_tube>, <ore:plateBronze>],
    [<ore:plateBronze>, <crossroads:fluid_tank>, <ore:plateBronze>],
    [<ore:plateBronze>, <crossroads:fluid_tube>, <ore:plateBronze>]])
  .addTool(<ore:artisansHammer>, 1)
  .addOutput( <crossroads:radiator> )
  .create();


//=====================================================================================================================================================================================================
//	Water Centrifuge
//=====================================================================================================================================================================================================


recipes.remove( <crossroads:water_centrifuge> );
RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:plateBronze>, <crossroads:axle>, <ore:plateBronze>],
    [<crossroads:fluid_tube>, <crossroads:rotary_pump>, <crossroads:fluid_tube>],
    [<ore:plateBronze>, <tconstruct:wooden_hopper>, <ore:plateBronze>]])
  .addTool(<ore:artisansHammer>, 1)
  .addOutput( <crossroads:water_centrifuge> )
  .create();


//=====================================================================================================================================================================================================
//	Salt Reactor
//=====================================================================================================================================================================================================


recipes.remove( <crossroads:salt_reactor> );
RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:plateTin>, <crossroads:fluid_tube>, <ore:plateTin>],
    [<crossroads:fluid_tube>, <crossroads:fluid_tank>, <crossroads:fluid_tube>],
    [<ore:plateTin>, <crossroads:fluid_tube>, <ore:plateTin>]])
  .addTool(<ore:artisansHammer>, 1)
  .addOutput( <crossroads:salt_reactor> )
  .create();


//=====================================================================================================================================================================================================	
//	Gears
//=====================================================================================================================================================================================================


for Item,Gear in GlobalCrossroadsGear {
 recipes.remove( Gear ); 
}
/*
  //   For some reason this is no longer working at all.
	//	Make All the gear recipes!	
for Item,Gear in GlobalCrossroadsGear {
    print("Vrossroads Gear recipes: "~Item);
        //  Assign to variable to reduce the number of times a table is accessed
    //var Nugget = GlobalGimmeOreDict("nugget",Item);
    var MetalPlate =  GlobalGimmeOreDict("plate",Item);
    print(MetalPlate);
        //  Verify the Oredicts have items in them to avoid null errors
    if (  
        !(MetalPlate.empty)
    ){
        recipes.remove( Gear );        
        RecipeBuilder.get("engineer")
            .setShaped([
                [MetalPlate,  null,   MetalPlate ],
                [null,   MetalPlate,  null  ],
                [MetalPlate,  null,   MetalPlate ]])
            .addTool( <ore:artisansHammer>, 5 )
            .addOutput( Gear )
            .create();
    }

}
*/


