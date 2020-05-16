//=====================================================================================================================================================================================================	
//	Chemical Reactions
//=====================================================================================================================================================================================================


// Chemical Reactor 
//mods.advancedrocketry.ChemicalReactor.clear(); 
//mods.advancedrocketry.ChemicalReactor.removeRecipe(<liquid:rocketfuel>); 
//mods.advancedrocketry.ChemicalReactor.addRecipe(<liquid:rocketfuel>*1000, 80, 100, <liquid:oxygen>*500, <liquid:hydrogen>*500); 
//mods.advancedrocketry.ChemicalReactor.addRecipe(<minecraft:obsidian>*1, 80, 100, <liquid:lava>*1000, <liquid:water>*1000);

mods.advancedrocketry.ChemicalReactor.clear(); 

for Item,Liquid in GlobalDistillate {
	if (debug) {print("Advanced Rocketry Chemical Reactor Item:	"~Item);}
	
	var HarvestLevel = GlobalHarvestLevel[Item];
	var Input = Liquid;
	var Output = GlobalGimmeOreDict("seedCrystal",Item);

	if ( 100 >= HarvestLevel ) {
		
		mods.advancedrocketry.ChemicalReactor.addRecipe(
			Output.firstItem, 
			80, 
			100, 
			Input * 100, 
			Input * 100
		);

	}

}