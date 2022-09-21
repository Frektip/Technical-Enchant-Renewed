###Debug Message###
tellraw @a[tag=teplus.pydbgm] ["",{"text":"TE+» ","color":"#65DAD4","bold":true},{"text":"(Bowcross): ","color":"#ACEFE0","italic":true,"bold":false},{"text":"Checking the custom arrow owner","color":"gray","italic":true,"bold":false}]

execute store result score @s UUID0 run data get entity @s Owner[0]
execute store result score @s UUID1 run data get entity @s Owner[1]
execute store result score @s UUID2 run data get entity @s Owner[2]
execute store result score @s UUID3 run data get entity @s Owner[3]

#Tag the arrow if the nearest player has the same owner UUID as the arrow
execute if score @s UUID0 = @p UUID0 if score @s UUID1 = @p UUID1 if score @s UUID2 = @p UUID2 if score @s UUID3 = @p UUID3 run tag @s add tep.arrow_valid_owner

###Debug Message###
execute if entity @s[tag=tep.arrow_valid_owner] run tellraw @a[tag=teplus.pydbgm] ["",{"text":"TE+» ","color":"#65DAD4","bold":true},{"text":"(Bowcross): ","color":"#ACEFE0","italic":true,"bold":false},{"text":"The custom arrow owner and the player have the same UUID","color":"gray","italic":true,"bold":false}]
execute unless entity @s[tag=tep.arrow_valid_owner] run tellraw @a[tag=teplus.pydbgm] ["",{"text":"TE+» ","color":"#65DAD4","bold":true},{"text":"(Bowcross): ","color":"#ACEFE0","italic":true,"bold":false},{"text":"The custom arrow owner and the player doesn't have the same UUID","color":"red","italic":true,"bold":false}]


#End the action
tag @s add tep.arrow_owner