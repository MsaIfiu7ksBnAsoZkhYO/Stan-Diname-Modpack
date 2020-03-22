//=====================================================================================================================================================================================================	
//	Import-ant things
//=====================================================================================================================================================================================================


import mods.artisanworktables.builder.RecipeBuilder;


//=====================================================================================================================================================================================================	
//	Revising Wood based recipes  This is going to be fun.
//=====================================================================================================================================================================================================




    //  Logs to Plank
for Item in GlobalWoodLog {
    if( 
	    !isNull( GlobalWoodLog[Item] ) 
	    &
	    !isNull( GlobalWoodPlank[Item] ) 
	) { 
    RecipeBuilder.get("carpenter")
        .setShapeless( [ GlobalWoodLog[Item] ] )
        .addTool( <ore:artisansHandsaw> , 1 )
        .addOutput( GlobalWoodPlank[Item] * 4 )
        .setExtraOutputOne( <ore:dustWood>.firstItem , 0.25 )
        .setExtraOutputTwo( <leatherworks:bark_oak> , 0.25 )
        .create();
    }
}

	//  Natura Bloodwood for simplicity sake.
RecipeBuilder.get("carpenter")
    .setShapeless( [ <ore:logBloodwood> ] )
    .addTool( <ore:artisansHandsaw> , 1 )
    .addOutput( <natura:nether_planks:1> * 4 )
    .setExtraOutputOne( <ore:dustWood>.firstItem , 0.25 )
    .setExtraOutputTwo( <leatherworks:bark_oak> , 0.25 )
    .create();

    //  Plank to Stairs
for Item in GlobalWoodStair {
    if( 
	    !isNull( GlobalWoodStair[Item] ) 
	    &
	    !isNull( GlobalWoodPlank[Item] ) 
	) { 
    RecipeBuilder.get("carpenter")
        .setShapeless( [ GlobalWoodPlank[Item] ] )
        .addTool( <ore:artisansHandsaw> , 1 )
        .addOutput( GlobalWoodStair[Item] )
        .setExtraOutputOne( <ore:dustWood>.firstItem , 0.25 )
        .create();
    }
}

    //  Stair to Slabs
for Item in GlobalWoodSlab {
    if( 
	    !isNull( GlobalWoodSlab[Item] ) 
	    &
	    !isNull( GlobalWoodStair[Item] ) 
	) { 
    RecipeBuilder.get("carpenter")
        .setShapeless( [ GlobalWoodStair[Item] ] )
        .addTool( <ore:artisansHandsaw> , 1 )
        .addOutput( GlobalWoodSlab[Item] * 2 )
        .setExtraOutputOne( <ore:dustWood>.firstItem , 0.25 )
        .create();
    }
}


    //  Fence Posts
for Item in GlobalWoodFence {
    if( 
	    !isNull( GlobalWoodFence[Item] ) 
	    &
	    !isNull( GlobalWoodPlank[Item] ) 
	) { 
        RecipeBuilder.get("carpenter")
            .setShaped([
                [GlobalWoodPlank[Item],    <ore:stickWood>,    GlobalWoodPlank[Item]  ],
                [GlobalWoodPlank[Item],    <ore:stickWood>,    GlobalWoodPlank[Item]  ]])
            .addTool( <ore:artisansHammer> , 1 )
            .addOutput( GlobalWoodFence[Item] * 4 )
            .create();
    }
}

    //  Fence Gates
for Item in GlobalWoodFenceGate {
    if( 
	    !isNull( GlobalWoodFenceGate[Item] ) 
	    &
	    !isNull( GlobalWoodPlank[Item] ) 
	) { 
        RecipeBuilder.get("carpenter")
            .setShaped([
                [<ore:stickWood>,   GlobalWoodPlank[Item], <ore:stickWood> ],
                [<ore:stickWood>,   GlobalWoodPlank[Item], <ore:stickWood> ]])
            .addTool( <ore:artisansHammer> , 1 )
            .addOutput( GlobalWoodFenceGate[Item] * 4 )
            .create();
    }
}

    //  Doors
for Item in GlobalWoodDoor {
    if( 
	    !isNull( GlobalWoodDoor[Item] ) 
	    &
	    !isNull( GlobalWoodPlank[Item] ) 
	) { 
        RecipeBuilder.get("carpenter")
            .setShaped([
                [GlobalWoodPlank[Item],    GlobalWoodPlank[Item]  ],
                [GlobalWoodPlank[Item],    GlobalWoodPlank[Item]  ],
                [GlobalWoodPlank[Item],    GlobalWoodPlank[Item]  ]])
            .addTool( <ore:artisansHammer> , 1 )
            .addOutput( GlobalWoodDoor[Item] * 3 )
            .create();
    }
}

    //  Trap Doors
for Item in GlobalWoodTrapDoor {
    if( 
	    !isNull( GlobalWoodTrapDoor[Item] ) 
	    &
	    !isNull( GlobalWoodPlank[Item] ) 
	) { 
        RecipeBuilder.get("carpenter")
            .setShaped([
                [GlobalWoodPlank[Item],    GlobalWoodPlank[Item],    GlobalWoodPlank[Item]  ],
                [GlobalWoodPlank[Item],    GlobalWoodPlank[Item],    GlobalWoodPlank[Item]  ]])
            .addTool( <ore:artisansHammer> , 1 )
            .addOutput( GlobalWoodTrapDoor[Item] * 2 )
            .create();
    }
}

    //  Chests
for Item in GlobalWoodChest {
    if( 
	    !isNull( GlobalWoodChest[Item] ) 
	    &
	    !isNull( GlobalWoodPlank[Item] ) 
	) { 
        RecipeBuilder.get("carpenter")
            .setShaped([
                [GlobalWoodPlank[Item], GlobalWoodPlank[Item],  GlobalWoodPlank[Item]   ],
                [GlobalWoodPlank[Item], null,                   GlobalWoodPlank[Item]   ],
                [GlobalWoodPlank[Item], GlobalWoodPlank[Item],  GlobalWoodPlank[Item]   ]])
            .addTool( <ore:artisansHammer> , 1 )
            .addOutput( GlobalWoodChest[Item] )
            .create();
    }
}

    //  Plain Oredicted Chest
RecipeBuilder.get("carpenter")
    .setShaped([
        [<ore:plankWood>,   <ore:plankWood>,    <ore:plankWood> ],
        [<ore:plankWood>,   <ore:stickWood>,    <ore:plankWood> ],
        [<ore:plankWood>,   <ore:plankWood>,    <ore:plankWood> ]])
    .addTool( <ore:artisansHammer> , 1 )
    .addOutput( <minecraft:chest> )
    .create();