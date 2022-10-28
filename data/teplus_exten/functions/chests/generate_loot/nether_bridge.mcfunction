#Run the raycast
execute at @s anchored eyes positioned ^ ^ ^ run function teplus_exten:chests/raycast_chest 
execute at @e[type=marker,tag=teplus.ray,limit=1,sort=nearest] run function teplus_exten:chests/insert_book/nether_bridge

kill @e[type=marker,tag=teplus.ray,limit=1,sort=nearest]

#Grant the advancement
advancement grant @s[advancements={enchantplus:progress/start/extensions/chest_loot=false}] only enchantplus:progress/start/extensions/chest_loot