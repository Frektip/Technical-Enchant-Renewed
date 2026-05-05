# @Context: as enchanting table marker
# This function runs when:
#  - the enchanting table lowers it's tier
#  - the enchanting table is broken (from function: give_back_all)

# Return the correct amount of items based on the Tier
scoreboard players operation #sum.bachrg teplus.base_charge = @s teplus.base_charge

scoreboard players set @s[tag=!teplus.tier1] teplus.base_charge 0
scoreboard players set @s[tag=teplus.tier1,tag=!teplus.tier2,scores={teplus.base_charge=100..}] teplus.base_charge 100
scoreboard players set @s[tag=teplus.tier2,tag=!teplus.tier3,scores={teplus.base_charge=200..}] teplus.base_charge 200
scoreboard players set @s[tag=teplus.tier3,tag=!teplus.tier4,scores={teplus.base_charge=300..}] teplus.base_charge 300
scoreboard players set @s[tag=teplus.tier4,tag=!teplus.tier5,scores={teplus.base_charge=400..}] teplus.base_charge 400

# Scoreboard Stuff, detect when it is an even or odd number
scoreboard players operation $rest teplus.base_charge = #sum.bachrg teplus.base_charge

scoreboard players operation $rest teplus.base_charge %= #qnty_per_item teplus.game_opts

execute if score $rest teplus.base_charge matches 2 run scoreboard players set $rest teplus.base_charge 0

scoreboard players operation #sum.bachrg teplus.base_charge -= @s teplus.base_charge

scoreboard players operation #sum.bachrg teplus.base_charge /= #qnty_per_item teplus.game_opts
scoreboard players operation #sum.bachrg teplus.base_charge += $rest teplus.base_charge


# Summon a dummy item
execute if score #sum.bachrg teplus.base_charge matches 1.. run summon item ~ ~1 ~ {PickupDelay:20,Motion:[0.0,0.25,0.0],Tags:["teplus.temp_res_return"],Item:{id:"minecraft:stone_button",count:1b}}

execute if score #sum.bachrg teplus.base_charge matches 1.. as @e[type=item,tag=!teplus.modify_done,tag=teplus.temp_res_return,limit=1,sort=nearest] run function teplus:blocks/enchanting_table/base_charge/events/return_item/modify_item

execute if score #sum.bachrg teplus.base_charge matches 1.. run playsound minecraft:item.axe.scrape ambient @a[distance=..15] ~ ~ ~ 5 1.8
execute if score #sum.bachrg teplus.base_charge matches 1.. run playsound minecraft:item.axe.scrape ambient @a[distance=..15] ~ ~ ~ 5 1.8
execute if score #sum.bachrg teplus.base_charge matches 1.. run particle dust_color_transition{from_color:[0.678,0.631,1.000],to_color:[0.918,0.580,1.000],scale:1} ~ ~1 ~ .01 .5 .01 1 50

scoreboard players set #sum.bachrg teplus.base_charge 0

tag @s[scores={teplus.base_charge=100}] add teplus.charge_full
tag @s[scores={teplus.base_charge=200}] add teplus.charge_full
tag @s[scores={teplus.base_charge=300}] add teplus.charge_full
tag @s[scores={teplus.base_charge=400}] add teplus.charge_full
tag @s[scores={teplus.base_charge=500}] add teplus.charge_full