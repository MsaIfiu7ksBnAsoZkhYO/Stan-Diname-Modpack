//=====================================================================================================================================================================================================	
//	Refine the Oily ore
//=====================================================================================================================================================================================================


	//	Stage 2 fluid (Hot Oily ore) to Stage 3 fluid (Refined Ore Oil)
for Liquid in GlobalStage3MetalFluid {
	if ( 10 >= GlobalHarvestLevel[Liquid] ) {
        mods.magneticraft.Refinery.addRecipe(
            GlobalStage2MetalFluid[Liquid], 
            GlobalStage3MetalFluid[Liquid], 
            <liquid:canolaoil>, 
            null, 
            GlobalHarvestLevel[Liquid]
        );
	}
}