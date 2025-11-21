### Debug Message ###
tellraw @a[tag=teplus.debug_mode] [{"text":"TE+» ","color":"#65DAD4","bold":true},{"text":"(Enchanting): ","color":"#24E3F9","italic":true,"bold":false},{"text":"Clearing levels and base charge","color":"gray","italic":true,"bold":false}]

$xp add @p[scores={teplus.drop=1..}] $(xp_remove) levels
scoreboard players operation @e[type=marker,tag=teplus.enchanting_table,tag=teplus.is_enchanting,distance=..1] teplus.base_charge -= #teplus.bachamt teplus.base_charge

scoreboard players set @a[distance=..10] teplus.drop 0
particle enchant ~ ~1 ~ 0.1 0.1 0.1 10 5000
playsound block.enchantment_table.use master @a[distance=..30] ~ ~ ~ 100

# Small chance to get an xp Crystal
#execute if predicate enchantplus:random_chance/15 at @e[type=marker,tag=teplus.enchanting_table,tag=teplus.tier5,distance=..1] positioned ~ ~1 ~ run function enchantplus:loot/loot_system/give_xp_crystal/core