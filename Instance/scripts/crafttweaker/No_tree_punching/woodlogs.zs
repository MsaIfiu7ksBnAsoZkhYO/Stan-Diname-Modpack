//==============================================================
//modify recipe relating to NTP's wood crafting tweaks
//==============================================================	
	

	//	shortcut recipes require a saw	_______________________________________________________________________________________________________________________________________________________________________
recipes.removeByRecipeName("extrautils2:shortcut_chest");
recipes.addShaped(
  "Chest Shortcut", 
  <minecraft:chest>*4,
  [
    [	<ore:logWood>,  <ore:logWood>,	<ore:logWood>		],
    [<ore:logWood>,   <ore:toolSaw>,	<ore:logWood>		],
    [	<ore:logWood>,  <ore:logWood>,	<ore:logWood>		]
  ]
);

	//	Add oredicted chest recipe	_______________________________________________________________________________________________________________________________________________________________________
recipes.addShaped(
  "Vanilla Chest Fix recipe",
  <minecraft:chest>, 
  [
    [<ore:plankWood>, <ore:plankWood>,  <ore:plankWood> ],
    [<ore:plankWood>, null,             <ore:plankWood> ], 
    [<ore:plankWood>, <ore:plankWood>,  <ore:plankWood> ]
  ]
);

	//	Stick shortcut recipe requires saw	_______________________________________________________________________________________________________________________________________________________________________
recipes.removeByRecipeName("extrautils2:shortcut_stick");
recipes.addShaped(
  "Stick Shortcut", 
  <minecraft:stick>*16,
  [
    [	<ore:toolSaw>,  <ore:logWood>,	null		],
    [	null,           <ore:logWood>,	null		],
    [	null,           null,			      null		]
  ]
);

	//	Removing recipes that bypass the saw requirement	_______________________________________________________________________________________________________________________________________________________________________
recipes.removeByRecipeName("extrautils2:shortcut_hopper");
recipes.removeByRecipeName("atum:stick");