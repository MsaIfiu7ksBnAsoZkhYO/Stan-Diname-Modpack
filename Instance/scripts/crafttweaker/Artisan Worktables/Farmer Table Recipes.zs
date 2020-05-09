//=====================================================================================================================================================================================================	
//	Import-ant things
//=====================================================================================================================================================================================================


import mods.artisanworktables.builder.RecipeBuilder;


//=====================================================================================================================================================================================================	
//	Fixing recipes for Inspirations glowing bush
//=====================================================================================================================================================================================================


recipes.remove(<inspirations:enlightened_bush:*>);

    //  Enlightened Bush
for Item,Output in GlobalInspirationsGlowingBush {
    var Input = GlobalLeafBlock[Item];
    RecipeBuilder.get("farmer")
        .setShapeless( [ Input,<ore:dustGlowstone> ] )
        .addOutput( Output )
        .create();
    }
    //  Enlightened Bush Red
for Item,Output in GlobalInspirationsGlowingBushRed {
    var Input = GlobalLeafBlock[Item];
    RecipeBuilder.get("farmer")
        .setShapeless( [ Input,<ore:dustGlowstone>,<ore:dyeRed> ] )
        .addOutput( Output )
        .create();
    }
    //  Enlightened Bush Green
for Item,Output in GlobalInspirationsGlowingBushGreen {
    var Input = GlobalLeafBlock[Item];
    RecipeBuilder.get("farmer")
        .setShapeless( [ Input,<ore:dustGlowstone>,<ore:dyeGreen> ] )
        .addOutput( Output )
        .create();
    }
    //  Enlightened Bush Blue
for Item,Output in GlobalInspirationsGlowingBushBlue {
    var Input = GlobalLeafBlock[Item];
    RecipeBuilder.get("farmer")
        .setShapeless( [ Input,<ore:dustGlowstone>,<ore:dyeBlue> ] )
        .addOutput( Output )
        .create();
    }
    //  Enlightened Bush Rainbow
for Item,Output in GlobalInspirationsGlowingBushRed {
    var Input = GlobalLeafBlock[Item];
    RecipeBuilder.get("farmer")
        .setShapeless( [ 
            Input,
            <ore:dustGlowstone>,
            <ore:dyeRed>,
            <ore:dyeGreen>,
            <ore:dyeBlue> 
        ] )
        .addOutput( Output )
        .create();
    }
    //  Enlightened Bush Christmas
for Item,Output in GlobalInspirationsGlowingBushChristmas {
    var Input = GlobalLeafBlock[Item];
    RecipeBuilder.get("farmer")
        .setShapeless( [ 
            Input,
            <ore:dustGlowstone>,
            <ore:dyeRed>,
            <ore:dyeGreen> 
        ] )
        .addOutput( Output )
        .create();
    }
