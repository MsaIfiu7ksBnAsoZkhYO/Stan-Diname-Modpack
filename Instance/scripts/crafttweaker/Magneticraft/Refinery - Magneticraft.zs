//=====================================================================================================================================================================================================	
//	Refine the Oily ore
//=====================================================================================================================================================================================================


	//	Stage 2 fluid (Hot Oily ore) to Stage 3 fluid (Refined Ore Oil)
for Item,Liquid in GlobalStage3MetalFluid {
    var HarvestLevel = GlobalHarvestLevel[Item];
	var Input = GlobalStage2MetalFluid[Item];
	var Output = Liquid;

	if ( 10 >= HarvestLevel ) {
        mods.magneticraft.Refinery.addRecipe(
            Input, 
            Output, 
            <liquid:canolaoil>, 
            null, 
            HarvestLevel
        );
	}
}