//=====================================================================================================================================================================================================	
//	Import-ant things
//=====================================================================================================================================================================================================

#priority 10000

import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

//=====================================================================================================================================================================================================	
//	UB cobblestones
//=====================================================================================================================================================================================================
<ore:cobblestone>.addItems([
	<contenttweaker:chalk_cobble>,
	<contenttweaker:shale_cobble>,
	<contenttweaker:siltstone_cobble>,
	<contenttweaker:dolomite_cobble>,
	<contenttweaker:greywacke_cobble>,
	<contenttweaker:chert_cobble>,
]);


//=====================================================================================================================================================================================================	
//	Iron and Wrought Iron
//=====================================================================================================================================================================================================
<ore:ingotIron>.add(<contenttweaker:wrought_iron_ingot>);
<ore:ingotIron>.remove(<minecraft:iron_ingot>);

//=====================================================================================================================================================================================================	
//	Copshowium
//=====================================================================================================================================================================================================
<ore:plateCopshowium>.add(<contenttweaker:copshowium_plate>);
<ore:stickCopshowium>.add(<contenttweaker:copshowium_rod>);


//=====================================================================================================================================================================================================	
//	clay Nuggets
//=====================================================================================================================================================================================================
<ore:nuggetClay>.add(<contenttweaker:clay_nugget>);
<ore:nuggetPorcelain>.add(<contenttweaker:porcelain_clay_nugget>);
<ore:nuggetCoke>.add(<contenttweaker:coke_clay_nugget>);
<ore:nuggetSeared>.add(<contenttweaker:seared_clay_nugget>);
<ore:nuggetScorched>.add(<contenttweaker:scorched_clay_nugget>);
<ore:nuggetBlast>.add(<contenttweaker:blast_clay_nugget>);
<ore:nuggetKiln>.add(<contenttweaker:kiln_clay_nugget>);


//=====================================================================================================================================================================================================	
//	clay balls
//=====================================================================================================================================================================================================
<ore:clayCoke>.add(<contenttweaker:coke_clay>);
<ore:claySeared>.add(<contenttweaker:seared_clay>);
<ore:clayScorched>.add(<contenttweaker:scorched_clay>);
<ore:clayBlast>.add(<contenttweaker:blast_clay>);
<ore:clayKiln>.add(<contenttweaker:kiln_clay>);


//=====================================================================================================================================================================================================	
//	Unfired Clay bricks
//=====================================================================================================================================================================================================
<ore:brickCoke>.add(<contenttweaker:unfired_coke_brick>);
<ore:brickSeared>.add(<contenttweaker:unfired_seared_brick>);
<ore:brickScorched>.add(<contenttweaker:unfired_scorched_brick>);
<ore:brickBlast>.add(<contenttweaker:unfired_blast_brick>);
<ore:brickKiln>.add(<contenttweaker:unfired_kiln_brick>);


//=====================================================================================================================================================================================================	
//	Fired Clay bricks
//=====================================================================================================================================================================================================
<ore:ingotCoke>.add(<contenttweaker:coke_brick>);
<ore:ingotBlast>.add(<contenttweaker:blast_brick>);
<ore:ingotKiln>.add(<contenttweaker:kiln_brick>);


//=====================================================================================================================================================================================================	
//	Porcelain Dusts
//=====================================================================================================================================================================================================
<ore:dustFlint>.add(<contenttweaker:flintdust>);
<ore:dustBone>.add(<contenttweaker:bonedust>);
<ore:dustAsh>.add(<contenttweaker:ashdust>);

	//	Make this oredictionary so the recipe supports any combination of these infgredients.
<ore:ingredientPorcelain>.addAll(<ore:dustFlint>); 
<ore:ingredientPorcelain>.addAll(<ore:dustBone>); 
<ore:ingredientPorcelain>.addAll(<ore:dustAsh>); 

<ore:dustLime>.add(<contenttweaker:limedust>);

<ore:sandSilica>.add(<contenttweaker:silica_sand>);


//=====================================================================================================================================================================================================	
//	Tiny Pollution dusts
//=====================================================================================================================================================================================================
<ore:dustTinyCarbon>.add(<contenttweaker:tiny_carbon_dust>);
<ore:dustTinySulfur>.add(<contenttweaker:tiny_sulfur_dust>);
<ore:dustTinyDust>.add(<contenttweaker:tiny_dust_dust>);



//=====================================================================================================================================================================================================	
//	Recreated Jaopca items
//=====================================================================================================================================================================================================


	//	Chunks	_______________________________________________________________________________________________________________________________________________________________________
<ore:chunkAmber>.add(<contenttweaker:chunk_amber>);
<ore:chunkAmethyst>.add(<contenttweaker:chunk_amethyst>);
<ore:chunkAntimony>.add(<contenttweaker:chunk_antimony>);
<ore:chunkAquamarine>.add(<contenttweaker:chunk_aquamarine>);
<ore:chunkArdite>.add(<contenttweaker:chunk_ardite>);
<ore:chunkAstralStarmetal>.add(<contenttweaker:chunk_astral_starmetal>);
<ore:chunkBeryllium>.add(<contenttweaker:chunk_beryllium>);
<ore:chunkBismuth>.add(<contenttweaker:chunk_bismuth>);
<ore:chunkBoron>.add(<contenttweaker:chunk_boron>);
<ore:chunkCadmium>.add(<contenttweaker:chunk_cadmium>);
<ore:chunkChromium>.add(<contenttweaker:chunk_chromium>);
<ore:chunkCoal>.add(<contenttweaker:chunk_coal>);
<ore:chunkColdiron>.add(<contenttweaker:chunk_coldiron>);
<ore:chunkDiamond>.add(<contenttweaker:chunk_diamond>);
<ore:chunkDilithium>.add(<contenttweaker:chunk_dilithium>);
<ore:chunkEmerald>.add(<contenttweaker:chunk_emerald>);
<ore:chunkEnderBiotite>.add(<contenttweaker:chunk_ender_biotite>);
<ore:chunkIridium>.add(<contenttweaker:chunk_iridium>);
<ore:chunkLapis>.add(<contenttweaker:chunk_lapis>);
<ore:chunkLithium>.add(<contenttweaker:chunk_lithium>);
<ore:chunkMagnesium>.add(<contenttweaker:chunk_magnesium>);
<ore:chunkMalachite>.add(<contenttweaker:chunk_malachite>);
<ore:chunkManganese>.add(<contenttweaker:chunk_manganese>);
<ore:chunkMercury>.add(<contenttweaker:chunk_mercury>);
<ore:chunkPeridot>.add(<contenttweaker:chunk_peridot>);
<ore:chunkPlatinum>.add(<contenttweaker:chunk_platinum>);
<ore:chunkPlutonium>.add(<contenttweaker:chunk_plutonium>);
<ore:chunkQuartz>.add(<contenttweaker:chunk_quartz>);
<ore:chunkQuartzBlack>.add(<contenttweaker:chunk_quartz_black>);
<ore:chunkRedstone>.add(<contenttweaker:chunk_redstone>);
<ore:chunkRuby>.add(<contenttweaker:chunk_ruby>);
<ore:chunkRutile>.add(<contenttweaker:chunk_rutile>);
<ore:chunkSalt>.add(<contenttweaker:chunk_salt>);
<ore:chunkSapphire>.add(<contenttweaker:chunk_sapphire>);
<ore:chunkStarsteel>.add(<contenttweaker:chunk_starsteel>);
<ore:chunkSulfur>.add(<contenttweaker:chunk_sulfur>);
<ore:chunkTantalum>.add(<contenttweaker:chunk_tantalum>);
<ore:chunkTanzanite>.add(<contenttweaker:chunk_tanzanite>);
<ore:chunkThorium>.add(<contenttweaker:chunk_thorium>);
<ore:chunkTitanium>.add(<contenttweaker:chunk_titanium>);
<ore:chunkTopaz>.add(<contenttweaker:chunk_topaz>);
<ore:chunkUranium>.add(<contenttweaker:chunk_uranium>);
<ore:chunkZirconium>.add(<contenttweaker:chunk_zirconium>);


	//	Rocky Chunks	_______________________________________________________________________________________________________________________________________________________________________
<ore:rockyChunkAmber>.add(<contenttweaker:rockychunk_amber>);
<ore:rockyChunkAmethyst>.add(<contenttweaker:rockychunk_amethyst>);
<ore:rockyChunkAntimony>.add(<contenttweaker:rockychunk_antimony>);
<ore:rockyChunkAquamarine>.add(<contenttweaker:rockychunk_aquamarine>);
<ore:rockyChunkArdite>.add(<contenttweaker:rockychunk_ardite>);
<ore:rockyChunkAstralStarmetal>.add(<contenttweaker:rockychunk_astral_starmetal>);
<ore:rockyChunkBeryllium>.add(<contenttweaker:rockychunk_beryllium>);
<ore:rockyChunkBismuth>.add(<contenttweaker:rockychunk_bismuth>);
<ore:rockyChunkBoron>.add(<contenttweaker:rockychunk_boron>);
<ore:rockyChunkCadmium>.add(<contenttweaker:rockychunk_cadmium>);
<ore:rockyChunkChromium>.add(<contenttweaker:rockychunk_chromium>);
<ore:rockyChunkCoal>.add(<contenttweaker:rockychunk_coal>);
<ore:rockyChunkColdiron>.add(<contenttweaker:rockychunk_coldiron>);
<ore:rockyChunkDiamond>.add(<contenttweaker:rockychunk_diamond>);
<ore:rockyChunkDilithium>.add(<contenttweaker:rockychunk_dilithium>);
<ore:rockyChunkEmerald>.add(<contenttweaker:rockychunk_emerald>);
<ore:rockyChunkEnderBiotite>.add(<contenttweaker:rockychunk_ender_biotite>);
<ore:rockyChunkIridium>.add(<contenttweaker:rockychunk_iridium>);
<ore:rockyChunkLapis>.add(<contenttweaker:rockychunk_lapis>);
<ore:rockyChunkLithium>.add(<contenttweaker:rockychunk_lithium>);
<ore:rockyChunkMagnesium>.add(<contenttweaker:rockychunk_magnesium>);
<ore:rockyChunkMalachite>.add(<contenttweaker:rockychunk_malachite>);
<ore:rockyChunkManganese>.add(<contenttweaker:rockychunk_manganese>);
<ore:rockyChunkMercury>.add(<contenttweaker:rockychunk_mercury>);
<ore:rockyChunkPeridot>.add(<contenttweaker:rockychunk_peridot>);
<ore:rockyChunkPlatinum>.add(<contenttweaker:rockychunk_platinum>);
<ore:rockyChunkPlutonium>.add(<contenttweaker:rockychunk_plutonium>);
<ore:rockyChunkQuartz>.add(<contenttweaker:rockychunk_quartz>);
<ore:rockyChunkQuartzBlack>.add(<contenttweaker:rockychunk_quartz_black>);
<ore:rockyChunkRedstone>.add(<contenttweaker:rockychunk_redstone>);
<ore:rockyChunkRuby>.add(<contenttweaker:rockychunk_ruby>);
<ore:rockyChunkRutile>.add(<contenttweaker:rockychunk_rutile>);
<ore:rockyChunkSalt>.add(<contenttweaker:rockychunk_salt>);
<ore:rockyChunkSapphire>.add(<contenttweaker:rockychunk_sapphire>);
<ore:rockyChunkStarsteel>.add(<contenttweaker:rockychunk_starsteel>);
<ore:rockyChunkSulfur>.add(<contenttweaker:rockychunk_sulfur>);
<ore:rockyChunkTantalum>.add(<contenttweaker:rockychunk_tantalum>);
<ore:rockyChunkTanzanite>.add(<contenttweaker:rockychunk_tanzanite>);
<ore:rockyChunkThorium>.add(<contenttweaker:rockychunk_thorium>);
<ore:rockyChunkTitanium>.add(<contenttweaker:rockychunk_titanium>);
<ore:rockyChunkTopaz>.add(<contenttweaker:rockychunk_topaz>);
<ore:rockyChunkUranium>.add(<contenttweaker:rockychunk_uranium>);
<ore:rockyChunkZirconium>.add(<contenttweaker:rockychunk_zirconium>);

	//	Dirty Dust?	_______________________________________________________________________________________________________________________________________________________________________
