//=====================================================================================================================================================================================================	
//	Import-ant things
//=====================================================================================================================================================================================================


#priority 9001

import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;


//=====================================================================================================================================================================================================	
//	Add things to oredictionaries they should be in
//=====================================================================================================================================================================================================


	//	Flint shards are flint shards.	_______________________________________________________________________________________________________________________________________________________________________
//<ore:shardFlint>.add( <tconstruct:shard>.withTag({Material: "flint"}) );

	//	Because some recipes use blockGlassColorless	_______________________________________________________________________________________________________________________________________________________________________
<ore:blockGlassColorless>.add( <tconstruct:clear_glass> );


	//	Seared Stairs	_______________________________________________________________________________________________________________________________________________________________________
<ore:stairSeared>.addItems([
	<tconstruct:seared_stairs_stone>,
	<tconstruct:seared_stairs_cobble>,
	<tconstruct:seared_stairs_paver>,
	<tconstruct:seared_stairs_brick>,
	<tconstruct:seared_stairs_brick_cracked>,
	<tconstruct:seared_stairs_brick_fancy>,
	<tconstruct:seared_stairs_brick_square>,
	<tconstruct:seared_stairs_brick_triangle>,
	<tconstruct:seared_stairs_brick_small>,
	<tconstruct:seared_stairs_road>,
	<tconstruct:seared_stairs_tile>,
	<tconstruct:seared_stairs_creeper>,
]);

	//	Seared Slabs	_______________________________________________________________________________________________________________________________________________________________________
<ore:slabSeared>.addItems([
	<tconstruct:seared_slab:*>,
	<tconstruct:seared_slab2:*>,
]);