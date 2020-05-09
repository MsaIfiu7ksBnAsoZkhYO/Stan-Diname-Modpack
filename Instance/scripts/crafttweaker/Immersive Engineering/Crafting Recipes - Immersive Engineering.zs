//=====================================================================================================================================================================================================	
//	Import-ant things
//=====================================================================================================================================================================================================


import mods.artisanworktables.builder.RecipeBuilder;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.oredict.IOreDict;
import crafttweaker.liquid.ILiquidStack;


	//	Treated Wood sticks	_______________________________________________________________________________________________________________________________________________________________________
recipes.remove( <immersiveengineering:material> );
RecipeBuilder.get("carpenter")
  .setShaped([
    [<ore:plankTreatedWood>],
    [<ore:plankTreatedWood>]])
  .addTool(<ore:artisansHandsaw>, 1)
  .addOutput(<immersiveengineering:material> * 4)
  .create();

	//	Engineer Hammer	_______________________________________________________________________________________________________________________________________________________________________
recipes.remove( <immersiveengineering:tool> );
RecipeBuilder.get("basic")
  .setShaped([
    [null, <quark:sturdy_stone>, <ore:partBinding>],
    [null, <ore:partToolRod>, <quark:sturdy_stone>],
    [<ore:partToolRod>, null, null]])
  .addOutput(<immersiveengineering:tool>)
  .create();

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
	.addTool( <ore:artisansTrowel> , 1 )
	.addOutput( <contenttweaker:coke_clay> )
	.create();

	//	Coke Clay Nuggets, divide and conquer.	_______________________________________________________________________________________________________________________________________________________________________
RecipeBuilder.get("potter")
	.setShapeless( [ <ore:clayCoke> ] )
	.setFluid( <liquid:water> * 50 )
	.addTool( <ore:artisansTrowel> , 1 )
    .addTool( <ore:toolClay> , 1 )
	.addOutput( <contenttweaker:coke_clay_nugget> * 9 )
	.create();

RecipeBuilder.get("potter")
    .setShaped([
        [<ore:nuggetPorcelain>, <ore:nuggetKiln>,       <ore:nuggetPorcelain>   ],
        [<ore:nuggetKiln>,      <ore:lumpSandstone>,    <ore:nuggetKiln>        ],
        [<ore:nuggetPorcelain>, <ore:nuggetKiln>,       <ore:nuggetPorcelain>   ]])
    .setFluid( <liquid:water> * 50 )
    .addTool( <ore:artisansTrowel> , 1 )
    .addOutput( <contenttweaker:coke_clay> )
    .create();

    //	Unfired Coke Clay Brick	_______________________________________________________________________________________________________________________________________________________________________
RecipeBuilder.get("potter")
    .setShapeless( [ <ore:clayCoke> ] )
    .setFluid( <liquid:water> * 50 )
    .addTool( <ore:artisansTrowel> , 1 )
    .addTool( <contenttweaker:brick_mold> , 1 )
    .addOutput( <contenttweaker:unfired_coke_brick> )
    .create();

    //	Coke Brick Block	_______________________________________________________________________________________________________________________________________________________________________
recipes.remove( <immersiveengineering:stone_decoration> );
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
	.addTool( <ore:artisansTrowel> , 1 )
	.addOutput( <contenttweaker:kiln_clay> )
	.create();

	//	Kiln Clay Nuggets, divide and conquer.	_______________________________________________________________________________________________________________________________________________________________________
RecipeBuilder.get("potter")
	.setShapeless( [ <ore:clayKiln> ] )
	.setFluid( <liquid:water> * 50 )
	.addTool( <ore:artisansTrowel> , 1 )
    .addTool( <ore:toolClay> , 1 )
	.addOutput( <contenttweaker:kiln_clay_nugget> * 9 )
	.create();

    //	Kiln Clay Ball	_______________________________________________________________________________________________________________________________________________________________________
RecipeBuilder.get("potter")
    .setShaped([
        [<ore:layerSand>,       <ore:nuggetPorcelain>,  <ore:layerSand>         ],
        [<ore:nuggetPorcelain>, <ore:dustLime>,         <ore:nuggetPorcelain>   ],
        [<ore:layerSand>,       <ore:nuggetPorcelain>,  <ore:layerSand>         ]])
    .setFluid( <liquid:water> * 50 )
    .addTool( <ore:artisansTrowel> , 1 )
    .addOutput( <contenttweaker:kiln_clay> )
    .create();

    //	Unfired Kiln Brick	_______________________________________________________________________________________________________________________________________________________________________
RecipeBuilder.get("potter")
    .setShapeless( [ <contenttweaker:kiln_clay> ] )
    .setFluid( <liquid:water> * 50 )
    .addTool( <ore:artisansTrowel> , 1 )
    .addTool( <contenttweaker:brick_mold> , 1 )
    .addOutput( <contenttweaker:unfired_kiln_brick> )
    .create();

    //	Kiln Brick Block	_______________________________________________________________________________________________________________________________________________________________________
recipes.remove( <immersiveengineering:stone_decoration:10> );
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
	.addTool( <ore:artisansTrowel> , 1 )
	.addOutput( <contenttweaker:blast_clay> )
	.create();

	//	Blast Clay Nuggets, divide and conquer.	_______________________________________________________________________________________________________________________________________________________________________
RecipeBuilder.get("potter")
	.setShapeless( [ <ore:clayBlast> ] )
	.setFluid( <liquid:water> * 50 )
	.addTool( <ore:artisansTrowel> , 1 )
    .addTool( <ore:toolClay> , 1 )
	.addOutput( <contenttweaker:blast_clay_nugget> * 9 )
	.create();

    //	Blast Brick Clay Ball	_______________________________________________________________________________________________________________________________________________________________________
RecipeBuilder.get("potter")
    .setShaped([
        [<ore:nuggetCoke>,  <ore:nuggetKiln>,       <ore:nuggetCoke>    ],
        [<ore:nuggetKiln>,  <ore:dustTinyCarbon>,   <ore:nuggetKiln>    ],
        [<ore:nuggetCoke>,  <ore:nuggetKiln>,       <ore:nuggetCoke>    ]])
    .setFluid( <liquid:water> * 50 )
    .addTool( <ore:artisansTrowel> , 1 )
    .addOutput( <contenttweaker:blast_clay> )
    .create();

    //	Unfired Blast Brick	_______________________________________________________________________________________________________________________________________________________________________
RecipeBuilder.get("potter")
    .setShapeless( [ <contenttweaker:blast_clay> ] )
    .setFluid( <liquid:water> * 50 )
    .addTool( <ore:artisansTrowel> , 1 )
    .addTool( <contenttweaker:brick_mold> , 1 )
    .addOutput( <contenttweaker:unfired_blast_brick> )
    .create();

    //	Blast Brick	_______________________________________________________________________________________________________________________________________________________________________
recipes.remove( <immersiveengineering:stone_decoration:1> );
RecipeBuilder.get("mason")
    .setShaped([
        [   <ore:ingotBlast>,   <ore:ingotBlast>    ],
        [   <ore:ingotBlast>,   <ore:ingotBlast>    ]])
    .setFluid( <liquid:mortar> * 100 )
    .addTool( <ore:artisansTrowel> , 1 )
    .addOutput( <immersiveengineering:stone_decoration:1> )
    .create();