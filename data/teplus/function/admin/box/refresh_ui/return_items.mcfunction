# This function Triggers when a player place an item in the UI
# We store the item in a storage, so we can use it to give it back again
data remove storage teplus:updates ChangedItems[0].Slot
execute unless data storage teplus:updates ChangedItems[0].components run data modify storage teplus:updates ChangedItems[0].components set value {}

# Check for the player that is using the technical anvil
scoreboard players operation #teplus.admin_box.this_interaction_id teplus.player.id = @s teplus.player.id

# Give the item back directly on the player's position by summoning the item
execute as @a[distance=..10] if score #teplus.admin_box.this_interaction_id teplus.player.id = @s teplus.player.id at @s run function teplus:utils/spawn_loot with storage teplus:updates ChangedItems[0]

# Loop until there are no more items to give back
scoreboard players remove $left_items teplus.anvil.value 1
execute if score $left_items teplus.anvil.value matches 1.. run data remove storage teplus:updates ChangedItems[0]
execute if score $left_items teplus.anvil.value matches 1.. run function teplus:admin/box/refresh_ui/return_items