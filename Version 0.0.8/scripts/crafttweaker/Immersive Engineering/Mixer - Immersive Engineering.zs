//=====================================================================================================================================================================================================	
//	IE Mixer to oil up ores.
//=====================================================================================================================================================================================================


	//	Ore chunk to Stage 1 Fluid (Cold Oil)  
for Item in GlobalOreChunk {
	if ( 10 >= GlobalHarvestLevel[Item] ) {
		if (	
			!isNull( GlobalOreChunk[Item].firstItem ) 
            &
			!isNull( GlobalHarvestLevel[Item] )
		) {
    		mods.immersiveengineering.Mixer.addRecipe(
				GlobalStage1MetalFluid[Item] * 1000, 
				<liquid:empoweredoil> * 1000, 
				[ GlobalOreChunk[Item] ], 
				GlobalHarvestLevel[Item] * 1000
			);
		}
	}
}

	//	Ore Clump to Stage 1 fluid (Cold Oil)  2x multiplier
for Item in GlobalClump {
	if ( 10 >= GlobalHarvestLevel[Item] ) {
		if (	
			!isNull( GlobalClump[Item].firstItem ) 
            &
			!isNull( GlobalHarvestLevel[Item] )
		) {
    		mods.immersiveengineering.Mixer.addRecipe(
				GlobalStage1MetalFluid[Item] * 500, 
				<liquid:empoweredoil> * 500, 
				[ GlobalClump[Item] ], 
				GlobalHarvestLevel[Item]*1000
			);
		}
	}
}




