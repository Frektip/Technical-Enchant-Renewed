###################################################
# >@Context: running as the item that is being 
#            enchanted and has been thrown by the
#            player on the enchanting table
###################################################

### Debug Message ###
$tellraw @a[tag=teplus.debug_mode] [{"text":"TE+» ","color":"#65DAD4","bold":true},{"text":"(Enchanting): ","color":"#24E3F9","italic":true,"bold":false},{"text":$(tier),"color":"gray","italic":true,"bold":false},{"text":" setup detected","color":"gray","italic":true,"bold":false}]

# Set the enchanting tier rarity
$scoreboard players set #teplus.rarity teplus.data $(rarity)
scoreboard players set #teplus.bachamt teplus.base_charge 0
scoreboard players set #charge_remove teplus.base_charge 0

# Summon a temporal entity (placeholder)
execute at @e[type=marker,tag=teplus.enchanting_table,tag=!teplus.is_enchanting,distance=..1] run summon item_frame ~ ~ ~ {Silent:1b,Facing:1b,Invulnerable:1b,Fixed:1b,Tags:["teplus.enchanted"],Item:{id:"minecraft:air",count:1}}
tag @e[type=marker,tag=teplus.enchanting_table,tag=!teplus.is_enchanting,distance=..1] add teplus.is_enchanting
data modify entity @e[type=item_frame,tag=teplus.enchanted,tag=!teplus.loot_is_item,limit=1,distance=..1] Item set from entity @s Item

# Update item frame whether it's a book or another item
execute as @e[type=item_frame,tag=teplus.enchanted,distance=..1] run function teplus:enchant/item/placeholder/setup

# End the action, removing particles and xp levels based on the rarity
execute if score #teplus.rarity teplus.data matches 3 run function teplus:enchant/end { xp_remove: -3 }
execute if score #teplus.rarity teplus.data matches 2 run function teplus:enchant/end { xp_remove: -2 }
execute if score #teplus.rarity teplus.data matches 1 run function teplus:enchant/end { xp_remove: -1 }

# Kill the current item that's being enchanted
kill @s

# Remove the tag from the marker so it can be used again
tag @e[type=marker,tag=teplus.enchanting_table,distance=..1] remove teplus.is_enchanting