//=====================================================================================================================================================================================================	
//	Refine the Oily ore
//=====================================================================================================================================================================================================



for Item,Liquid in GlobalRefinedMetalSolution {
    if (debug) {print("Magneticraft Refinery Item:	"~Item);}

    var HarvestLevel = GlobalHarvestLevel[Item];
	var Input = GlobalHeatedMetalSolution[Item];
	var Output = Liquid;

	if ( 100 >= HarvestLevel ) {

        mods.magneticraft.Refinery.addRecipe(
            Input, 
            Output, 
            <liquid:canolaoil>, 
            null, 
            HarvestLevel
        );
	
    }

}