scoreboard players operation @s BaseCharge += #add.bachrg BaseCharge

#Limit the capacity based on the tiers
execute if score @s[tag=teplus.tier1] tep.CbBf.qnty matches ..11 if score @s BaseCharge matches 101.. run function enchantplus:entity/marker/add_base_charge/is_full
execute if score @s[tag=teplus.tier2] tep.CbBf.qnty matches ..17 if score @s BaseCharge matches 201.. run function enchantplus:entity/marker/add_base_charge/is_full
execute if score @s[tag=teplus.tier3] tep.CbBf.qnty matches ..23 if score @s BaseCharge matches 301.. run function enchantplus:entity/marker/add_base_charge/is_full
execute if score @s[tag=teplus.tier4] tep.CbBf.qnty matches ..29 if score @s BaseCharge matches 401.. run function enchantplus:entity/marker/add_base_charge/is_full
execute if score @s[tag=teplus.tier5] tep.CbBf.qnty matches 30.. if score @s BaseCharge matches 501.. run function enchantplus:entity/marker/add_base_charge/is_full

execute unless entity @s[tag=ch.full] run kill @e[type=item,tag=charge.try,sort=nearest,distance=..5]
execute unless entity @s[tag=ch.full] run playsound minecraft:item.bottle.fill_dragonbreath ambient @a[distance=..15] ~ ~ ~ 5 1.5
execute unless entity @s[tag=ch.full] run playsound minecraft:item.bottle.fill_dragonbreath ambient @a[distance=..15] ~ ~ ~ 5 1.5
execute unless entity @s[tag=ch.full] run particle dust_color_transition 0.588 1.000 0.973 1 0.078 0.847 1.000 ~ ~1 ~ 0.01 .5 0.01 1 50

scoreboard players set #add.bachrg BaseCharge 0