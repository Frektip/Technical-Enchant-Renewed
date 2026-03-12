# @Context: The player is sneaking while holding an Experience Crystal in the mainhand or offhand
#  This advancement doesn't trigger if both hands are holding an Experience Crystal

advancement revoke @s only teplus:events/player_use_xp_crystal

# Select the correct slot
execute if data entity @s {SelectedItem:{components:{"minecraft:custom_data":{teplus:{id:"xp_crystal"}}}}} run return run function teplus:entity/player/using_xp_crystal/update_xp {path: "SelectedItem",slot:"mainhand"}
execute if data entity @s {equipment:{offhand:{components:{"minecraft:custom_data":{teplus:{id:"xp_crystal"}}}}}} run function teplus:entity/player/using_xp_crystal/update_xp {path: "equipment.offhand",slot:"offhand"}