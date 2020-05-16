//=====================================================================================================================================================================================================	
//	Distill everything!
//=====================================================================================================================================================================================================


//mods.immersivepetroleum.Distillation.addRecipe(ILiquidStack[] fluidOutputs, IItemStack[] itemOutputs, ILiquidStack fluidInput, int energy, int time, float[] chance)
/*

mods.immersivepetroleum.Distillation.addRecipe(
	ILiquidStack[] fluidOutputs, 
	IItemStack[] itemOutputs, 
	ILiquidStack fluidInput, 
	int energy, 
	int time, 
	float[] chance
)

mods.immersivepetroleum.Distillation.addRecipe(
    [<liquid:lava> * 5, <liquid:gasoline> * 5], 
    [<minecraft:diamond>, <minecraft:leather> * 2], 
    <liquid:water>, 
    5, 
    5, 
    [1, 1]
);
*/

    //  Distill the leached solution into usable Tier 1
for Item,Liquid in GlobalMoreLeechedMetalSolution {
    if (debug) {print("Immersive Petroleum Distillation Tower Leeched Item:	"~Item);}

    var HarvestLevel = GlobalHarvestLevel[Item];
	var Input = Liquid;
	var Output_F1 = GlobalLeechedMetalSolution[Item];
    var Output_I1 = GlobalGimmeOreDict("dust",Item).firstItem;


	if ( 100 >= HarvestLevel ) {

        mods.immersivepetroleum.Distillation.addRecipe(
            [Output_F1 * 50 , <liquid:water> * 250], 
            [Output_I1], 
            Input * 750, 
            7500, 
            2400, 
            [1]
        );
	
    }

}

    //  Distill Elecrolysizes solution into a distillate for Crystal growing Tier 2
for Item,Liquid in GlobalCleanMetalSolution {
    if (debug) {print("Immersive Petroleum Distillation Tower Clean Item:	"~Item);}

    var HarvestLevel = GlobalHarvestLevel[Item];
	var Input = Liquid;
	var Output_F1 = GlobalDistillate[Item];
    var Output_I1 = GlobalGimmeOreDict("pulpyDust",Item).firstItem;

	if ( 100 >= HarvestLevel ) {

        mods.immersivepetroleum.Distillation.addRecipe(
            [Output_F1 * 250 , <liquid:water> * 50], 
            [Output_I1], 
            Input * 750, 
            7500, 
            2400, 
            [0.3]
        );
	
    }

}

    //  Distill the Refined sludge from the secondary output Tier 2.1
for Item,Liquid in GlobalRefinedMetalSolution {
    if (debug) {print("Immersive Petroleum Distillation Tower Refined Item:	"~Item);}

    var HarvestLevel = GlobalHarvestLevel[Item];
	var Input = Liquid;
	var Output_F1 = GlobalSludgeMetalSolution[Item];
    var Output_I1 = GlobalGimmeOreDict("dust",Item).firstItem;

	if ( 100 >= HarvestLevel ) {

        mods.immersivepetroleum.Distillation.addRecipe(
            [Output_F1 * 250 , <liquid:water> * 50], 
            [Output_I1], 
            Input * 750, 
            7500, 
            2400, 
            [1]
        );
	
    }

}