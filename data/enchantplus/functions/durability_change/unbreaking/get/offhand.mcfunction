###Debug Message###
tellraw @a[tag=teplus.pydbgm] ["",{"text":"TE+» ","color":"#65DAD4","bold":true},{"text":"Unbreaking enchantment detected!","color":"#65A250","italic":true,"bold":false}]
tellraw @a[tag=teplus.pydbgm] ["",{"text":"TE+» ","color":"#65DAD4","bold":true},{"text":"Check if the item loses durability or not..","color":"gray","italic":true,"bold":false}]

#Store the unbreaking level
execute store result score #unb.lvl teplus.data run data get entity @s Inventory[{Slot:-106b}].tag.Enchantments[{id:"minecraft:unbreaking"}].lvl

#Because the formula is "100/level + 1"
# use the enchantment level for the RNG

scoreboard players set $min random 0
execute store result score $max random run scoreboard players get #unb.lvl teplus.data
function enchantplus:random_uniform

#Check always the output as "0" as true (lose durability)
execute store result score #lose.dura teplus.data run scoreboard players get $out random

###Debug Message###
execute if score $out random matches 1.. run tellraw @a[tag=teplus.pydbgm] ["",{"text":"TE+» ","color":"#65DAD4","bold":true},{"text":"The item didn't lose durability","color":"green","italic":true,"bold":false}]
execute if score $out random matches 0 run tellraw @a[tag=teplus.pydbgm] ["",{"text":"TE+» ","color":"#65DAD4","bold":true},{"text":"The item lost durability","color":"red","italic":true,"bold":false}]