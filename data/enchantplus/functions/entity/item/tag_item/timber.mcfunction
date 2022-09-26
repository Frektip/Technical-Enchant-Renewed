#Detect if it also has auto smelt when using it
scoreboard players set #timbsmlt teplus.data 0
execute if entity @s[tag=teplus.item_smelt] run scoreboard players set #timbsmlt teplus.data 1

tag @s add teplus.item_timb