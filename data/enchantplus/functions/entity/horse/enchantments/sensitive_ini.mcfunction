#Show particles
execute if score #tslpm game.Opts matches 1 run particle enchant ~ ~.2 ~ 0.5 0.5 0.5 .25 15

#Sensitive Action
execute if entity @s[nbt={HurtTime:10s}] run function enchantplus:entity/horse/enchantments/sensitive_random 
