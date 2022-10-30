tag @e[type=item,sort=nearest,limit=1,tag=teplus.item_veinmin,tag=!teplus.vmdone] add teplus.vmdone

summon area_effect_cloud ~ ~ ~ {Tags:["VeinMinerMaxRange"],Duration:1} 
execute if score #vnmr Enchopts matches 0 run function enchantplus:result/vein_miner/core