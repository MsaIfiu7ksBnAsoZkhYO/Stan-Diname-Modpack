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
//	Coke Clay
//=====================================================================================================================================================================================================


	//	Coke Clay Nuggets Assemble!	_______________________________________________________________________________________________________________________________________________________________________
RecipeBuilder.get("potter")
	.setShapeless([
		<ore:nuggetCoke>,	<ore:nuggetCoke>,	<ore:nuggetCoke>,	
		<ore:nuggetCoke>,	<ore:nuggetCoke>,	<ore:nuggetCoke>,
		<ore:nuggetCoke>,	<ore:nuggetCoke>,	<ore:nuggetCoke>])
	.setFluid( <liquid:water> * 50 )
	.setSecondaryIngredients( [ <minecraft:bowl> ] )
	.addTool( <ore:artisansTrowel> , 1 )
	.addOutput( <contenttweaker:coke_clay> )
	.setExtraOutputOne( <minecraft:bowl> , 1.0 )
	.create();

	//	Coke Clay Nuggets, divide and conquer.	_______________________________________________________________________________________________________________________________________________________________________
RecipeBuilder.get("potter")
	.setShapeless( [ <ore:clayCoke> ] )
	.setFluid( <liquid:water> * 50 )
	.setSecondaryIngredients( [ <minecraft:bowl> ] )
	.addTool( <ore:artisansTrowel> , 1 )
    .addTool( <ore:toolClay> , 1 )
	.addOutput( <contenttweaker:coke_clay_nugget> * 9 )
	.setExtraOutputOne( <minecraft:bowl>, 1.0 )
	.create();

    //	Coke Clay 	_______________________________________________________________________________________________________________________________________________________________________
/*
RecipeBuilder.get("potter")
    .setShaped([
        [<ore:lumpSandstone>,   <ore:lumpGravel>,       <ore:nuggetPorcelain>,  <ore:lumpGravel>,       <ore:lumpSandstone>     ],
        [<ore:lumpGravel>,      <ore:nuggetPorcelain>,  <ore:lumpSandstone>,    <ore:nuggetPorcelain>,  <ore:lumpGravel>        ],
        [<ore:nuggetPorcelain>, <ore:lumpSandstone>,    <ore:nuggetPorcelain>,  <ore:lumpSandstone>,    <ore:nuggetPorcelain>   ],
        [<ore:lumpGravel>,      <ore:nuggetPorcelain>,  <ore:lumpSandstone>,    <ore:nuggetPorcelain>,  <ore:lumpGravel>        ],
        [<ore:lumpSandstone>,   <ore:lumpGravel>,       <ore:nuggetPorcelain>,  <ore:lumpGravel>,       <ore:lumpSandstone>     ]])
    .setFluid( <liquid:water > * 50 )
    .setSecondaryIngredients( [ <minecraft:bowl> ] )
    .addTool( <ore:artisansTrowel> , 1 )
    .addOutput( <ore:clayCoke>.firstItem )
    .setExtraOutputOne( <minecraft:bowl>, 1.0 )
    .create();
*/

RecipeBuilder.get("potter")
    .setShaped([
        [<ore:nuggetPorcelain>, <ore:nuggetClay>,       <ore:nuggetPorcelain>   ],
        [<ore:nuggetClay>,      <ore:lumpSandstone>,    <ore:nuggetClay>        ],
        [<ore:nuggetPorcelain>, <ore:nuggetClay>,       <ore:nuggetPorcelain>   ]])
    .setFluid( <liquid:water> * 50 )
    .setSecondaryIngredients( [ <minecraft:bowl> ] )
    .addTool( <ore:artisansTrowel> , 1 )
    .addOutput( <contenttweaker:coke_clay> )
    .setExtraOutputOne( <minecraft:bowl> , 1.0 )
    .create();

    //	Unfired Coke Clay Brick	_______________________________________________________________________________________________________________________________________________________________________
RecipeBuilder.get("potter")
    .setShapeless( [ <ore:clayCoke> ] )
    .setFluid( <liquid:water> * 50 )
    .setSecondaryIngredients( [ <minecraft:bowl> ] )
    .addTool( <ore:artisansTrowel> , 1 )
    .addTool( <contenttweaker:brick_mold> , 1 )
    .addOutput( <contenttweaker:unfired_coke_brick> )
    .setExtraOutputOne( <minecraft:bowl>, 1.0 )
    .create();

    //	Coke Brick Block	_______________________________________________________________________________________________________________________________________________________________________
//recipes.remove( <immersiveengineering:stone_decoration> );
RecipeBuilder.get("mason")
    .setShaped([
        [<ore:ingotCoke>,   <ore:ingotCoke> ],
        [<ore:ingotCoke>,   <ore:ingotCoke> ]])
    .setFluid( <liquid:mortar> * 100 )
    .addTool( <ore:artisansTrowel> , 1 )
    .addOutput( <immersiveengineering:stone_decoration> )
    .create();


//=====================================================================================================================================================================================================	
//	Kiln Clay
//=====================================================================================================================================================================================================


	//	Kiln Clay Nuggets Assemble!	_______________________________________________________________________________________________________________________________________________________________________
RecipeBuilder.get("potter")
	.setShapeless([
		<ore:nuggetKiln>,	<ore:nuggetKiln>,	<ore:nuggetKiln>,	
		<ore:nuggetKiln>,	<ore:nuggetKiln>,	<ore:nuggetKiln>,
		<ore:nuggetKiln>,	<ore:nuggetKiln>,	<ore:nuggetKiln>])
	.setFluid( <liquid:water> * 50 )
	.setSecondaryIngredients( [ <minecraft:bowl> ] )
	.addTool( <ore:artisansTrowel> , 1 )
	.addOutput( <contenttweaker:kiln_clay> )
	.setExtraOutputOne( <minecraft:bowl> , 1.0 )
	.create();

	//	Kiln Clay Nuggets, divide and conquer.	_______________________________________________________________________________________________________________________________________________________________________
RecipeBuilder.get("potter")
	.setShapeless( [ <ore:clayKiln> ] )
	.setFluid( <liquid:water> * 50 )
	.setSecondaryIngredients( [ <minecraft:bowl> ] )
	.addTool( <ore:artisansTrowel> , 1 )
    .addTool( <ore:toolClay> , 1 )
	.addOutput( <contenttweaker:kiln_clay_nugget> * 9 )
	.setExtraOutputOne( <minecraft:bowl>, 1.0 )
	.create();

    //	Kiln Clay Ball	_______________________________________________________________________________________________________________________________________________________________________
/*
RecipeBuilder.get("potter")
    .setShaped([
        [<ore:dustAsh>,         <ore:lumpSandstone>,    <ore:nuggetCoke>,       <ore:lumpSandstone>,    <ore:dustAsh>       ],
        [<ore:lumpSandstone>,   <ore:nuggetCoke>,       <ore:lumpSandstone>,    <ore:nuggetCoke>,       <ore:lumpSandstone> ],
        [<ore:nuggetCoke>,      <ore:lumpSandstone>,    <ore:nuggetCoke>,       <ore:lumpSandstone>,    <ore:nuggetCoke>    ],
        [<ore:lumpSandstone>,   <ore:nuggetCoke>,       <ore:lumpSandstone>,    <ore:nuggetCoke>,       <ore:lumpSandstone> ],
        [<ore:dustAsh>,         <ore:lumpSandstone>,    <ore:nuggetCoke>,       <ore:lumpSandstone>,    <ore:dustAsh>       ]])
    .setFluid( <liquid:water> * 50 )
    .setSecondaryIngredients( [ <minecraft:bowl> ] )
    .addTool( <ore:artisansTrowel> , 1 )
    .addOutput( <contenttweaker:kiln_clay> )
    .setExtraOutputOne( <minecraft:bowl> , 1.0 )
    .create();
*/
RecipeBuilder.get("potter")
    .setShaped([
        [<ore:layerSand>,   <ore:nuggetCoke>,   <ore:layerSand>     ],
        [<ore:nuggetCoke>,  <ore:dustLime>,     <ore:nuggetCoke>    ],
        [<ore:layerSand>,   <ore:nuggetCoke>,   <ore:layerSand>     ]])
    .setFluid( <liquid:water> * 50 )
    .addTool( <ore:artisansTrowel> , 1 )
    .addOutput( <contenttweaker:kiln_clay> )
    .create();

    //	Unfired Kiln Brick	_______________________________________________________________________________________________________________________________________________________________________
RecipeBuilder.get("potter")
    .setShapeless( [ <contenttweaker:kiln_clay> ] )
    .setFluid( <liquid:water> * 50 )
    .setSecondaryIngredients( [ <minecraft:bowl> ] )
    .addTool( <ore:artisansTrowel> , 1 )
    .addTool( <contenttweaker:brick_mold> , 1 )
    .addOutput( <contenttweaker:unfired_kiln_brick> )
    .setExtraOutputOne( <minecraft:bowl> , 1.0 )
    .create();

    //	Kiln Brick Block	_______________________________________________________________________________________________________________________________________________________________________
RecipeBuilder.get("mason")
    .setShaped([
        [<ore:ingotKiln>,   <ore:ingotKiln> ],
        [<ore:ingotKiln>,   <ore:ingotKiln> ]])
    .setFluid( <liquid:mortar> * 100 )
    .addTool( <ore:artisansTrowel> , 1 )
    .addOutput( <immersiveengineering:stone_decoration:10> )
    .create();


//=====================================================================================================================================================================================================	
//	Blast Clay
//=====================================================================================================================================================================================================


	//	Blast Clay Nuggets Assemble!	_______________________________________________________________________________________________________________________________________________________________________
RecipeBuilder.get("potter")
	.setShapeless([
		<ore:nuggetBlast>,	<ore:nuggetBlast>,	<ore:nuggetBlast>,	
		<ore:nuggetBlast>,	<ore:nuggetBlast>,	<ore:nuggetBlast>,
		<ore:nuggetBlast>,	<ore:nuggetBlast>,	<ore:nuggetBlast>])
	.setFluid( <liquid:water> * 50 )
	.setSecondaryIngredients( [ <minecraft:bowl> ] )
	.addTool( <ore:artisansTrowel> , 1 )
	.addOutput( <contenttweaker:blast_clay> )
	.setExtraOutputOne( <minecraft:bowl> , 1.0 )
	.create();

	//	Blast Clay Nuggets, divide and conquer.	_______________________________________________________________________________________________________________________________________________________________________
RecipeBuilder.get("potter")
	.setShapeless( [ <ore:clayBlast> ] )
	.setFluid( <liquid:water> * 50 )
	.setSecondaryIngredients( [ <minecraft:bowl> ] )
	.addTool( <ore:artisansTrowel> , 1 )
    .addTool( <ore:toolClay> , 1 )
	.addOutput( <contenttweaker:blast_clay_nugget> * 9 )
	.setExtraOutputOne( <minecraft:bowl>, 1.0 )
	.create();

    //	Blast Brick Clay Ball	_______________________________________________________________________________________________________________________________________________________________________
/*
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
    .addOutput( <contenttweaker:blast_clay> )
    .setExtraOutputOne( <minecraft:bowl> , 1.0 )
    .create();
*/

RecipeBuilder.get("potter")
    .setShaped([
        [<ore:nuggetCoke>,  <ore:nuggetKiln>,       <ore:nuggetCoke>    ],
        [<ore:nuggetKiln>,  <ore:dustTinyCarbon>,   <ore:nuggetKiln>    ],
        [<ore:nuggetCoke>,  <ore:nuggetKiln>,       <ore:nuggetCoke>    ]])
    .setFluid( <liquid:water> * 50 )
    .setSecondaryIngredients( [ <minecraft:bowl> ] )
    .addTool( <ore:artisansTrowel> , 1 )
    .addOutput( <contenttweaker:blast_clay> )
    .setExtraOutputOne( <minecraft:bowl> , 1.0 )
    .create();

    //	Unfired Blast Brick	_______________________________________________________________________________________________________________________________________________________________________
RecipeBuilder.get("potter")
    .setShapeless( [ <contenttweaker:blast_clay> ] )
    .setFluid( <liquid:water> * 50 )
    .setSecondaryIngredients( [ <minecraft:bowl> ] )
    .addTool( <ore:artisansTrowel> , 1 )
    .addTool( <contenttweaker:brick_mold> , 1 )
    .addOutput( <contenttweaker:unfired_blast_brick> )
    .setExtraOutputOne( <minecraft:bowl> , 1.0 )
    .create();

    //	Blast Brick	_______________________________________________________________________________________________________________________________________________________________________
RecipeBuilder.get("mason")
    .setShaped([
        [   <ore:ingotBlast>,   <ore:ingotBlast>    ],
        [   <ore:ingotBlast>,   <ore:ingotBlast>    ]])
    .setFluid( <liquid:mortar> * 100 )
    .addTool( <ore:artisansTrowel> , 1 )
    .addOutput( <immersiveengineering:stone_decoration:1> )
    .create();