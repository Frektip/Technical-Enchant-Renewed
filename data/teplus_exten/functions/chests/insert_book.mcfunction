#Summon a dummy Armor stand
# This armor stand will generate the book that is going to be added

summon armor_stand ~.5 ~ ~.5 {NoGravity:1b,Silent:1b,Invulnerable:1b,Small:1b,Invisible:1b,Tags:["teplus.loot_gen"],DisabledSlots:4144959,HandItems:[{id:"minecraft:enchanted_book",Count:1b},{}]}

execute as @e[type=armor_stand,tag=teplus.loot_gen,distance=..1.5,limit=1] run function teplus_exten:chests/create_loot/core


#Do repeat it in case is necessary
scoreboard players remove #chst.try teplus.data 1
execute if score #chst.try teplus.data matches 1.. run function teplus_exten:chests/insert_book