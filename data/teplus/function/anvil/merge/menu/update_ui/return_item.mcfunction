# This function Triggers when a player place an item in the UI
# We store the item in a storage, so we can use it to give it back again
data remove storage teplus:updates TAM.ChangedItems[0].Slot
execute unless data storage teplus:updates TAM.ChangedItems[0].components run data modify storage teplus:updates TAM.ChangedItems[0].components set value {}

# Check for the player that is using the technical anvil
scoreboard players operation #teplus.anvil.this_interaction_id teplus.player.id = @s teplus.player.id

# Give the item back directly on the player's cursor
execute as @a[distance=..10] if score #teplus.anvil.this_interaction_id teplus.player.id = @s teplus.player.id at @s run function teplus:utils/replace_in_cursor with storage teplus:updates TAM.ChangedItems[0]