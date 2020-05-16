//=====================================================================================================================================================================================================	
//	IE Mixer to oil up ores.
//=====================================================================================================================================================================================================


var Recipes = {
    "oxideDust"	:   1000,
} as string[string];

for Item,Liquid in GlobalLeechedMetalSolution {
	if (debug) {print("Current Mixer Fluid item:	"~Item);}
	
	var HarvestLevel = GlobalHarvestLevel[Item];

	if ( 100 >= HarvestLevel ) {
	
		for Left,Right in Recipes {
            if (debug) {print("Current Mixer Input:	"~Left);}
			if (debug) {print("Current Mixer Output:	"~Right);}

			var Input = GlobalGimmeOreDict(Left,Item);

			if (	
				
				!(Input.empty) 
				&
				!isNull( HarvestLevel )
			
			) {
				
				mods.immersiveengineering.Mixer.addRecipe(
					Liquid * Right, 
					<liquid:sulfuric_acid> * Right, 
					[ Input ], 
					HarvestLevel * 10
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



