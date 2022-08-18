#In case it is a Drowned
execute if entity @s[type=minecraft:drowned] run function teplus_exten:spawn/give/offhand/melee/is_drowned
execute unless entity @s[type=minecraft:drowned] run function teplus_exten:spawn/give/offhand/melee/other

#Set Lore
function teplus_exten:spawn/give/offhand/set_lore

#Set drop chances
execute if score #spwdrop_ofh tepext.manager matches 0.. store result entity @s HandDropChances[1] float 0.01 run scoreboard players get #spwdrop_ofh tepext.manager

tag @s add tepspw_hsofh