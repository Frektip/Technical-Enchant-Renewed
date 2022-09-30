#Store the unbreaking level
execute store result score #unb.lvl teplus.data run data get entity @s Inventory[{Slot:-106b}].tag.Enchantments[{id:"minecraft:unbreaking"}].lvl

#Because the formula is "100/level + 1"
# use the enchantment level for the RNG

scoreboard players set $min random 0
execute store result score $max random run scoreboard players get #unb.lvl teplus.data
function enchantplus:random_uniform

#Check always the output as "0" as true (lose durability)
execute store result score #lose.dura teplus.data run scoreboard players get $out random
