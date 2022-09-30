##This function is unused!!!
##I keep it in case I need it to check unbreaking for armor
## only then I'll update this code
##Right now it is just a reference

#Store the unbreaking level
execute store result score #unb.lvl teplus.data run data get entity @s Inventory[{Slot:-106b}].tag.Enchantments[{id:"minecraft:unbreaking"}].lvl

#Because the formula is "100/level + 1"
# use the enchantment level for the RNG
#Math to get the chances to use the item based on the unbreaking level
# Formula = 100/level + 1

scoreboard players add #unb.lvl teplus.data 1
#Scale "100" to 10000, so in the operation we don't loss decimal values
scoreboard players set #unb.chnc teplus.data 10000
execute store result storage teplus:item_dura unbreaking double 1 run scoreboard players operation #unb.chnc teplus.data /= #unb.lvl teplus.data

#Prepare the rng
scoreboard players set $min random 0
scoreboard players set $max random 0

#Based in the result, prepare the "$max" for the RNG
# Execute a loop function to set the $max value
scoreboard players operation #temp.unb teplus.data = #unb.chnc teplus.data
function enchantplus:durability_change/unbreaking/loop_max

#The the RNG with the new $max value
function enchantplus:random_uniform

#Check always the output as "0" as true (lose durability)
execute store result score #lose.dura teplus.data run scoreboard players get $out random