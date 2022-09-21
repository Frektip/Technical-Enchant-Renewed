#Display only particles and sounds at low state
execute if score @s teplus.scared matches 20 run particle minecraft:fishing ~ ~1 ~ 0 0 0 .05 25 force @a
execute if score @s teplus.scared matches 60 run particle minecraft:fishing ~ ~1 ~ 0 0 0 .05 25 force @a
execute if score @s teplus.scared matches 20 run playsound minecraft:entity.warden.heartbeat ambient @a ~ ~ ~ 5 .3

#Give less attack damage
attribute @s minecraft:generic.attack_damage modifier add 8326bb78-a72f-473f-a8ba-c7b3f6374aaa "teplus.fear_dmg" -2 add
