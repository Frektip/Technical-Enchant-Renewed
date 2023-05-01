data modify entity @s Item.id set from storage teplus:register Resource[0].Value.id
data modify entity @s Item.tag set from storage teplus:register Resource[0].Value.tag

execute store result entity @s Item.Count byte 1 run scoreboard players get #sum.bachrg BaseCharge

tag @s add teplus.modify_done