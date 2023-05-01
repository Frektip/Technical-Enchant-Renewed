#Store the Base Charge that is going to be removed
#Get the level to be added
scoreboard players set #add_from_level BaseCharge 0
execute store result score #add_from_level BaseCharge run data get storage teplus:loot Temp[0].lvl

execute store result score #charge_remove BaseCharge run data get storage teplus:loot Temp[0].Charge
execute if score #add_from_level BaseCharge matches 2.. run scoreboard players operation #charge_remove BaseCharge += #add_from_level BaseCharge

tellraw @a[tag=teplus.pydbgm] ["",{"text":"Init: ","color":"red"},{"score":{"name":"#charge_remove","objective":"BaseCharge"},"color":"red"}]

scoreboard players operation #teplus.bachamt BaseCharge += #charge_remove BaseCharge
tellraw @a[tag=teplus.pydbgm] ["",{"text":"Final: ","color":"#75AAF3"},{"score":{"name":"#teplus.bachamt","objective":"BaseCharge"},"color":"#75AAF3"}]



#Detect if there is a Tier 4 or 5 Enchanting Setup
scoreboard players set $Discount BaseCharge 0
execute if entity @e[type=marker,tag=teplus.tier5,distance=..1] run scoreboard players set $Discount BaseCharge 2

execute if entity @e[type=marker,tag=!teplus.tier5,tag=teplus.tier4,distance=..1] run scoreboard players set $Discount BaseCharge 1

execute if score $Discount BaseCharge matches 1.. run function enchantplus:loot/give_discount