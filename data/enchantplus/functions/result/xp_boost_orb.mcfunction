#get the Initial Value nbt from the orb
execute store result score @s teplus.xpbst run data get entity @s Value
scoreboard players operation @s teplus.xpbst *= #10const teplus.data

#Operations
scoreboard players operation #temp teplus.xpbst = #level teplus.xpbst

scoreboard players operation #temp teplus.xpbst *= #2const teplus.data
scoreboard players operation @s teplus.xpbst += #temp teplus.xpbst
scoreboard players operation @s teplus.xpbst -= #5const teplus.data

#Set the new Value nbt from the scoreboard
execute store result entity @s Value short 0.1 run scoreboard players get @s teplus.xpbst

#Tag so it don't accumulate more value xd
tag @s add teplus.orbench
