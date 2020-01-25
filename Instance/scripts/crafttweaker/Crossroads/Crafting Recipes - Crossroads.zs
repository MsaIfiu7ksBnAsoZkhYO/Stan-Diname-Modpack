//=====================================================================================================================================================================================================	
//	Import-ant things
//=====================================================================================================================================================================================================


import mods.artisanworktables.builder.RecipeBuilder;
/*
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.oredict.IOreDict;
import crafttweaker.liquid.ILiquidStack;
*/


//=====================================================================================================================================================================================================	
//	Hashtables used in dynamic mapping function.  These would be in a separate script file if Zenscript didn't have a stick up its ass.
//=====================================================================================================================================================================================================

/*
//	Crossroads gears	_______________________________________________________________________________________________________________________________________________________________________
val Gear = {
	Iron : <crossroads:gear_iron>,
	Gold : <crossroads:gear_gold>,
	Copper : <crossroads:gear_copper>,
	Tin : <crossroads:gear_tin>,
	Lead : <crossroads:gear_lead>,
	Silver : <crossroads:gear_silver>,
	Nickel : <crossroads:gear_nickel>,
    Bronze : <crossroads:gear_bronze>,
    Copshowium : <crossroads:gear_copshowium>,
	Invar : <crossroads:gear_invar>,
	Platinum : <crossroads:gear_platinum>,
	Electrum : <crossroads:gear_electrum>,
} as IItemStack[string];

//	Crossroads large Gears	_______________________________________________________________________________________________________________________________________________________________________
val largeGear = {
	Iron : <crossroads:large_gear_iron>,
	Gold : <crossroads:large_gear_gold>,
	Copper : <crossroads:large_gear_copper>,
	Tin : <crossroads:large_gear_tin>,
	Lead : <crossroads:large_gear_lead>,
	Silver : <crossroads:large_gear_silver>,
	Nickel : <crossroads:large_gear_nickel>,
	Bronze : <crossroads:large_gear_bronze>,
    Copshowium : <crossroads:large_gear_copshowium>,
    Invar : <crossroads:large_gear_invar>,
	Platinum : <crossroads:large_gear_platinum>,
	Electrum : <crossroads:large_gear_electrum>,
} as IItemStack[string];

//	Crossroads Toggle Gears	_______________________________________________________________________________________________________________________________________________________________________
val ToggleGear = {
	Iron : <crossroads:toggle_gear_iron>,
	Gold : <crossroads:toggle_gear_gold>,
	Copper : <crossroads:toggle_gear_copper>,
	Tin : <crossroads:toggle_gear_tin>,
	Lead : <crossroads:toggle_gear_lead>,
	Silver : <crossroads:toggle_gear_silver>,
	Nickel : <crossroads:toggle_gear_nickel>,
	Bronze : <crossroads:toggle_gear_bronze>,
    Copshowium : <crossroads:toggle_gear_copshowium>,
    Invar : <crossroads:toggle_gear_invar>,
	Platinum : <crossroads:toggle_gear_platinum>,
	Electrum : <crossroads:toggle_gear_electrum>,
} as IItemStack[string];

//	Plates	_______________________________________________________________________________________________________________________________________________________________________
val Plate = {
	Iron : <ore:plateIron>,
	Gold : <ore:plateGold>,
	Copper : <ore:plateCopper>,
	Tin : <ore:plateTin>,
	Lead : <ore:plateLead>,
	Silver : <ore:plateSilver>,
	Nickel : <ore:plateNickel>,
	Bronze : <ore:plateBronze>,
    Copshowium : <ore:plateCopshowium>,
    Invar : <ore:plateInvar>,
	Platinum : <ore:platePlatinum>,
	Electrum : <ore:plateElectrum>,
} as IOreDictEntry[string];

//	Sticks / Rods	_______________________________________________________________________________________________________________________________________________________________________
val Stick = {
	Iron : <ore:stickIron>,
	Gold : <ore:stickGold>,
	Copper : <ore:stickCopper>,
	Tin : <ore:stickTin>,
	Lead : <ore:stickLead>,
	Silver : <ore:stickSilver>,
	Nickel : <ore:stickNickel>,
	Bronze : <ore:stickBronze>,
    Copshowium : <ore:stickCopshowium>,
    Invar : <ore:stickInvar>,
	Platinum : <ore:stickPlatinum>,
	Electrum : <ore:stickElectrum>,
} as IOreDictEntry[string];

//	nuggets	_______________________________________________________________________________________________________________________________________________________________________
val Nugget = {
	Iron : <ore:nuggetIron>,
	Gold : <ore:nuggetGold>,
	Copper : <ore:nuggetCopper>,
	Tin : <ore:nuggetTin>,
	Lead : <ore:nuggetLead>,
	Silver : <ore:nuggetSilver>,
	Nickel : <ore:nuggetNickel>,
	Bronze : <ore:nuggetBronze>,
    Copshowium : <ore:nuggetCopshowium>,
    Invar : <ore:nuggetInvar>,
	Platinum : <ore:nuggetPlatinum>,
	Electrum : <ore:nuggetElectrum>,
} as IOreDictEntry[string];

//	Liquids	_______________________________________________________________________________________________________________________________________________________________________
val Liquid = {
	Iron : <liquid:iron>,
	Gold : <liquid:gold>,
	Copper : <liquid:copper>,
	Tin : <liquid:tin>,
	Lead : <liquid:lead>,
	Silver : <liquid:silver>,
	Nickel : <liquid:nickel>,
	Bronze : <liquid:bronze>,
    Copshowium : <liquid:copshowium>,
    Invar : <liquid:invar>,
	Platinum : <liquid:platinum>,
	Electrum : <liquid:electrum>,
} as ILiquidStack[string];
*/

//=====================================================================================================================================================================================================	
//	Outright removal (for balance I guess)
//=====================================================================================================================================================================================================


	//	No easy rotary power	_______________________________________________________________________________________________________________________________________________________________________
mods.jei.JEI.removeAndHide(<crossroads:hand_crank>);

	//	This is not how alloying works	_______________________________________________________________________________________________________________________________________________________________________
//recipes.removeByRecipeName("unidict:ingotbronze_x1_shape.aaaabaaaa");


//=====================================================================================================================================================================================================	
//	Adjusting Recipes for thingies
//=====================================================================================================================================================================================================


	//	Fuel Heater  (furnace replacement)	_______________________________________________________________________________________________________________________________________________________________________
//recipes.remove( <crossroads:coal_heater> );
recipes.addShaped(
    "Crossroads Fuel Heater",
    <crossroads:coal_heater>, 
    [
        [<ore:cobblestone>,  <ore:ingotCopper>,     <ore:cobblestone>    ],
        [<ore:cobblestone>,  <ore:itemCoalpellet>,  <ore:cobblestone>    ], 
        [<ore:cobblestone>,  <ore:cobblestone>,     <ore:cobblestone>    ]
    ]
);

	//	Heating Chamber	_______________________________________________________________________________________________________________________________________________________________________
//recipes.remove( <crossroads:heating_chamber> );
recipes.addShaped(
    "Crossroads Heating Chamber",
    <crossroads:heating_chamber>, 
    [
        [<ore:cobblestone>,  <ore:ingotCopper>, <ore:cobblestone>    ],
        [<ore:cobblestone>,  null,              <ore:cobblestone>    ], 
        [<ore:cobblestone>,  <ore:cobblestone>, <ore:cobblestone>    ]
    ]
);

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

        //Magic verification check to prevent Null errors
    if (  
        !isNull( oreDict[ "nugget"~GlobalPostfixMetals[Item] ].firstItem )
        &
        !isNull( oreDict[ "plate"~GlobalPostfixMetals[Item] ].firstItem )
    ){
        //recipes.remove( GlobalCrossroadsGear[Item] );
        RecipeBuilder.get("blacksmith")
            .setShaped([
                [oreDict[ "nugget"~GlobalPostfixMetals[Item] ],   null,                                       oreDict[ "nugget"~GlobalPostfixMetals[Item] ],    null,                                       oreDict[ "nugget"~GlobalPostfixMetals[Item] ]   ],
                [null,                                          oreDict[ "plate"~GlobalPostfixMetals[Item] ], null,                                           oreDict[ "plate"~GlobalPostfixMetals[Item] ], null                                            ],
                [oreDict[ "nugget"~GlobalPostfixMetals[Item] ],   null,                                       oreDict[ "plate"~GlobalPostfixMetals[Item] ],     null,                                       oreDict[ "nugget"~GlobalPostfixMetals[Item] ]   ],
                [null,                                          oreDict[ "plate"~GlobalPostfixMetals[Item] ], null,                                           oreDict[ "plate"~GlobalPostfixMetals[Item] ], null                                            ],
                [oreDict[ "nugget"~GlobalPostfixMetals[Item] ],   null,                                       oreDict[ "nugget"~GlobalPostfixMetals[Item] ],    null,                                       oreDict[ "nugget"~GlobalPostfixMetals[Item] ]   ]])
            .setFluid( GlobalMoltenMetal[Item] * 16 )
            .addTool( <ore:artisansHammer>, 5 )
            .addTool( <ore:artisansPliers>, 5 )
            .addOutput( GlobalCrossroadsGear[Item] )
            .create();
    }

}


