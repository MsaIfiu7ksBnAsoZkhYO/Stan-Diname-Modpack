//=====================================================================================================================================================================================================	
//	Adjust hardness of artisan tool stations so it's not a pain to collect them
//=====================================================================================================================================================================================================	


//=====================================================================================================================================================================================================	
//  These imports must be included to cast the arrays
//=====================================================================================================================================================================================================	


import crafttweaker.item.IItemStack;


//=====================================================================================================================================================================================================	
//	Let's make the magic happen
//=====================================================================================================================================================================================================


    //  Yeah, I know this is nothing fancy
<artisanworktables:toolbox>.hardness = 5.0;
<artisanworktables:mechanical_toolbox>.hardness = 5.0;

    //  But this is
val ArtisanTables = [
    <artisanworktables:workstation>,
    <artisanworktables:workshop>,
] as IItemStack[];

	//	Using Item Definitions so I can condense metadata values
for Item in ArtisanTables {
	var itemDef = Item.definition;
	for i in 0 to 15{
		print( "Artisan Tables: "~itemDef.makeStack(i).name );
		print( "Artisan Tables before: "~itemDef.makeStack(i).hardness );
		itemDef.makeStack(i).hardness = 4.0;
		print( "Artisan Tables after: "~itemDef.makeStack(i).hardness );
	}

}

