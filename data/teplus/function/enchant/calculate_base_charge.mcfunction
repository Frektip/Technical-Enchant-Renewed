tellraw @a[tag=teplus.debug_mode] [{"text":"TE+» ","color":"#65DAD4","bold":true},{"text":"(Enchanting★★): ","color":"#24E3F9","italic":true,"bold":false},{"text":"Calculating base charge based on enchantment & level","color":"gray","italic":true,"bold":false}]

# Get the level to be added
scoreboard players set #add_from_level teplus.base_charge 0
execute store result score #add_from_level teplus.base_charge run data get storage teplus:loot Temp[0].lvl

# Store the Base Charge that is going to be removed
execute store result score #charge_remove teplus.base_charge run data get storage teplus:loot Temp[0].Charge

tellraw @a[tag=teplus.debug_mode] [{"text":"    Default value: ","color":"red"},{"score":{"name":"#charge_remove","objective":"teplus.base_charge"},"color":"red"}]

execute if score #add_from_level teplus.base_charge matches 2.. run scoreboard players operation #charge_remove teplus.base_charge += #add_from_level teplus.base_charge


scoreboard players operation #teplus.bachamt teplus.base_charge += #charge_remove teplus.base_charge
tellraw @a[tag=teplus.debug_mode] [{"text":"    With levels added: ","color":"#75AAF3"},{"score":{"name":"#teplus.bachamt","objective":"teplus.base_charge"},"color":"#75AAF3"}]



#Detect if there is a Tier 4 or 5 Enchanting Setup
scoreboard players set $discount teplus.base_charge 0
execute if entity @e[type=marker,tag=teplus.tier5,distance=..1] run scoreboard players set $discount teplus.base_charge 2

execute if entity @e[type=marker,tag=!teplus.tier5,tag=teplus.tier4,distance=..1] run scoreboard players set $discount teplus.base_charge 1

execute if score $discount teplus.base_charge matches 1.. run function teplus:enchant/give_discount