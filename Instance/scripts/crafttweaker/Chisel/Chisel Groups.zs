//=====================================================================================================================================================================================================	
//  These imports must be included to cast the arrays
//=====================================================================================================================================================================================================	

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

//=====================================================================================================================================================================================================	
//  Fixes missing blocks from chisel groups that should be there.
//=====================================================================================================================================================================================================	


var ChiselGroups = {
    <quark:vertical_stained_planks:0>		:	"quark:stained_planks_0",
    <quark:vertical_stained_planks:1>		:	"quark:stained_planks_1",
    <quark:vertical_stained_planks:2>		:	"quark:stained_planks_2",
    <quark:vertical_stained_planks:3>		:	"quark:stained_planks_3",
    <quark:vertical_stained_planks:4>		:	"quark:stained_planks_4",
    <quark:vertical_stained_planks:5>		:	"quark:stained_planks_5",
    <quark:vertical_stained_planks:6>		:	"quark:stained_planks_6",
    <quark:vertical_stained_planks:7>		:	"quark:stained_planks_7",
    <quark:vertical_stained_planks:8>		:	"quark:stained_planks_8",
    <quark:vertical_stained_planks:9>		:	"quark:stained_planks_9",
    <quark:vertical_stained_planks:10>		:	"quark:stained_planks_10",
    <quark:vertical_stained_planks:11>		:	"quark:stained_planks_11",
    <quark:vertical_stained_planks:12>		:	"quark:stained_planks_12",
    <quark:vertical_stained_planks:13>		:	"quark:stained_planks_13",
    <quark:vertical_stained_planks:14>		:	"quark:stained_planks_14",
    <quark:vertical_stained_planks:15>		:	"quark:stained_planks_15",
    
    <undergroundbiomes:igneous_stone:0>		:	"undergroundbiomes:igneous_brick_0",
    <undergroundbiomes:igneous_stone:1>		:	"undergroundbiomes:igneous_brick_1",
    <undergroundbiomes:igneous_stone:2>		:	"undergroundbiomes:igneous_brick_2",
    <undergroundbiomes:igneous_stone:3>		:	"undergroundbiomes:igneous_brick_3",
    <undergroundbiomes:igneous_stone:4>		:	"undergroundbiomes:igneous_brick_4",
    <undergroundbiomes:igneous_stone:5>		:	"undergroundbiomes:igneous_brick_5",
    <undergroundbiomes:igneous_stone:6>		:	"undergroundbiomes:igneous_brick_6",
    <undergroundbiomes:igneous_stone:7>		:	"undergroundbiomes:igneous_brick_7",
    <undergroundbiomes:metamorphic_stone:0>	:	"undergroundbiomes:metamorphic_brick_0",
    <undergroundbiomes:metamorphic_stone:1>	:	"undergroundbiomes:metamorphic_brick_1",
    <undergroundbiomes:metamorphic_stone:2>	:	"undergroundbiomes:metamorphic_brick_2",
    <undergroundbiomes:metamorphic_stone:3>	:	"undergroundbiomes:metamorphic_brick_3",
    <undergroundbiomes:metamorphic_stone:4>	:	"undergroundbiomes:metamorphic_brick_4",
    <undergroundbiomes:metamorphic_stone:5>	:	"undergroundbiomes:metamorphic_brick_5",
    <undergroundbiomes:metamorphic_stone:6>	:	"undergroundbiomes:metamorphic_brick_6",
    <undergroundbiomes:metamorphic_stone:7>	:	"undergroundbiomes:metamorphic_brick_7",

    <minecraft:stonebrick>     :   "stonebrick",
    <minecraft:stonebrick:2>   :   "stonebrick",
    <minecraft:stonebrick:3>   :   "stonebrick",

    <minecraft:stone:5>             :   "andesite",
    <minecraft:stone:6>             :   "andesite",
    <quark:world_stone_bricks:2>    :   "andesite",
    <quark:world_stone_carved:2>    :   "andesite",
    <quark:world_stone_pavement:2>  :   "andesite",
    <rustic:andesite_pillar>        :   "andesite",

} as string[IItemStack];

    //  Adds tblocks to the chisel group and remove crafting table recipes.
for Item,Group in ChiselGroups {

    mods.chisel.Carving.addVariation( Group , Item );
    recipes.remove( Item ); 

}

/* - replacing with loop for item removal.
    //  Adds UB Smooth stone to Chisel group
mods.chisel.Carving.addVariation( "undergroundbiomes:igneous_brick_0"	,	<undergroundbiomes:igneous_stone:0> );
mods.chisel.Carving.addVariation( "undergroundbiomes:igneous_brick_1"	,	<undergroundbiomes:igneous_stone:1> );
mods.chisel.Carving.addVariation( "undergroundbiomes:igneous_brick_2"	,	<undergroundbiomes:igneous_stone:2> );
mods.chisel.Carving.addVariation( "undergroundbiomes:igneous_brick_3"	,	<undergroundbiomes:igneous_stone:3> );
mods.chisel.Carving.addVariation( "undergroundbiomes:igneous_brick_4"	,	<undergroundbiomes:igneous_stone:4> );
mods.chisel.Carving.addVariation( "undergroundbiomes:igneous_brick_5"	,	<undergroundbiomes:igneous_stone:5> );
mods.chisel.Carving.addVariation( "undergroundbiomes:igneous_brick_6"	,	<undergroundbiomes:igneous_stone:6> );
mods.chisel.Carving.addVariation( "undergroundbiomes:igneous_brick_7"	,	<undergroundbiomes:igneous_stone:7> );
mods.chisel.Carving.addVariation( "undergroundbiomes:metamorphic_brick_0"	,	<undergroundbiomes:metamorphic_stone:0> );
mods.chisel.Carving.addVariation( "undergroundbiomes:metamorphic_brick_1"	,	<undergroundbiomes:metamorphic_stone:1> );
mods.chisel.Carving.addVariation( "undergroundbiomes:metamorphic_brick_2"	,	<undergroundbiomes:metamorphic_stone:2> );
mods.chisel.Carving.addVariation( "undergroundbiomes:metamorphic_brick_3"	,	<undergroundbiomes:metamorphic_stone:3> );
mods.chisel.Carving.addVariation( "undergroundbiomes:metamorphic_brick_4"	,	<undergroundbiomes:metamorphic_stone:4> );
mods.chisel.Carving.addVariation( "undergroundbiomes:metamorphic_brick_5"	,	<undergroundbiomes:metamorphic_stone:5> );
mods.chisel.Carving.addVariation( "undergroundbiomes:metamorphic_brick_6"	,	<undergroundbiomes:metamorphic_stone:6> );
mods.chisel.Carving.addVariation( "undergroundbiomes:metamorphic_brick_7"	,	<undergroundbiomes:metamorphic_stone:7> );

    //  Quark Vertical stained planks to chisel group
mods.chisel.Carving.addVariation( "quark:stained_planks_0", <quark:vertical_stained_planks:0> );
mods.chisel.Carving.addVariation( "quark:stained_planks_1", <quark:vertical_stained_planks:1> );
mods.chisel.Carving.addVariation( "quark:stained_planks_2", <quark:vertical_stained_planks:2> );
mods.chisel.Carving.addVariation( "quark:stained_planks_3", <quark:vertical_stained_planks:3> );
mods.chisel.Carving.addVariation( "quark:stained_planks_4", <quark:vertical_stained_planks:4> );
mods.chisel.Carving.addVariation( "quark:stained_planks_5", <quark:vertical_stained_planks:5> );
mods.chisel.Carving.addVariation( "quark:stained_planks_6", <quark:vertical_stained_planks:6> );
mods.chisel.Carving.addVariation( "quark:stained_planks_7", <quark:vertical_stained_planks:7> );
mods.chisel.Carving.addVariation( "quark:stained_planks_8", <quark:vertical_stained_planks:8> );
mods.chisel.Carving.addVariation( "quark:stained_planks_9", <quark:vertical_stained_planks:9> );
mods.chisel.Carving.addVariation( "quark:stained_planks_10", <quark:vertical_stained_planks:10> );
mods.chisel.Carving.addVariation( "quark:stained_planks_11", <quark:vertical_stained_planks:11> );
mods.chisel.Carving.addVariation( "quark:stained_planks_12", <quark:vertical_stained_planks:12> );
mods.chisel.Carving.addVariation( "quark:stained_planks_13", <quark:vertical_stained_planks:13> );
mods.chisel.Carving.addVariation( "quark:stained_planks_14", <quark:vertical_stained_planks:14> );
mods.chisel.Carving.addVariation( "quark:stained_planks_15", <quark:vertical_stained_planks:15> );
*/


/*  - All chisel categories
advancedrocketry:planks_0
aluminum_scaffold
andesite
antiblock
astralsorcery:blockblackmarble_1
astralsorcery:blockmarble_1
basalt
biomesoplenty:dirt_0
biomesoplenty:dirt_1
biomesoplenty:dirt_2
biomesoplenty:planks_0_0
biomesoplenty:planks_0_1
biomesoplenty:planks_0_10
biomesoplenty:planks_0_11
biomesoplenty:planks_0_12
biomesoplenty:planks_0_13
biomesoplenty:planks_0_14
biomesoplenty:planks_0_15
biomesoplenty:planks_0_2
biomesoplenty:planks_0_3
biomesoplenty:planks_0_4
biomesoplenty:planks_0_5
biomesoplenty:planks_0_6
biomesoplenty:planks_0_7
biomesoplenty:planks_0_8
biomesoplenty:planks_0_9
biomesoplenty:white_sandstone_0
blockAluminum
blockBronze
blockCharcoal
blockCoal
blockCoalCoke
blockCobalt
blockCopper
blockDiamond
blockElectrum
blockEmerald
blockGold
blockInvar
blockIron
blockLapis
blockLead
blockNickel
blockPlatinum
blockSilver
blockSteel
blockTin
blockUranium
block_coal_coke
bloodMagic
bookshelf_acacia
bookshelf_birch
bookshelf_darkoak
bookshelf_jungle
bookshelf_oak
bookshelf_spruce
botania:biomestonea_10
botania:biomestonea_11
botania:biomestonea_12
botania:biomestonea_13
botania:biomestonea_14
botania:biomestonea_15
botania:biomestonea_8
botania:biomestonea_9
botania:biomestoneb_0
botania:biomestoneb_1
botania:biomestoneb_2
botania:biomestoneb_3
botania:biomestoneb_4
botania:biomestoneb_5
botania:biomestoneb_6
botania:biomestoneb_7
botania:dreamwood_1
botania:livingrock_1
botania:livingwood_1
botania:quartztypeblaze_0
botania:quartztypedark_0
botania:quartztypeelf_0
botania:quartztypelavender_0
botania:quartztypemana_0
botania:quartztypered_0
botania:quartztypesunny_0
bricks
brownstone
brownstone_tconstruct
carpet_black
carpet_blue
carpet_brown
carpet_cyan
carpet_gray
carpet_green
carpet_lightblue
carpet_lightgray
carpet_lime
carpet_magenta
carpet_orange
carpet_pink
carpet_purple
carpet_red
carpet_white
carpet_yellow
cloud
cobblestone
cobblestonemossy
concrete_black
concrete_blue
concrete_brown
concrete_cyan
concrete_gray
concrete_green
concrete_lightblue
concrete_lightgray
concrete_lime
concrete_magenta
concrete_orange
concrete_pink
concrete_purple
concrete_red
concrete_white
concrete_yellow
diorite
dirt
endstone
factory
futura
glass
glassdyedblack
glassdyedblue
glassdyedbrown
glassdyedcyan
glassdyedgray
glassdyedgreen
glassdyedlightblue
glassdyedlightgray
glassdyedlime
glassdyedmagenta
glassdyedorange
glassdyedpink
glassdyedpurple
glassdyedred
glassdyedwhite
glassdyedyellow
glasspane
glasspanedyedblack
glasspanedyedblue
glasspanedyedbrown
glasspanedyedcyan
glasspanedyedgray
glasspanedyedgreen
glasspanedyedlightblue
glasspanedyedlightgray
glasspanedyedlime
glasspanedyedmagenta
glasspanedyedorange
glasspanedyedpink
glasspanedyedpurple
glasspanedyedred
glasspanedyedwhite
glasspanedyedyellow
glowstone
granite
hardenedclay
ice
immersiveengineering:treated_wood_0
ironpane
jasper
laboratory
lavastone
limestone
marble
natura:nether_planks_0
natura:nether_planks_1
natura:nether_planks_2
natura:nether_planks_3
natura:overworld_planks_0
natura:overworld_planks_1
natura:overworld_planks_2
natura:overworld_planks_3
natura:overworld_planks_4
natura:overworld_planks_5
natura:overworld_planks_6
natura:overworld_planks_7
natura:overworld_planks_8
netherbrick
netherrack
obsidian
paper
planks-acacia
planks-birch
planks-dark-oak
planks-jungle
planks-oak
planks-spruce
prismarine
purpur
quark:biome_cobblestone_0
quark:biome_cobblestone_1
quark:biome_cobblestone_2
quark:biotite_block_0
quark:duskbound_block_0
quark:elder_prismarine_0
quark:midori_block_0
quark:soul_sandstone_0
quark:stained_planks_0
quark:stained_planks_1
quark:stained_planks_10
quark:stained_planks_11
quark:stained_planks_12
quark:stained_planks_13
quark:stained_planks_14
quark:stained_planks_15
quark:stained_planks_2
quark:stained_planks_3
quark:stained_planks_4
quark:stained_planks_5
quark:stained_planks_6
quark:stained_planks_7
quark:stained_planks_8
quark:stained_planks_9
quark:world_stone_bricks_6
quark:world_stone_bricks_7
quartz
redstone
reinforced_concrete
rustic:painted_wood_black_0
rustic:painted_wood_blue_0
rustic:painted_wood_brown_0
rustic:painted_wood_cyan_0
rustic:painted_wood_gray_0
rustic:painted_wood_green_0
rustic:painted_wood_light_blue_0
rustic:painted_wood_lime_0
rustic:painted_wood_magenta_0
rustic:painted_wood_orange_0
rustic:painted_wood_pink_0
rustic:painted_wood_purple_0
rustic:painted_wood_red_0
rustic:painted_wood_silver_0
rustic:painted_wood_white_0
rustic:painted_wood_yellow_0
rustic:planks_0
rustic:planks_1
rustic:slate_brick_0
sandstonered
sandstoneyellow
scorched_block
seared_block
slate
sooty_marble
steel_scaffold
stonebrick
techguns:camonet
techguns:camonettop
techguns:metalladder
techguns:metalpanel
techguns:neonlights
temple
terraqueous:planks_0
terraqueous:planks_1
terraqueous:planks_2
terraqueous:planks_3
terraqueous:planks_4
terraqueous:planks_5
terraqueous:planks_6
terraqueous:planks_7
terraqueous:planks_8
terraqueous:planks_9
treated_wood
tyrian
undergroundbiomes:igneous_brick_0
undergroundbiomes:igneous_brick_1
undergroundbiomes:igneous_brick_2
undergroundbiomes:igneous_brick_3
undergroundbiomes:igneous_brick_4
undergroundbiomes:igneous_brick_5
undergroundbiomes:igneous_brick_6
undergroundbiomes:igneous_brick_7
undergroundbiomes:igneous_cobble_0
undergroundbiomes:igneous_cobble_1
undergroundbiomes:igneous_cobble_2
undergroundbiomes:igneous_cobble_3
undergroundbiomes:igneous_cobble_4
undergroundbiomes:igneous_cobble_5
undergroundbiomes:igneous_cobble_6
undergroundbiomes:igneous_cobble_7
undergroundbiomes:igneous_sandstone_0
undergroundbiomes:igneous_sandstone_1
undergroundbiomes:igneous_sandstone_2
undergroundbiomes:igneous_sandstone_3
undergroundbiomes:igneous_sandstone_4
undergroundbiomes:igneous_sandstone_5
undergroundbiomes:igneous_sandstone_6
undergroundbiomes:igneous_sandstone_7
undergroundbiomes:metamorphic_brick_0
undergroundbiomes:metamorphic_brick_1
undergroundbiomes:metamorphic_brick_2
undergroundbiomes:metamorphic_brick_3
undergroundbiomes:metamorphic_brick_4
undergroundbiomes:metamorphic_brick_5
undergroundbiomes:metamorphic_brick_6
undergroundbiomes:metamorphic_brick_7
undergroundbiomes:metamorphic_cobble_0
undergroundbiomes:metamorphic_cobble_1
undergroundbiomes:metamorphic_cobble_2
undergroundbiomes:metamorphic_cobble_3
undergroundbiomes:metamorphic_cobble_4
undergroundbiomes:metamorphic_cobble_5
undergroundbiomes:metamorphic_cobble_6
undergroundbiomes:metamorphic_cobble_7
undergroundbiomes:metamorphic_sandstone_0
undergroundbiomes:metamorphic_sandstone_1
undergroundbiomes:metamorphic_sandstone_2
undergroundbiomes:metamorphic_sandstone_3
undergroundbiomes:metamorphic_sandstone_4
undergroundbiomes:metamorphic_sandstone_5
undergroundbiomes:metamorphic_sandstone_6
undergroundbiomes:metamorphic_sandstone_7
undergroundbiomes:sedimentary_sandstone_0
undergroundbiomes:sedimentary_sandstone_1
undergroundbiomes:sedimentary_sandstone_2
undergroundbiomes:sedimentary_sandstone_3
undergroundbiomes:sedimentary_sandstone_4
undergroundbiomes:sedimentary_sandstone_5
undergroundbiomes:sedimentary_sandstone_6
undergroundbiomes:sedimentary_sandstone_7
valentines
voidstone
waterstone
wool_black
wool_blue
wool_brown
wool_cyan
wool_gray
wool_green
wool_lightblue
wool_lightgray
wool_lime
wool_magenta
wool_orange
wool_pink
wool_purple
wool_red
wool_white
wool_yellow

*/