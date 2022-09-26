#Special tag if the item is a hard block
scoreboard players set #hardblock teplus.data 0
tag @s[nbt={Item:{id:"minecraft:ancient_debris"}}] add teplus.item_minplus.hard
tag @s[nbt={Item:{id:"minecraft:obsidian"}}] add teplus.item_minplus.hard
tag @s[nbt={Item:{id:"minecraft:crying_obsidian"}}] add teplus.item_minplus.hard
execute if entity @s[tag=teplus.item_minplus.hard] run scoreboard players set #hardblock teplus.data 1

tag @s add teplus.item_minplus