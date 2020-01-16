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
//	Coke Clay
//=====================================================================================================================================================================================================


    //	Coke Clay nuggets	_______________________________________________________________________________________________________________________________________________________________________
recipes.addShapeless(
    "Coke Clay nuggets from Coke Clay ball",
    <ore:nuggetCoke>.firstItem * 9, 
    [<ore:clayCoke>]);
recipes.addShapeless(
    "Coke Clay Ball from Coke Clay Nuggets",
    <ore:clayCoke>.firstItem, 
    [
        <ore:nuggetCoke>,
        <ore:nuggetCoke>,
        <ore:nuggetCoke>,
        <ore:nuggetCoke>,
        <ore:nuggetCoke>,
        <ore:nuggetCoke>,
        <ore:nuggetCoke>,
        <ore:nuggetCoke>,
        <ore:nuggetCoke>
    ]
);

    //	Coke Clay 	_______________________________________________________________________________________________________________________________________________________________________
RecipeBuilder.get("potter")
    .setShaped([
        [<ore:lumpSandstone>,   <ore:lumpGravel>,       <ore:nuggetClay>,       <ore:lumpGravel>,       <ore:lumpSandstone> ],
        [<ore:lumpGravel>,      <ore:nuggetClay>,       <ore:lumpSandstone>,    <ore:nuggetClay>,       <ore:lumpGravel>    ],
        [<ore:nuggetClay>,      <ore:lumpSandstone>,    <ore:nuggetClay>,       <ore:lumpSandstone>,    <ore:nuggetClay>    ],
        [<ore:lumpGravel>,      <ore:nuggetClay>,       <ore:lumpSandstone>,    <ore:nuggetClay>,       <ore:lumpGravel>    ],
        [<ore:lumpSandstone>,   <ore:lumpGravel>,       <ore:nuggetClay>,       <ore:lumpGravel>,       <ore:lumpSandstone> ]])
    .setFluid( <liquid:water > * 50 )
    .setSecondaryIngredients( [ <minecraft:bowl> ] )
    .addTool( <ore:artisansTrowel> , 1 )
    .addOutput( <ore:clayCoke>.firstItem )
    .setExtraOutputOne( <minecraft:bowl>, 1.0 )
    .create();

    //	Unfired Coke Clay Brick	_______________________________________________________________________________________________________________________________________________________________________
RecipeBuilder.get("potter")
    .setShapeless(
            [<ore:clayCoke>])
    .setFluid( <liquid:water> * 50 )
    .addTool( <ore:artisansTrowel> , 1 )
    .addOutput( <contenttweaker:unfired_coke_brick> )
    .create();

    //	Coke Brick Block	_______________________________________________________________________________________________________________________________________________________________________
recipes.remove( <immersiveengineering:stone_decoration> );
RecipeBuilder.get("mason")
    .setShaped([
        [<ore:ingotCoke>,   <ore:ingotCoke>,    <ore:ingotCoke> ],
        [<ore:ingotCoke>,   <ore:ingotCoke>,    <ore:ingotCoke> ],
        [<ore:ingotCoke>,   <ore:ingotCoke>,    <ore:ingotCoke> ]])
    .setFluid( <liquid:mortar> * 100 )
    .addTool( <ore:artisansTrowel> , 1 )
    .addOutput( <immersiveengineering:stone_decoration> )
    .create();


//=====================================================================================================================================================================================================	
//	Kiln Clay
//=====================================================================================================================================================================================================


    //	Kiln Clay Nuggets	_______________________________________________________________________________________________________________________________________________________________________
recipes.addShapeless(
    "Coke Kiln Nuggets from Kiln Clay Ball",
    <ore:nuggetKiln>.firstItem * 9, 
    [<contenttweaker:kiln_clay>]
);

recipes.addShapeless(
    "Coke Kiln Caly Ball to Coke Kiln Clay Nuggets",
    <contenttweaker:kiln_clay>, 
    [
        <ore:nuggetKiln>,
        <ore:nuggetKiln>,
        <ore:nuggetKiln>,
        <ore:nuggetKiln>,
        <ore:nuggetKiln>,
        <ore:nuggetKiln>,
        <ore:nuggetKiln>,
        <ore:nuggetKiln>,
        <ore:nuggetKiln>
    ]
);

    //	Kiln Clay Ball	_______________________________________________________________________________________________________________________________________________________________________
RecipeBuilder.get("potter")
    .setShaped([
        [null,                  <ore:lumpSandstone>,    <ore:nuggetCoke>,       <ore:lumpSandstone>,    null                ],
        [<ore:lumpSandstone>,   <ore:nuggetCoke>,       <ore:lumpSandstone>,    <ore:nuggetCoke>,       <ore:lumpSandstone> ],
        [<ore:nuggetCoke>,      <ore:lumpSandstone>,    <ore:nuggetCoke>,       <ore:lumpSandstone>,    <ore:nuggetCoke>    ],
        [<ore:lumpSandstone>,   <ore:nuggetCoke>,       <ore:lumpSandstone>,    <ore:nuggetCoke>,       <ore:lumpSandstone> ],
        [null,                  <ore:lumpSandstone>,    <ore:nuggetCoke>,       <ore:lumpSandstone>,    null                ]])
    .setFluid( <liquid:water> * 50 )
    .setSecondaryIngredients( [ <minecraft:bowl> ] )
    .addTool( <ore:artisansTrowel> , 1 )
    .addOutput( <contenttweaker:kiln_clay> )
    .setExtraOutputOne( <minecraft:bowl> , 1.0 )
    .create();

    //	Unfired Kiln Brick	_______________________________________________________________________________________________________________________________________________________________________
RecipeBuilder.get("potter")
    .setShapeless( [ <contenttweaker:kiln_clay> ] )
    .setFluid( <liquid:water> * 50 )
    .setSecondaryIngredients( [ <minecraft:bowl> ] )
    .addTool( <ore:artisansTrowel> , 1 )
    .addOutput( <contenttweaker:unfired_kiln_brick> )
    .setExtraOutputOne( <minecraft:bowl> , 1.0 )
    .create();

    //	Kiln Brick Block	_______________________________________________________________________________________________________________________________________________________________________
RecipeBuilder.get("mason")
    .setShaped([
        [<ore:ingotKiln>,   <ore:ingotKiln>,    <ore:ingotKiln> ],
        [<ore:ingotKiln>,   <ore:ingotKiln>,    <ore:ingotKiln> ],
        [<ore:ingotKiln>,   <ore:ingotKiln>,    <ore:ingotKiln> ]])
    .setFluid( <liquid:mortar> * 100 )
    .addTool( <ore:artisansTrowel> , 1 )
    .addOutput( <immersiveengineering:stone_decoration:10> )
    .create();


//=====================================================================================================================================================================================================	
//	Blast Clay
//=====================================================================================================================================================================================================


    //	Blast Brick Clay Nuggets	_______________________________________________________________________________________________________________________________________________________________________
recipes.addShapeless(
    "Blast Clay Ball to Blast Clay nuggets",
    <ore:nuggetBlast>.firstItem * 9, 
    [<contenttweaker:blast_clay>]
);

recipes.addShapeless(
    "Blast Clay Nuggets to Blast Clay Ball",
    <contenttweaker:blast_clay>, 
    [
        <ore:nuggetBlast>,
        <ore:nuggetBlast>,
        <ore:nuggetBlast>,
        <ore:nuggetBlast>,
        <ore:nuggetBlast>,
        <ore:nuggetBlast>,
        <ore:nuggetBlast>,
        <ore:nuggetBlast>,
        <ore:nuggetBlast>
    ]
);

    //	Blast Brick Clay Ball	_______________________________________________________________________________________________________________________________________________________________________
RecipeBuilder.get("potter")
    .setShaped([
        [<ore:nuggetCoke>,      <ore:dustTinyCarbon>,   <ore:nuggetKiln>,   <ore:dustTinyCarbon>,   <ore:nuggetCoke>        ],
        [<ore:dustTinyCarbon>,  <ore:nuggetKiln>,       <ore:nuggetCoke>,   <ore:nuggetKiln>,       <ore:dustTinyCarbon>    ],
        [<ore:nuggetKiln>,      <ore:nuggetCoke>,       <ore:nuggetKiln>,   <ore:nuggetCoke>,       <ore:nuggetKiln>        ],
        [<ore:dustTinyCarbon>,  <ore:nuggetKiln>,       <ore:nuggetCoke>,   <ore:nuggetKiln>,       <ore:dustTinyCarbon>    ],
        [<ore:nuggetCoke>,      <ore:dustTinyCarbon>,   <ore:nuggetKiln>,   <ore:dustTinyCarbon>,   <ore:nuggetCoke>        ]])
    .setFluid( <liquid:water> * 50 )
    .setSecondaryIngredients( [ <minecraft:bowl> , <ore:nuggetCoke> ] )
    .addTool( <ore:artisansTrowel> , 1 )
    .addOutput( <contenttweaker:blast_clay> * 2 )
    .setExtraOutputOne( <minecraft:bowl> , 1.0 )
    .create();

    //	Unfired Blast Brick	_______________________________________________________________________________________________________________________________________________________________________
RecipeBuilder.get("potter")
    .setShapeless( [ <contenttweaker:blast_clay> ] )
    .setFluid( <liquid:water> * 50 )
    .setSecondaryIngredients( [ <minecraft:bowl> ] )
    .addTool( <ore:artisansTrowel> , 1 )
    .addOutput( <contenttweaker:unfired_blast_brick> )
    .setExtraOutputOne( <minecraft:bowl> , 1.0 )
    .create();

    //	Blast Brick	_______________________________________________________________________________________________________________________________________________________________________
RecipeBuilder.get("mason")
    .setShaped([
        [   <ore:ingotBlast>,   <ore:ingotBlast>,   <ore:ingotBlast>    ],
        [   <ore:ingotBlast>,   <ore:ingotBlast>,   <ore:ingotBlast>    ],
        [   <ore:ingotBlast>,   <ore:ingotBlast>,   <ore:ingotBlast>    ]])
    .setFluid( <liquid:mortar> * 100 )
    .addTool( <ore:artisansTrowel> , 1 )
    .addOutput( <immersiveengineering:stone_decoration:1> )
    .create();