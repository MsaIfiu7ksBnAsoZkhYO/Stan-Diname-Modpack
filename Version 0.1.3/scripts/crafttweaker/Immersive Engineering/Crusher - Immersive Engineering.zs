//mods.immersiveengineering.Crusher.removeRecipesForInput(IItemstack input);
//mods.immersiveengineering.Crusher.removeRecipe(IItemstack output);
//mods.immersiveengineering.Crusher.addRecipe(IItemStack output, IIngredient input, int energy, @Optional IItemStack secondaryOutput, @Optional double secondaryChance);


var Recipes = {
	"oreChunk"	:	"cluster",
} as string[string];

	//	Here we be doing all the things
for Item in GlobalHarvestLevel {
	
	if (debug) {print("Current Crusher Removal item:	"~Item);}
	
	var HarvestLevel = GlobalHarvestLevel[Item];
	
	var Removal = GlobalGimmeOreDict("oreChunk",Item);
	
	if(	
		!(Removal.empty) 
	) { 
		mods.immersiveengineering.Crusher.removeRecipesForInput( Removal.firstItem );
	}


		//	Adding crusher recipes for materials under HL 10
	if ( 100 >= HarvestLevel ) {
	
		if (debug) {print("Current Crusher Crushign recipe item:	"~Item);}
	
		for Left,Right in Recipes {
    
	        var Input = GlobalGimmeOreDict(Left,Item);
            var Output = GlobalGimmeOreDict(Right,Item);
	
			if (	
			
				!(Input.empty) 
				&
				!(Output.empty) 
				&
				!isNull( HarvestLevel )
			
			) {
				
				mods.immersiveengineering.Crusher.addRecipe( 
					Output.firstItem, 
					Input, 
					HarvestLevel*20 
				);
			
			}
		
		}
	
	}

}