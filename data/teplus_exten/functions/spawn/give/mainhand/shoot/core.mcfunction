#Detect for mobs that can hold ONLY bow or Only crossbows
execute if entity @s[type=#teplus_exten:spawn/crossbow_only] run function teplus_exten:spawn/give/mainhand/shoot/crossbow_only
execute if entity @s[type=#teplus_exten:spawn/bow_only] run function teplus_exten:spawn/give/mainhand/shoot/bow_only

#Give a nbt tag for enchantment recognition (bow/crossbow ONLY)
data modify entity @s HandItems[0].tag.CustomArrow set value 1

#Set Lore
function teplus_exten:spawn/give/mainhand/set_lore

#Set drop chances
execute if score #spwdrop_mnh tepext.manager matches 0.. store result entity @s HandDropChances[0] float 0.01 run scoreboard players get #spwdrop_mnh tepext.manager

tag @s add tepspw_hsmh