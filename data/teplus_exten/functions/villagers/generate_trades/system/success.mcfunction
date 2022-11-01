#Set the max enchantment level to 1 if not, get a random level.
#  Important!! a Page of Power won't sell at it's max level limit
execute if score #vill.anylvl tepext.manager matches 1 run data modify storage teplus:villagers Build.lvl set value 1
execute if score #vill.anylvl tepext.manager matches 0 run function teplus_exten:villagers/generate_trades/system/set_level


#Set the Polished Lapis amount required for the enchantment, min value to 1
#Prepare the random value
scoreboard players set $min random 1
execute store result score $max random run data get storage teplus:villagers Build.Sell
function enchantplus:random_uniform

#Set the new sell value to the storage
execute store result score #sell.lvl teplus.data run data get storage teplus:villagers Build.lvl

# If the level value is equal to 1, get the new value directly
execute if score #sell.lvl teplus.data matches 1 store result storage teplus:villagers Build.Sell int 1 run scoreboard players get $out random

# If it has more than one level, do some ""math""
execute unless score #sell.lvl teplus.data matches ..1 store result storage teplus:villagers Build.Sell int 1 run scoreboard players operation $out random += #sell.lvl teplus.data

#Set the enchantment to the "Enchantments" data storage
data modify storage teplus:villagers Result append from storage teplus:villagers Build