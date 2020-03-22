//=====================================================================================================================================================================================================	
//	Import-ant things
//=====================================================================================================================================================================================================


import mods.artisanworktables.builder.RecipeBuilder;


//=====================================================================================================================================================================================================	
//	Make them Recipes.
//=====================================================================================================================================================================================================


	//	Shared component variable	_______________________________________________________________________________________________________________________________________________________________________
val StoneCore = <tconstruct:tough_tool_rod>.withTag({Material: "stone"});
val Handle = <tconstruct:tough_tool_rod>.withTag({Material: "wood"});
val StoneBlock = <ore:stone>;
val WoodGear = <ore:gearWood>;
val MobLead = <ore:gearWood>;

	//	Hand Grindstone	_______________________________________________________________________________________________________________________________________________________________________
//recipes.remove( <horsepower:hand_grindstone> );
RecipeBuilder.get("basic")
    .setShaped([
        [null,        null,       StoneBlock, null,       Handle      ],
        [StoneBlock,  StoneBlock, StoneCore,  StoneBlock, StoneBlock  ],
        [StoneBlock,  WoodGear,   StoneCore,  WoodGear,   StoneBlock  ],
        [StoneBlock,  StoneBlock, StoneBlock, StoneBlock, StoneBlock  ]])
    .addOutput( <horsepower:hand_grindstone> )
    .create();

	//	Horse Grindstone	_______________________________________________________________________________________________________________________________________________________________________
//recipes.remove( <horsepower:grindstone> );
RecipeBuilder.get("basic")
  .setShaped([
    [null,          MobLead,   Handle,         MobLead,   null        ],
    [StoneBlock,   StoneBlock,        StoneCore,      StoneBlock,        StoneBlock ],
    [StoneBlock,   WoodGear,     StoneCore,      WoodGear,     StoneBlock ],
    [StoneBlock,   StoneBlock,        StoneBlock,    StoneBlock,        StoneBlock ]])
  .addOutput( <horsepower:grindstone> )
  .create();