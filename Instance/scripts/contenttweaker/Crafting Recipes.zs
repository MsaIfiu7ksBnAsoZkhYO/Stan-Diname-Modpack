//=====================================================================================================================================================================================================	
//	Import-ant things
//=====================================================================================================================================================================================================


import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import mods.artisanworktables.builder.RecipeBuilder;


//=====================================================================================================================================================================================================	
//	Add recipes for custom added things that need to be things
//=====================================================================================================================================================================================================


	//	Clay ball from nuggets	_______________________________________________________________________________________________________________________________________________________________________
recipes.addShapeless(
    "Clay Nuggers, Assemble!",
    <minecraft:clay_ball>, 
    [
        <ore:nuggetClay>,   <ore:nuggetClay>,   <ore:nuggetClay>,
        <ore:nuggetClay>,   <ore:nuggetClay>,   <ore:nuggetClay>,
        <ore:nuggetClay>,   <ore:nuggetClay>,   <ore:nuggetClay>
    ]
);

	//	Clay Nuggets from clay ball	_______________________________________________________________________________________________________________________________________________________________________
recipes.addShapeless(
    "Clay Nuggers from Clay",
    <contenttweaker:clay_nugget> * 9, 
    [<ore:clay>]
);




	//	Carbon dust	_______________________________________________________________________________________________________________________________________________________________________
recipes.addShapeless(
    "Car Bon Dust",
    <ore:dustCarbon>.firstItem, 
    [
        <ore:dustTinyCarbon>,   <ore:dustTinyCarbon>,   <ore:dustTinyCarbon>,
        <ore:dustTinyCarbon>,   <ore:dustTinyCarbon>,   <ore:dustTinyCarbon>,
        <ore:dustTinyCarbon>,   <ore:dustTinyCarbon>,   <ore:dustTinyCarbon>
    ]
);

	//	Tiny Carbon Dust	_______________________________________________________________________________________________________________________________________________________________________
recipes.addShapeless(
    "Look at the little carbon dusts",
    <ore:dustTinyCarbon>.firstItem * 9, 
    [<ore:dustCarbon>]
);

	//	Sulfur Dust	_______________________________________________________________________________________________________________________________________________________________________
recipes.addShapeless(
    "Sul Fur Dust",
    <ore:dustSulfur>.firstItem, 
    [
        <ore:dustTinySulfur>,   <ore:dustTinySulfur>,   <ore:dustTinySulfur>,
        <ore:dustTinySulfur>,   <ore:dustTinySulfur>,   <ore:dustTinySulfur>,
        <ore:dustTinySulfur>,   <ore:dustTinySulfur>,   <ore:dustTinySulfur>
    ]
);

	//	Tiny Sulfur Dust	_______________________________________________________________________________________________________________________________________________________________________
recipes.addShapeless(
    "The itsy bitsy sulfur",
    <ore:dustTinySulfur>.firstItem * 9, 
    [<ore:dustSulfur>]
);

	//	Dust to clay nugget	_______________________________________________________________________________________________________________________________________________________________________
RecipeBuilder.get("potter")
    .setShapeless( [ <ore:dustTinyDust> ] )
    .setFluid( <liquid:water> * 10 )
    .setSecondaryIngredients( [ <minecraft:bowl> ] )
    .addTool( <ore:partToolRod> , 0 )
    .addOutput( <contenttweaker:clay_nugget> )
    .setExtraOutputOne( <minecraft:bowl> , 1.0 )
    .create();