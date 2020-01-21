
//Adds 2 mintes of loading times...
//=====================================================================================================================================================================================================	
//	Import-ant things
//=====================================================================================================================================================================================================


import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;
import mods.artisanworktables.builder.RecipeBuilder;


//=====================================================================================================================================================================================================	
//	Arrays and things
//=====================================================================================================================================================================================================
/*
//	Chunks	_______________________________________________________________________________________________________________________________________________________________________
val Chunk = {
	iron : <ore:chunkIron>,
	copper : <ore:chunkCopper>,
	lead : <ore:chunkLead>,
	cobalt : <ore:chunkCobalt>,
	tungsten : <ore:chunkTungsten>,
	mithril : <ore:chunkMithril>,
	nickel : <ore:chunkNickel>,
	osmium : <ore:chunkOsmium>,
	silver : <ore:chunkSilver>,
	antimony : <ore:chunkAntimony>,
	ardite : <ore:chunkArdite>,
	beryllium : <ore:chunkBeryllium>,
	bismuth : <ore:chunkBismuth>,
	boron : <ore:chunkBoron>,
	cadmium : <ore:chunkCadmium>,
	chromium : <ore:chunkChromium>,
	coldiron : <ore:chunkColdiron>,
	iridium : <ore:chunkIridium>,
	magnesium : <ore:chunkMagnesium>,
	manganese : <ore:chunkManganese>,
	platinum : <ore:chunkPlatinum>,
	rutile : <ore:chunkRutile>,
	starsteel : <ore:chunkStarsteel>,
	tantalum : <ore:chunkTantalum>,
	thorium : <ore:chunkThorium>,
	titanium : <ore:chunkTitanium>,
	uranium : <ore:chunkUranium>,
	zirconium : <ore:chunkZirconium>,
	bronze : <ore:dustBronze>,
	brass : <ore:dustBrass>,
	steel : <ore:dustSteel>,
} as IOreDictEntry[string];
//	alumifun : <ore:chunkAlumifun>,

    //	Tcon Tool parts	_______________________________________________________________________________________________________________________________________________________________________
var TconParts = {
	<tconstruct:sharpening_kit> : 2,
	<tconstruct:pick_head> : 2,
	<tconstruct:shovel_head> : 2,
	<tconstruct:axe_head> : 2,
	<tconstruct:broad_axe_head> : 8,
	<tconstruct:sword_blade> : 2,
	<tconstruct:large_sword_blade> : 8,
	<tconstruct:hammer_head> : 8,
	<tconstruct:excavator_head> : 8,
	<tconstruct:scythe_head> : 8,
	<tconstruct:large_plate> : 8,
	<tconstruct:kama_head> : 2,
	<tconstruct:arrow_head> : 2,
	<tconstruct:pan_head> : 3,
	<tconstruct:sign_head> : 3,
	<tconstruct:tough_tool_rod> : 3,
	<tconstruct:tough_binding> : 3,
	<tconstruct:bow_limb> : 3,
	<tconstruct:tool_rod> : 1,
	<tconstruct:binding> : 1,
	<tconstruct:wide_guard> : 1,
	<tconstruct:hand_guard> : 1,
	<tconstruct:cross_guard> : 1,
	<tconstruct:knife_blade> : 2,
	<tconstruct:bow_string> : 1,
	<tconstruct:fletching> : 2,
	<conarm:polishing_kit> : 3,
	<conarm:helmet_core> : 4,
	<conarm:chest_core> : 6,
	<conarm:leggings_core> : 5,
	<conarm:boots_core> : 4,
	<conarm:armor_plate> : 3,
	<conarm:armor_trim> : 1,
	<totaltinkers:greatbladecore> : 12,
	<totaltinkers:fullguard> : 3,
	<tcomplement:chisel_head> : 1,
} as float[IItemStack];
*/


//=====================================================================================================================================================================================================	
//	Add Crafting tabel recipes to recycle Tcon parts because that's the only thing that fully respect the NBT tag data.  :/
//=====================================================================================================================================================================================================

    
    //	Deconstruct Tcon parts	_______________________________________________________________________________________________________________________________________________________________________
for Item in GlobalChunk {
	if( !isNull( Item ) ) {	
    	for Part , Int in GlobalTconParts {

			RecipeBuilder.get("basic")
				.setName( Item~Part.displayName~"bypass" )
				.setShapeless( [ Part.withTag( {Material: Item} ).onlyWithTag( {Material: Item} ) ] )
				.addTool( <ore:artisansHammer> , (Int * 2) )
				.addOutput( GlobalChunk[Item].firstItem * Int )
				.create();

		}
	}
}



//recipes.addShapeless(<contenttweaker:wrought_iron_ingot> * 6, [ <conarm:chest_core>.withTag( {Material: "iron"} ).onlyWithTag( {Material: "iron"} ) ]);
//recipes.addShapeless(<immersiveengineering:metal> * 6, [<conarm:chest_core>.withTag({Material: "copper"}).onlyWithTag({Material: "copper"})]);