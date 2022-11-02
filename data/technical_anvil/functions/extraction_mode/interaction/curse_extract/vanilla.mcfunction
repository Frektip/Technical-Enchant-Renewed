###Debug Message###
tellraw @a[tag=teplus.pydbgm] ["",{"text":"TE+» ","color":"#65DAD4","bold":true},{"text":"(TechnAnvEx): ","color":"gold","italic":true,"bold":false},{"text":"Removing a vanilla curse","color":"gray","italic":true,"bold":false}]

playsound block.grindstone.use master @p ~ ~ ~ 1 0.7 1

execute if score #tslpm game.Opts matches 1 run particle dust_color_transition 1.000 0.020 0.020 1 1.000 0.690 0.510 ~ ~1 ~ 0.1 0.2 0.1 2 350
execute if score #tslpm game.Opts matches 1 run particle block anvil ~ ~1 ~ 0.3 0 0.3 1 150

##Clearing chest minecart items

# -Removing the first, second or third enchantment nbt from the input item
execute if data storage teplus:tech_extract ResultItem.tag.StoredEnchantments[{id:"minecraft:binding_curse"}] run data remove entity @s Items[{Slot:10b}].tag.Enchantments[{id:"minecraft:binding_curse"}]
execute if data storage teplus:tech_extract ResultItem.tag.StoredEnchantments[{id:"minecraft:vanishing_curse"}] run data remove entity @s Items[{Slot:10b}].tag.Enchantments[{id:"minecraft:vanishing_curse"}]

# -Chances to remove custom and vanilla Enchantments
execute if predicate enchantplus:random_chance/20 if data entity @s Items[{Slot:10b}].tag.Enchantments[0].id run data remove entity @s Items[{Slot:10b}].tag.Enchantments[0]
execute if predicate enchantplus:random_chance/10 if data entity @s Items[{Slot:10b}].tag.Enchantments[0].id run data remove entity @s Items[{Slot:10b}].tag.Enchantments[0]

# -For custom ones there is an extra step
execute if predicate enchantplus:random_chance/20 if data entity @s Items[{Slot:10b}].tag.CustomEnchantments[0].id run function technical_anvil:extraction_mode/interaction/curse_extract/custom_ench_remove
execute if predicate enchantplus:random_chance/10 if data entity @s Items[{Slot:10b}].tag.CustomEnchantments[0].id run function technical_anvil:extraction_mode/interaction/curse_extract/custom_ench_remove


###Debug Message###
tellraw @a[tag=teplus.pydbgm] ["",{"text":"TE+» ","color":"#65DAD4","bold":true},{"text":"(TechnAnvEx): ","color":"gold","italic":true,"bold":false},{"text":"Check conditions to maintain or remove the enchantment glint","color":"gray","italic":true,"bold":false}]
tellraw @a[tag=teplus.pydbgm] ["",{"text":"TE+» ","color":"#65DAD4","bold":true},{"text":"(TechnAnvEx): ","color":"gold","italic":true,"bold":false},{"text":"Updating the input item Lore","color":"gray","italic":true,"bold":false}]


# - In case it doesn't have the Enchantment glint but has custom
#   enchantments and curses, re-add it again
execute unless data entity @s Items[{Slot:10b}].tag.Enchantments[0].lvl if data entity @s Items[{Slot:10b}].tag.CustomEnchantments[0] run data modify entity @s Items[{Slot:10b}].tag.Enchantments set value [{}]
execute unless data entity @s Items[{Slot:10b}].tag.Enchantments[0].lvl if data entity @s Items[{Slot:10b}].tag.CustomCurse[0] run data modify entity @s Items[{Slot:10b}].tag.Enchantments set value [{}]


#Remove 1 single isolated core from the chest minecart
###Debug Message###
tellraw @a[tag=teplus.pydbgm] ["",{"text":"TE+» ","color":"#65DAD4","bold":true},{"text":"(TechnAnvEx): ","color":"gold","italic":true,"bold":false},{"text":"Removing 1 isolated core from the UI","color":"gray","italic":true,"bold":false}]

item modify entity @s container.16 technical_anvil:reduce_count1


data modify storage teplus:tech_extract CurrentItems set from entity @s Items
function technical_anvil:extraction_mode/menu/empty_sections
