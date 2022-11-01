tag @p[tag=TECHA.try] add TECHA.try
playsound entity.enderman.teleport master @p ~ ~ ~ 1 0 1

#Message error for normal combining
execute if entity @s[tag=!No.xpcomb] run tellraw @p ["",{"translate":"You don't have at least ","color":"red"},{"score":{"name":"#xprq","objective":"game.Opts"},"color":"dark_red"},{"translate":" Experience Levels!","color":"red"}]

#Message error for special combining
execute if entity @s[tag=No.xpcomb] run tellraw @p ["",{"translate":"You don't have at least ","color":"red"},{"text":"1","color":"dark_red"},{"translate":" Experience Levels!","color":"red"}]