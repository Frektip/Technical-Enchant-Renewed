# Giving back to the player the placed item
data remove storage teplus:tech_extract ChangedItems[0].Slot
scoreboard players operation %tcha.this_interaction_id tep.plid = @s tep.plid
execute as @a[distance=..50] if score %tcha.this_interaction_id tep.plid = @s tep.plid at @s run summon item ~ ~ ~ {Tags:["tcha.return"],Item:{id:"stick",Count:1b},PickupDelay:0}
data modify entity @e[type=item,tag=tcha.return,distance=..50,limit=1] Item set from storage teplus:tech_extract ChangedItems[0]