#Copy into a Temp storage the enchantments available
data modify storage teplus:loot Temp set from storage teplus:villagers Result
#Clean the storage, so enchantments don't get dupped
data modify storage teplus:loot Current set value []
data modify storage teplus:loot Current append from entity @s[tag=is_enchantment] Offers.Recipes[1].sell.tag.StoredCustomEnchantments[]
data modify storage teplus:loot Current append from entity @s[tag=is_enchantment] Offers.Recipes[2].sell.tag.StoredCustomEnchantments[]
data modify storage teplus:loot Current append from entity @s[tag=is_enchantment] Offers.Recipes[3].sell.tag.StoredCustomEnchantments[]
data modify storage teplus:loot Current append from entity @s[tag=is_enchantment] Offers.Recipes[4].sell.tag.StoredCustomEnchantments[]
data modify storage teplus:loot Current append from entity @s[tag=is_enchantment] Offers.Recipes[5].sell.tag.StoredCustomEnchantments[]

execute if data storage teplus:loot Current[0].id run function #enchantplus:enchanting/clear_storage



#Preapare RNG based on the Temp storage
scoreboard players set $min random 0
execute store result score $max random run data get storage teplus:loot Temp
execute unless score $max random matches ..0 run scoreboard players remove $max random 1
function enchantplus:random_uniform

#Loop the enchantments randomly
scoreboard players operation $trade.loop teplus.data = $out random
function teplus_exten:villagers/generate_trades/system/random_get