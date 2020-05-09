//=====================================================================================================================================================================================================	
//  These imports must be included to cast the arrays
//=====================================================================================================================================================================================================	


#priority 9999

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.oredict.IOreDict;
import crafttweaker.liquid.ILiquidStack;


//=====================================================================================================================================================================================================	
//  Create Associative arrays for stone blocks
//=====================================================================================================================================================================================================	


    //May need to merge the cobble, smooth, and polished blocks all into one table so we don't have to multi table references for the different tables.


    //  Stone Blocks
global GlobalStoneBlock as IItemStack[string] = {
		minecraft_stone                     :   <minecraft:stone>,
        minecraft_cobblestone               :   <minecraft:cobblestone>,
        minecraft_stone_polished            :   <quark:polished_stone>,
        minecraft_stone_brick               :   <minecraft:stonebrick>,
        minecraft_granite                   :   <minecraft:stone:1>,
        minecraft_granite_polished          :   <minecraft:stone:2>,
        minecraft_granite_bricks            :   <quark:world_stone_bricks>,
        minecraft_diorite                   :   <minecraft:stone:3>,
        minecraft_diorite_polished          :   <minecraft:stone:4>,
        minecraft_diorite_bricks            :   <quark:world_stone_bricks:1>,
        minecraft_andesite                  :   <minecraft:stone:5>,
        minecraft_andesite_polished         :   <minecraft:stone:6>,
        minecraft_andesite_bricks           :   <quark:world_stone_bricks:2>,
        minecraft_brick                     :   <minecraft:brick_block>,
        minecraft_sandstone                 :   <minecraft:sandstone>,
        minecraft_sandstone_red             :   <minecraft:red_sandstone>,
        minecraft_quartz                    :   <minecraft:quartz_block>,
        minecraft_terracotta                :   <quark:hardened_clay_tiles>,
        minecraft_terracotta_white          :   <quark:stained_clay_tiles>,
        minecraft_terracotta_orange         :   <quark:stained_clay_tiles:1>,
        minecraft_terracotta_magenta        :   <quark:stained_clay_tiles:2>,
        minecraft_terracotta_lightblue      :   <quark:stained_clay_tiles:3>,
        minecraft_terracotta_yellow         :   <quark:stained_clay_tiles:4>,
        minecraft_terracotta_lime           :   <quark:stained_clay_tiles:5>,
        minecraft_terracotta_pink           :   <quark:stained_clay_tiles:6>,
        minecraft_terracotta_gray           :   <quark:stained_clay_tiles:7>,
        minecraft_terracotta_lightgray      :   <quark:stained_clay_tiles:8>,
        minecraft_terracotta_cyan           :   <quark:stained_clay_tiles:9>,
        minecraft_terracotta_purple         :   <quark:stained_clay_tiles:10>,
        minecraft_terracotta_blue           :   <quark:stained_clay_tiles:11>,
        minecraft_terracotta_brown          :   <quark:stained_clay_tiles:12>,
        minecraft_terracotta_green          :   <quark:stained_clay_tiles:13>,
        minecraft_terracotta_red            :   <quark:stained_clay_tiles:14>,
        minecraft_terracotta_black          :   <quark:stained_clay_tiles:15>,
        minecraft_prismarine                :   <minecraft:prismarine>,
        minecraft_prismarine_brick          :   <minecraft:prismarine:1>,
        minecraft_prismarine_dark           :   <minecraft:prismarine:2>,
        minecraft_purpur                    :   <minecraft:purpur_block>,
        minecraft_endstone_brick            :   <minecraft:end_bricks>,
        minecraft_nether_brick              :   <minecraft:nether_brick>,  
        minecraft_nether_brick_red          :   <minecraft:red_nether_brick>,

        tconstruct_seared_stone             :   <tconstruct:seared>,
        tconstruct_seared_cobblestone       :   <tconstruct:seared:1>,
        tconstruct_seared_paver             :   <tconstruct:seared:2>,
        tconstruct_seared_brick             :   <tconstruct:seared:3>,
        tconstruct_seared_brick_crack       :   <tconstruct:seared:4>,
        tconstruct_seared_fancy             :   <tconstruct:seared:5>,
        tconstruct_seared_square            :   <tconstruct:seared:6>,
        tconstruct_seared_road              :   <tconstruct:seared:7>,
        tconstruct_seared_creeper           :   <tconstruct:seared:8>,
        tconstruct_seared_triangle          :   <tconstruct:seared:9>,
        tconstruct_seared_small             :   <tconstruct:seared:10>,
        tconstruct_seared_tile              :   <tconstruct:seared:11>,

        tcomplement_scorched_stone          :   <tcomplement:scorched_block>,
        tcomplement_scorched_cobblestone    :   <tcomplement:scorched_block:1>,
        tcomplement_scorched_paver          :   <tcomplement:scorched_block:2>,
        tcomplement_scorched_brick          :   <tcomplement:scorched_block:3>,
        tcomplement_scorched_brick_crack    :   <tcomplement:scorched_block:4>,
        tcomplement_scorched_fancy          :   <tcomplement:scorched_block:5>,
        tcomplement_scorched_square         :   <tcomplement:scorched_block:6>,
        tcomplement_scorched_road           :   <tcomplement:scorched_block:7>,
        tcomplement_scorched_creeper        :   <tcomplement:scorched_block:8>,
        tcomplement_scorched_triangle       :   <tcomplement:scorched_block:9>,
        tcomplement_scorched_small          :   <tcomplement:scorched_block:10>,
        tcomplement_scorched_tile           :   <tcomplement:scorched_block:11>,


	};
    //  Stone Stairs
global GlobalStoneStair as IItemStack[string] = {
        minecraft_stone                     :   <quark:stone_stairs>,
        minecraft_cobblestone               :   <minecraft:stone_stairs:0>,
        minecraft_stone_brick               :   <minecraft:stone_brick_stairs>,
        minecraft_granite                   :   <quark:stone_granite_stairs>, 
        minecraft_granite_bricks            :   <quark:stone_granite_bricks_stairs>,
        minecraft_diorite                   :   <quark:stone_diorite_stairs>,
        minecraft_diorite_bricks            :   <quark:stone_diorite_bricks_stairs>,
        minecraft_andesite                  :   <quark:stone_andesite_stairs>,
        minecraft_andesite_bricks           :   <quark:stone_andesite_bricks_stairs>,
        minecraft_brick                     :   <minecraft:brick_stairs>,
        minecraft_sandstone                 :   <minecraft:sandstone_stairs>,
        minecraft_sandstone_red             :   <minecraft:red_sandstone_stairs>,
        minecraft_quartz                    :   <minecraft:quartz_stairs>,
        minecraft_terracotta                :   <quark:hardened_clay_tiles_stairs>,
        minecraft_terracotta_white          :   <quark:stained_clay_tiles_white_stairs>,
        minecraft_terracotta_orange         :   <quark:stained_clay_tiles_orange_stairs>,
        minecraft_terracotta_magenta        :   <quark:stained_clay_tiles_magenta_stairs>,
        minecraft_terracotta_lightblue      :   <quark:stained_clay_tiles_light_blue_stairs>,
        minecraft_terracotta_yellow         :   <quark:stained_clay_tiles_yellow_stairs>,
        minecraft_terracotta_lime           :   <quark:stained_clay_tiles_lime_stairs>,
        minecraft_terracotta_pink           :   <quark:stained_clay_tiles_pink_stairs>,
        minecraft_terracotta_gray           :   <quark:stained_clay_tiles_gray_stairs>,
        minecraft_terracotta_lightgray      :   <quark:stained_clay_tiles_silver_stairs>,
        minecraft_terracotta_cyan           :   <quark:stained_clay_tiles_cyan_stairs>,
        minecraft_terracotta_purple         :   <quark:stained_clay_tiles_purple_stairs>,
        minecraft_terracotta_blue           :   <quark:stained_clay_tiles_blue_stairs>,
        minecraft_terracotta_brown          :   <quark:stained_clay_tiles_brown_stairs>,
        minecraft_terracotta_green          :   <quark:stained_clay_tiles_green_stairs>,
        minecraft_terracotta_red            :   <quark:stained_clay_tiles_red_stairs>,
        minecraft_terracotta_black          :   <quark:stained_clay_tiles_black_stairs>,
        minecraft_prismarine                :   <quark:prismarine_stairs>,
        minecraft_prismarine_brick          :   <quark:prismarine_bricks_stairs>,
        minecraft_prismarine_dark           :   <quark:prismarine_dark_stairs>,
        minecraft_purpur                    :   <minecraft:purpur_stairs>,
        minecraft_endstone_brick            :   <quark:end_bricks_stairs>,
        minecraft_nether_brick              :   <minecraft:nether_brick_stairs>,
        minecraft_nether_brick_red          :   <quark:red_nether_brick_stairs>,

        tconstruct_seared_stone             :   <tconstruct:seared_stairs_stone>,
        tconstruct_seared_cobblestone       :   <tconstruct:seared_stairs_cobble>,
        tconstruct_seared_paver             :   <tconstruct:seared_stairs_paver>,
        tconstruct_seared_brick             :   <tconstruct:seared_stairs_brick>,
        tconstruct_seared_brick_crack       :   <tconstruct:seared_stairs_brick_cracked>,
        tconstruct_seared_fancy             :   <tconstruct:seared_stairs_brick_fancy>,
        tconstruct_seared_square            :   <tconstruct:seared_stairs_brick_square>,
        tconstruct_seared_road              :   <tconstruct:seared_stairs_road>,
        tconstruct_seared_creeper           :   <tconstruct:seared_stairs_creeper>,
        tconstruct_seared_triangle          :   <tconstruct:seared_stairs_brick_triangle>,
        tconstruct_seared_small             :   <tconstruct:seared_stairs_brick_small>,
        tconstruct_seared_tile              :   <tconstruct:seared_stairs_tile>,

        tcomplement_scorched_stone          :   <tcomplement:scorched_stairs_stone>,
        tcomplement_scorched_cobblestone    :   <tcomplement:scorched_stairs_cobble>,
        tcomplement_scorched_paver          :   <tcomplement:scorched_stairs_paver>,
        tcomplement_scorched_brick          :   <tcomplement:scorched_stairs_brick>,
        tcomplement_scorched_brick_crack    :   <tcomplement:scorched_stairs_brick_cracked>,
        tcomplement_scorched_fancy          :   <tcomplement:scorched_stairs_brick_fancy>,
        tcomplement_scorched_square         :   <tcomplement:scorched_stairs_brick_square>,
        tcomplement_scorched_road           :   <tcomplement:scorched_stairs_road>,
        tcomplement_scorched_creeper        :   <tcomplement:scorched_stairs_creeper>,
        tcomplement_scorched_triangle       :   <tcomplement:scorched_stairs_brick_triangle>,
        tcomplement_scorched_small          :   <tcomplement:scorched_stairs_brick_small>,
        tcomplement_scorched_tile           :   <tcomplement:scorched_stairs_tile>,
	};
    //  Stone Slabs
global GlobalStoneSlab as IItemStack[string] = {
        minecraft_stone                     :   <minecraft:stone_slab>,
        minecraft_cobblestone               :   <minecraft:stone_slab:3>,
        minecraft_stone_brick               :   <minecraft:stone_slab:5>,
        minecraft_granite                   :   <quark:stone_granite_slab>,
        minecraft_granite_bricks            :   <quark:stone_granite_bricks_slab>,
        minecraft_diorite                   :   <quark:stone_diorite_slab>,
        minecraft_diorite_bricks            :   <quark:stone_diorite_bricks_slab>,
        minecraft_andesite                  :   <quark:stone_andesite_slab>,
        minecraft_andesite_bricks           :   <quark:stone_andesite_bricks_slab>,
        minecraft_brick                     :   <minecraft:stone_slab:4>,
        minecraft_sandstone                 :   <minecraft:stone_slab:1>,
        minecraft_sandstone_red             :   <minecraft:stone_slab2>,
        minecraft_quartz                    :   <minecraft:stone_slab:7>,
        minecraft_terracotta                :   <quark:hardened_clay_tiles_slab>,
        minecraft_terracotta_white          :   <quark:stained_clay_tiles_white_slab>,
        minecraft_terracotta_orange         :   <quark:stained_clay_tiles_orange_slab>,
        minecraft_terracotta_magenta        :   <quark:stained_clay_tiles_magenta_slab>,
        minecraft_terracotta_lightblue      :   <quark:stained_clay_tiles_light_blue_slab>,
        minecraft_terracotta_yellow         :   <quark:stained_clay_tiles_yellow_slab>,
        minecraft_terracotta_lime           :   <quark:stained_clay_tiles_lime_slab>,
        minecraft_terracotta_pink           :   <quark:stained_clay_tiles_pink_slab>,
        minecraft_terracotta_gray           :   <quark:stained_clay_tiles_gray_slab>,
        minecraft_terracotta_lightgray      :   <quark:stained_clay_tiles_silver_slab>,
        minecraft_terracotta_cyan           :   <quark:stained_clay_tiles_cyan_slab>,
        minecraft_terracotta_purple         :   <quark:stained_clay_tiles_purple_slab>,
        minecraft_terracotta_blue           :   <quark:stained_clay_tiles_blue_slab>,
        minecraft_terracotta_brown          :   <quark:stained_clay_tiles_brown_slab>,
        minecraft_terracotta_green          :   <quark:stained_clay_tiles_green_slab>,
        minecraft_terracotta_red            :   <quark:stained_clay_tiles_red_slab>,
        minecraft_terracotta_black          :   <quark:stained_clay_tiles_black_slab>,
        minecraft_prismarine                :   <quark:prismarine_slab>,
        minecraft_prismarine_brick          :   <quark:prismarine_bricks_slab>,
        minecraft_prismarine_dark           :   <quark:prismarine_dark_slab>,
        minecraft_purpur                    :   <minecraft:purpur_slab>,
        minecraft_endstone_brick            :   <quark:end_bricks_slab>,
        minecraft_nether_brick              :   <minecraft:stone_slab:6>,
        minecraft_nether_brick_red          :   <quark:red_nether_brick_slab>,

        tconstruct_seared_stone             :   <tconstruct:seared_slab>,
        tconstruct_seared_cobblestone       :   <tconstruct:seared_slab:1>,
        tconstruct_seared_paver             :   <tconstruct:seared_slab:2>,
        tconstruct_seared_brick             :   <tconstruct:seared_slab:3>,
        tconstruct_seared_brick_crack       :   <tconstruct:seared_slab:4>,
        tconstruct_seared_fancy             :   <tconstruct:seared_slab:5>,
        tconstruct_seared_square            :   <tconstruct:seared_slab:6>,
        tconstruct_seared_road              :   <tconstruct:seared_slab:7>,
        tconstruct_seared_creeper           :   <tconstruct:seared_slab2>,
        tconstruct_seared_triangle          :   <tconstruct:seared_slab2:1>,
        tconstruct_seared_small             :   <tconstruct:seared_slab2:2>,
        tconstruct_seared_tile              :   <tconstruct:seared_slab2:3>,

        tcomplement_scorched_stone          :    <tcomplement:scorched_slab>,
        tcomplement_scorched_cobblestone    :    <tcomplement:scorched_slab:1>,
        tcomplement_scorched_paver          :    <tcomplement:scorched_slab:2>,
        tcomplement_scorched_brick          :    <tcomplement:scorched_slab:3>,
        tcomplement_scorched_brick_crack    :    <tcomplement:scorched_slab:4>,
        tcomplement_scorched_fancy          :    <tcomplement:scorched_slab:5>,
        tcomplement_scorched_square         :    <tcomplement:scorched_slab:6>,
        tcomplement_scorched_road           :    <tcomplement:scorched_slab:7>,
        tcomplement_scorched_creeper        :    <tcomplement:scorched_slab2>,
        tcomplement_scorched_triangle       :    <tcomplement:scorched_slab2:1>,
        tcomplement_scorched_small          :    <tcomplement:scorched_slab2:2>,
        tcomplement_scorched_tile           :    <tcomplement:scorched_slab2:3>,

	};
    //  Stone Walls
global GlobalStoneWall as IItemStack[string] = {
		minecraft_stone         :   <quark:stone_wall>,
        minecraft_cobblestone   :   <minecraft:cobblestone_wall>,
        minecraft_granite       :   <quark:stone_granite_wall>,
	};
    //  Stone Pressure Plates
global GlobalStonePressurePlate as IItemStack[string] = {
		minecraft_stone  :   <minecraft:stone_pressure_plate>,
	};
    //  Stone Buttons
global GlobalStoneButton as IItemStack[string] = {
		minecraft_stone         :   <minecraft:stone_button>,
	};
    //  Stone Cauldrons
global GlobalStoneCauldron as IItemStack[string] = {
		minecraft_stone         :   <morecauldrons:stone_cauldron>,
        minecraft_cobblestone   :   <morecauldrons:cobble_cauldron>,
        minecraft_granite       :   <morecauldrons:granite_cauldron>,
	};