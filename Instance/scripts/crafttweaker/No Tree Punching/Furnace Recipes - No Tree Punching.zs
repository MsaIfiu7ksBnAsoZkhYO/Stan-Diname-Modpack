//=====================================================================================================================================================================================================	
//	Remove Furnace Recipes
//=====================================================================================================================================================================================================


	//	Vanilla Clay bricks	_______________________________________________________________________________________________________________________________________________________________________
furnace.remove(
	<minecraft:brick>, 
	<minecraft:clay_ball>
);

	//	NTP Clay bucket (Using Ceramics instead)	_______________________________________________________________________________________________________________________________________________________________________
furnace.remove(
    <notreepunching:ceramic_bucket>, 
    <notreepunching:pottery/bucket>
);


//=====================================================================================================================================================================================================	
//	Add Furnace Recipes
//=====================================================================================================================================================================================================

	//	NTP Clay ingot to brick	_______________________________________________________________________________________________________________________________________________________________________
furnace.addRecipe(
	<minecraft:brick>, 
	<notreepunching:clay_brick>
);
