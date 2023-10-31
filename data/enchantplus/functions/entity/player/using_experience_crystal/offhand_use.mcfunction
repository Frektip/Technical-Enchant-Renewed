#Initialize de Storage
data modify storage teplus:xp_crystal Update set value 0

#Obtain the item current data
execute store result score @s teplus.xpcrtl run data get entity @s Inventory[{Slot:-106b}].tag.Content.Value[0]
execute store result score #temp.max teplus.xpcrtl run data get entity @s Inventory[{Slot:-106b}].tag.Content.Value[1]
execute store result score #temp.tier teplus.xpcrtl run data get entity @s Inventory[{Slot:-106b}].tag.Content.Tier

#Summon the experience orb
execute if score @s teplus.xpcrtl matches 1.. run summon minecraft:experience_orb ~ ~ ~ {Value:7s}

#Reduce the sore by 7 each time
scoreboard players remove @s teplus.xpcrtl 7

#No negative values
execute if score @s teplus.xpcrtl matches ..-1 run scoreboard players set @s teplus.xpcrtl 0

#Copy the values to the storage
execute store result storage teplus:xp_crystal Update int 1 run scoreboard players get @s teplus.xpcrtl

execute if score @s teplus.xpcrtl matches 0.. run item modify entity @s weapon.offhand enchantplus:experience_crystal_update
data remove storage teplus:xp_crystal Set