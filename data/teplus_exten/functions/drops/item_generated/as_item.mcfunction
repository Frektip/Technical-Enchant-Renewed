#Copy from the Register Storage
data modify storage teplus:loot Copy set value []
execute if entity @s[nbt={Item:{tag:{Rarity:"strong"}}}] run data modify storage teplus:loot Copy append from storage teplus:register Custom[].Enchantment[].Strong[]
execute if entity @s[nbt={Item:{tag:{Rarity:"average"}}}] run data modify storage teplus:loot Copy append from storage teplus:register Custom[].Enchantment[].Average[]
execute if entity @s[nbt={Item:{tag:{Rarity:"low"}}}] run data modify storage teplus:loot Copy append from storage teplus:register Custom[].Enchantment[].Low[]
execute if entity @s[nbt={Item:{tag:{Rarity:"curse"}}}] run data modify storage teplus:loot Copy append from storage teplus:register Custom[].Curse[]

#Remove uneccessary data
data remove storage teplus:loot Copy[].Sell
data remove storage teplus:loot Copy[].ForItem
data remove storage teplus:loot Copy[].Rarity
data remove storage teplus:loot Copy[].Structure

#Cicle though the array
function teplus_exten:drops/item_generated/get_enchantment/loop_build

#Remove Enabled data
data remove storage teplus:loot Enchantments[].Enabled

#Copy into a Temp storage the enchantments available
data modify storage teplus:loot Temp set from storage teplus:loot Enchantments

#Preapare RNG based on the Temp storage
scoreboard players set $min random 0
execute store result score $max random run data get storage teplus:loot Temp
execute unless score $max random matches ..0 run scoreboard players remove $max random 1
function enchantplus:random_uniform

#Loop the enchantments randomly
scoreboard players operation $ench.loop teplus.data = $out random
function enchantplus:loot/enchanting/set_ench/loop_ench



#Reset the storage
data modify storage teplus:item_lore First set value []
#Set the enchantment at level 1 by default
data modify storage teplus:item_lore First[] set from storage teplus:loot Temp[0]

#Debug if the enchantment at level 1 doesn't display "I"
scoreboard players set @s teplus.single 0
function #technical_anvil:edit_lore/set_single_level

#Set the level number based on the score
execute store result score @s teplus.tmplvl run data get storage teplus:item_lore First[0].lvl
function technical_anvil:edit_lore/system/get_level

#Spawn the new enchantment based on the storage
function teplus_exten:drops/item_generated/get_enchantment/set_book

#Clear the storages
data remove storage teplus:loot Enchantments
data remove storage teplus:loot Temp
data remove storage teplus:loot Copy
data remove storage teplus:loot Build

#Kill the stone button Item
tag @s add tepdrop.done
playsound minecraft:entity.player.levelup ambient @a[distance=..5] ~ ~ ~ 5 1.3
particle totem_of_undying ~ ~ ~ 0 0 0 0.3 25
kill @s