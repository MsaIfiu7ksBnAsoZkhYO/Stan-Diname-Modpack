//=====================================================================================================================================================================================================	
//	Import-ant things
//=====================================================================================================================================================================================================


import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;


//=====================================================================================================================================================================================================	
//	Hashtables used in dynamic mapping function.  
//=====================================================================================================================================================================================================

/*
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

//	Secondary Outputs (nuggets)	_______________________________________________________________________________________________________________________________________________________________________
val Secondary = {
	Iron : <ore:nuggetIron>,
	Gold : <ore:nuggetGold>,
	Copper : <ore:nuggetCopper>,
	Lead : <ore:nuggetLead>,
	Cobalt : <ore:nuggetCobalt>,
	Tungsten : <ore:nuggetTungsten>,
	Aluminum : <ore:nuggetAluminum>,
	Mithril : <ore:nuggetMithril>,
	Nickel : <ore:nuggetNickel>,
	Osmium : <ore:nuggetOsmium>,
	Silver : <ore:nuggetSilver>,
	Tin : <ore:nuggetTin>,
	Zinc : <ore:nuggetZinc>,
	antimony : <ore:nuggetAntimony>,
	ardite : <ore:nuggetArdite>,
	beryllium : <ore:nuggetBeryllium>,
	bismuth : <ore:nuggetBismuth>,
	boron : <ore:nuggetBoron>,
	cadmium : <ore:nuggetCadmium>,
	chromium : <ore:nuggetChromium>,
	coldiron : <ore:nuggetColdiron>,
	dilithium : <ore:nuggetDilithium>,
	iridium : <ore:nuggetIridium>,
	lithium : <ore:dustFlint>,
	magnesium : <ore:nuggetMagnesium>,
	manganese : <ore:nuggetManganese>,
	platinum : <ore:nuggetPlatinum>,
	plutonium : <ore:nuggetPlutonium>,
	rutile : <ore:nuggetRutile>,
	starsteel : <ore:nuggetStarsteel>,
	tantalum : <ore:nuggetTantalum>,
	thorium : <ore:dustFlint>,
	titanium : <ore:nuggetTitanium>,
	uranium : <ore:nuggetUranium>,
	zirconium : <ore:nuggetZirconium>,
} as IOreDictEntry[string];
*/

//=====================================================================================================================================================================================================	
//	Remove existing recipes
//=====================================================================================================================================================================================================


    mods.magneticraft.SluiceBox.removeRecipe(<minecraft:sand>);
    mods.magneticraft.SluiceBox.removeRecipe(<minecraft:gravel>);
    mods.magneticraft.SluiceBox.removeRecipe(<magneticraft:rocky_chunks:0>);
    mods.magneticraft.SluiceBox.removeRecipe(<magneticraft:rocky_chunks:1>);
    mods.magneticraft.SluiceBox.removeRecipe(<magneticraft:rocky_chunks:2>);
    mods.magneticraft.SluiceBox.removeRecipe(<magneticraft:rocky_chunks:3>);
    mods.magneticraft.SluiceBox.removeRecipe(<magneticraft:rocky_chunks:4>);
    mods.magneticraft.SluiceBox.removeRecipe(<magneticraft:rocky_chunks:5>);
    mods.magneticraft.SluiceBox.removeRecipe(<magneticraft:rocky_chunks:7>);
    mods.magneticraft.SluiceBox.removeRecipe(<magneticraft:rocky_chunks:8>);
    mods.magneticraft.SluiceBox.removeRecipe(<magneticraft:rocky_chunks:9>);
    mods.magneticraft.SluiceBox.removeRecipe(<magneticraft:rocky_chunks:10>);
    mods.magneticraft.SluiceBox.removeRecipe(<magneticraft:rocky_chunks:11>);
    mods.magneticraft.SluiceBox.removeRecipe(<magneticraft:rocky_chunks:12>);
    mods.magneticraft.SluiceBox.removeRecipe(<magneticraft:rocky_chunks:13>);
    mods.magneticraft.SluiceBox.removeRecipe(<magneticraft:rocky_chunks:14>);


//=====================================================================================================================================================================================================	
//	Add new recipes
//=====================================================================================================================================================================================================


// addRecipe: Arguments:
// 1. input: the recipe input stack
// 3. output1Probability: The probability to get the ouput1
// 2. output1: The result of the recipe
// 4. [optional] Repeat 2 and 3 up to 6 times
// 5. oredictFlag: If true, it will use the oreDictionary to check if an input stack is equivalent to the recipe input

// Add a recipe with gold ore as input and 9 gold nuggets as output
//mods.magneticraft.SluiceBox.addRecipe(<minecraft:gold_ore>, 1.0, <minecraft:gold_nugget> * 9, true);

// Add a recipe with gravel as input where 50% of the time returns a flint piece and 15% of the time retuns a gold nugget
//mods.magneticraft.SluiceBox.addRecipe(<minecraft:gravel>, 0.15, <minecraft:gold_nugget>, 0.5, <minecraft:flint>, true);

// Add a recipe with sand as input where 5% of the time returns a gold nugget, 0.1% of the time retuns a flint pieze and 10% of the time returns a quarts pieze
//mods.magneticraft.SluiceBox.addRecipe(<minecraft:sand>, 0.05, <minecraft:gold_nugget>, 0.001, <minecraft:flint>, 0.1, <minecraft:quartz>, true);


	//	Unique recipes	_______________________________________________________________________________________________________________________________________________________________________
mods.magneticraft.SluiceBox.addRecipe(<minecraft:gravel> , 1.0,<minecraft:flint> , 0.25,<notreepunching:flint_shard>, 0.15,<terraqueous:item_main:215> , true);

/*
	//	Dynamic recipes from above hashtables	_______________________________________________________________________________________________________________________________________________________________________
for item in RockyChunk{
    mods.magneticraft.SluiceBox.addRecipe(RockyChunk[item].firstItem , 1.0,Chunk[item].firstItem , 0.05,Secondary[item].firstItem , 0.25,<notreepunching:rock/stone> , true);
}
for item in DustDirty {
    mods.magneticraft.SluiceBox.addRecipe(DustDirty[item].firstItem , 1.0,Dust[item].firstItem , 0.05,Secondary[item].firstItem ,  0.25,<terraqueous:item_main:215> , true);
}
*/

	//	Rocky Chunk > Chunk + tinydusts + rock	_______________________________________________________________________________________________________________________________________________________________________
for Item in GlobalHarvestLevel {

    if ( 4 >= GlobalHarvestLevel[Item] ) {

		if(	
			!isNull( GlobalRockyChunk[Item] ) 
			&
			!isNull( GlobalChunk[Item] ) 
			&
			!isNull( GlobalNugget[Item] ) 
		) {
			mods.magneticraft.SluiceBox.addRecipe( GlobalRockyChunk[Item].firstItem , 1.0,GlobalChunk[Item].firstItem , 0.05,GlobalNugget[Item].firstItem , 0.25,<notreepunching:rock/stone> , true);
		}
		
		if(	
			!isNull( GlobalDustDirty[Item] ) 
			&
			!isNull( GlobalDust[Item] )
			&
			!isNull( GlobalNugget[Item] )  
		) {
    		mods.magneticraft.SluiceBox.addRecipe( GlobalDustDirty[Item].firstItem , 1.0,GlobalDust[Item].firstItem , 0.05,GlobalNugget[Item].firstItem , 0.25,<terraqueous:item_main:215> , true );
		}
	
	}

}

//Old POC recipes
//mods.magneticraft.SluiceBox.addRecipe(<magneticraft:rocky_chunks:2> , 1.0,<magneticraft:chunks:2> , 0.25,<notreepunching:rock/stone> , true);
//mods.magneticraft.SluiceBox.addRecipe(<mekanism:dirtydust:3> , 1.0,<magneticraft:dusts:2> , 0.25,<terraqueous:item_main:215> , true);


//mods.magneticraft.SluiceBox.addRecipe(<ore:dustDirtyGold>.firstItem , 1.0,<ore:dustGold>.firstItem , 0.25,<terraqueous:item_main:215> , true);