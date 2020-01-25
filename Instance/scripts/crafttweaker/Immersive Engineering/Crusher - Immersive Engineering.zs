//mods.immersiveengineering.Crusher.removeRecipesForInput(IItemstack input);
//mods.immersiveengineering.Crusher.removeRecipe(IItemstack output);
//mods.immersiveengineering.Crusher.addRecipe(IItemStack output, IIngredient input, int energy, @Optional IItemStack secondaryOutput, @Optional double secondaryChance);



for Item in GlobalClump {
		
		if(	
			!isNull( GlobalClump[Item].firstItem ) 
			&
			!isNull( GlobalRockyChunk[Item].firstItem ) 
            &
			!isNull( GlobalHarvestLevel[Item] )

		) {
    		mods.immersiveengineering.Crusher.addRecipe( GlobalRockyChunk[Item].firstItem, GlobalClump[Item], GlobalHarvestLevel[Item]*20000 );

		}

}

for Item in GlobalOreBlock {
    if(	!isNull( GlobalOreBlock[Item] ) ) { mods.immersiveengineering.Crusher.removeRecipesForInput( GlobalOreBlock[Item].firstItem ); }
}


