//=====================================================================================================================================================================================================	
//  This script reduces pack loading times by removing all recipes from the crafting table and moving them to the basic Artisan Worktable
//  The Tconstruct smeltery scans through EVERY crafting table recipe looking for recipes that include things it has a melting recipe for and create 
//  a melting recipe for the output item.  This is why it can melt things like iron tools and armors.
//  While nice, that equates to about 1 to 3 minutes of additional loading times during startup for large packs getting even worse the more recipes there are.
//=====================================================================================================================================================================================================


//=====================================================================================================================================================================================================	
//  Import-ant Things
//=====================================================================================================================================================================================================


#norun
#priority 9998

import crafttweaker.item.IItemStack;
import crafttweaker.recipes.ICraftingRecipe;
import mods.artisanworktables.builder.RecipeBuilder;
import mods.artisanworktables.builder.Copy;


//=====================================================================================================================================================================================================	
//	Building the tables to work with recipes better
//=====================================================================================================================================================================================================


    //  Predefine Associative Array with the "recipe name" as the KEY and the ICraftingRecipe as the VALUE
var AllCraftingRecipes = {} as ICraftingRecipe[string];
 
    //  Add All crafting table recipes to the Associative Array defined above.
for CraftingRecipe in recipes.all {
    //AllCraftingRecipes[ CraftingRecipe.fullResourceDomain ] = CraftingRecipe;
}
 
    //  Predefine the Exceptions Associative Array the same format as the All recipes table.
var AllRecipeExceptions = {} as ICraftingRecipe[string];
 
    // Format the GlobalExceptionRecipeOutputs into an Associative Array.  Filters out Null recipe values
for Item in GlobalExceptionRecipeOutputs {
    if !isNull(Item) {  
        for CraftingRecipes in recipes.getRecipesFor( Item ) {
            if !(isNull(CraftingRecipes)) {
                AllRecipeExceptions[ CraftingRecipes.fullResourceDomain ] = CraftingRecipes;
            }
        }
    }
}

    // Adds in the values from the outright removal list.
for Item in GlobalRemovalRecipeOutputs {
    if !isNull(Item) {  
        for CraftingRecipes in recipes.getRecipesFor( Item ) {
            if !(isNull(CraftingRecipes)) {
                AllRecipeExceptions[ CraftingRecipes.fullResourceDomain ] = CraftingRecipes;
            }
        }
    }
}


    // Adds in the values from the Global wood Itemstack lists
for Name,Item in GlobalWoodPlank {
    if !isNull(Item) {  
        for CraftingRecipes in recipes.getRecipesFor( Item ) {
            if !(isNull(CraftingRecipes)) {
                AllRecipeExceptions[ CraftingRecipes.fullResourceDomain ] = CraftingRecipes;
            }
        }
    }
}

for Name,Item in GlobalWoodSlab {
    if !isNull(Item) {  
        for CraftingRecipes in recipes.getRecipesFor( Item ) {
            if !(isNull(CraftingRecipes)) {
                AllRecipeExceptions[ CraftingRecipes.fullResourceDomain ] = CraftingRecipes;
            }
        }
    }
}

for Name,Item in GlobalWoodStair {
    if !isNull(Item) {  
        for CraftingRecipes in recipes.getRecipesFor( Item ) {
            if !(isNull(CraftingRecipes)) {
                AllRecipeExceptions[ CraftingRecipes.fullResourceDomain ] = CraftingRecipes;
            }
        }
    }
}

for Name,Item in GlobalWoodFence {
    if !isNull(Item) {  
        for CraftingRecipes in recipes.getRecipesFor( Item ) {
            if !(isNull(CraftingRecipes)) {
                AllRecipeExceptions[ CraftingRecipes.fullResourceDomain ] = CraftingRecipes;
            }
        }
    }
}

for Name,Item in GlobalWoodFenceGate {
    if !isNull(Item) {  
        for CraftingRecipes in recipes.getRecipesFor( Item ) {
            if !(isNull(CraftingRecipes)) {
                AllRecipeExceptions[ CraftingRecipes.fullResourceDomain ] = CraftingRecipes;
            }
        }
    }
}

for Name,Item in GlobalWoodDoor {
    if !isNull(Item) {  
        for CraftingRecipes in recipes.getRecipesFor( Item ) {
            if !(isNull(CraftingRecipes)) {
                AllRecipeExceptions[ CraftingRecipes.fullResourceDomain ] = CraftingRecipes;
            }
        }
    }
}

for Name,Item in GlobalWoodTrapDoor {
    if !isNull(Item) {  
        for CraftingRecipes in recipes.getRecipesFor( Item ) {
            if !(isNull(CraftingRecipes)) {
                AllRecipeExceptions[ CraftingRecipes.fullResourceDomain ] = CraftingRecipes;
            }
        }
    }
}

 
    //Add the recipe names to the exception list too.  Filters out Null value recipe names
for Item in GlobalExceptionRecipeNames {

    if !(isNull(AllCraftingRecipes[ Item ])) {
        AllRecipeExceptions[ Item ] = AllCraftingRecipes[ Item ];
    }

}



//=====================================================================================================================================================================================================	
//	Move all crafting table recipes to artisan worktable
//=====================================================================================================================================================================================================


	//	I love Loops.  :D	_______________________________________________________________________________________________________________________________________________________________________
for CraftingRecipe in AllRecipeExceptions {

    //  Making this so it only removes the recipes in the excetions list instead of everything globally.
recipes.removeByRecipeName(CraftingRecipe);

/* - Disabling this because it's too destructive to gameplay.
        //  This isNull will return TRUE when a recipe is not an exception and then add the item to the artisan table.
    if ( isNull( AllRecipeExceptions[CraftingRecipe] ) ) {
        RecipeBuilder.get("basic")
            .setName( "ArtsyFartsy"~CraftingRecipe )
            .setCopy( Copy.byName(CraftingRecipe ) )
            .create();
    
    } 

*/

}

    //  Get this nonsense out of my Load times!
//recipes.removeAll();


/* - Old method
	//	I love Loops.  :D	_______________________________________________________________________________________________________________________________________________________________________
for Recipes in recipes.all {
    if (Recipes.fullResourceDomain == )
    RecipeBuilder.get("basic")
        .setName( "ArtsyFartsy"~Recipes.fullResourceDomain )
        .setCopy(
            Copy.byName(Recipes.fullResourceDomain) 
        )
        .create();
}

recipes.removeAll();

*/