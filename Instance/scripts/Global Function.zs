//=====================================================================================================================================================================================================	
//	Global Functions go here.
//=====================================================================================================================================================================================================	


#priority 9995


//=====================================================================================================================================================================================================	
//	These imports must be included to cast the arrays
//=====================================================================================================================================================================================================	


import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.oredict.IOreDict;


//=====================================================================================================================================================================================================	
//	Function for recieving the necessary oredictionary entries.
//=====================================================================================================================================================================================================	
//  The Full Oredictionary method Takes longer to load, so it should only be used for develpment.

	//	Using the Full Oredictionary dynamic reference	_______________________________________________________________________________________________________________________________________________________________________
global GlobalGimmeOreDict as function(string, string)IOreDictEntry = function (Part as string, Material as string) as IOreDictEntry {
    return oreDict[Part~Material];
};


/*
    //	Using the predefined Global Tables system	_______________________________________________________________________________________________________________________________________________________________________
global GlobalGimmeOreDict as function(string, string)IOreDictEntry = function (Part as string, Material as string) as IOreDictEntry {
        //  Will need to create an entry for each global table....
    if (Part == "ingot" ) {return GlobalIngot[Material];}
    if (Part == "ore" ) {return GlobalOreBlock[Material];}
        //  Has to return an oredictionary entry or else it will error.
    return(<ore:dirt>);
};
*/
