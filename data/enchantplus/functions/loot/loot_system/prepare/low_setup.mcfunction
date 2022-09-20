### Debug Message ###
tellraw @a[tag=teplus.pydbgm] ["",{"text":"TE+» ","color":"#65DAD4","bold":true},{"text":"(Enchanting): ","color":"#24E3F9","italic":true,"bold":false},{"text":"Low Setup detected","color":"gray","italic":true,"bold":false}]

#Set the enchanting tier rarity
scoreboard players set #teplus.rarity teplus.data 1

#Summon a temporal entity
execute at @e[type=marker,tag=teplus.enchanting_table,tag=!is_enchanting,distance=..1] run summon item_frame ~ ~ ~ {Silent:1b,Facing:1b,Invulnerable:1b,Fixed:1b,Tags:["teplus.enchanted"],Item:{}}
tag @e[type=marker,tag=teplus.enchanting_table,tag=!is_enchanting,distance=..1] add is_enchanting
data modify entity @e[type=item_frame,tag=teplus.enchanted,tag=!teplus.loot_is_item,limit=1,distance=..1] Item set from entity @s Item

#Set the enchatment in the item frame
execute as @e[type=item_frame,tag=teplus.enchanted,distance=..1] run function enchantplus:loot/loot_system/prepare/item_type

#Grafical things
function enchantplus:loot/end/low
kill @s

#Remoe the tag from the marker so it can be used again
tag @e[type=marker,tag=teplus.enchanting_table,distance=..1] remove is_enchanting