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

	//	Hand Grindstone	_______________________________________________________________________________________________________________________________________________________________________
//recipes.remove( <horsepower:hand_grindstone> );
RecipeBuilder.get("basic")
    .setShaped([
        [null,          null,           <ore:stone>,    null,           Handle      ],
        [<ore:stone>,   <ore:stone>,    StoneCore,      <ore:stone>,    <ore:stone> ],
        [<ore:stone>,   <ore:gearWood>, StoneCore,      <ore:gearWood>, <ore:stone> ],
        [<ore:stone>,   <ore:stone>,    <ore:stone>,    <ore:stone>,    <ore:stone> ]])
    .addOutput( <horsepower:hand_grindstone> )
    .create();

	//	Horse Grindstone	_______________________________________________________________________________________________________________________________________________________________________
//recipes.remove( <horsepower:grindstone> );
RecipeBuilder.get("basic")
  .setShaped([
    [null,          <minecraft:lead>,   Handle,         <minecraft:lead>,   null        ],
    [<ore:stone>,   <ore:stone>,        StoneCore,      <ore:stone>,        <ore:stone> ],
    [<ore:stone>,   <ore:gearWood>,     StoneCore,      <ore:gearWood>,     <ore:stone> ],
    [<ore:stone>,   <ore:stone>,        <ore:stone>,    <ore:stone>,        <ore:stone> ]])
  .addOutput( <horsepower:grindstone> )
  .create();