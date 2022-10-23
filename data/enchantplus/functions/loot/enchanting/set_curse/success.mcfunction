#Set the new level of the enchantment, avoid it if it is 1 or less
execute store result score #current_max teplus.data run data get storage teplus:loot Build.lvl
execute unless score #current_max teplus.data matches ..1 run function enchantplus:loot/enchanting/set_ench/set_level

#Set the curse to the "Curses" data storage
data modify storage teplus:loot Curses append from storage teplus:loot Build