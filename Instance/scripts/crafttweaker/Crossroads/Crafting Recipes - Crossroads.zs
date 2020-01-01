//=====================================================================================================================================================================================================	
//	Import-ant things
//=====================================================================================================================================================================================================


import mods.artisanworktables.builder.RecipeBuilder;


//=====================================================================================================================================================================================================	
//	Outright removal (for balance I guess)
//=====================================================================================================================================================================================================


	//	No easy rotary power	_______________________________________________________________________________________________________________________________________________________________________
mods.jei.JEI.removeAndHide(<crossroads:hand_crank>);

	//	This is not how alloying works	_______________________________________________________________________________________________________________________________________________________________________
recipes.removeByRecipeName("unidict:ingotbronze_x1_shape.aaaabaaaa");




//=====================================================================================================================================================================================================	
//	Adjusting Recipes for thingies
//=====================================================================================================================================================================================================


	//	Heating Chamber	_______________________________________________________________________________________________________________________________________________________________________
recipes.remove(<crossroads:heating_chamber>);
recipes.addShaped(
    "Crossroads Heating Chamber",
    <crossroads:heating_chamber>, 
    [
        [<quark:sturdy_stone>,  <ore:ingotCopper>,      <quark:sturdy_stone>    ],
        [<quark:sturdy_stone>,  null,                   <quark:sturdy_stone>    ], 
        [<quark:sturdy_stone>,  <quark:sturdy_stone>,   <quark:sturdy_stone>    ]
    ]
);

	//	Wool Insulated Heat Cable	_______________________________________________________________________________________________________________________________________________________________________
recipes.remove(<crossroads:heat_cable_copper_wool>);
recipes.addShaped(
    "Crossroads Wool Insulated Heat Cable",
    <crossroads:heat_cable_copper_wool>, 
    [
        [<techguns:itemshared:60>,  <ore:ingotCopper>,          <techguns:itemshared:60>    ],
        [<ore:ingotCopper>,         <techguns:itemshared:60>,   <ore:ingotCopper>           ], 
        [<techguns:itemshared:60>,  <ore:ingotCopper>,          <techguns:itemshared:60>    ]
    ]
);
recipes.addShaped(
    "Crossroads Wool Insulated Heat Cable Rods",
    <crossroads:heat_cable_copper_wool>, 
    [
        [<techguns:itemshared:60>,  <ore:stickCopper>,            <techguns:itemshared:60>    ],
        [<ore:stickCopper>,           <techguns:itemshared:60>,   <ore:stickCopper>             ], 
        [<techguns:itemshared:60>,  <ore:stickCopper>,            <techguns:itemshared:60>    ]
    ]
);


	//	Fluid Cooling Chamber	_______________________________________________________________________________________________________________________________________________________________________
RecipeBuilder.get("basic")
    .setShaped([
        [<ore:ingotTin>,        <ore:ingotTin>,         <ore:ingotCopper>,      <ore:ingotTin>,         <ore:ingotTin>          ],
        [<ore:ingotTin>,        null,                   null,                   null,                   <ore:ingotTin>          ],
        [<ore:ingotTin>,        null,                   null,                   null,                   <ore:ingotTin>          ],
        [<quark:sturdy_stone>,  null,                   null,                   null,                   <quark:sturdy_stone>    ],
        [<quark:sturdy_stone>,  <quark:sturdy_stone>,   <quark:sturdy_stone>,   <quark:sturdy_stone>,   <quark:sturdy_stone>    ]])
    .addOutput( <crossroads:fluid_cooling_chamber> )
    .create();

	//	Heating Crucible	_______________________________________________________________________________________________________________________________________________________________________
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

