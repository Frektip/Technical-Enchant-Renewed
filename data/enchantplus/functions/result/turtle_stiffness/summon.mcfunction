#Center entity for shells rotation
summon marker ~ ~ ~ {Tags:["teplus.marker","turtle_shield","ts.center"]}

#Armor stands with turtle helmets
summon armor_stand ~ ~-.5 ~1 {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["teplus.armor_stand","turtle_shield","ts.protect","shield1"],Pose:{Head:[90f,0f,0f]},DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:turtle_helmet",Count:1b}]}

summon armor_stand ~ ~-.5 ~-1 {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["teplus.armor_stand","turtle_shield","ts.protect","shield2"],Pose:{Head:[-90f,0f,0f]},DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:turtle_helmet",Count:1b}]}

summon armor_stand ~1 ~-.5 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["teplus.armor_stand","turtle_shield","ts.protect","shield3"],Pose:{Head:[0f,0f,90f]},DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:turtle_helmet",Count:1b}]}

summon armor_stand ~-1 ~-.5 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["teplus.armor_stand","turtle_shield","ts.protect","shield4"],Pose:{Head:[0f,0f,-90f]},DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:turtle_helmet",Count:1b}]}

#Assing a unique id to these entities
scoreboard players operation @e[tag=turtle_shield,distance=..3,sort=nearest,limit=5] tep.plid = @s tep.plid

#Give the player some things
effect give @s minecraft:resistance 10 2
effect give @s minecraft:slowness 5 1
playsound minecraft:entity.turtle.death ambient @s ~ ~ ~ 5 1.3
playsound minecraft:entity.turtle.death ambient @s ~ ~ ~ 5 1.3

tag @s add trigger_protection