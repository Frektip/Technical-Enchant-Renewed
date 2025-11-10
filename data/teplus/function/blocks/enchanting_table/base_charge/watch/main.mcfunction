# Reset the Charge addition value
scoreboard players set #add.bachrg teplus.base_charge 0

# Compare the item id, for this we watch "as" the item being droped
execute as @e[type=item,sort=nearest,distance=..2,tag=!teplus.charge_try] run function teplus:blocks/enchanting_table/base_charge/watch/compare_charge

# Update if the item matches
execute if score #add.bachrg teplus.base_charge matches 0 run return run tag @s add teplus.charge_fail
execute if score #add.bachrg teplus.base_charge matches 1.. if entity @s[tag=!teplus.charge_full] run function teplus:blocks/enchanting_table/base_charge/events/update_charge