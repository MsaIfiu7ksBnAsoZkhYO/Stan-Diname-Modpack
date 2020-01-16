//=====================================================================================================================================================================================================	
//	Import-ant things
//=====================================================================================================================================================================================================

#priority 9001

import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;


//=====================================================================================================================================================================================================	
//	Add items here to allow them to be stacked by Charset Immersion.  *Don't add anything here if it can normally be placed in the world, or if it has it's own right click function.
//=====================================================================================================================================================================================================


<ore:ingotStackable>.addItems([
	<notreepunching:clay_brick>,
	<minecraft:brick>,
	<biomesoplenty:mud_brick>,
	<minecraft:netherbrick>,
	<ceramics:unfired_clay:5>,
	<contenttweaker:porcelain_brick>,
	<tconstruct:materials:2>,
	<tconstruct:materials:1>,
	<tconstruct:materials>,
	<contenttweaker:coke_brick>,
	<contenttweaker:unfired_coke_brick>,
]);

<ore:gearStackable>.addItems([
]);

<ore:plateStackable>.addItems([
	<libvulpes:productsheet:1>,
	<tconstruct:pattern>,
	<tconstruct:clay_cast>,
	<tconstruct:cast>,
	<tconstruct:cast_custom:*>,
	<tcomplement:cast>,
	<tcomplement:cast_clay>,
	<immersiveengineering:mold:*>,
]);


//=====================================================================================================================================================================================================	
//	Limestone
//=====================================================================================================================================================================================================
<ore:stoneLimestone>.add(<undergroundbiomes:sedimentary_stone>);


//=====================================================================================================================================================================================================	
//	Stripped Logs so they don't become unusable in recipes.
//=====================================================================================================================================================================================================
<ore:logWood>.addItems([
	<woodstock:stripped_oak_log>,
	<woodstock:stripped_spruce_log>,
	<woodstock:stripped_birch_log>,
	<woodstock:stripped_jungle_log>,
	<woodstock:stripped_acacia_log>,
	<woodstock:stripped_dark_oak_log>,
]);


//=====================================================================================================================================================================================================	
//	Red Sandstone
//=====================================================================================================================================================================================================
<ore:redsandstone>.addItems([
	<minecraft:red_sandstone:*>,
	<chisel:sandstonered:*>,
	<chisel:sandstonered1:*>,
	<chisel:sandstonered2:*>,
	<chisel:sandstonered-scribbles:*>,
]);


//=====================================================================================================================================================================================================	
//	Glass Shards
//=====================================================================================================================================================================================================
<ore:shardGlass>.addItems([
	<quark:glass_shards:*>,
	<terraqueous:item_main:108>,
]);