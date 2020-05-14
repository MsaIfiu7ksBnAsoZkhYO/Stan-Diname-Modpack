//=====================================================================================================================================================================================================	
//	Import-ant things
//=====================================================================================================================================================================================================


#priority 9001

import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;


//=====================================================================================================================================================================================================	
//	Add things to oredictionaries they should be in
//=====================================================================================================================================================================================================


	//	Bloodwood Logs to make the recipes look nicer and so I can unify the drops.	_______________________________________________________________________________________________________________________________________________________________________
<ore:logBloodwood>.add( <natura:nether_logs2:*> );

	//	Wooden pressure plates are wooden pressure plates after all	_______________________________________________________________________________________________________________________________________________________________________
<ore:pressurePlateWood>.addItems([
	<natura:maple_pressure_plate>,
	<natura:silverbell_pressure_plate>,
	<natura:amaranth_pressure_plate>,
	<natura:tiger_pressure_plate>,
	<natura:willow_pressure_plate>,
	<natura:eucalyptus_pressure_plate>,
	<natura:hopseed_pressure_plate>,
	<natura:sakura_pressure_plate>,
	<natura:redwood_pressure_plate>,
	<natura:ghostwood_pressure_plate>,
	<natura:bloodwood_pressure_plate>,
	<natura:fusewood_pressure_plate>,
	<natura:darkwood_pressure_plate>,
]);