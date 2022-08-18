#In case it is a Drowned
execute if entity @s[type=drowned] run function teplus_exten:spawn/give/mainhand/melee/is_drowned
execute unless entity @s[type=drowned] run function teplus_exten:spawn/give/mainhand/melee/other

#Set Lore
function teplus_exten:spawn/give/mainhand/set_lore

#Set drop chances
execute if score #spwdrop_mnh tepext.manager matches 0.. store result entity @s HandDropChances[0] float 0.01 run scoreboard players get #spwdrop_mnh tepext.manager

tag @s add tepspw_hsmh