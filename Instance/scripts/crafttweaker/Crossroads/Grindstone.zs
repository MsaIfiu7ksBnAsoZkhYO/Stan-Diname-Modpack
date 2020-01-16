//=====================================================================================================================================================================================================	
//These imports must be included to cast the arrays
//=====================================================================================================================================================================================================	


import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.oredict.IOreDict;


//=====================================================================================================================================================================================================	
//	Material tables for dynamic recipes.
//=====================================================================================================================================================================================================


	//	Magneticraft Rocky Chunks	_______________________________________________________________________________________________________________________________________________________________________
val RockyChunk = {
	iron : <ore:rockyChunkIron>,
	gold : <ore:rockyChunkGold>,
	copper : <ore:rockyChunkCopper>,
	lead : <ore:rockyChunkLead>,
	cobalt : <ore:rockyChunkCobalt>,
	tungsten : <ore:rockyChunkTungsten>,
	aluminum : <ore:rockyChunkAluminum>,
	mithril : <ore:rockyChunkMithril>,
	nickel : <ore:rockyChunkNickel>,
	osmium : <ore:rockyChunkOsmium>,
	silver : <ore:rockyChunkSilver>,
	tin : <ore:rockyChunkTin>,
	zinc : <ore:rockyChunkZinc>,
	antimony : <ore:rockyChunkAntimony>,
	ardite : <ore:rockyChunkArdite>,
	beryllium : <ore:rockyChunkBeryllium>,
	bismuth : <ore:rockyChunkBismuth>,
	boron : <ore:rockyChunkBoron>,
	cadmium : <ore:rockyChunkCadmium>,
	chromium : <ore:rockyChunkChromium>,
	coldiron : <ore:rockyChunkColdiron>,
	dilithium : <ore:rockyChunkDilithium>,
	iridium : <ore:rockyChunkIridium>,
	lithium : <ore:rockyChunkLithium>,
	magnesium : <ore:rockyChunkMagnesium>,
	manganese : <ore:rockyChunkManganese>,
	mercury : <ore:rockyChunkMercury>,
	platinum : <ore:rockyChunkPlatinum>,
	plutonium : <ore:rockyChunkPlutonium>,
	rutile : <ore:rockyChunkRutile>,
	starsteel : <ore:rockyChunkStarsteel>,
	tantalum : <ore:rockyChunkTantalum>,
	thorium : <ore:rockyChunkThorium>,
	titanium : <ore:rockyChunkTitanium>,
	uranium : <ore:rockyChunkUranium>,
	zirconium : <ore:rockyChunkZirconium>,
} as IOreDictEntry[string];

	//	Mekanism dustDirtys	_______________________________________________________________________________________________________________________________________________________________________
val DustDirty = {
	iron : <ore:dustDirtyIron>,
	gold : <ore:dustDirtyGold>,
	copper : <ore:dustDirtyCopper>,
	lead : <ore:dustDirtyLead>,
	cobalt : <ore:dustDirtyCobalt>,
	tungsten : <ore:dustDirtyTungsten>,
	aluminum : <ore:dustDirtyAluminum>,
	mithril : <ore:dustDirtyMithril>,
	nickel : <ore:dustDirtyNickel>,
	osmium : <ore:dustDirtyOsmium>,
	silver : <ore:dustDirtySilver>,
	tin : <ore:dustDirtyTin>,
	zinc : <ore:dustDirtyZinc>,
	antimony : <ore:dustDirtyAntimony>,
	ardite : <ore:dustDirtyArdite>,
	beryllium : <ore:dustDirtyBeryllium>,
	bismuth : <ore:dustDirtyBismuth>,
	boron : <ore:dustDirtyBoron>,
	cadmium : <ore:dustDirtyCadmium>,
	chromium : <ore:dustDirtyChromium>,
	coldiron : <ore:dustDirtyColdiron>,
	dilithium : <ore:dustDirtyDilithium>,
	iridium : <ore:dustDirtyIridium>,
	lithium : <ore:dustDirtyLithium>,
	magnesium : <ore:dustDirtyMagnesium>,
	manganese : <ore:dustDirtyManganese>,
	mercury : <ore:dustDirtyMercury>,
	platinum : <ore:dustDirtyPlatinum>,
	plutonium : <ore:dustDirtyPlutonium>,
	rutile : <ore:dustDirtyRutile>,
	starsteel : <ore:dustDirtyStarsteel>,
	tantalum : <ore:dustDirtyTantalum>,
	thorium : <ore:dustDirtyThorium>,
	titanium : <ore:dustDirtyTitanium>,
	uranium : <ore:dustDirtyUranium>,
	zirconium : <ore:dustDirtyZirconium>,
} as IOreDictEntry[string];

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
for item in RockyChunk {
    mods.crossroads.Grindstone.addRecipe(RockyChunk[item], DustDirty[item].firstItem);
}