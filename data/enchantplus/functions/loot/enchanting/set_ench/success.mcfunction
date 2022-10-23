#Set the rarirty from the storage
execute store result score #enchant.rarity teplus.data run data get storage teplus:loot Build.Rarity

#Set the new level of the enchantment, avoid it if it is 1 or less
execute store result score #current_max teplus.data run data get storage teplus:loot Build.lvl
execute unless score #current_max teplus.data matches ..1 run function enchantplus:loot/enchanting/set_ench/set_level

#Set the enchantment to the "Enchantments" data storage
data modify storage teplus:loot Enchantments append from storage teplus:loot Build