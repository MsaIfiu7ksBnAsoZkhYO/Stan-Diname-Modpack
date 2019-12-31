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
	Iron : <ore:rockyChunkIron>,
	Gold : <ore:rockyChunkGold>,
	Copper : <ore:rockyChunkCopper>,
	Lead : <ore:rockyChunkLead>,
	Cobalt : <ore:rockyChunkCobalt>,
	Tungsten : <ore:rockyChunkTungsten>,
	Aluminum : <ore:rockyChunkAluminum>,
	Mithril : <ore:rockyChunkMithril>,
	Nickel : <ore:rockyChunkNickel>,
	Osmium : <ore:rockyChunkOsmium>,
	Silver : <ore:rockyChunkSilver>,
	Tin : <ore:rockyChunkTin>,
	Zinc : <ore:rockyChunkZinc>,
	adamantine : <ore:rockyChunkAdamantine>,
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
	Iron : <ore:dustDirtyIron>,
	Gold : <ore:dustDirtyGold>,
	Copper : <ore:dustDirtyCopper>,
	Lead : <ore:dustDirtyLead>,
	Cobalt : <ore:dustDirtyCobalt>,
	Tungsten : <ore:dustDirtyTungsten>,
	Aluminum : <ore:dustDirtyAluminum>,
	Mithril : <ore:dustDirtyMithril>,
	Nickel : <ore:dustDirtyNickel>,
	Osmium : <ore:dustDirtyOsmium>,
	Silver : <ore:dustDirtySilver>,
	Tin : <ore:dustDirtyTin>,
	Zinc : <ore:dustDirtyZinc>,
	adamantine : <ore:dustDirtyAdamantine>,
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

//Zirconium - One is there
//Astral Starmetal
//Zinc dust - one is there
//Tantalum dust - One is there


for item in RockyChunk {
    mods.crossroads.Grindstone.addRecipe(RockyChunk[item], DustDirty[item].firstItem);
}

//mods.crossroads.Grindstone.addRecipe(<ore:chunkCopper>, <ore:dustDirtyCopper>.firstItem);




