#Obtain entity health when hit
execute if entity @s[nbt={HurtTime:10s}] run function teplus_exten:mobs/get_health

#Give strength when low health
execute if entity @s[scores={tepxm.health=1..6}] run effect give @s strength 1 3
execute if entity @s[scores={tepxm.health=1..6}] run particle block redstone_block ~ ~1 ~ 0.1 0.1 0.1 1 2
