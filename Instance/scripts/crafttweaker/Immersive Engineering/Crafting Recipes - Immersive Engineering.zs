//=====================================================================================================================================================================================================	
//	Import-ant things
//=====================================================================================================================================================================================================


import mods.artisanworktables.builder.RecipeBuilder;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.oredict.IOreDict;
import crafttweaker.liquid.ILiquidStack;


//=====================================================================================================================================================================================================	
//	Removeing Crafting Recipes
//=====================================================================================================================================================================================================
   
   
    //	Treated Wood in crafting table (make in casting basin)	_______________________________________________________________________________________________________________________________________________________________________
recipes.removeByRecipeName("immersiveengineering:treated_wood/treated_wood");


//=====================================================================================================================================================================================================	
//	Crafting Recipes
//=====================================================================================================================================================================================================


    //	Coke Clay 	_______________________________________________________________________________________________________________________________________________________________________
RecipeBuilder.get("potter")
    .setShaped([
        [<ore:nuggetClay>,  <ore:lumpGravel>,       <ore:nuggetClay>,       <ore:lumpGravel>,       <ore:nuggetClay>    ],
        [<ore:lumpGravel>,  <ore:lumpSandstone>,    <ore:lumpSandstone>,    <ore:lumpSandstone>,    <ore:lumpGravel>    ],
        [<ore:nuggetClay>,  <ore:lumpSandstone>,    <ore:nuggetClay>,       <ore:lumpSandstone>,    <ore:nuggetClay>    ],
        [<ore:lumpGravel>,  <ore:lumpSandstone>,    <ore:lumpSandstone>,    <ore:lumpSandstone>,    <ore:lumpGravel>    ],
        [<ore:nuggetClay>,  <ore:lumpGravel>,       <ore:nuggetClay>,       <ore:lumpGravel>,       <ore:nuggetClay>    ]])
    .setFluid( <liquid:water > * 50 )
    .setSecondaryIngredients( [ <minecraft:bowl> ] )
    .addTool( <ore:artisansTrowel> , 1 )
    .addOutput( <contenttweaker:coke_clay> )
    .setExtraOutputOne( <minecraft:bowl>, 1.0 )
    .create();

    //	Unfired Coke Clay Brick	_______________________________________________________________________________________________________________________________________________________________________
RecipeBuilder.get("potter")
    .setShapeless(
            [<contenttweaker:coke_clay>])
    .setFluid( <liquid:water> * 50 )
    .addTool( <ore:artisansTrowel> , 1 )
    .addOutput( <contenttweaker:unfired_coke_brick> )
    .create();

    //	Coke Brick Block	_______________________________________________________________________________________________________________________________________________________________________
recipes.remove( <immersiveengineering:stone_decoration> );
RecipeBuilder.get("mason")
    .setShaped([
        [<contenttweaker:coke_brick>,   <contenttweaker:coke_brick>,    <contenttweaker:coke_brick> ],
        [<contenttweaker:coke_brick>,   <contenttweaker:coke_brick>,    <contenttweaker:coke_brick> ],
        [<contenttweaker:coke_brick>,   <contenttweaker:coke_brick>,    <contenttweaker:coke_brick> ]])
    .setFluid( <liquid:mortar> * 100 )
    .addTool( <ore:artisansTrowel> , 1 )
    .addOutput( <immersiveengineering:stone_decoration> )
    .create();