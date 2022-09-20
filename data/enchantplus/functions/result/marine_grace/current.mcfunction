scoreboard players add @s MarineCount 1

#Get the rotation from the nearest player (presumably the attacker)
execute if score @s MarineCount matches 1 store result entity @s Rotation[1] float 1 run data get entity @p[nbt={SelectedItem:{tag:{CustomEnchantments:[{id:"MarineGrace"}]}}},tag=!ma.graced] Rotation[1]
execute if score @s MarineCount matches 1 store result entity @s Rotation[0] float 1 run data get entity @p[nbt={SelectedItem:{tag:{CustomEnchantments:[{id:"MarineGrace"}]}}},tag=!ma.graced] Rotation[0]

#Tp the "graced" entity
execute at @s if block ~ ~ ~ #enchantplus:not_solid run tp @e[type=!#enchantplus:antisoul,distance=..0.599,tag=ma.graced] ~ ~ ~


#Prevent the entity going into Lava or Fire
execute if block ~ ~-0.25 ~ #enchantplus:heat run kill @s

#Tp the marker and avoid coliding in 
execute if score @s MarineCount matches 2.. run tp @s ^ ^ ^.25
execute if score @s MarineCount matches 2.. at @s if block ~ ~-0.25 ~ #enchantplus:not_solid unless block ~ ~ ~ water run tp @s ~ ~-0.25 ~
execute if score @s MarineCount matches 2.. at @s unless block ~ ~ ~ #enchantplus:not_solid run tp @s ~ ~0.25 ~

#After 3 seconds kill the marker
#Debug Message
execute if score @s MarineCount matches 59 run tellraw @a[tag=teplus.pydbgm] ["",{"text":"TE+» ","color":"#65DAD4","bold":true},{"text":"Marine Grace marker removed","color":"gray","italic":true,"bold":false}]
execute if score @s MarineCount matches 60.. run kill @s