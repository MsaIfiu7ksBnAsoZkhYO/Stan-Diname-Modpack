//=====================================================================================================================================================================================================	
//	Heat up the oily ore.
//=====================================================================================================================================================================================================


	//	Stage 1 fluid (oily ore) to Stage 2 fluid (Hot oily ore)
for Item,Liquid in GlobalStage2MetalFluid {
    var HarvestLevel = GlobalHarvestLevel[Item];
	var Input = GlobalStage1MetalFluid[Item];
	var Output = Liquid;
	
    if ( 10 >= HarvestLevel ) {
        mods.magneticraft.OilHeater.addRecipe(
            Input, 
            Output, 
            1.5 * HarvestLevel, 
            100 * HarvestLevel + 273.3
        );
	}
}