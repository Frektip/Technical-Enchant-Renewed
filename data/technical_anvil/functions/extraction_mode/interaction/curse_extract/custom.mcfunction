###Debug Message###
tellraw @a[tag=teplus.pydbgm] ["",{"text":"TE+» ","color":"#65DAD4","bold":true},{"text":"(TechnAnvEx): ","color":"gold","italic":true,"bold":false},{"text":"Copying the Lore from the input item","color":"gray","italic":true,"bold":false}]
tellraw @a[tag=teplus.pydbgm] ["",{"text":"TE+» ","color":"#65DAD4","bold":true},{"text":"(TechnAnvEx): ","color":"gold","italic":true,"bold":false},{"text":"Removing the first nbt curse","color":"gray","italic":true,"bold":false}]

playsound block.grindstone.use master @p ~ ~ ~ 1 0.7 1

execute if score #tslpm game.Opts matches 1 run particle dust_color_transition 1.000 0.020 0.020 1 1.000 0.690 0.510 ~ ~1 ~ 0.1 0.2 0.1 2 350
execute if score #tslpm game.Opts matches 1 run particle block anvil ~ ~1 ~ 0.3 0 0.3 1 150

##Clearing chest minecart items
# -Copy the input item Lore and remove ONLY the custom enchantment Lore Part
data modify storage teplus:item_lore ExtractLore set from entity @s Items[{Slot:10b}].tag.display.Lore
function #technical_anvil:extraction_mode/remove_custom_lore

# -Removing the first custom curse nbt from the input item
execute if data entity @s Items[{Slot:10b}].tag.CustomCurse[0] run function technical_anvil:extraction_mode/interaction/curse_extract/remove_curse

# -Chances to remove custom and vanilla Enchantments
execute if predicate enchantplus:random_chance/20 if data entity @s Items[{Slot:10b}].tag.Enchantments[0].id run data remove entity @s Items[{Slot:10b}].tag.Enchantments[0]
execute if predicate enchantplus:random_chance/10 if data entity @s Items[{Slot:10b}].tag.Enchantments[0].id run data remove entity @s Items[{Slot:10b}].tag.Enchantments[0]

execute if predicate enchantplus:random_chance/20 if data entity @s Items[{Slot:10b}].tag.CustomEnchantments[0].id run function technical_anvil:extraction_mode/interaction/curse_extract/custom_ench_remove
execute if predicate enchantplus:random_chance/10 if data entity @s Items[{Slot:10b}].tag.CustomEnchantments[0].id run function technical_anvil:extraction_mode/interaction/curse_extract/custom_ench_remove

###Debug Message###
tellraw @a[tag=teplus.pydbgm] ["",{"text":"TE+» ","color":"#65DAD4","bold":true},{"text":"(TechnAnvEx): ","color":"gold","italic":true,"bold":false},{"text":"Check conditions to maintain or remove the enchantment glint","color":"gray","italic":true,"bold":false}]
tellraw @a[tag=teplus.pydbgm] ["",{"text":"TE+» ","color":"#65DAD4","bold":true},{"text":"(TechnAnvEx): ","color":"gold","italic":true,"bold":false},{"text":"Updating the input item Lore","color":"gray","italic":true,"bold":false}]

# -Removing CustomCurse nbt tag and Enchantments nbt tag if neccessary
execute unless data entity @s Items[{Slot:10b}].tag.CustomCurse[0].id run data remove entity @s Items[{Slot:10b}].tag.CustomCurse

execute unless data entity @s Items[{Slot:10b}].tag.CustomEnchantments[0] unless data entity @s Items[{Slot:10b}].tag.CustomCurse[0] unless data entity @s Items[{Slot:10b}].tag.Enchantments[0].lvl run data remove entity @s Items[{Slot:10b}].tag.Enchantments

# - In case it doesn't have the Enchantment glint but has custom
#   enchantments and curses, re-add it again
execute unless data entity @s Items[{Slot:10b}].tag.Enchantments[0].lvl if data entity @s Items[{Slot:10b}].tag.CustomEnchantments[0] run data modify entity @s Items[{Slot:10b}].tag.Enchantments set value [{}]
execute unless data entity @s Items[{Slot:10b}].tag.Enchantments[0].lvl if data entity @s Items[{Slot:10b}].tag.CustomCurse[0] run data modify entity @s Items[{Slot:10b}].tag.Enchantments set value [{}]

# -Update properly the lore
function technical_anvil:extraction_mode/edit_lore/input_item

#Remove 1 single book from the chest minecart
###Debug Message###
tellraw @a[tag=teplus.pydbgm] ["",{"text":"TE+» ","color":"#65DAD4","bold":true},{"text":"(TechnAnvEx): ","color":"gold","italic":true,"bold":false},{"text":"Removing 1 isolated core from the UI","color":"gray","italic":true,"bold":false}]

item modify entity @s container.16 technical_anvil:reduce_count1


data modify storage teplus:tech_extract CurrentItems set from entity @s Items
function technical_anvil:extraction_mode/menu/empty_sections
