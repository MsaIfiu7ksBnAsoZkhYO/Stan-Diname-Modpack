//=====================================================================================================================================================================================================	
//	Import-ant things
//=====================================================================================================================================================================================================


import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;


//=====================================================================================================================================================================================================	
//	Tcon Tools as Artisan Tools 
//=====================================================================================================================================================================================================

	//	Create oredict for crystal shards	_______________________________________________________________________________________________________________________________________________________________________
<ore:artisansCutters>.addItems(
	[
		<minecraft:shears>,
        <ceramics:clay_shears>,
		<tinkerscompendium:shears:*>,
	]
);

<ore:artisansHammer>.addItems(
	[
		<tinkerscompendium:mallet:*>,
	]
);

<ore:artisansHammer>.addAll(<ore:hammer>);

<ore:artisansHandsaw>.addItems(
	[
		<tinkerscompendium:saw:*>,
	]
);

<ore:artisansGemCutter>.addItems(
	[
        <tcomplement:chisel:*>,
	]
);

<ore:artisansTrowel>.addItems(
	[
        <tconstruct:shovel:*>,
	]
);

<ore:artisansPliers>.addItems(
	[
        <tconstruct:frypan:*>,
	]
);

	//	Tiny coal and charcoal to coal pelet oredict so they work off the existing torch recipe.	_______________________________________________________________________________________________________________________________________________________________________
//<ore:itemCoalpellet>.add( <actuallyadditions:item_misc:10> );
//<ore:itemCoalpellet>.add( <actuallyadditions:item_misc:11> );