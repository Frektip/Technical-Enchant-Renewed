#>Context: The current entity is the Dummy Armor Stand inside the container (chest)

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
execute if score #teplus.ench_type teplus.data matches 0 run tag @s add is_enchantment
execute if score #teplus.ench_type teplus.data matches 1 run tag @s add is_curse

data modify entity @s[tag=is_enchantment] HandItems[0].tag.StoredCustomEnchantments append from storage teplus:chest Temp[0]
data modify entity @s[tag=is_curse] HandItems[0].tag.StoredCustomCurse append from storage teplus:chest Temp[0]

#Clear the storages
data remove storage teplus:chest Temp
data remove storage teplus:chest Copy
data remove storage teplus:chest Build

#Set the Lore
function teplus_exten:chests/create_loot/set_lore/init

#Insert the book into the chest or chest_minecart
execute if score #teplus.container_type teplus.data matches 0 run function teplus_exten:chests/slot_insert
execute if score #teplus.container_type teplus.data matches 1 run function teplus_exten:chests/slot_insert_minecart

kill @s