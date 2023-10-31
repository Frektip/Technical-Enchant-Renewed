#Use the first element from the array
data modify storage teplus:chest Build set from storage teplus:chest Copy[0]

#Detect if the enchantment is enabled
execute store result score #is_enabled teplus.data run data get storage teplus:chest Build.Enabled

# If it is disabled remove the current build and continue
execute if score #is_enabled teplus.data matches 1 run data remove storage teplus:chest Build

#If it is enabled continue with the main process. Only if the enchantment has the Structure[] nbt tag
execute if score #is_enabled teplus.data matches 0 if data storage teplus:chest Build.Structure run function teplus_exten:chests/create_loot/system/build

#Loop until the Copy Storage is empy
data remove storage teplus:chest Copy[0]
execute if data storage teplus:chest Copy[0].id run function teplus_exten:chests/create_loot/system/loop_build