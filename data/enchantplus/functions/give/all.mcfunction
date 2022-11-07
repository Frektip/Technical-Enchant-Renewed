#Give barrel (it is a lot LOL)
loot give @s loot enchantplus:admin_box

#Grafical
tellraw @s {"translate":"\n\n\n\n\n\n"} 
tellraw @s ["",{"translate":"<TE+>","color":"aqua"},{"translate":" You have received","color":"yellow"},{"translate":" all max level","color":"green"},{"translate":" custom and vanilla enchantments!","color":"yellow"}] 
playsound block.note_block.pling master @s ~ ~ ~ 3 1 
execute at @s run particle flash ~ ~1 ~ 0.3 0 0.3 0 3 