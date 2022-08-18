summon item ~ ~ ~ {PickupDelay:20,Tags:["slp.drop"],Item:{id:"minecraft:stone_button",Count:1b}} 

execute store result score $pos_x1 tep.mot run data get entity @e[tag=slp.drop,limit=1] Pos[0] 1000 
execute store result score $pos_y1 tep.mot run data get entity @e[tag=slp.drop,limit=1] Pos[1] 1000 
execute store result score $pos_z1 tep.mot run data get entity @e[tag=slp.drop,limit=1] Pos[2] 1000 
tp @e[tag=slp.drop,limit=1] ^ ^ ^.3 

execute store result score $pos_x2 tep.mot run data get entity @e[tag=slp.drop,limit=1] Pos[0] 1000 
execute store result score $pos_y2 tep.mot run data get entity @e[tag=slp.drop,limit=1] Pos[1] 1000 
execute store result score $pos_z2 tep.mot run data get entity @e[tag=slp.drop,limit=1] Pos[2] 1000 

execute store result entity @e[tag=slp.drop,limit=1] Motion[0] double 0.001 run scoreboard players operation $pos_x2 tep.mot -= $pos_x1 tep.mot 
execute store result entity @e[tag=slp.drop,limit=1] Motion[1] double 0.001 run scoreboard players operation $pos_y2 tep.mot -= $pos_y1 tep.mot 
execute store result entity @e[tag=slp.drop,limit=1] Motion[2] double 0.001 run scoreboard players operation $pos_z2 tep.mot -= $pos_z1 tep.mot 

data modify entity @e[type=item,sort=nearest,limit=1,tag=slp.drop] Item set from entity @s Inventory[{Slot:-106b}] 
playsound enchant.thorns.hit master @s ~ ~ ~ 3 .7 1 
item replace entity @s weapon.offhand with air 