//=====================================================================================================================================================================================================	
//	Heat up the oily ore.
//=====================================================================================================================================================================================================


	//	Stage 1 fluid (oily ore) to Stage 2 fluid (Hot oily ore)
for Liquid in GlobalStage2MetalFluid {
	if ( 10 >= GlobalHarvestLevel[Liquid] ) {
        mods.magneticraft.OilHeater.addRecipe(
            GlobalStage1MetalFluid[Liquid], 
            GlobalStage2MetalFluid[Liquid], 
            1.5 * GlobalHarvestLevel[Liquid], 
            100 * GlobalHarvestLevel[Liquid] + 273.3
        );
	}
}