//=====================================================================================================================================================================================================	
//	Bumpin' and grindin' them ores.
//=====================================================================================================================================================================================================
/*
	 * @param input
	 *            input item stack
	 * @param output1
	 *            first output
	 * @param output2
	 *            second output, optional
	 * @param output3
	 *            third output, optional
mods.crossroads.Grindstone.addRecipe(IItemStack input, IIngredient output1, @Optional IIngredient output2, @Optional IIngredient output3)
*/


	//	Remove existing recipes	_______________________________________________________________________________________________________________________________________________________________________
mods.crossroads.Grindstone.removeRecipe(<ore:oreCopper>);
mods.crossroads.Grindstone.removeRecipe(<ore:stone>);
mods.crossroads.Grindstone.removeRecipe(<ore:blockRedstone>);
mods.crossroads.Grindstone.removeRecipe(<ore:cobblestone>);
mods.crossroads.Grindstone.removeRecipe(<ore:gravel>);
mods.crossroads.Grindstone.removeRecipe(<ore:blockCoal>);
mods.crossroads.Grindstone.removeRecipe(<ore:ingotCopper>);
mods.crossroads.Grindstone.removeRecipe(<minecraft:potato>);
mods.crossroads.Grindstone.removeRecipe(<minecraft:pumpkin>);
mods.crossroads.Grindstone.removeRecipe(<minecraft:melon>);
mods.crossroads.Grindstone.removeRecipe(<minecraft:wheat>);
mods.crossroads.Grindstone.removeRecipe(<minecraft:nether_wart_block>);



	//	Grind rocky chunks into dirty dust.  Kinky.	_______________________________________________________________________________________________________________________________________________________________________
var Recipes = {
	"oreChunk"	:	"dirtyDust",
	"rock"		:	"dirtyDust",
	"cluster"	:	"dirtyDust",
} as string[string];


for Item in GlobalHarvestLevel {
//	if (debug) {print("Crossroads Grindstone Item:	"~Item);}

	for Left,Right in Recipes {
//		if (debug) {print("Current Grindstone Recipe Input:	"~Left);}
//		if (debug) {print("Current Grindstone Recipe Output:	"~Right);}

		var Input = GlobalGimmeOreDict(Left,Item);
		var Output = GlobalGimmeOreDict(Right,Item);

	if(

		!( Input.empty )
		&
		!( Output.empty )
	
	) {

		mods.crossroads.Grindstone.addRecipe(
			Input.firstItem,
			Output.firstItem 
		);

	}

	}
	
}

