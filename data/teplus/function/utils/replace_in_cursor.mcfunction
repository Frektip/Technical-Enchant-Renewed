#==================================================================#
# @Credits: System based on KawaMood's dynamic item replace package
#==================================================================#

# @Context: We are a player who has inserted an item in a UI slot
# We dynamically give the item back into the player's cursor
#
# For this, we use a storage that has the following arguments:
#   ${id}: The id of the item
#   ${components}: The components of the item
#   ${count}: The count of item


$loot replace entity @s player.cursor loot {pools:[{rolls:1,entries:[{type:"item",name:"$(id)",functions:[{function:"set_components",components:$(components)},{function:"set_count",count:$(count)}]}]}]}