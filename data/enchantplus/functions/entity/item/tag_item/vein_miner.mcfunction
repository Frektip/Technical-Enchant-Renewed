#Detect if it also has auto smelt when using it
scoreboard players set #veinsmlt teplus.data 0
execute if entity @s[tag=teplus.item_smelt] run scoreboard players set #veinsmlt teplus.data 1

#Detect if it also has silk touch when using it
scoreboard players set #veinsilk teplus.data 0
execute if entity @s[tag=teplus.item_silk] run scoreboard players set #veinsilk teplus.data 1

tag @s add teplus.item_veinmin