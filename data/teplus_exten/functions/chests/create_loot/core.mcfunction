function teplus_exten:chests/create_loot/system/available

#Copy into a Temp storage the enchantments available
data modify storage teplus:chest Temp set from storage teplus:chest Result

#Preapare RNG based on the Temp storage
scoreboard players set $min random 0
execute store result score $max random run data get storage teplus:chest Temp
execute unless score $max random matches ..0 run scoreboard players remove $max random 1
function enchantplus:random_uniform

#Loop the enchantments randomly
scoreboard players operation $chest.loop teplus.data = $out random
function teplus_exten:chests/create_loot/system/random_get

#Add the nbt tag enchant the item based on Temp Storage
data modify entity @s[tag=is_enchantment] HandItems[0].tag.StoredCustomEnchantments append from storage teplus:chest Temp[0]
data modify entity @s[tag=is_curse] HandItems[0].tag.StoredCustomCurse append from storage teplus:chest Temp[0]

#Clear the storages
data remove storage teplus:chest Result
data remove storage teplus:chest Temp
data remove storage teplus:chest Copy
data remove storage teplus:chest Build

#Set the Lore
function teplus_exten:chests/create_loot/set_lore/init