#Store arrow motion
execute unless entity @s[nbt={inGround:1b}] store result score @s teplus.motX run data get entity @s Motion[0] 100
execute unless entity @s[nbt={inGround:1b}] store result score @s teplus.motY run data get entity @s Motion[1] 100
execute unless entity @s[nbt={inGround:1b}] store result score @s teplus.motZ run data get entity @s Motion[2] 100

#Check if the arrow has low values in all 3 motion values at the same time
execute if score @s teplus.motX matches -10..10 if score @s teplus.motY matches -10..10 if score @s teplus.motZ matches -10..10 run data merge entity @s {Motion:[0.0,-1.0,0.0]}

#Refresh the scoreboard if it lands
execute if entity @s[nbt={inGround:1b}] run scoreboard players reset @s teplus.motX
execute if entity @s[nbt={inGround:1b}] run scoreboard players reset @s teplus.motY
execute if entity @s[nbt={inGround:1b}] run scoreboard players reset @s teplus.motZ