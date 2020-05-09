//mods.immersiveengineering.Crusher.removeRecipesForInput(IItemstack input);
//mods.immersiveengineering.Crusher.removeRecipe(IItemstack output);
//mods.immersiveengineering.Crusher.addRecipe(IItemStack output, IIngredient input, int energy, @Optional IItemStack secondaryOutput, @Optional double secondaryChance);


var Recipes = {
    "cluster"	:   "rock",
	"oreChunk"	:	"rock",
} as string[string];

	//	Here we be doing all the things
for Item in GlobalHarvestLevel {
		//	Set current Harvest Level to variable to reduce times we iterate through a table
	var HarvestLevel = GlobalHarvestLevel[Item];
		//	Remove default ore chunk recipes
	var Removal = GlobalGimmeOreDict("oreChunk",Item);
	if(	
		!(Removal.empty) 
	) { 
		mods.immersiveengineering.Crusher.removeRecipesForInput( Removal.firstItem );
	}


		//	Adding crusher recipes for materials under HL 10
	if ( 10 >= HarvestLevel ) {
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
					HarvestLevel*2000 
				);
			}
		}
	}
}