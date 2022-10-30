tag @e[type=item,sort=nearest,limit=1,tag=teplus.item_timb,tag=!teplus.tbdone] add teplus.tbdone

summon area_effect_cloud ~ ~ ~ {Tags:["TimberMaxRange"],Duration:1} 
execute if score #tmbr Enchopts matches 0 run function enchantplus:result/timber/core