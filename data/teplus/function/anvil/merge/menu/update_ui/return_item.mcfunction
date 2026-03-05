# This function Triggers when a player place an item in the UI
# We store the item in a storage, so we can use it to give it back again
data remove storage teplus:updates TAM.ChangedItems[0].Slot
scoreboard players operation #teplus.anvil.this_interaction_id teplus.player.id = @s teplus.player.id
execute as @a[distance=..10] if score #teplus.anvil.this_interaction_id teplus.player.id = @s teplus.player.id at @s run summon item ~ ~ ~ {Tags:["teplus.anvil.return"],Item:{id:"stick",Count:1b},PickupDelay:0}
data modify entity @e[type=item,tag=teplus.anvil.return,distance=..10,limit=1] Item set from storage teplus:updates TAM.ChangedItems[0]