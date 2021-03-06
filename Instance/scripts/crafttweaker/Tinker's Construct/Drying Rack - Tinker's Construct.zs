//=====================================================================================================================================================================================================	
//	Import-ant things
//=====================================================================================================================================================================================================





//=====================================================================================================================================================================================================	
//	Adjusting Recipes for thingies
//=====================================================================================================================================================================================================


	//	Dried Bricks	_______________________________________________________________________________________________________________________________________________________________________
mods.tconstruct.Drying.removeRecipe( <tconstruct:materials:2> );
mods.tconstruct.Drying.addRecipe( <tconstruct:materials:2> , <ore:brickClay> , 2400 );

	//	Sand Ingot Casts	_______________________________________________________________________________________________________________________________________________________________________
mods.tconstruct.Drying.addRecipe( <contenttweaker:sand_ingot_cast> , <contenttweaker:sand_ingot_cast_wet> , 6000 );
mods.tconstruct.Drying.addRecipe( <tinkersforging:tinkers_anvil/moldclay> , <tinkersforging:tinkers_anvil/moldclaywet> , 6000 );
mods.tconstruct.Drying.addRecipe( <contenttweaker:forging_anvil_cast> , <contenttweaker:forging_anvil_cast_wet> , 6000 );

	//	Peat drying	_______________________________________________________________________________________________________________________________________________________________________
mods.tconstruct.Drying.addRecipe( <rockhounding_oretiers:tier_items:6> , <ore:itemPeat> , 6000 );


	//	Leaf pile drying	_______________________________________________________________________________________________________________________________________________________________________
mods.tconstruct.Drying.addRecipe( <biomesoplenty:plant_0:12> , <ore:plantLeafpile> , 600 );
