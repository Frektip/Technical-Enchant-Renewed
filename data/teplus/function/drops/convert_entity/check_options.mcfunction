execute if score #drop.looting teplus.game_opts matches 0 run function teplus:drops/set_loot/looting/chance
execute if score #drop.looting teplus.game_opts matches 1 run function teplus:drops/set_loot/normal/chance

execute if score #drop.buffs teplus.game_opts matches 0 run function teplus_exten:drops/set_buffs/core

playsound block.enchantment_table.use master @a[distance=..25] ~ ~ ~ 5 0.8
playsound block.amethyst_block.fall master @a[distance=..25] ~ ~ ~ 5 .8

tag @s add teplus.drop.can

###Debug Message###
tellraw @a[tag=teplus.debug_mode] [{"text":"TE+» ","color":"#65DAD4","bold":true},{"text":"An enchanted mob has spawned! ","color":"gray","italic":true,"bold":false}]