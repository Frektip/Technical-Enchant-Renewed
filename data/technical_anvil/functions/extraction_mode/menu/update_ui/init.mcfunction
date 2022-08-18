# Giving back to the player the placed item if there's one
data modify storage teplus:tech_extract ChangedItems set from storage teplus:tech_extract CurrentUI
data remove storage teplus:tech_extract ChangedItems[{tag:{Teplus:{ui:1b}}}]
execute if data storage teplus:tech_extract ChangedItems[0].id run function technical_anvil:extraction_mode/menu/update_ui/give_player_back
execute if data storage teplus:tech_extract ChangedItems[1].id run function technical_anvil:extraction_mode/menu/update_ui/give_player_back1

# Update UI
data modify entity @s Items append from storage teplus:tech_anvil.ui Setup_extract[]