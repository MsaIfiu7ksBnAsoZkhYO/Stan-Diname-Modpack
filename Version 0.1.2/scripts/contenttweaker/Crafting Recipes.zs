//=====================================================================================================================================================================================================	
//	Import-ant things
//=====================================================================================================================================================================================================

#norun
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import mods.artisanworktables.builder.RecipeBuilder;


//=====================================================================================================================================================================================================	
//	Add recipes for custom added things that need to be things
//=====================================================================================================================================================================================================


	//	Mortar Iron bucket	_______________________________________________________________________________________________________________________________________________________________________
RecipeBuilder.get("mason")
  .setShaped([
    	[<ore:sand>,		<ore:dustLime>,			<ore:sand>		],
    	[<ore:dustLime>,	<ore:dustLime>,			<ore:dustLime>	],
    	[<ore:sand>,		<minecraft:bucket>,		<ore:sand>		]])
  .setFluid( <liquid:water> * 1000 )
  .addTool( <ore:artisansTrowel>, 10 )
  .addOutput( <forge:bucketfilled>.withTag({FluidName: "mortar", Amount: 1000}) )
  .create();
	
	//	Mortar Ceramic Bucket	_______________________________________________________________________________________________________________________________________________________________________
	RecipeBuilder.get("mason")
  .setShaped([
    	[<ore:sand>,		<ore:dustLime>,				<ore:sand>		],
    	[<ore:dustLime>,	<ore:dustLime>,				<ore:dustLime>	],
    	[<ore:sand>,		<ceramics:clay_bucket>,		<ore:sand>		]])
  .setFluid( <liquid:water> * 1000 )
  .addTool( <ore:artisansTrowel>, 10 )
  .addOutput( <ceramics:clay_bucket>.withTag({fluids: {FluidName: "mortar", Amount: 1000}}) )
  .create();


	//	mold sand for sand casting	_______________________________________________________________________________________________________________________________________________________________________
RecipeBuilder.get("mason")
	.setShaped([
    	[<ore:sand>,	<ore:clay>,			<ore:sand>	],
    	[<ore:clay>,	<ore:clay>,			<ore:clay>	],
    	[<ore:sand>,	<minecraft:bucket>,	<ore:sand>	]])
	.setFluid( <liquid:water> * 1000 )
	.addTool( <ore:artisansTrowel>, 10 )
	.addOutput( <forge:bucketfilled>.withTag({FluidName: "moldsand", Amount: 1000}) )
	.create();

	//	mold sand for sand casting Ceramic Bucket	_______________________________________________________________________________________________________________________________________________________________________
RecipeBuilder.get("mason")
	.setShaped([
    	[<ore:sand>,	<ore:clay>,				<ore:sand>	],
    	[<ore:clay>,	<ore:clay>,				<ore:clay>	],
    	[<ore:sand>,	<ceramics:clay_bucket>,	<ore:sand>	]])
	.setFluid( <liquid:water> * 1000 )
	.addTool( <ore:artisansTrowel>, 10 )
	.addOutput( <ceramics:clay_bucket>.withTag({fluids: {FluidName: "moldsand", Amount: 1000}}) )
	.create();


	//	Clay Clay Nuggets Assemble!	_______________________________________________________________________________________________________________________________________________________________________
RecipeBuilder.get("potter")
	.setShapeless([
		<ore:nuggetClay>,	<ore:nuggetClay>,	<ore:nuggetClay>,	
		<ore:nuggetClay>,	<ore:nuggetClay>,	<ore:nuggetClay>,
		<ore:nuggetClay>,	<ore:nuggetClay>,	<ore:nuggetClay>])
	.setFluid( <liquid:water> * 50 )
	.addTool( <ore:artisansTrowel> , 1 )
	.addOutput( <minecraft:clay_ball> )
	.create();

	//	Clay Clay Nuggets, divide and conquer.	_______________________________________________________________________________________________________________________________________________________________________
RecipeBuilder.get("potter")
	.setShapeless( [ <ore:clay> ] )
	.setFluid( <liquid:water> * 50 )
	.addTool( <ore:artisansTrowel> , 1 )
	.addOutput( <contenttweaker:clay_nugget> * 9 )
	.create();


	
	//	Carbon Dusts Obtain	_______________________________________________________________________________________________________________________________________________________________________
RecipeBuilder.get("basic")
  .setShapeless([<ore:itemCoalpellet>])
  .addTool(<ore:artisansHammer>, 1)
  .addOutput(<contenttweaker:tiny_carbon_dust>)
  .create();

	//	Carbon Dusts Assemble!	_______________________________________________________________________________________________________________________________________________________________________
RecipeBuilder.get("basic")
	.setShapeless([
		<ore:dustTinyCarbon>,	<ore:dustTinyCarbon>,	<ore:dustTinyCarbon>,	
		<ore:dustTinyCarbon>,	<ore:dustTinyCarbon>,	<ore:dustTinyCarbon>,
		<ore:dustTinyCarbon>,	<ore:dustTinyCarbon>,	<ore:dustTinyCarbon>])
	.addOutput( <ore:dustCarbon>.firstItem )
	.create();

	//	Carbon Dust, divide and conquer.	_______________________________________________________________________________________________________________________________________________________________________
RecipeBuilder.get("basic")
	.setShapeless( [ <ore:dustCarbon> ] )
	.addOutput( <ore:dustTinyCarbon>.firstItem * 9 )
	.create();

	//	Sulfur Dusts Assemble!	_______________________________________________________________________________________________________________________________________________________________________
RecipeBuilder.get("basic")
	.setShapeless([
		<ore:dustTinySulfur>,	<ore:dustTinySulfur>,	<ore:dustTinySulfur>,	
		<ore:dustTinySulfur>,	<ore:dustTinySulfur>,	<ore:dustTinySulfur>,
		<ore:dustTinySulfur>,	<ore:dustTinySulfur>,	<ore:dustTinySulfur>])
	.addOutput( <immersiveengineering:material:25> )
	.create();

	//	Sulfur Dust, divide and conquer.	_______________________________________________________________________________________________________________________________________________________________________
RecipeBuilder.get("basic")
	.setShapeless( [ <ore:dustSulfur> ] )
	.addOutput( <ore:dustTinySulfur>.firstItem * 9 )
	.create();

	//	Dust to clay nugget	_______________________________________________________________________________________________________________________________________________________________________
RecipeBuilder.get("potter")
    .setShapeless( [ <ore:dustTinyDust> ] )
    .setFluid( <liquid:water> * 50 )
    .addTool( <ore:partToolRod> , 0 )
    .addOutput( <contenttweaker:clay_nugget> )
    .create();

	//	Ash block to ash dust	_______________________________________________________________________________________________________________________________________________________________________
RecipeBuilder.get("basic")
  .setShapeless( [ <ore:blockAsh> ] )
  .addOutput( <contenttweaker:ashdust> * 4 )
  .create();


	//	Brick Mold	_______________________________________________________________________________________________________________________________________________________________________
RecipeBuilder.get("carpenter")
	.setShaped([
		[<ore:pattern>,	null,			<ore:pattern>	],
		[null,			<ore:pattern>,	null			]])
	.addTool( <ore:artisansHammer> , 1 )
	.addOutput( <contenttweaker:brick_mold> )
	.create();