#Calculations before updating the real value
scoreboard players operation #sum.bachrg BaseCharge = @s BaseCharge

scoreboard players set @s[tag=teplus.tier1] BaseCharge 100
scoreboard players set @s[tag=teplus.tier2] BaseCharge 200
scoreboard players set @s[tag=teplus.tier3] BaseCharge 300
scoreboard players set @s[tag=teplus.tier4] BaseCharge 400
scoreboard players set @s[tag=teplus.tier5] BaseCharge 500

#Update the item
execute if score #sum.bachrg BaseCharge > @s BaseCharge run function enchantplus:entity/marker/add_base_charge/return_item

tag @s add ch.full