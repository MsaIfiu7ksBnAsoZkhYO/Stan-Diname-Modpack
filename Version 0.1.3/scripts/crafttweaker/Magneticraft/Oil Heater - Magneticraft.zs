//=====================================================================================================================================================================================================	
//	Heat up the oily ore.
//=====================================================================================================================================================================================================



for Item,Liquid in GlobalSludgeMetalSolution {
    if (debug) {print("Magneticraft Oil Heater Item:	"~Item);}	
    
    var HarvestLevel = GlobalHarvestLevel[Item];
	var Input = Liquid;
	var Output = GlobalHeatedMetalSolution[Item];
	
    if ( 100 >= HarvestLevel ) {
        
        mods.magneticraft.OilHeater.addRecipe(
            Input, 
            Output, 
            1.5 * HarvestLevel, 
            100 * HarvestLevel + 273.3
        );
	
    }

}