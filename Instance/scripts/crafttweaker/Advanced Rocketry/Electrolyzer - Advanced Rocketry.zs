//=====================================================================================================================================================================================================	
//	Electrometallurgy!
//=====================================================================================================================================================================================================


 // Electrolyser 
 //mods.advancedrocketry.Electrolyser.clear(); 
 //mods.advancedrocketry.Electrolyser.removeRecipe(<liquid:hydrogen>,<liquid:oxygen>); 
 //mods.advancedrocketry.Electrolyser.addRecipe(<liquid:nitrogen>*500,<liquid:oxygen>*500, 80, 100, <liquid:lava>*1000); 
 
mods.advancedrocketry.Electrolyser.clear(); 

for Item,Liquid in GlobalMoreLeechedMetalSolution {
	if (debug) {print("Current Electrolyzer Fluid item:	"~Item);}
	
	var HarvestLevel = GlobalHarvestLevel[Item];
	var Input = Liquid;
	var Output = GlobalCleanMetalSolution[Item];
	var Secondary = GlobalSludgeMetalSolution[ GlobalSecondaryOre[Item] ];
	if ( 100 >= HarvestLevel ) {
		
		mods.advancedrocketry.Electrolyser.addRecipe(
			Output * 10,
			Secondary * 1, 
			80, 
			100, 
			Input * 10
		); 

	}

}