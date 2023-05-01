#Return the correct amount of items based on the Tier
scoreboard players operation #sum.bachrg BaseCharge = @s BaseCharge

scoreboard players set @s[tag=!teplus.tier1] BaseCharge 0
scoreboard players set @s[tag=teplus.tier1,tag=!teplus.tier2,scores={BaseCharge=100..}] BaseCharge 100
scoreboard players set @s[tag=teplus.tier2,tag=!teplus.tier3,scores={BaseCharge=200..}] BaseCharge 200
scoreboard players set @s[tag=teplus.tier3,tag=!teplus.tier4,scores={BaseCharge=300..}] BaseCharge 300
scoreboard players set @s[tag=teplus.tier4,tag=!teplus.tier5,scores={BaseCharge=400..}] BaseCharge 400

#Scoreboard Stuff, detect when it is an even or odd number
scoreboard players operation $rest BaseCharge = #sum.bachrg BaseCharge

scoreboard players operation $rest BaseCharge %= #qtychrg game.Opts

execute if score $rest BaseCharge matches 2 run scoreboard players set $rest BaseCharge 0

scoreboard players operation #sum.bachrg BaseCharge -= @s BaseCharge

scoreboard players operation #sum.bachrg BaseCharge /= #qtychrg game.Opts
scoreboard players operation #sum.bachrg BaseCharge += $rest BaseCharge


#Summon a dummy item
execute if score #sum.bachrg BaseCharge matches 1.. run summon item ~ ~1 ~ {PickupDelay:20,Motion:[0.0,0.25,0.0],Tags:["teplus.temp_res_return"],Item:{id:"minecraft:stone_button",Count:1b}}

execute if score #sum.bachrg BaseCharge matches 1.. as @e[type=item,tag=!teplus.modify_done,tag=teplus.temp_res_return,limit=1,sort=nearest] run function enchantplus:entity/marker/add_base_charge/modify_item

execute if score #sum.bachrg BaseCharge matches 1.. run playsound minecraft:item.axe.scrape ambient @a[distance=..15] ~ ~ ~ 5 1.8
execute if score #sum.bachrg BaseCharge matches 1.. run playsound minecraft:item.axe.scrape ambient @a[distance=..15] ~ ~ ~ 5 1.8
execute if score #sum.bachrg BaseCharge matches 1.. run particle dust_color_transition 0.678 0.631 1.000 1 0.918 0.580 1.000 ~ ~1 ~ 0.01 .5 0.01 1 50

scoreboard players set #sum.bachrg BaseCharge 0

tag @s[scores={BaseCharge=100}] add ch.full
tag @s[scores={BaseCharge=200}] add ch.full
tag @s[scores={BaseCharge=300}] add ch.full
tag @s[scores={BaseCharge=400}] add ch.full
tag @s[scores={BaseCharge=500}] add ch.full
