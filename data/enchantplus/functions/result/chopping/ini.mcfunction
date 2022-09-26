execute if score $Facing teplus.data matches 1..2 run function enchantplus:result/chopping/north_south

execute if score $Facing teplus.data matches 3..4 run function enchantplus:result/chopping/east_west

execute if score $Facing teplus.data matches 5..6 run function enchantplus:result/chopping/top_bot

execute if score #autsml Enchopts matches 0 run execute if entity @s[tag=teplus.item_smelt] as @e[type=item,distance=..2.5,nbt={Age:0s}] run function enchantplus:result/autosmelt