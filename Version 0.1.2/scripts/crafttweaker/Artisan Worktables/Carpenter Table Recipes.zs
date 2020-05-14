//=====================================================================================================================================================================================================	
//	Import-ant things
//=====================================================================================================================================================================================================


import mods.artisanworktables.builder.RecipeBuilder;


//=====================================================================================================================================================================================================	
//	Revising Wood based recipes  This is going to be fun.
//=====================================================================================================================================================================================================


    //  Plain Oredict Chest
recipes.remove( <minecraft:chest> );
RecipeBuilder.get("carpenter")
    .setShaped([
        [<ore:plankWood>,   <ore:plankWood>,    <ore:plankWood> ],
        [<ore:plankWood>,   <ore:stickWood>,    <ore:plankWood> ],
        [<ore:plankWood>,   <ore:plankWood>,    <ore:plankWood> ]])
    .addTool( <ore:artisansHammer> , 1 )
    .addOutput( <minecraft:chest> )
    .create();

	//  Natura Bloodwood using oredictionary for simplicity sake.
RecipeBuilder.get("carpenter")
    .setShapeless( [ <ore:logBloodwood> ] )
    .addTool( <ore:artisansHandsaw> , 1 )
    .addOutput( <natura:nether_planks:1> * 4 )
    .setExtraOutputOne( <ore:dustWood>.firstItem , 0.25 )
    .setExtraOutputTwo( <leatherworks:bark_oak> , 0.25 )
    .create();


//=====================================================================================================================================================================================================	
//  Logs to Plank.  Backwards mapping 
//=====================================================================================================================================================================================================


for Item,Input in GlobalWoodLog {
    print("Focking Logwood Item: "~Item);
    print("Focking Logwood Item: "~Input.name);
    var Output = GlobalWoodPlank[Item];  
    print("Logwood Output: "~Output.name);  
    
    recipes.remove( Output );   
    RecipeBuilder.get("carpenter")
        .setShapeless( [ Input ] )
        .addTool( <ore:artisansHandsaw> , 1 )
        .addOutput( Output * 4 )
        .setExtraOutputOne( <ore:dustWood>.firstItem , 0.25 )
        .setExtraOutputTwo( <leatherworks:bark_oak> , 0.25 )
        .create();
    }


//=====================================================================================================================================================================================================	
//  Plank to Stairs
//=====================================================================================================================================================================================================


for Item,Output in GlobalWoodStair {
    
    print("Wood Stair Item: "~Item);
    print("Wood Stair Output: "~Output.name);
    var Input = GlobalWoodPlank[Item];
    print("Wood Stair Input: "~Input.name);  
    recipes.remove( Output );   
    
        //  Stone cutter style
    RecipeBuilder.get("carpenter")
        .setShapeless( [ Input ] )
        .addTool( <ore:artisansHandsaw> , 1 )
        .addTool( <contenttweaker:stair_pattern> , 0 )
        .addOutput( Output )
        .setExtraOutputOne( <ore:dustWood>.firstItem , 0.25 )
        .create();
    
        //  Vanilla style recipe
    RecipeBuilder.get("carpenter")
        .setShaped([
          [Input, null,   null    ],
          [Input, Input,  null    ],
          [Input, Input,  Input   ]])
        .addTool( <ore:artisansHammer>, 6 )
        .addOutput( Output * 6 )
        .create();
    
            //  Undo recipe
    RecipeBuilder.get( "carpenter" )
        .setShapeless([ Output, Output ])
        .addTool( <ore:artisansHammer>, 1 )
        .addOutput( Input * 2 )
        .create();

    }


//=====================================================================================================================================================================================================	
//  Stair to Slabs
//=====================================================================================================================================================================================================


for Item,Output in GlobalWoodSlab {
    
    print("Wood Slab Item: "~Item);
    print("Wood Slab Output: "~Output.name);
    var Input = GlobalWoodPlank[Item];
    print("Wood Slab Input: "~Input.name);  
    recipes.remove( Output );   
     
        //  Stone cutter style
    RecipeBuilder.get("carpenter")
        .setShapeless( [ Input ] )
        .addTool( <ore:artisansHandsaw> , 1 )
        .addTool( <contenttweaker:slab_pattern> , 0 )
        .addOutput( Output * 2 )
        .setExtraOutputOne( <ore:dustWood>.firstItem , 0.25 )
        .create();
  
        //  Vanilla style recipe
    RecipeBuilder.get("carpenter")
        .setShaped([
          [Input, Input, Input    ]])
        .addTool( <ore:artisansHandsaw>, 3 )
        .addOutput( Output * 6 )
        .setExtraOutputOne( <ore:dustWood>.firstItem , 0.75 )
        .create();
            //  Undo recipe
    RecipeBuilder.get( "carpenter" )
        .setShapeless([ Output, Output ])
        .addTool( <ore:artisansHammer>, 1 )
        .addOutput( Input )
        .create();
    
    }


//=====================================================================================================================================================================================================	
//  Fence Posts
//=====================================================================================================================================================================================================


for Item,Output in GlobalWoodFence {
    
    print("Wood Fence Item: "~Item);
    print("Wood Fence Output: "~Output.name);
    
    var Input = GlobalWoodPlank[Item];
    print("Wood Fencepost Input: "~Input.name);  
        recipes.remove( Output );  
        
            //  Stone cutter style
        RecipeBuilder.get("carpenter")
            .setShapeless( [ Input ] )
            .addTool( <ore:artisansHandsaw> , 1 )
            .addTool( <contenttweaker:fence_pattern> , 0 )
            .addOutput( Output )
            .setExtraOutputOne( <ore:dustWood>.firstItem , 0.25 )
            .create();

            //  Vanilla style recipe        
        RecipeBuilder.get("carpenter")
            .setShaped([
                [Input,    <ore:stickWood>,    Input  ],
                [Input,    <ore:stickWood>,    Input  ]])
            .addTool( <ore:artisansHammer> , 1 )
            .addOutput( Output * 4 )
            .create();
    
            //  Undo recipe
    RecipeBuilder.get( "carpenter" )
        .setShapeless([ Output, Output ])
        .addTool( <ore:artisansHammer>, 1 )
        .addOutput( Input * 2 )
        .create();
    
    }




//=====================================================================================================================================================================================================	
//  Fence Gates
//=====================================================================================================================================================================================================


for Item,Output in GlobalWoodFenceGate {
    print("Wood gate Item: "~Item);
    print("Wood gate Output: "~Output.name);
    var Input = GlobalWoodPlank[Item];
    var InputB = GlobalWoodFence[Item];
    print("Wood gate Input: "~Input.name);  
        
        recipes.remove( Output );  
        
            //  Stone cutter style
        RecipeBuilder.get("carpenter")
            .setShapeless( [ InputB ] )
            .addTool( <ore:artisansHammer> , 1 )
            .addOutput( Output )
            .create();
        
            //  Vanilla style recipe
        RecipeBuilder.get("carpenter")
            .setShaped([
                [<ore:stickWood>,   Input, <ore:stickWood> ],
                [<ore:stickWood>,   Input, <ore:stickWood> ]])
            .addTool( <ore:artisansHammer> , 1 )
            .addOutput( Output * 4 )
            .create();
    }
    
        
//=====================================================================================================================================================================================================	
//  Doors
//=====================================================================================================================================================================================================


for Item,Output in GlobalWoodDoor {
    var Input = GlobalWoodPlank[Item];
        recipes.remove( Output ); 
        RecipeBuilder.get("carpenter")
            .setShaped([
                [Input,    Input  ],
                [Input,    Input  ],
                [Input,    Input  ]])
            .addTool( <ore:artisansHammer> , 1 )
            .addOutput( Output * 3 )
            .create();
    }


//=====================================================================================================================================================================================================	
//  Trap Doors
//=====================================================================================================================================================================================================


for Item,Output in GlobalWoodTrapDoor {
    var Input = GlobalWoodPlank[Item];
        recipes.remove( Output ); 
        RecipeBuilder.get("carpenter")
            .setShaped([
                [Input,    Input,    Input  ],
                [Input,    Input,    Input  ]])
            .addTool( <ore:artisansHammer> , 1 )
            .addOutput( Output * 2 )
            .create();
    }
    
    
//=====================================================================================================================================================================================================	
//  Chests
//=====================================================================================================================================================================================================


for Item,Output in GlobalWoodChest {
    var Input = GlobalWoodPlank[Item];
        recipes.remove( Output ); 
        RecipeBuilder.get("carpenter")
            .setShaped([
                [Input, Input,  Input   ],
                [Input, null,   Input   ],
                [Input, Input,  Input   ]])
            .addTool( <ore:artisansHammer> , 1 )
            .addOutput( Output )
            .create();
    }
    

//=====================================================================================================================================================================================================	
//  Plank to Bookshelves
//=====================================================================================================================================================================================================


for Item,Output in GlobalWoodBookshelf {
    var Input = GlobalWoodPlank[Item];
    recipes.remove( Output );   
    RecipeBuilder.get("carpenter")
        .setShaped([
            [Input,         Input,      Input       ],
            [<ore:book>,    <ore:book>, <ore:book>  ],
            [Input,         Input,      Input       ]])
        .addTool( <ore:artisansHammer> , 1 )
        .addOutput( Output )
        .create();
    }


//=====================================================================================================================================================================================================	
//  Chairs
//=====================================================================================================================================================================================================


for Item,Output in GlobalWoodChair {
    var Input = GlobalWoodSlab[Item];
    var Input2 = GlobalWoodFence[Item];
    recipes.remove( Output );   
    RecipeBuilder.get( "carpenter" )
          .setShaped([
            [Input2,    null,  null,    null    ],
            [Input2,    null,  null,    null    ],
            [Input2,    Input, Input,   Input   ],
            [Input2,    null,  null,    Input2  ],
            [Input2,    null,  null,    Input2  ]])
        .addTool( <ore:artisansHammer> , 1 )
        .addOutput( Output )
        .create();
    }


//=====================================================================================================================================================================================================	
//  Tables
//=====================================================================================================================================================================================================


for Item,Output in GlobalWoodTable {
    var Input = GlobalWoodSlab[Item];
    var Input2 = GlobalWoodFence[Item];
    recipes.remove( Output );   
    RecipeBuilder.get( "carpenter" )
          .setShaped([
            [Input,     Input,  Input,  Input,  Input   ],
            [Input2,    null,   null,   null,   Input2  ],
            [Input2,    null,   null,   null,   Input2  ],
            [Input2,    null,   null,   null,   Input2  ],
            [Input2,    null,   null,   null,   Input2  ]])
        .addTool( <ore:artisansHammer> , 1 )
        .addOutput( Output )
        .create();
    }


//=====================================================================================================================================================================================================	
//  Boats
//=====================================================================================================================================================================================================


for Item,Output in GlobalWoodBoat {
    var Input = GlobalWoodPlank[Item];
    recipes.remove( Output );   
    RecipeBuilder.get( "carpenter" )
          .setShaped([
            [Input, null,   Input   ],
            [Input, Input,  Input   ]])
        .addTool( <ore:artisansHammer> , 1 )
        .addOutput( Output )
        .create();
    }


//=====================================================================================================================================================================================================	
//  Inspirations Bookshelves
//=====================================================================================================================================================================================================


for Item,Output in GlobalInspirationsBookshelf {
    var Input = GlobalWoodSlab[Item];
    recipes.remove( Output );   
    RecipeBuilder.get( "carpenter" )
          .setShaped([
            [Input, Input,  Input   ],
            [null,  null,   null    ],
            [Input, Input,  Input   ]])
        .addTool( <ore:artisansHammer> , 1 )
        .addOutput( Output )
        .create();
    }


//=====================================================================================================================================================================================================	
//  Inspirations Rainbow Bookshelves
//=====================================================================================================================================================================================================


for Item,Output in GlobalInspirationsBookshelfRainbow {
    var Input = GlobalWoodSlab[Item];
    recipes.remove( Output );   
    RecipeBuilder.get( "carpenter" )
          .setShaped([
            [Input,         Input,          Input           ],
            [<ore:dyeRed>,  <ore:dyeGreen>, <ore:dyeBlue>   ],
            [Input,         Input,          Input           ]])
        .addTool( <ore:artisansHammer> , 1 )
        .addOutput( Output )
        .create();
    }


//=====================================================================================================================================================================================================	
//  Inspirations Tome Bookshelves
//=====================================================================================================================================================================================================


for Item,Output in GlobalInspirationsBookshelfTomes {
    
    var Input = GlobalWoodSlab[Item];
    recipes.remove( Output );   
    RecipeBuilder.get( "carpenter" )
          .setShaped([
            [Input, Input,      Input   ],
            [null,  <ore:book>, null    ],
            [Input, Input,      Input   ]])
        .addTool( <ore:artisansHammer> , 1 )
        .addOutput( Output )
        .create();
    }


//=====================================================================================================================================================================================================	
//  Inspirations Ancient Bookselves
//=====================================================================================================================================================================================================


for Item,Output in GlobalInspirationsBookshelfAncient {

    var Input = GlobalWoodSlab[Item];
    recipes.remove( Output );   
    RecipeBuilder.get( "carpenter" )
          .setShaped([
            [Input,         Input,      Input       ],
            [<ore:paper>,   <ore:book>, <ore:paper> ],
            [Input,         Input,      Input       ]])
        .addTool( <ore:artisansHammer> , 1 )
        .addOutput( Output )
        .create();
    }


//=====================================================================================================================================================================================================	
//  Cauldrons
//=====================================================================================================================================================================================================


for Item,Output in GlobalWoodCauldron {

    var Input = GlobalWoodPlank[Item];
    recipes.remove( Output );   
    RecipeBuilder.get("carpenter")
    .setShaped([
        [Input, null, Input     ],
        [Input, null, Input     ],
        [Input, Input, Input    ]])
    .addTool( <ore:artisansHammer>, 1 )
    .addOutput( Output )
    .create();

}