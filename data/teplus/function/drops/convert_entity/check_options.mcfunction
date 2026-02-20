# Change the mob death loot table
execute as @s run function teplus:drops/convert_entity/set_loot

# Add buffs in case the option is enabled
execute if score #drop.buffs teplus.game_opts matches 0 run function teplus:drops/convert_entity/set_buffs/core

playsound block.enchantment_table.use master @a[distance=..25] ~ ~ ~ 5 0.8
playsound block.amethyst_block.fall master @a[distance=..25] ~ ~ ~ 5 .8

tag @s add teplus.drop.can

###Debug Message###
tellraw @a[tag=teplus.debug_mode] [{"text":"TE+» ","color":"#65DAD4","bold":true},{"text":"An enchanted mob has spawned! ","color":"gray","italic":true,"bold":false}]