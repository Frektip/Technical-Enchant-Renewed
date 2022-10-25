#Check for a tag, only then add it to the final "Result" storage
# (the one that thakes the enchantments that are goint to be added)
# It will prioritize the enchantment exclusive with that structure,
#  in other words, it always get added

##Frektip Note-Currently not all the structures are covered, I just
## add the ones that I need for this datapack but it is possible to add
## the other structures (as well as custom ones) by modifying the
## "Registry" storage and the armor stand generated from those structures
## (located in "insert_book" folder) addin "tepxc.exclusive" tag.
##Also enable the comments from this and "get chance" files.

execute if entity @s[tag=tepxc.ancient_city] if data storage teplus:chest Build.Structure[{ancient_city:1b}] run function teplus_exten:chests/create_loot/system/type_specific/get_chance
execute if entity @s[tag=tepxc.bastion] if data storage teplus:chest Build.Structure[{bastion:1b}] run function teplus_exten:chests/create_loot/system/type_specific/get_chance
execute if entity @s[tag=tepxc.desert_pyramid] if data storage teplus:chest Build.Structure[{desert_pyramid:1b}] run function teplus_exten:chests/create_loot/system/type_specific/get_chance
execute if entity @s[tag=tepxc.end_city] if data storage teplus:chest Build.Structure[{end_city:1b}] run function teplus_exten:chests/create_loot/system/type_specific/get_chance
execute if entity @s[tag=tepxc.fortress] if data storage teplus:chest Build.Structure[{fortress:1b}] run function teplus_exten:chests/create_loot/system/type_specific/get_chance
execute if entity @s[tag=tepxc.shipwreck] if data storage teplus:chest Build.Structure[{shipwreck:1b}] run function teplus_exten:chests/create_loot/system/type_specific/get_chance
execute if entity @s[tag=tepxc.underwater_ruin] if data storage teplus:chest Build.Structure[{underwater_ruin:1b}] run function teplus_exten:chests/create_loot/system/type_specific/get_chance
execute if entity @s[tag=tepxc.village] if data storage teplus:chest Build.Structure[{village:1b}] run function teplus_exten:chests/create_loot/system/type_specific/get_chance
execute if entity @s[tag=tepxc.mansion] if data storage teplus:chest Build.Structure[{mansion:1b}] run function teplus_exten:chests/create_loot/system/type_specific/get_chance

#execute if entity @s[tag=tepxc.abandoned_mineshaft] if data storage teplus:chest Build.Structure[{mineshaft:1b}] run function teplus_exten:chests/create_loot/system/type_specific/get_chance
#execute if entity @s[tag=tepxc.burried_treasure] if data storage teplus:chest Build.Structure[{buried_treasure:1b}] run function teplus_exten:chests/create_loot/system/type_specific/get_chance
#execute if entity @s[tag=tepxc.igloo] if data storage teplus:chest Build.Structure[{igloo:1b}] run function teplus_exten:chests/create_loot/system/type_specific/get_chance
#execute if entity @s[tag=tepxc.jungle_temple] if data storage teplus:chest Build.Structure[{jungle_temple:1b}] run function teplus_exten:chests/create_loot/system/type_specific/get_chance
#execute if entity @s[tag=tepxc.outpost] if data storage teplus:chest Build.Structure[{outpost:1b}] run function teplus_exten:chests/create_loot/system/type_specific/get_chance
#execute if entity @s[tag=tepxc.ruined_portal] if data storage teplus:chest Build.Structure[{ruined_portal:1b}] run function teplus_exten:chests/create_loot/system/type_specific/get_chance
#execute if entity @s[tag=tepxc.dungeon] if data storage teplus:chest Build.Structure[{dungeon:1b}] run function teplus_exten:chests/create_loot/system/type_specific/get_chance
#execute if entity @s[tag=tepxc.library] if data storage teplus:chest Build.Structure[{library:1b}] run function teplus_exten:chests/create_loot/system/type_specific/get_chance
#execute if entity @s[tag=tepxc.stronghold] if data storage teplus:chest Build.Structure[{stronghold:1b}] run function teplus_exten:chests/create_loot/system/type_specific/get_chance
#execute if entity @s[tag=tepxc.ruined_portal] if data storage teplus:chest Build.Structure[{ruined_portal:1b}] run function teplus_exten:chests/create_loot/system/type_specific/get_chance




#In case the enchantment doesn't have the specific "Structure" tag,
# but it has the "all" nbt, include it into the main loot-table.
#It has a 50% to skip it, so it doesn't add to much to the loot-table
execute if predicate enchantplus:random_chance/50 if entity @s[tag=is_enchantment,tag=!build.done] if data storage teplus:chest Build.Structure[{all:1b}] run function teplus_exten:chests/create_loot/system/success