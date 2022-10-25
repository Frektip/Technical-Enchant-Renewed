#Get how lickely the enchantment is to appear using the "add"
# nbt from the storage. Use the tag again for this purpose.

##Frektip Note-Currently not all the structures are covered, I just
## add the ones that I need for this datapack but it is possible to add
## the other structures (as well as custom ones) by modifying the
## "Registry" storage and the armor stand generated from those structures
## (located in "insert_book" folder) addin "tepxc.exclusive" tag.
##Also enable the comments from this and "check" files.

execute if entity @s[tag=tepxc.ancient_city] store result score #chest.odds teplus.data run data get storage teplus:chest Build.Structure[{ancient_city:1b}].add
execute if entity @s[tag=tepxc.bastion] store result score #chest.odds teplus.data run data get storage teplus:chest Build.Structure[{bastion:1b}].add
execute if entity @s[tag=tepxc.desert_pyramid] store result score #chest.odds teplus.data run data get storage teplus:chest Build.Structure[{desert_pyramid:1b}].add
execute if entity @s[tag=tepxc.end_city] store result score #chest.odds teplus.data run data get storage teplus:chest Build.Structure[{end_city:1b}].add
execute if entity @s[tag=tepxc.fortress] store result score #chest.odds teplus.data run data get storage teplus:chest Build.Structure[{fortress:1b}].add
execute if entity @s[tag=tepxc.shipwreck] store result score #chest.odds teplus.data run data get storage teplus:chest Build.Structure[{shipwreck:1b}].add
execute if entity @s[tag=tepxc.underwater_ruin] store result score #chest.odds teplus.data run data get storage teplus:chest Build.Structure[{underwater_ruin:1b}].add
execute if entity @s[tag=tepxc.village] store result score #chest.odds teplus.data run data get storage teplus:chest Build.Structure[{village:1b}].add
execute if entity @s[tag=tepxc.mansion] store result score #chest.odds teplus.data run data get storage teplus:chest Build.Structure[{mansion:1b}].add
execute if entity @s[tag=tepxc.ancient_city] store result score #chest.odds teplus.data run data get storage teplus:chest Build.Structure[{ancient_city:1b}].add

#execute if entity @s[tag=tepxc.abandoned_mineshaft] store result score #chest.odds teplus.data run data get storage teplus:chest Build.Structure[{abandoned_mineshaft:1b}].add
#execute if entity @s[tag=tepxc.burried_treasure] store result score #chest.odds teplus.data run data get storage teplus:chest Build.Structure[{burried_treasure:1b}].add
#execute if entity @s[tag=tepxc.igloo] store result score #chest.odds teplus.data run data get storage teplus:chest Build.Structure[{igloo:1b}].add
#execute if entity @s[tag=tepxc.jungle_temple] store result score #chest.odds teplus.data run data get storage teplus:chest Build.Structure[{jungle_temple:1b}].add
#execute if entity @s[tag=tepxc.outpost] store result score #chest.odds teplus.data run data get storage teplus:chest Build.Structure[{outpost:1b}].add
#execute if entity @s[tag=tepxc.ruined_portal] store result score #chest.odds teplus.data run data get storage teplus:chest Build.Structure[{ruined_portal:1b}].add
#execute if entity @s[tag=tepxc.dungeon] store result score #chest.odds teplus.data run data get storage teplus:chest Build.Structure[{dungeon:1b}].add
#execute if entity @s[tag=tepxc.library] store result score #chest.odds teplus.data run data get storage teplus:chest Build.Structure[{library:1b}].add
#execute if entity @s[tag=tepxc.stronghold] store result score #chest.odds teplus.data run data get storage teplus:chest Build.Structure[{stronghold:1b}].add
#execute if entity @s[tag=tepxc.ruined_portal] store result score #chest.odds teplus.data run data get storage teplus:chest Build.Structure[{ruined_portal:1b}].add

#Run the success function at the end
function teplus_exten:chests/create_loot/system/success