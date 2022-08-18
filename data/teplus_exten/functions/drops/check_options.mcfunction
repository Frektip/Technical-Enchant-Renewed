execute if score #drop.looting tepext.manager matches 0 run function teplus_exten:drops/set_loot/looting/chance
execute if score #drop.looting tepext.manager matches 1 run function teplus_exten:drops/set_loot/normal/chance

execute if score #drop.buffs tepext.manager matches 0 run function teplus_exten:drops/set_buffs/core

playsound block.enchantment_table.use master @a[distance=..25] ~ ~ ~ 5 0.8
playsound block.amethyst_block.fall master @a[distance=..25] ~ ~ ~ 5 .8

tag @s add tepdrop.can