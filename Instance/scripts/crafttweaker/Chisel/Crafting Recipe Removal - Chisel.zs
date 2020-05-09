//=====================================================================================================================================================================================================	
//  These imports must be included to cast the arrays
//=====================================================================================================================================================================================================	
#norun
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

//=====================================================================================================================================================================================================	
//  Remove crafting table recipes for blocks that can be obtained by a chisel
//=====================================================================================================================================================================================================	

var ChiselRemoval = [
    <minecraft:stonebrick>,
    <minecraft:stonebrick:2>,
    <minecraft:stonebrick:3>,

    <minecraft:stone:5>,
    <minecraft:stone:6>,
    <quark:world_stone_bricks:2>,
    <quark:world_stone_carved:2>,
    <quark:world_stone_pavement:2>,
    <rustic:andesite_pillar>,
] as IItemStack[];

for Item in ChiselRemoval {
    recipes.remove( Item );
}