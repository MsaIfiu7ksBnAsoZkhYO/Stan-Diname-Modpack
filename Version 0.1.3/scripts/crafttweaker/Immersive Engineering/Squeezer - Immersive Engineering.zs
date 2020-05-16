var Recipes = {
    "pulpyDust"  :   "squeezedDust",
} as string[string];


for Item in GlobalHarvestLevel {
    if (debug) {print("IE Squeezer Item:	"~Item);}	
    
    var HarvestLevel = GlobalHarvestLevel[Item];
    
    if ( 50 >= HarvestLevel ) {
            //  Set the Left value as the input and the right value as the output
        for Left,Right in Recipes {
            if (debug) {print("IE Squeezer Input:	"~Left);}
            if (debug) {print("IE Squeezer Output:	"~Right);}		
            
            var Input = GlobalGimmeOreDict(Left,Item);
            var Output = GlobalGimmeOreDict(Right,Item);
            var Ouput_F = GlobalCleanMetalSolution[Item];
            
            if ( 
                
                !(Input.empty)
                &
                !(Output.empty)
            
            ) {
               
				mods.immersiveengineering.Squeezer.addRecipe(
					Output.firstItem, 
					Ouput_F, 
					Input, 
					HarvestLevel * 10
				);
            
            }
        
        }
    
    }

}