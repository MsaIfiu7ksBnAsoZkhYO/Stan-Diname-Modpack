//=====================================================================================================================================================================================================	
//These imports must be included to cast the arrays
//=====================================================================================================================================================================================================	


import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import mods.dropt.Dropt;


//=====================================================================================================================================================================================================	
//  Sticks from leaves as in new minecraft
//=====================================================================================================================================================================================================


Dropt.list("Leaves")
    .add(Dropt.rule()
        .matchBlocks([
            "minecraft:leaves:*",
            "minecraft:leaves2:*",
            "biomesoplenty:leaves_0:*",
            "biomesoplenty:leaves_1:*",
            "biomesoplenty:leaves_2:*",
            "biomesoplenty:leaves_3:*",
            "biomesoplenty:leaves_4:*",
            "biomesoplenty:leaves_5:*",
            "natura:overworld_leaves:*",
            "natura:overworld_leaves2:*",
            "quark:variant_leaves:*",
            "rustic:leaves:*",
            "rustic:leaves_apple:*",
            "terraqueous:foliage1:*",
            "terraqueous:foliage2:*",
            "terraqueous:foliage3:*",
            "terraqueous:foliage4:*",
            "terraqueous:foliage5:*",
        ])
        .replaceStrategy("ADD")
        .addDrop( Dropt.drop()
            .selector(Dropt.weight(30))
            .items([ <minecraft:stick> ])
        )
        .addDrop( Dropt.drop()
            .selector(Dropt.weight(70))
            .items([  ])
        )
    );


//=====================================================================================================================================================================================================	
//  Adjusting standard replacement drops for stone blocks
//=====================================================================================================================================================================================================


val BlockDrops = {
    "undergroundbiomes:sedimentary_stone:0" :   <notreepunching:cobblestone/limestone>,
    "undergroundbiomes:sedimentary_stone:1" :   <contenttweaker:chalk_cobble>,
    "undergroundbiomes:sedimentary_stone:2" :   <contenttweaker:shale_cobble>,
    "undergroundbiomes:sedimentary_stone:3" :   <contenttweaker:siltstone_cobble>,
    "undergroundbiomes:sedimentary_stone:4" :   <undergroundbiomes:lignite_coal>,
    "undergroundbiomes:sedimentary_stone:5" :   <contenttweaker:dolomite_cobble>,
    "undergroundbiomes:sedimentary_stone:6" :   <contenttweaker:greywacke_cobble>,
    "undergroundbiomes:sedimentary_stone:7" :   <contenttweaker:chert_cobble>,
    "minecraft:stone:5"                     :   <notreepunching:cobblestone/andesite>,
    "minecraft:stone:1"                     :   <notreepunching:cobblestone/granite>,
    "minecraft:stone:3"                     :   <notreepunching:cobblestone/diorite>,
    "quark:marble:0"                        :   <notreepunching:cobblestone/marble>,
    "quark:limestone:0"                     :   <notreepunching:cobblestone/limestone>,
    "quark:basalt:0"                        :   <notreepunching:cobblestone/basalt>,
    "rustic:slate:0"                        :   <notreepunching:cobblestone/slate>,
    "biomesoplenty:plant_0:11"              :   <biomesoplenty:plant_0:11>,
    "biomesoplenty:plant_0:12"              :   <biomesoplenty:plant_0:12>,
} as IItemStack[string];

for Block,Drop in BlockDrops {
    Dropt.list("Block_Drops")
        .add(Dropt.rule()
            .matchBlocks([ Block ])
            .addDrop(Dropt.drop()
                .items([ Drop ])
            )
        );
}



//=====================================================================================================================================================================================================	
//	Adjusting drops for Iron ores
//=====================================================================================================================================================================================================


val IronOres = {
    "rockhounding_oretiers:iron_ores:0" :   <rockhounding_oretiers:iron_pebbles>,
    "rockhounding_oretiers:iron_ores:1" :   <rockhounding_oretiers:iron_pebbles:1>,
    "rockhounding_oretiers:iron_ores:2" :   <rockhounding_oretiers:iron_pebbles:2>,
    "rockhounding_oretiers:iron_ores:3" :   <rockhounding_oretiers:iron_pebbles:3>,
    "rockhounding_oretiers:iron_ores:4" :   <rockhounding_oretiers:iron_pebbles:4>,
    "rockhounding_oretiers:iron_ores:5" :   <rockhounding_oretiers:iron_pebbles:5>,
    "rockhounding_oretiers:iron_ores:6" :   <rockhounding_oretiers:iron_pebbles:6>,
    "rockhounding_oretiers:iron_ores:7" :   <rockhounding_oretiers:iron_pebbles:7>,
} as IItemStack[string];

for Block,Drop in IronOres {

Dropt.list("Iron Ores")
    .add(Dropt.rule()
        .matchBlocks([ Block ])
        .addDrop(Dropt.drop()
            .items([ Drop ], Dropt.range(4, 4))
        )
        .addDrop(Dropt.drop()
            .selector(Dropt.weight(10), "ANY", 1)
            .items([ Drop ], Dropt.range(4, 8))
        )
        .addDrop(Dropt.drop()
            .selector(Dropt.weight(100), "ANY", 2)
            .items([ Drop ], Dropt.range(6, 12))
        )
        .addDrop(Dropt.drop()
            .selector(Dropt.weight(1000), "ANY", 3)
            .items([ Drop ], Dropt.range(8, 16))
        )
    );

}


//=====================================================================================================================================================================================================	
//  Make plant fiber drop when using a tcon knife.
//=====================================================================================================================================================================================================


for item in vanilla.seeds.seeds { vanilla.seeds.removeSeed(item.stack); }
Dropt.list("TallGrass")
    .add(Dropt.rule()
        .matchBlocks([
            "minecraft:tallgrass:*",
            "minecraft:double_plant:*",
            "terraqueous:tall_grass:*",
            "biomesoplenty:plant_0:*",
        ])
    .matchHarvester( Dropt.harvester()
        .type("PLAYER")
        .mainHand([ <totaltinkers:dagger:*> ])
    )
        .addDrop( Dropt.drop()
            .selector(Dropt.weight(75))
            .items([ <notreepunching:grass_fiber> ])
        )
        .addDrop( Dropt.drop()
            .selector(Dropt.weight(25))
            .items([  ])
        )
    );

//=====================================================================================================================================================================================================	
//  Make clay blocks drop the block instead of balls when using a shovel.  Reduce clay balls to 2 without a shovel
//=====================================================================================================================================================================================================


val ClayBlocks = {
    "minecraft:clay:0"                      :   <minecraft:clay>,
    "undergroundbiomes:igneous_clay:0"      :   <undergroundbiomes:igneous_clay>,
    "undergroundbiomes:igneous_clay:1"      :   <undergroundbiomes:igneous_clay:1>,
    "undergroundbiomes:igneous_clay:2"      :   <undergroundbiomes:igneous_clay:2>,
    "undergroundbiomes:igneous_clay:3"      :   <undergroundbiomes:igneous_clay:3>,
    "undergroundbiomes:igneous_clay:4"      :   <undergroundbiomes:igneous_clay:4>,
    "undergroundbiomes:igneous_clay:5"      :   <undergroundbiomes:igneous_clay:5>,
    "undergroundbiomes:igneous_clay:6"      :   <undergroundbiomes:igneous_clay:6>,
    "undergroundbiomes:igneous_clay:7"      :   <undergroundbiomes:igneous_clay:7>,
    "undergroundbiomes:metamorphic_clay:0"  :   <undergroundbiomes:metamorphic_clay>,
    "undergroundbiomes:metamorphic_clay:1"  :   <undergroundbiomes:metamorphic_clay:1>,   
    "undergroundbiomes:metamorphic_clay:2"  :   <undergroundbiomes:metamorphic_clay:2>,   
    "undergroundbiomes:metamorphic_clay:3"  :   <undergroundbiomes:metamorphic_clay:3>,   
    "undergroundbiomes:metamorphic_clay:4"  :   <undergroundbiomes:metamorphic_clay:4>,   
    "undergroundbiomes:metamorphic_clay:5"  :   <undergroundbiomes:metamorphic_clay:5>,   
    "undergroundbiomes:metamorphic_clay:6"  :   <undergroundbiomes:metamorphic_clay:6>,   
    "undergroundbiomes:metamorphic_clay:7"  :   <undergroundbiomes:metamorphic_clay:7>,   
    "undergroundbiomes:sedimentary_clay:0"  :   <undergroundbiomes:sedimentary_clay>,
    "undergroundbiomes:sedimentary_clay:1"  :   <undergroundbiomes:sedimentary_clay:1>,   
    "undergroundbiomes:sedimentary_clay:2"  :   <undergroundbiomes:sedimentary_clay:2>,   
    "undergroundbiomes:sedimentary_clay:3"  :   <undergroundbiomes:sedimentary_clay:3>,   
    "undergroundbiomes:sedimentary_clay:4"  :   <undergroundbiomes:sedimentary_clay:4>,   
    "undergroundbiomes:sedimentary_clay:5"  :   <undergroundbiomes:sedimentary_clay:5>,   
    "undergroundbiomes:sedimentary_clay:6"  :   <undergroundbiomes:sedimentary_clay:6>,   
    "undergroundbiomes:sedimentary_clay:7"  :   <undergroundbiomes:sedimentary_clay:7>,   
} as IItemStack[string];

for Block,Drop in ClayBlocks {

    Dropt.list("ClayBlocks")
        .add( Dropt.rule()
            .matchBlocks([ Block ])
        .matchHarvester( Dropt.harvester()
            .type("PLAYER")
            .mainHand("shovel;0;-1")
        )
            .addDrop( Dropt.drop()
                .items([ Drop ])
            )
        )
        .add(Dropt.rule()
            .matchBlocks([ Block ])
        .matchHarvester( Dropt.harvester()
            .type("PLAYER")
            .mainHand("BLACKLIST", [], "shovel;0;-1")
        )
            .addDrop( Dropt.drop()
                .items([ <minecraft:clay_ball> ], Dropt.range(2, 4))
            )
    );

}

//=====================================================================================================================================================================================================	
//  Get gravel layers when punching gravel without a shovel
//=====================================================================================================================================================================================================


val GravelHands = {
    "minecraft:gravel:0"                      :   <blocklayering:layer_gravel>,
    "undergroundbiomes:igneous_gravel:*"      :   <blocklayering:layer_gravel>,
    "undergroundbiomes:metamorphic_gravel:*"  :   <blocklayering:layer_gravel>,
    "undergroundbiomes:sedimentary_gravel:*"  :   <blocklayering:layer_gravel>,        
} as IItemStack[string];

for Block,Drop in GravelHands {

    Dropt.list("Gravel_Hands")
        .add(Dropt.rule()
            .matchBlocks([ Block ])
        .matchHarvester( Dropt.harvester()
            .type("PLAYER")
            .mainHand("BLACKLIST", [], "shovel;0;-1")
        )
            .addDrop( Dropt.drop()
                .selector(Dropt.weight(70))
                .items([ Drop ], Dropt.range(2, 4))
            )
            .addDrop(Dropt.drop()
                .selector(Dropt.weight(30))
                .items([ <minecraft:flint> ])
            )
    );

}


//=====================================================================================================================================================================================================	
//  Get Sand layers when punching sand without a shovel
//=====================================================================================================================================================================================================


val SandyHands = {
    "minecraft:sand:0"                      :   <blocklayering:layer_sand>,
    "minecraft:sand:1"                      :   <blocklayering:layer_red_sand>,
    "biomesoplenty:white_sand"              :   <blocklayering:layer_sand>,
    "undergroundbiomes:igneous_sand:*"      :   <blocklayering:layer_sand>,
    "undergroundbiomes:metamorphic_sand:*"  :   <blocklayering:layer_sand>,
    "undergroundbiomes:sedimentary_sand:*"  :   <blocklayering:layer_sand>,
} as IItemStack[string];

for Block,Drop in SandyHands {

    Dropt.list("Sandy_Hands")
        .add(Dropt.rule()
            .matchBlocks([ Block ])
        .matchHarvester( Dropt.harvester()
            .type("PLAYER")
            .mainHand("BLACKLIST", [], "shovel;0;-1")
        )
            .addDrop( Dropt.drop()
                .items([ Drop ], Dropt.range(2, 4))
            )
    );

}


//=====================================================================================================================================================================================================	
//  Get dirt layers when punching dirt without a shovel
//=====================================================================================================================================================================================================


val DirtyHands = {
    "minecraft:dirt:*"              :   <blocklayering:layer_dirt>,
    "minecraft:grass:*"             :   <blocklayering:layer_dirt>,
    "minecraft:grass_path:*"        :   <blocklayering:layer_dirt>,
    "minecraft:mycelium:*"          :   <blocklayering:layer_dirt>,
    "biomesoplenty:grass:*"         :   <blocklayering:layer_dirt>,
    "biomesoplenty:dirt:*"          :   <blocklayering:layer_dirt>,
    "biomesoplenty:grass_path:*"    :   <blocklayering:layer_dirt>,
    "saltmod:salt_grass"            :   <blocklayering:layer_dirt>,
    "randomthings:coloredgrass:*"   :   <blocklayering:layer_dirt>,
} as IItemStack[string];

for Block,Drop in DirtyHands {

    Dropt.list("Sandy_Hands")
        .add(Dropt.rule()
            .matchBlocks([ Block ])
        .matchHarvester( Dropt.harvester()
            .type("PLAYER")
            .mainHand("BLACKLIST", [], "shovel;0;-1")
        )
            .addDrop( Dropt.drop()
                .items( [ Drop ], Dropt.range(2, 4))
            )
    );

}



/* - Not necessary, but still an example
//Prevent Seagrass from dropping item enteties when not broken by a player to aleviate world gen lag.
val SeaGrasses = [
    <better_diving:seagrass:*>,
    <better_diving:seagrass_tall_bottom:*>,
    <better_diving:seagrass_tall_top:*>,
] as IItemStack[];

for Item in SeaGrasses {
    Dropt.list("SeaGrasses")
    .add(Dropt.rule()
        .matchDrops([Item])
        .matchHarvester(Dropt.harvester()
            .type("NON_PLAYER")
        )
        .addDrop(Dropt.drop())
    );
}

*/


/* - Examples from https://dropt.readthedocs.io/en/latest/

Dropt.list("test_list")

    // Set the list priority
    .priority(0)

    // When stone is broken, should replace with string with custom name.
    .add(Dropt.rule()
        .matchBlocks(["minecraft:stone"])
        .addDrop(Dropt.drop()
            .items([<minecraft:string>.withTag({display: {Name: "Theory"}})])
        )
    )

    // When cobblestone or <ore:sand> is dropped, should replace with leather.
    .add(Dropt.rule()
        .matchDrops([<minecraft:cobblestone>.or(<ore:sand>)])
        .addDrop(Dropt.drop()
            .items([<minecraft:leather>])
        )
    )

    // When dirt is dropped, should replace with leather 25% of the time and
    // string 75% of the time.
    .add(Dropt.rule()
        .matchDrops([<minecraft:dirt>])
        .addDrop(Dropt.drop()
            .selector(Dropt.weight(25))
            .items([<minecraft:leather>])
        )
        .addDrop(Dropt.drop()
            .selector(Dropt.weight(75))
            .items([<minecraft:string>])
        )
    );

//Prevend cobblestone from dropping at all.

Dropt.list("list_name")

  .add(Dropt.rule()
      .matchBlocks(["minecraft:stone", "minecraft:cobblestone"])
      .matchDrops([<minecraft:cobblestone>])
      .replaceStrategy("REPLACE_ITEMS")
      .addDrop(Dropt.drop())
  );


*/