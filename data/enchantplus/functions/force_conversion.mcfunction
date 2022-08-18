
execute if score $Drops tepext.manager matches 0 as @e[type=!#teplus_exten:drops/ignore,tag=!smithed.entity,tag=!tepdrop.can,distance=..7,sort=nearest,limit=1] at @s run function teplus_exten:drops/check_options


#Error Messages
execute if score $Drops tepext.manager matches 0 unless entity @e[distance=1..7] run tellraw @s [{"text":"\n\n\n"},{"translate":"Error! ","bold":true,"color":"dark_red"},{"translate":"No entity has been found nearby","color":"red","bold":false},{"text":"\n\n\n"}]

execute if score $Drops tepext.manager matches 0 if entity @e[type=#teplus_exten:drops/ignore,distance=1..7,sort=nearest,limit=1] run tellraw @s [{"text":"\n\n\n"},{"translate":"Error! ","bold":true,"color":"dark_red"},{"translate":"This entity can't convert into an enchanted mob","color":"red","bold":false},{"text":"\n\n\n"}]


execute if score $Drops tepext.manager matches 1 run tellraw @s [{"text":"\n\n\n"},{"translate":"Error! ","bold":true,"color":"dark_red"},{"translate":"Mob Drops Extention is currently disabled","color":"red","bold":false},{"text":"\n\n\n"}]

