### Debug Message ###
execute unless data entity @s Item.tag.CustomEnchantments run tellraw @a[tag=teplus.pydbgm] ["",{"text":"TE+» ","color":"#65DAD4","bold":true},{"text":"(Enchanting★★): ","color":"#24E3F9","italic":true,"bold":false},{"text":"Setting an storage depending on all available custom enchantments, this message may repeat","color":"gray","italic":true,"bold":false}]

#Prepare the storage that will select enchantments, including levels
# Check compatible enchantments using a tag
# for complements run a #function
function #enchantplus:enchanting/items/select_type

#Copy into a Temp storage the enchantments available
data modify storage teplus:loot Temp set from storage teplus:loot Enchantments

#Clean the storage, so enchantments don't get dupped
execute if data entity @s Item.tag.CustomEnchantments run function #enchantplus:enchanting/clean_storage_items

#Preapare RNG based on the Temp storage
scoreboard players set $min random 0
execute store result score $max random run data get storage teplus:loot Temp
execute unless score $max random matches ..0 run scoreboard players remove $max random 1
function enchantplus:random_uniform

#Loop the enchantments randomly
scoreboard players operation $ench.loop teplus.data = $out random
function enchantplus:loot/enchanting/system/loop_ench


#Add the nbt tag enchant to the item based on Temp Storage
data modify entity @s Item.tag.CustomEnchantments append from storage teplus:loot Temp[0]


#Clear the storages
data remove storage teplus:loot Enchantments
data remove storage teplus:loot Temp

#Add another enchantment again acording the enchanting setup
#Kept it at 2 enchantments maximum
#Strong
execute if score #teplus.rarity teplus.data matches 3 if predicate enchantplus:random_chance/15 unless data entity @s Item.tag.CustomEnchantments[1] run function enchantplus:loot/enchanting/system/item_main
#Average
execute if score #teplus.rarity teplus.data matches 2 if predicate enchantplus:random_chance/5 unless data entity @s Item.tag.CustomEnchantments[1] run function enchantplus:loot/enchanting/system/item_main