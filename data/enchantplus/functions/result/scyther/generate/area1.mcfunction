#Particle
execute if score #tslpm game.Opts matches 1 run particle sweep_attack ~ ~ ~ .5 .1 .5 .5 15
playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 5 1.3
playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 5 1.3

#Surface area, Similar as UP - DOWN
summon marker ~1 ~ ~1 {Tags:["teplus.marker","teplus.break_block","teplus.mark.scyther"]}
summon marker ~1 ~ ~-1 {Tags:["teplus.marker","teplus.break_block","teplus.mark.scyther"]}
summon marker ~-1 ~ ~-1 {Tags:["teplus.marker","teplus.break_block","teplus.mark.scyther"]}
summon marker ~-1 ~ ~1 {Tags:["teplus.marker","teplus.break_block","teplus.mark.scyther"]}
summon marker ~ ~ ~-1 {Tags:["teplus.marker","teplus.break_block","teplus.mark.scyther"]}
summon marker ~ ~ ~1 {Tags:["teplus.marker","teplus.break_block","teplus.mark.scyther"]}
summon marker ~-1 ~ ~ {Tags:["teplus.marker","teplus.break_block","teplus.mark.scyther"]}
summon marker ~1 ~ ~ {Tags:["teplus.marker","teplus.break_block","teplus.mark.scyther"]}