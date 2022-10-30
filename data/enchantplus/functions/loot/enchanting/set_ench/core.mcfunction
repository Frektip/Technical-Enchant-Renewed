### Debug Message ###
tellraw @a[tag=teplus.pydbgm] ["",{"text":"TE+» ","color":"#65DAD4","bold":true},{"text":"(Enchanting★★): ","color":"#24E3F9","italic":true,"bold":false},{"text":"Setting an storage depending on all available custom enchantments","color":"gray","italic":true,"bold":false}]

#Prepare the storage that will select enchantments, including levels
function enchantplus:loot/enchanting/set_ench/get_enchantments

#Copy into a Temp storage the enchantments available
data modify storage teplus:loot Temp set from storage teplus:loot Enchantments

#Clean the storage, so enchantments don't get dupped
data modify storage teplus:loot Current set from entity @s[tag=teplus.loot_is_book] Item.tag.StoredCustomEnchantments
data modify storage teplus:loot Current set from entity @s[tag=teplus.loot_is_item] Item.tag.CustomEnchantments

execute if data storage teplus:loot Current[0].id run function #enchantplus:enchanting/clear_storage

#Preapare RNG based on the Temp storage
scoreboard players set $min random 0
execute store result score $max random run data get storage teplus:loot Temp
execute unless score $max random matches ..0 run scoreboard players remove $max random 1
function enchantplus:random_uniform

#Loop the enchantments randomly
scoreboard players operation $ench.loop teplus.data = $out random
function enchantplus:loot/enchanting/set_ench/loop_ench

#Set the rarirty from the storage
execute store result score #enchant.rarity teplus.data run data get storage teplus:loot Temp[0].Rarity
data remove storage teplus:loot Temp[].Rarity

#Add the nbt tag enchant the item based on Temp Storage
#But check first if there is incompatibilities for Items Only
execute if entity @s[tag=teplus.loot_is_item,nbt={Item:{tag:{Enchantments:[{}]}}}] if data storage teplus:loot Temp[0].Incompatible run function enchantplus:loot/enchanting/incompatible/init
execute if entity @s[tag=teplus.loot_is_item,nbt={Item:{tag:{CustomEnchantments:[{}]}}}] if data storage teplus:loot Temp[0].Incompatible run function enchantplus:loot/enchanting/incompatible/init
#Remove the "Incompatible" nbt from the storage (this is in case
# the item doesn't have any incompatible enchantment, therefore
# it needs to continue to add that enchantment to the main item)
data remove storage teplus:loot Temp[].Incompatible

data modify entity @s[tag=teplus.loot_is_book] Item.tag.StoredCustomEnchantments append from storage teplus:loot Temp[0]
data modify entity @s[tag=teplus.loot_is_item] Item.tag.CustomEnchantments append from storage teplus:loot Temp[0]

#Clear the storages
data remove storage teplus:loot Enchantments
data remove storage teplus:loot Temp
data remove storage teplus:loot Copy
data remove storage teplus:loot Build
data remove storage teplus:loot Current
data remove storage teplus:loot Incomp

#Add another enchantment again acording the enchanting setup
#Kept it at 3 or 2 enchantments maximum for books
#Kep it at 2 enchantments maximum for items
#Book Strong
execute if entity @s[tag=teplus.loot_is_book] if score #teplus.rarity teplus.data matches 3 if predicate enchantplus:random_chance/15 unless data entity @s Item.tag.StoredCustomEnchantments[2] run function enchantplus:loot/enchanting/set_ench/core
#Book Average
execute if entity @s[tag=teplus.loot_is_book] if score #teplus.rarity teplus.data matches 2 if predicate enchantplus:random_chance/5 unless data entity @s Item.tag.StoredCustomEnchantments[1] run function enchantplus:loot/enchanting/set_ench/core



#Item Strong
execute if entity @s[tag=teplus.loot_is_item] if score #teplus.rarity teplus.data matches 3 if predicate enchantplus:random_chance/15 unless data entity @s Item.tag.CustomEnchantments[1] run function enchantplus:loot/enchanting/set_ench/core
#Item Average
execute if entity @s[tag=teplus.loot_is_item] if score #teplus.rarity teplus.data matches 2 if predicate enchantplus:random_chance/5 unless data entity @s Item.tag.CustomEnchantments[1] run function enchantplus:loot/enchanting/set_ench/core