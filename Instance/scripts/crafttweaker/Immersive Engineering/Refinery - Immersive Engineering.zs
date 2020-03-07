//=====================================================================================================================================================================================================	
//	Give the ore oil some acid
//=====================================================================================================================================================================================================


	//	Stage 2 fluid (Hot Oily ore) to Stage 3 fluid (Refined Ore Oil)
for Liquid in GlobalStage4MetalFluid {
	if ( 10 >= GlobalHarvestLevel[Liquid] ) {
		mods.immersiveengineering.Refinery.addRecipe(
			GlobalStage4MetalFluid[Liquid], 
			GlobalStage3MetalFluid[Liquid], 
			<liquid:creeper_acid>, 
			GlobalHarvestLevel[Liquid]*1000
		);
	}
}