//=====================================================================================================================================================================================================	
//	Import-ant things
//=====================================================================================================================================================================================================


import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.oredict.IOreDict;
import mods.artisanworktables.builder.RecipeBuilder;


//=====================================================================================================================================================================================================	
//	Editing recipes
//=====================================================================================================================================================================================================


	//	Fluid Tank	_______________________________________________________________________________________________________________________________________________________________________
recipes.remove( <openblocks:tank> );
RecipeBuilder.get("basic")
    .setShaped([
        [<ore:stickCopper>, <ore:paneGlass>,    <ore:stickWood>,        <ore:paneGlass>,    <ore:stickCopper>   ],
        [<ore:paneGlass>,   <ore:stickWood>,    null,                   <ore:stickWood>,    <ore:paneGlass>     ],
        [<ore:stickWood>,   null,               <agricraft:water_tank>, null,               <ore:stickWood>     ],
        [<ore:paneGlass>,   <ore:stickWood>,    null,                   <ore:stickWood>,    <ore:paneGlass>     ],
        [<ore:stickCopper>, <ore:paneGlass>,    <ore:stickWood>,        <ore:paneGlass>,    <ore:stickCopper>   ]])
    .addOutput( <openblocks:tank> )
    .create();