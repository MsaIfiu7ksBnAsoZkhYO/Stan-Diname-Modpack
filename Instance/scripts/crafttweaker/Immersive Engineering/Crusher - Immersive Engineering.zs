//mods.immersiveengineering.Crusher.removeRecipesForInput(IItemstack input);
//mods.immersiveengineering.Crusher.removeRecipe(IItemstack output);
//mods.immersiveengineering.Crusher.addRecipe(IItemStack output, IIngredient input, int energy, @Optional IItemStack secondaryOutput, @Optional double secondaryChance);


var Recipes = {
    "cluster"	:   "rock",
	"oreChunk"	:	"rock",
} as string[string];

	//	Here we be doing all the things
for Item in GlobalHarvestLevel {
	print("ITEM: "~Item);
		//	Set current Harvest Level to variable to reduce times we iterate through a table
	var HarvestLevel = GlobalHarvestLevel[Item];
	print("HARVESTLEVEL: "~HarvestLevel);
		//	Remove default ore chunk recipes
	var Removal = GlobalGimmeOreDict("oreChunk",Item);
    print("REMOVAL: "~Removal.name);
	if(	
		!(Removal.empty) 
	) { 
		mods.immersiveengineering.Crusher.removeRecipesForInput( Removal.firstItem );
	}


		//	Adding crusher recipes for materials under HL 10
	if ( 10 >= HarvestLevel ) {
		print("UNDER HL 10");
		for Left,Right in Recipes {
            var Input = GlobalGimmeOreDict(Left,Item);
            var Output = GlobalGimmeOreDict(Right,Item);
			print("INPUT: "~Input.name);
			print("INPUT EMPTY:"~Input.empty);
			print("OUTPUT: "~Output.name);
			print("OUT EMPTY:"~Output.empty);
			if (	
				!(Input.empty) 
				&
				!(Output.empty) 
				&
				!isNull( HarvestLevel )
			) {
				print("We are adding this recipe");
				mods.immersiveengineering.Crusher.addRecipe( 
					Output.firstItem, 
					Input, 
					HarvestLevel*2000 
				);
			}
		}
	}
}