//=====================================================================================================================================================================================================	
//	Import-ant things
//=====================================================================================================================================================================================================


import mods.artisanworktables.builder.RecipeBuilder;


//=====================================================================================================================================================================================================	
//	Revising Stone based recipes  This is going to be fun.
//=====================================================================================================================================================================================================

var ExtraOutput = <terraqueous:item_main:215>;


//=====================================================================================================================================================================================================
//  Block to Stair
//=====================================================================================================================================================================================================


for Item,Output in GlobalStoneStair {

    var Input = GlobalStoneBlock[Item];

    recipes.remove( Input );   
    recipes.remove( Output );   
    
        //  Stone cutter style
    RecipeBuilder.get("mason")
        .setShapeless( [ Input ] )
        .addTool( <ore:artisansStoneCutter> , 1 )
        .addTool( <contenttweaker:stair_pattern> , 0 )
        .addOutput( Output )
        .setExtraOutputOne( ExtraOutput , 0.25 )
        .create();
    
        //  Vanilla Style
    RecipeBuilder.get("mason")
        .setShaped([
          [Input, null,   null    ],
          [Input, Input,  null    ],
          [Input, Input,  Input   ]])
        .addTool( <ore:artisansHammer>, 6 )
        .addOutput( Output * 6 )
        .create();

        //  Undo recipe
    RecipeBuilder.get( "mason" )
        .setShapeless([ Output, Output ])
        .addTool( <ore:artisansHammer>, 1 )
        .addOutput( Input * 2 )
        .create();

    }
    
    
//=====================================================================================================================================================================================================
//  Slabs from Stairs
//=====================================================================================================================================================================================================


for Item,Output in GlobalStoneSlab {

    var Input = GlobalStoneBlock[Item];

    recipes.remove( Output );
    
        //  Stone Cutter Style
    RecipeBuilder.get("mason")
        .setShapeless( [ Input ] )
        .addTool( <ore:artisansStoneCutter> , 1 )
        .addTool( <contenttweaker:slab_pattern> , 0 )
        .addOutput( Output )
        .setExtraOutputOne( ExtraOutput , 0.25 )
        .create();

    RecipeBuilder.get("mason")
        .setShaped([
          [Input, Input, Input   ] ])
        .addTool( <ore:artisansStoneCutter>, 3 )
        .addOutput( Output * 6 )
        .setExtraOutputOne( ExtraOutput , 0.75 )
        .create();

        //  Undo recipe
    RecipeBuilder.get( "mason" )
        .setShapeless([ Output, Output ])
        .addTool( <ore:artisansHammer>, 1 )
        .addOutput( Input )
        .create();

    }



//=====================================================================================================================================================================================================
//  Walls
//=====================================================================================================================================================================================================


for Item,Output in GlobalStoneWall {
    
    var Input = GlobalStoneBlock[Item];
    
        //  Stone Cutter Style
    recipes.remove( Output );   
        RecipeBuilder.get("mason")
        .setShapeless( [ Input ] )
        .addTool( <ore:artisansStoneCutter> , 1 )
        .addTool( <contenttweaker:fence_pattern> , 0 )
        .addOutput( Output )
        .setExtraOutputOne( ExtraOutput , 0.25 )
        .create();
    
        //  Vanilla Style
    RecipeBuilder.get("mason")
        .setShaped([
            [Input, Input, Input],
            [Input, Input, Input]])
        .addTool( <ore:artisansHammer> , 1 )
        .addOutput( Output )
        .create();

        //  Undo recipe
    RecipeBuilder.get( "mason" )
        .setShapeless([ Output, Output ])
        .addTool( <ore:artisansHammer>, 1 )
        .addOutput( Input * 2 )
        .create();

    }


//=====================================================================================================================================================================================================
//  Cauldrons
//=====================================================================================================================================================================================================


for Item,Output in GlobalStoneCauldron {
    var Input = GlobalStoneBlock[Item];
    recipes.remove( Output );   
    RecipeBuilder.get("mason")
    .setShaped([
        [Input, null, Input     ],
        [Input, null, Input     ],
        [Input, Input, Input    ]])
    .setFluid( <liquid:mortar> * 100 )
    .addTool( <ore:artisansTrowel>, 1 )
    .addOutput( Output )
    .create();

}