//=====================================================================================================================================================================================================	
//	Import-ant things
//=====================================================================================================================================================================================================


#priority 10000

import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;


//=====================================================================================================================================================================================================	
//	Crystal Shards
//=====================================================================================================================================================================================================

	//	Create oredict for crystal shards	_______________________________________________________________________________________________________________________________________________________________________
<ore:shardCrystal>.addItems(
	[
		<actuallyadditions:item_crystal_shard>, 
		<actuallyadditions:item_crystal_shard:1>, 
		<actuallyadditions:item_crystal_shard:2>, 
		<actuallyadditions:item_crystal_shard:3>, 
		<actuallyadditions:item_crystal_shard:4>, 
		<actuallyadditions:item_crystal_shard:5>
	]
);

	//	Tiny coal and charcoal to coal pelet oredict so they work off the existing torch recipe.	_______________________________________________________________________________________________________________________________________________________________________
//<ore:itemCoalpellet>.add( <actuallyadditions:item_misc:10> );
//<ore:itemCoalpellet>.add( <actuallyadditions:item_misc:11> );