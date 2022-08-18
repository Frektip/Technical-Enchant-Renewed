#Detect for mobs that can hold ONLY bow or Only crossbows
execute if entity @s[type=#teplus_exten:spawn/crossbow_only] run function teplus_exten:spawn/give/offhand/shoot/crossbow_only
execute if entity @s[type=#teplus_exten:spawn/bow_only] run function teplus_exten:spawn/give/offhand/shoot/bow_only

#Give a nbt tag for enchantment recognition (bow/crossbow ONLY)
data modify entity @s HandItems[1].tag.CustomArrow set value 1

#Set Lore
function teplus_exten:spawn/give/offhand/set_lore

#Set drop chances
execute if score #spwdrop_ofh tepext.manager matches 0.. store result entity @s HandDropChances[1] float 0.01 run scoreboard players get #spwdrop_ofh tepext.manager

tag @s add tepspw_hsofh