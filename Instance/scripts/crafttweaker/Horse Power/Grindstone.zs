//=====================================================================================================================================================================================================	
//	Import-ant things
//=====================================================================================================================================================================================================


import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.oredict.IOreDict;


//=====================================================================================================================================================================================================	
//	Grind things up for dusts
//=====================================================================================================================================================================================================
/*
mods.horsepower.Grindstone.add(
	<Input>, 
	<Output> * 2, 
	20, - Time (8 = 1 revolution)
@op	false, - Seperate hand / horse
@op	<Secondary Output> *2, 
@op	100 - Secondary chance
);
*/

	//	Grind up limestone cobblestone into limestone rocks	_______________________________________________________________________________________________________________________________________________________________________
mods.horsepower.Grindstone.add(
	<ore:cobblestoneLimestone>, 
	<notreepunching:rock/limestone> * 2, 
	40, 
	false, 
	<notreepunching:rock/limestone> *2, 
	100
);

	//	Grind up quicklime into lime dust	_______________________________________________________________________________________________________________________________________________________________________
mods.horsepower.Grindstone.add(
	<contenttweaker:quicklime>, 
	<contenttweaker:limedust> * 1, 
	24, 
	false, 
	<contenttweaker:limedust> *1 , 
	100
);

	//	Flint shards to flint dust for alternate porcelain recipe	_______________________________________________________________________________________________________________________________________________________________________
mods.horsepower.Grindstone.add(
	<ore:shardFlint>, 
	<contenttweaker:flintdust> * 1, 
	24, 
	false, 
	<contenttweaker:flintdust> *1 , 
	100
);

	//	Sandstone to sandstone rocks	_______________________________________________________________________________________________________________________________________________________________________
mods.horsepower.Grindstone.add(
	<ore:sandstone>, 
	<notreepunching:rock/sandstone> * 2, 
	40, 
	false, 
	<notreepunching:rock/sandstone> *2 ,
	100
);

	//	Sandstone rocks to sandstone lumps	_______________________________________________________________________________________________________________________________________________________________________
mods.horsepower.Grindstone.add(
	<notreepunching:rock/sandstone>, 
	<terraqueous:item_main:214> * 1, 
	24
);

	//	Red Sandstone to Red sandstone rocks	_______________________________________________________________________________________________________________________________________________________________________
mods.horsepower.Grindstone.add(
	<ore:redsandstone>, 
	<notreepunching:rock/red_sandstone> * 2, 
	40, 
	false,
	<notreepunching:rock/red_sandstone> *2 ,
	100
);

	//	Red Sandstone rocks to Red sandstone lumps	_______________________________________________________________________________________________________________________________________________________________________
mods.horsepower.Grindstone.add(
	<notreepunching:rock/red_sandstone>, 
	<terraqueous:item_main:216> * 1, 
	24
);