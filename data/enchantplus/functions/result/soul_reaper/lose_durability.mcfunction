# The vlaue in "#durability teplus.data" will additive when the item
#  loses durability, maning that it will damage the item by that number
#By default set it to 5 for netherite and diamond
scoreboard players set #durability teplus.data 5
#For iron materials set it to 3
execute if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:iron_hoe"}]}] run scoreboard players set #durability teplus.data 3
#For stone materials set it to 2
execute if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:stone_hoe"}]}] run scoreboard players set #durability teplus.data 1
#For other materials set it to 1
execute if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:golden_hoe"}]}] run scoreboard players set #durability teplus.data 1
execute if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:wooden_hoe"}]}] run scoreboard players set #durability teplus.data 1

#Check in case the item has Unbreaking enchantment
#Set the method to always true = "#lose.dura teplus.data 0"
scoreboard players set #lose.dura teplus.data 0
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{Enchantments:[{id:"minecraft:unbreaking"}]}}]}] run function enchantplus:durability_change/unbreaking/get/offhand
execute if score #lose.dura teplus.data matches 0 run function enchantplus:durability_change/offhand