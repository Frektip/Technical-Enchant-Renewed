#Check if the player is completelly in lava as well as in fire
#Then check is it doesn't have a delay tag to trigger the enchantment
execute if block ~ ~ ~ lava if block ~ ~1 ~ lava if predicate enchantplus:is_on_fire run tag @s[tag=!flsk.dly] add lv.vis 
execute if entity @s[tag=lv.vis,tag=!lv.spec,tag=!flsk.dly] if predicate enchantplus:is_sneaking run function enchantplus:result/flaming_skin/lock 

#Once the marker is summoned, tp the correct player to it
execute if entity @s[tag=lv.spec] as @e[tag=arc.vis,type=area_effect_cloud] if score @s tep.plid = @p tep.plid at @s run function enchantplus:result/flaming_skin/see 
#After 3 seconds return the player back again to it's previous gamemode
execute if score @s TimerinLava matches 60.. run function enchantplus:result/flaming_skin/end 


#The player can't trigger the enchantment again if it has the tag delay
execute if entity @s[tag=flsk.dly] run function enchantplus:result/flaming_skin/delay 


#Check if the player isn't in lava
execute if entity @s[tag=lv.vis] if block ~ ~ ~ #enchantplus:flamingskin if block ~ ~1 ~ #enchantplus:flamingskin run tag @s remove lv.vis 