#Display only particles and sounds at high state at fast rate
execute if score @s teplus.scared matches 10 run particle minecraft:fishing ~ ~1 ~ 0 0 0 .05 25 force @a
execute if score @s teplus.scared matches 20 run particle minecraft:fishing ~ ~1 ~ 0 0 0 .05 25 force @a
execute if score @s teplus.scared matches 30 run particle minecraft:fishing ~ ~1 ~ 0 0 0 .05 25 force @a
execute if score @s teplus.scared matches 40 run particle minecraft:fishing ~ ~1 ~ 0 0 0 .05 25 force @a
execute if score @s teplus.scared matches 50 run particle minecraft:fishing ~ ~1 ~ 0 0 0 .05 25 force @a
execute if score @s teplus.scared matches 60 run particle minecraft:fishing ~ ~1 ~ 0 0 0 .05 25 force @a
execute if score @s teplus.scared matches 10 run playsound minecraft:entity.warden.heartbeat ambient @a ~ ~ ~ 5 .3
execute if score @s teplus.scared matches 20 run playsound minecraft:entity.warden.heartbeat ambient @a ~ ~ ~ 5 .3
execute if score @s teplus.scared matches 30 run playsound minecraft:entity.warden.heartbeat ambient @a ~ ~ ~ 5 .3
execute if score @s teplus.scared matches 40 run playsound minecraft:entity.warden.heartbeat ambient @a ~ ~ ~ 5 .3
execute if score @s teplus.scared matches 50 run playsound minecraft:entity.warden.heartbeat ambient @a ~ ~ ~ 5 .3
execute if score @s teplus.scared matches 60 run playsound minecraft:entity.warden.heartbeat ambient @a ~ ~ ~ 5 .3

#Give less attack damage, movement speed and attack speed
attribute @s minecraft:generic.attack_damage modifier add 8326bb78-a72f-473f-a8ba-c7b3f6374aaa "teplus.fear_dmg" -6 add
attribute @s minecraft:generic.movement_speed modifier add 91fec91c-f861-4632-ba0d-89e459f92004 "teplus.fear_mov" -0.350 multiply
attribute @s minecraft:generic.attack_speed modifier add 3b1952d8-19be-4c73-b90d-b16f3e33303e "teplus.fear_atsp" -0.4 add