import crafttweaker.item.IItemStack;
import mods.dropt.Dropt;

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