###Debug Message###
tellraw @a[tag=teplus.pydbgm] ["",{"text":"TE+» ","color":"#65DAD4","bold":true},{"text":"(TechnAnvEx): ","color":"gold","italic":true,"bold":false},{"text":"Removing the first nbt enchantment","color":"gray","italic":true,"bold":false}]

playsound block.grindstone.use master @p ~ ~ ~ 1 0.7 1

execute if score #tslpm game.Opts matches 1 run particle dust_color_transition 1.000 0.020 0.020 1 1.000 0.690 0.510 ~ ~1 ~ 0.1 0.2 0.1 2 350
execute if score #tslpm game.Opts matches 1 run particle block anvil ~ ~1 ~ 0.3 0 0.3 1 150

##Clearing chest minecart items

# -Removing the first, second or third enchantment nbt from the input item
data remove entity @s[tag=!teplus.get_ench1,tag=!teplus.get_ench2] Items[{Slot:10b}].tag.Enchantments[0]

data remove entity @s[tag=teplus.get_ench1,tag=!teplus.get_ench2] Items[{Slot:10b}].tag.Enchantments[1]

data remove entity @s[tag=teplus.get_ench2] Items[{Slot:10b}].tag.Enchantments[2]

###Debug Message###
tellraw @a[tag=teplus.pydbgm] ["",{"text":"TE+» ","color":"#65DAD4","bold":true},{"text":"(TechnAnvEx): ","color":"gold","italic":true,"bold":false},{"text":"Check conditions to maintain or remove the enchantment glint","color":"gray","italic":true,"bold":false}]

# - In case the item had a custom curse, readd the Enchant nbt
execute unless data entity @s Items[{Slot:10b}].tag.CustomEnchantments[0] unless data entity @s Items[{Slot:10b}].tag.Enchantments[0].lvl if data entity @s Items[{Slot:10b}].tag.CustomCurse run data modify entity @s Items[{Slot:10b}].tag.Enchantments set value [{}]

#Remove 1 single book from the chest minecart
###Debug Message###
tellraw @a[tag=teplus.pydbgm] ["",{"text":"TE+» ","color":"#65DAD4","bold":true},{"text":"(TechnAnvEx): ","color":"gold","italic":true,"bold":false},{"text":"Removing 1 book from the UI","color":"gray","italic":true,"bold":false}]

item modify entity @s container.16 technical_anvil:reduce_count1


data modify storage teplus:tech_extract CurrentItems set from entity @s Items
function technical_anvil:extraction_mode/menu/empty_sections
