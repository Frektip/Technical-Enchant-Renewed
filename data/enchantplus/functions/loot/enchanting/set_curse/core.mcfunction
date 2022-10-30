#Prepare the storage that will select the curses
# Addon support
function enchantplus:loot/enchanting/set_curse/get_curses

#Copy into a Temp storage the curses available
data modify storage teplus:loot Temp set from storage teplus:loot Curses

# There is no way to have more than one curse per interaction, so we
#  don't need to clear the storage to not get dupes

#Preapare RNG based on the Temp storage
scoreboard players set $min random 0
execute store result score $max random run data get storage teplus:loot Temp
execute unless score $max random matches ..0 run scoreboard players remove $max random 1
function enchantplus:random_uniform

#Loop the curses randomly
scoreboard players operation $curse.loop teplus.data = $out random
function enchantplus:loot/enchanting/set_curse/loop_curse

#Add the nbt tag enchant the item based on Temp Storage
#But check first if there is incompatibilities for Items Only
execute if entity @s[tag=teplus.loot_is_item,nbt={Item:{tag:{Enchantments:[{}]}}}] if data storage teplus:loot Temp[0].Incompatible run function enchantplus:loot/enchanting/incompatible/init
execute if entity @s[tag=teplus.loot_is_item,nbt={Item:{tag:{CustomCurse:[{}]}}}] if data storage teplus:loot Temp[0].Incompatible run function enchantplus:loot/enchanting/incompatible/init
#Remove the "Incompatible" nbt from the storage (this is in case
# the item doesn't have any incompatible enchantment, therefore
# it needs to continue to add that curse to the main item)
data remove storage teplus:loot Temp[].Incompatible


#Add the nbt tag curse to the book based on Temp Storage
data modify entity @s[tag=teplus.loot_is_book] Item.tag.StoredCustomCurse append from storage teplus:loot Temp[0]
data modify entity @s[tag=teplus.loot_is_item] Item.tag.CustomCurse append from storage teplus:loot Temp[0]

#Clear the storages
data remove storage teplus:loot Curses
data remove storage teplus:loot Temp
data remove storage teplus:loot Copy
data remove storage teplus:loot Build
data remove storage teplus:loot Incomp