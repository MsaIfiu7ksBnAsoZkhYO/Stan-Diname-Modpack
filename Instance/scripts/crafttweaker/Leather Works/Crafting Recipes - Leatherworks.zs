//=====================================================================================================================================================================================================	
//	Import-ant things
//=====================================================================================================================================================================================================


import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import mods.artisanworktables.builder.RecipeBuilder;

//=====================================================================================================================================================================================================	
//	Leather Pack.  The begining of backpacking.
//=====================================================================================================================================================================================================


    //  Leather Pack   
recipes.remove( <leatherworks:pack_brown> );
RecipeBuilder.get("tailor")
    .setShaped([
        [<ore:leatherStrip>,    <ore:leatherSheet>, <ore:leatherStrip>  ],
        [<ore:leatherSheet>,    <ore:chest>,        <ore:leatherSheet>  ],
        [<ore:leatherStrip>,    <ore:leatherSheet>, <ore:leatherStrip>  ]])
    .setSecondaryIngredients( [
        <ore:string>, 
        <ore:fabricHemp>,
        <ore:nuggetCopper>])
    .addTool( <ore:artisansNeedle> , 1 )
    .addOutput( <leatherworks:pack_brown> )
    .setExtraOutputOne( <minecraft:stick> , 1.0 )
    .create();