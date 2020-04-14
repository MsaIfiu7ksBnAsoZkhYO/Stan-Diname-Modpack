//=====================================================================================================================================================================================================	
//	Give the ore oil some acid
//=====================================================================================================================================================================================================


	//	Stage 2 fluid (Hot Oily ore) to Stage 3 fluid (Refined Ore Oil)
for Item,Liquid in GlobalStage4MetalFluid {
	var HarvestLevel = GlobalHarvestLevel[Item];
	var Input = GlobalStage3MetalFluid[Item];
	var Output = Liquid;
	
	if ( 10 >= HarvestLevel ) {
		mods.immersiveengineering.Refinery.addRecipe(
			Output, 
			Input, 
			<liquid:creeper_acid>, 
			HarvestLevel*1000
		);
	}
}