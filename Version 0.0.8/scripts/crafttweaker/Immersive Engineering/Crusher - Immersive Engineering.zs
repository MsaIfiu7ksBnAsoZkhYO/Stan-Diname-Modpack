//mods.immersiveengineering.Crusher.removeRecipesForInput(IItemstack input);
//mods.immersiveengineering.Crusher.removeRecipe(IItemstack output);
//mods.immersiveengineering.Crusher.addRecipe(IItemStack output, IIngredient input, int energy, @Optional IItemStack secondaryOutput, @Optional double secondaryChance);

	//	Remove default ore chunk recipes
for Item in GlobalOreChunk {
    if(	!isNull( GlobalOreChunk[Item] ) ) { mods.immersiveengineering.Crusher.removeRecipesForInput( GlobalOreBlock[Item].firstItem ); }
}
	
	//	Ore cluster to ore rocks
for Item in GlobalCluster {
	if ( 10 >= GlobalHarvestLevel[Item] ) {
		if (	
			!isNull( GlobalCluster[Item].firstItem ) 
			&
			!isNull( GlobalOreRock[Item].firstItem ) 
            &
			!isNull( GlobalHarvestLevel[Item] )
		) {
    		mods.immersiveengineering.Crusher.addRecipe( GlobalOreRock[Item].firstItem, GlobalCluster[Item], GlobalHarvestLevel[Item]*2000 );
		}
	}
}

	//	Ore chunk to ore rocks
for Item in GlobalOreChunk {
	if ( 10 >= GlobalHarvestLevel[Item] ) {
		if (	
			!isNull( GlobalOreChunk[Item].firstItem ) 
			&
			!isNull( GlobalOreRock[Item].firstItem ) 
            &
			!isNull( GlobalHarvestLevel[Item] )
		) {
    		mods.immersiveengineering.Crusher.addRecipe( GlobalOreRock[Item].firstItem * 2, GlobalOreChunk[Item], GlobalHarvestLevel[Item]*2000 );
		}
	}
}




