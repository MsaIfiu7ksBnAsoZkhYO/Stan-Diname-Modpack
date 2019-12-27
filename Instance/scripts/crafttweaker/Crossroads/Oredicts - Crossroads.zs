//=====================================================================================================================================================================================================	
//	Import-ant things
//=====================================================================================================================================================================================================


import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;


//=====================================================================================================================================================================================================	
//	Remove Crossroads gears from gear oredicts otherwise Charset Immersion prevens you from placing these in the world for use in rotary power.
//=====================================================================================================================================================================================================


<ore:gearIron>.remove(<crossroads:gear_iron>);
<ore:gearGold>.remove(<crossroads:gear_gold>);
<ore:gearCopper>.remove(<crossroads:gear_copper>);
<ore:gearTin>.remove(<crossroads:gear_tin>);
<ore:gearBronze>.remove(<crossroads:gear_bronze>);
<ore:gearCopshowium>.remove(<crossroads:gear_copshowium>);
<ore:gearLead>.remove(<crossroads:gear_lead>);
<ore:gearSilver>.remove(<crossroads:gear_silver>);
<ore:gearNickel>.remove(<crossroads:gear_nickel>);
<ore:gearInvar>.remove(<crossroads:gear_invar>);
<ore:gearPlatinum>.remove(<crossroads:gear_platinum>);
<ore:gearElectrum>.remove(<crossroads:gear_electrum>);
