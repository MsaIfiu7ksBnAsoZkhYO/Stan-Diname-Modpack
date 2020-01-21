//=====================================================================================================================================================================================================	
//	Global adjustment of craqfting recipes.
//=====================================================================================================================================================================================================
//This script will not work anymore.  Will need to try and integrate into the load times reduction script.

//	Remove things that need to be processed by a machine	_______________________________________________________________________________________________________________________________________________________________________
mods.unidict.removalByKind.get("Crafting").remove("gear");
mods.unidict.removalByKind.get("Crafting").remove("plate");
mods.unidict.removalByKind.get("Crafting").remove("wire");

mods.unidict.removalByKind.get("Crafting").remove("stick", ["ingot" , "gem"]);