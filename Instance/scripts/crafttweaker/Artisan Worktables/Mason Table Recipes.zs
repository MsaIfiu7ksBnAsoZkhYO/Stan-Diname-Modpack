//=====================================================================================================================================================================================================	
//	Import-ant things
//=====================================================================================================================================================================================================


import mods.artisanworktables.builder.RecipeBuilder;


//=====================================================================================================================================================================================================	
//	Revising Stone based recipes  This is going to be fun.
//=====================================================================================================================================================================================================

var ExtraOutput = <terraqueous:item_main:215>;


    //  Block to Stair
for Item,Output in GlobalStoneStair {
    var Input = GlobalStoneBlock[Item];
    recipes.remove( Input );   
    recipes.remove( Output );   
    RecipeBuilder.get("mason")
        .setShapeless( [ Input ] )
        .addTool( <ore:artisansStoneCutter> , 1 )
        .addOutput( Output )
        .setExtraOutputOne( ExtraOutput , 0.25 )
        .create();
    RecipeBuilder.get("mason")
        .setShaped([
          [Input, null,   null    ],
          [Input, Input,  null    ],
          [Input, Input,  Input   ]])
        .addTool( <ore:artisansHammer>, 6 )
        .addOutput( Output * 6 )
        .create();
    }
    //  Slabs from Stairs
for Item,Output in GlobalStoneSlab {
    var Input = GlobalStoneStair[Item];
    var InputB = GlobalStoneBlock[Item];
    
    recipes.remove( Output );
    RecipeBuilder.get("mason")
        .setShapeless( [ Input ] )
        .addTool( <ore:artisansStoneCutter> , 1 )
        .addOutput( Output )
        .setExtraOutputOne( ExtraOutput , 0.25 )
        .create();

    RecipeBuilder.get("mason")
        .setShaped([
          [InputB, InputB, InputB   ]])
        .addTool( <ore:artisansStoneCutter>, 3 )
        .addOutput( Output * 6 )
        .setExtraOutputOne( ExtraOutput , 0.75 )
        .create();
    }

    //  Walls
for Item,Output in GlobalStoneWall {
    var Input = GlobalStoneBlock[Item];
    recipes.remove( Output );   
    RecipeBuilder.get("mason")
          .setShaped([
            [Input, Input, Input],
            [Input, Input, Input]])
        .addTool( <ore:artisansHammer> , 1 )
        .addOutput( Output )
        .create();
    }