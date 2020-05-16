//=====================================================================================================================================================================================================	
//	Refresh reagent in Hydrometallurgy
//=====================================================================================================================================================================================================


for Item,Liquid in GlobalMoreLeechedMetalSolution {
	if (debug) {print("Current Refinery Fluid item:	"~Item);}
	
	var HarvestLevel = GlobalHarvestLevel[Item];
	var Input = GlobalLeechedMetalSolution[Item];
	var Output = Liquid;
	
	if ( 100 >= HarvestLevel ) {
		
		mods.immersiveengineering.Refinery.addRecipe(
			Output, 
			Input, 
			<liquid:sulfuric_acid>, 
			HarvestLevel*10
		);
	
	}

}