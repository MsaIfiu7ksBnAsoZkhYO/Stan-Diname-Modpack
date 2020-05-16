//=====================================================================================================================================================================================================	
//	Crystalizer
//=====================================================================================================================================================================================================


// Crystallizer 
//mods.advancedrocketry.Crystallizer.clear(); 
//mods.advancedrocketry.Crystallizer.removeRecipe(<libvulpes:productcrystal>); 
//val notchApple=<minecraft:golden_apple>; 
//mods.advancedrocketry.Crystallizer.addRecipe(notchApple.withDamage(1), 200, 10, <minecraft:apple>*1, <minecraft:gold_block>*1); 


for Item,Liquid in GlobalDistillate {
	if (debug) {print("Advanced Rocketry Crystallizer Item:	"~Item);}
	
	var HarvestLevel = GlobalHarvestLevel[Item];
	var Input = GlobalGimmeOreDict("seedCrystal",Item);
	var Output = GlobalGimmeOreDict("crystal",Item);

	if ( 100 >= HarvestLevel ) {
		
		mods.advancedrocketry.Crystallizer.addRecipe(
			Output.firstItem, 
			200, 
			10, 
			Input.firstItem
		); 

	}

}