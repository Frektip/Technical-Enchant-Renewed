#Set the new level of the enchantment, avoid it if it is 1 or less
execute store result score #current_max teplus.data run data get storage teplus:chest Build.lvl
execute unless score #current_max teplus.data matches ..1 run function teplus_exten:chests/create_loot/system/set_level

#Set the enchantment to the "Enchantments" data storage
data modify storage teplus:chest Result append from storage teplus:chest Build
#Add this tag, so it doesn't dupe/repeat again unless it is from an
# specific structure
tag @s add build.done

#Incase there this enchantment has more odds to appear in this structure
# chest, then repeat this function
execute if score #chest.odds teplus.data matches 1.. run scoreboard players remove #chest.odds teplus.data 1
execute unless score #chest.odds teplus.data matches ..0 run function teplus_exten:chests/create_loot/system/success