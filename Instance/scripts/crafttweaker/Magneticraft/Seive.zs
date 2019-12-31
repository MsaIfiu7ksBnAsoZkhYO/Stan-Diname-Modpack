//=====================================================================================================================================================================================================	
//	Import-ant things
//=====================================================================================================================================================================================================


import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;


//=====================================================================================================================================================================================================	
//	Hashtables used in dynamic mapping function.  
//=====================================================================================================================================================================================================


//	Magneticraft Chunks	_______________________________________________________________________________________________________________________________________________________________________
val Chunk = {
	Iron : <ore:chunkIron>,
	Gold : <ore:chunkGold>,
	Copper : <ore:chunkCopper>,
	Lead : <ore:chunkLead>,
	Cobalt : <ore:chunkCobalt>,
	Tungsten : <ore:chunkTungsten>,
	Aluminum : <ore:chunkAluminum>,
	Mithril : <ore:chunkMithril>,
	Nickel : <ore:chunkNickel>,
	Osmium : <ore:chunkOsmium>,
	Silver : <ore:chunkSilver>,
	Tin : <ore:chunkTin>,
	Zinc : <ore:chunkZinc>,
	adamantine : <ore:chunkAdamantine>,
	antimony : <ore:chunkAntimony>,
	ardite : <ore:chunkArdite>,
	beryllium : <ore:chunkBeryllium>,
	bismuth : <ore:chunkBismuth>,
	boron : <ore:chunkBoron>,
	cadmium : <ore:chunkCadmium>,
	chromium : <ore:chunkChromium>,
	coldiron : <ore:chunkColdiron>,
	dilithium : <ore:chunkDilithium>,
	iridium : <ore:chunkIridium>,
	lithium : <ore:chunkLithium>,
	magnesium : <ore:chunkMagnesium>,
	manganese : <ore:chunkManganese>,
	mercury : <ore:chunkMercury>,
	platinum : <ore:chunkPlatinum>,
	plutonium : <ore:chunkPlutonium>,
	rutile : <ore:chunkRutile>,
	starsteel : <ore:chunkStarsteel>,
	tantalum : <ore:chunkTantalum>,
	thorium : <ore:chunkThorium>,
	titanium : <ore:chunkTitanium>,
	uranium : <ore:chunkUranium>,
	zirconium : <ore:chunkZirconium>,
} as IOreDictEntry[string];

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

//	Dusts	_______________________________________________________________________________________________________________________________________________________________________
val Dust = {
	Iron : <ore:dustIron>,
	Gold : <ore:dustGold>,
	Copper : <ore:dustCopper>,
	Lead : <ore:dustLead>,
	Cobalt : <ore:dustCobalt>,
	Tungsten : <ore:dustTungsten>,
	Aluminum : <ore:dustAluminum>,
	Mithril : <ore:dustMithril>,
	Nickel : <ore:dustNickel>,
	Osmium : <ore:dustOsmium>,
	Silver : <ore:dustSilver>,
	Tin : <ore:dustTin>,
	Zinc : <ore:dustZinc>,
	adamantine : <ore:dustAdamantine>,
	antimony : <ore:dustAntimony>,
	ardite : <ore:dustArdite>,
	beryllium : <ore:dustBeryllium>,
	bismuth : <ore:dustBismuth>,
	boron : <ore:dustBoron>,
	cadmium : <ore:dustCadmium>,
	chromium : <ore:dustChromium>,
	coldiron : <ore:dustColdiron>,
	dilithium : <ore:dustDilithium>,
	iridium : <ore:dustIridium>,
	lithium : <ore:dustLithium>,
	magnesium : <ore:dustMagnesium>,
	manganese : <ore:dustManganese>,
	mercury : <ore:dustMercury>,
	platinum : <ore:dustPlatinum>,
	plutonium : <ore:dustPlutonium>,
	rutile : <ore:dustRutile>,
	starsteel : <ore:dustStarsteel>,
	tantalum : <ore:dustTantalum>,
	thorium : <ore:dustThorium>,
	titanium : <ore:dustTitanium>,
	uranium : <ore:dustUranium>,
	zirconium : <ore:dustZirconium>,
} as IOreDictEntry[string];

//	Mekanism DustDirty	_______________________________________________________________________________________________________________________________________________________________________
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

//	Secondary Outputs (Small dusts)	_______________________________________________________________________________________________________________________________________________________________________
val Secondary = {
	Iron : <ore:dustSmallIron>,
	Gold : <ore:dustSmallGold>,
	Copper : <ore:dustSmallCopper>,
	Lead : <ore:dustSmallLead>,
	Cobalt : <ore:dustSmallCobalt>,
	Tungsten : <ore:dustSmallTungsten>,
	Aluminum : <ore:dustSmallAluminum>,
	Mithril : <ore:dustSmallMithril>,
	Nickel : <ore:dustSmallNickel>,
	Osmium : <ore:dustSmallOsmium>,
	Silver : <ore:dustSmallSilver>,
	Tin : <ore:dustSmallTin>,
	Zinc : <ore:dustSmallZinc>,
	adamantine : <ore:dustSmallAdamantine>,
	antimony : <ore:dustSmallAntimony>,
	ardite : <ore:dustSmallArdite>,
	beryllium : <ore:dustSmallBeryllium>,
	bismuth : <ore:dustSmallBismuth>,
	boron : <ore:dustSmallBoron>,
	cadmium : <ore:dustSmallCadmium>,
	chromium : <ore:dustSmallChromium>,
	coldiron : <ore:dustSmallColdiron>,
	dilithium : <ore:dustSmallDilithium>,
	iridium : <ore:dustSmallIridium>,
	lithium : <ore:dustSmallLithium>,
	magnesium : <ore:dustSmallMagnesium>,
	manganese : <ore:dustSmallManganese>,
	mercury : <ore:dustSmallMercury>,
	platinum : <ore:dustSmallPlatinum>,
	plutonium : <ore:dustSmallPlutonium>,
	rutile : <ore:dustSmallRutile>,
	starsteel : <ore:dustSmallStarsteel>,
	tantalum : <ore:dustSmallTantalum>,
	thorium : <ore:dustSmallThorium>,
	titanium : <ore:dustSmallTitanium>,
	uranium : <ore:dustSmallUranium>,
	zirconium : <ore:dustSmallZirconium>,
} as IOreDictEntry[string];


//=====================================================================================================================================================================================================	
//	Remove existing recipes
//=====================================================================================================================================================================================================


    mods.magneticraft.Sieve.removeRecipe(<minecraft:sand>);
    mods.magneticraft.Sieve.removeRecipe(<minecraft:gravel>);
	mods.magneticraft.Sieve.removeRecipe(<minecraft:soul_sand>);
    mods.magneticraft.Sieve.removeRecipe(<magneticraft:rocky_chunks:0>);
    mods.magneticraft.Sieve.removeRecipe(<magneticraft:rocky_chunks:1>);
    mods.magneticraft.Sieve.removeRecipe(<magneticraft:rocky_chunks:2>);
    mods.magneticraft.Sieve.removeRecipe(<magneticraft:rocky_chunks:3>);
    mods.magneticraft.Sieve.removeRecipe(<magneticraft:rocky_chunks:4>);
    mods.magneticraft.Sieve.removeRecipe(<magneticraft:rocky_chunks:5>);
    mods.magneticraft.Sieve.removeRecipe(<magneticraft:rocky_chunks:7>);
    mods.magneticraft.Sieve.removeRecipe(<magneticraft:rocky_chunks:8>);
    mods.magneticraft.Sieve.removeRecipe(<magneticraft:rocky_chunks:9>);
    mods.magneticraft.Sieve.removeRecipe(<magneticraft:rocky_chunks:10>);
    mods.magneticraft.Sieve.removeRecipe(<magneticraft:rocky_chunks:11>);
    mods.magneticraft.Sieve.removeRecipe(<magneticraft:rocky_chunks:12>);
    mods.magneticraft.Sieve.removeRecipe(<magneticraft:rocky_chunks:13>);
    mods.magneticraft.Sieve.removeRecipe(<magneticraft:rocky_chunks:14>);


//=====================================================================================================================================================================================================	
//	Add new recipes
//=====================================================================================================================================================================================================
	/*
	# Remove all recipes with iron rocky chunk as input
	mods.magneticraft.Sieve.removeRecipe(<magneticraft:rocky_chunks>);

	# addRecipe: Arguments:
	# 1. input: the recipe input stack
	# 2. output1: The primary result of the recipe
	# 3. output1Probability: The probability to get the output1
	# 4. output2: The secondary result of the recipe
	# 5. output2Probability: The probability to get the output2
	# 6. output3: The tertiary result of the recipe
	# 7. output3Probability: The probability to get the output3
	# 8. ticks: amount of game ticks need to complete the recipe
	# 9. oredictFlag: If true, it will use the oreDictionary to check if an input stack is equivalent to the recipe input

	# Add a recipe with iron ore as input,
	mods.magneticraft.Sieve.addRecipe(<minecraft:iron_ore>, <minecraft:iron_ingot>, 1.0, <minecraft:gold_ingot>, 0.25, <minecraft:gravel>, 0.15, 40, true);

	# Adds a recipe with only one output, basically anything with 0 chance is ignored
	mods.magneticraft.Sieve.addRecipe(<minecraft:iron_ore>, <minecraft:iron_ingot>, 1.0, <minecraft:stone>, 0.0, <minecraft:stone>, 0.0, 100, true);
*/


	//	Unique recipes	_______________________________________________________________________________________________________________________________________________________________________
mods.magneticraft.Sieve.addRecipe(<minecraft:gravel> , <minecraft:flint>,1.0 , <minecraft:flint>,0.25 , <terraqueous:item_main:215>,0.25 , 120 , true);
/*  - Seive specific recipes that probably won't come back
	Sand - gold nugets and nether quartz
	Soul Sand - Nether Quartz
*/

//=====================================================================================================================================================================================================	
//	Add new recipes Dynamically from oredict lists above
//=====================================================================================================================================================================================================


	//	Rocky Chunk > Chunk + tinydusts + rock	_______________________________________________________________________________________________________________________________________________________________________
for item in RockyChunk{
    mods.magneticraft.Sieve.addRecipe(RockyChunk[item].firstItem , Chunk[item].firstItem,1.0 , Secondary[item].firstItem,0.1 , <notreepunching:rock/stone>,0.25 , 240 , true);
}

	//	Dirty Dust > Dust > gravel lumps	_______________________________________________________________________________________________________________________________________________________________________
for item in DustDirty {
    mods.magneticraft.Sieve.addRecipe(DustDirty[item].firstItem , Dust[item].firstItem,1.0 , Secondary[item].firstItem,0.1 ,  <terraqueous:item_main:215>,0.25 , 300 , true);
}


//Old POC recipes
//mods.magneticraft.Sieve.addRecipe(<magneticraft:rocky_chunks:2> , 1.0,<magneticraft:chunks:2> , 0.25,<notreepunching:rock/stone> , true);
//mods.magneticraft.Sieve.addRecipe(<mekanism:dirtydust:3> , 1.0,<magneticraft:dusts:2> , 0.25,<terraqueous:item_main:215> , true);


//mods.magneticraft.Sieve.addRecipe(<ore:dustDirtyGold>.firstItem , 1.0,<ore:dustGold>.firstItem , 0.25,<terraqueous:item_main:215> , true);