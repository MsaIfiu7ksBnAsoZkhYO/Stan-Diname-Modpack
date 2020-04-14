//=====================================================================================================================================================================================================	
//	IE Mixer to oil up ores.
//=====================================================================================================================================================================================================


var Recipes = {
    "oreChunk"	:   1000,
	"clump"	:	500,
} as string[string];

	//	Ore chunk to Stage 1 Fluid (Cold Oil)  
for Item,Liquid in GlobalStage1MetalFluid {
	print("CURRENTIO FUIEDIO:   "~Item);
	var HarvestLevel = GlobalHarvestLevel[Item];

	if ( 10 >= HarvestLevel ) {
		for Left,Right in Recipes {
            var Input = GlobalGimmeOreDict(Left,Item);
			//	Ore chunk to stage 1 fluid
			if (	
				!(Input.empty) 
				&
				!isNull( HarvestLevel )
			) {
				mods.immersiveengineering.Mixer.addRecipe(
					Liquid * Right, 
					<liquid:empoweredoil> * Right, 
					[ Input ], 
					HarvestLevel * 1000
				);
			}
		}
	}
}

/*
	//	Ore chunk to Stage 1 Fluid (Cold Oil)  
for Item in GlobalOreChunk {
	if ( 10 >= HarvestLevel ) {
		if (	
			!isNull( GlobalOreChunk[Item].firstItem ) 
            &
			!isNull( HarvestLevel )
		) {
    		mods.immersiveengineering.Mixer.addRecipe(
				GlobalStage1MetalFluid[Item] * 1000, 
				<liquid:empoweredoil> * 1000, 
				[ GlobalOreChunk[Item] ], 
				HarvestLevel * 1000
			);
		}
	}
}

	//	Ore Clump to Stage 1 fluid (Cold Oil)  2x multiplier
for Item in GlobalClump {
	if ( 10 >= HarvestLevel ) {
		if (	
			!isNull( GlobalClump[Item].firstItem ) 
            &
			!isNull( HarvestLevel )
		) {
    		mods.immersiveengineering.Mixer.addRecipe(
				GlobalStage1MetalFluid[Item] * 500, 
				<liquid:empoweredoil> * 500, 
				[ GlobalClump[Item] ], 
				HarvestLevel*1000
			);
		}
	}
}
*/



