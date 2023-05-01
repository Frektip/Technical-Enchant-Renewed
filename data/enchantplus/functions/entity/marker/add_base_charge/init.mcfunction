#Reset the Charge addition value
scoreboard players set #add.bachrg BaseCharge 0

#Compare the item id
execute as @e[type=item,sort=nearest,distance=..2,tag=!charge.try] run function enchantplus:entity/marker/add_base_charge/compare_charge


#Update if the item matches
execute if score #add.bachrg BaseCharge matches 0 run tag @s add charge_fail
execute if score #add.bachrg BaseCharge matches 1.. if entity @s[tag=!ch.full] run function enchantplus:entity/marker/add_base_charge/update_charge