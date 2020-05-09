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
		<notreepunching:axe/flint:*>,
	]
);

//<ore:artisansHammer>.addAll(<ore:hammer>);

<ore:artisansHandsaw>.addItems(
	[
		<tinkerscompendium:saw:*>,
		<notreepunching:axe/flint:*>,
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
		<notreepunching:shovel/flint:*>,
	]
);

<ore:artisansPliers>.addItems(
	[
        <tconstruct:frypan:*>,
	]
);

<ore:artisansStoneCutter>.addItems(
	[
        <tconstruct:pickaxe:*>,
		<notreepunching:pickaxe/flint:*>,
	]
);
