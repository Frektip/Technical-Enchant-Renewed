data modify storage teplus:chest Build set from storage teplus:chest Copy[0]

#Detect if the enchantment is enabled
execute if entity @s[tag=is_enchantment] store result score #is_enabled teplus.data run data get storage teplus:chest Build.Enabled

# If true, then remove the current enchantment from the array
execute if entity @s[tag=is_enchantment] if score #is_enabled teplus.data matches 1 run data remove storage teplus:chest Build

#Detect if the current enchantment has an specific structure
# assoisated with it. For this the armor stand must generate with the
# "tepxc.exclusive" tag
execute if entity @s[tag=tepxc.exclusive] run function teplus_exten:chests/create_loot/system/type_specific/check

#Use the "all" nbt from the storage in case the current enchantment
# isn't exclusive from the chest loot but it is included as a random
# reward anyways. Use "build.done" tag in case an enchantment
# hasn't been added early
execute if entity @s[tag=is_enchantment,tag=!tepxc.exclusive,tag=!build.done] if data storage teplus:chest Build.Structure[{all:1b}] run function teplus_exten:chests/create_loot/system/success

#Curses are special because they can always generate in a chest
execute if entity @s[tag=is_curse] if data storage teplus:chest Build.Structure[{all:1b}] run function teplus_exten:chests/create_loot/system/success

#Remove "build.done" tag, so it can continue with the next one
tag @s remove build.done

#Loop until the Copy Storage is empy
data remove storage teplus:chest Copy[0]
execute if data storage teplus:chest Copy[0].id run function teplus_exten:chests/create_loot/system/loop_build