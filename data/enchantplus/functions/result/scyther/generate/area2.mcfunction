#Particle
execute if score #tslpm game.Opts matches 1 run particle sweep_attack ~ ~ ~ 1 .1 1 .5 15
playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 5 1.3
playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 5 1.3

#Surface area, Similar as UP - DOWN
#3x3
summon marker ~1 ~ ~1 {Tags:["teplus.marker","teplus.break_block","teplus.mark.scyther"]}
summon marker ~1 ~ ~-1 {Tags:["teplus.marker","teplus.break_block","teplus.mark.scyther"]}
summon marker ~-1 ~ ~-1 {Tags:["teplus.marker","teplus.break_block","teplus.mark.scyther"]}
summon marker ~-1 ~ ~1 {Tags:["teplus.marker","teplus.break_block","teplus.mark.scyther"]}
summon marker ~ ~ ~-1 {Tags:["teplus.marker","teplus.break_block","teplus.mark.scyther"]}
summon marker ~ ~ ~1 {Tags:["teplus.marker","teplus.break_block","teplus.mark.scyther"]}
summon marker ~-1 ~ ~ {Tags:["teplus.marker","teplus.break_block","teplus.mark.scyther"]}
summon marker ~1 ~ ~ {Tags:["teplus.marker","teplus.break_block","teplus.mark.scyther"]}

#Outer 5x5
summon marker ~2 ~ ~ {Tags:["teplus.marker","teplus.break_block","teplus.mark.scyther"]}
summon marker ~-2 ~ ~ {Tags:["teplus.marker","teplus.break_block","teplus.mark.scyther"]}
summon marker ~ ~ ~2 {Tags:["teplus.marker","teplus.break_block","teplus.mark.scyther"]}
summon marker ~ ~ ~-2 {Tags:["teplus.marker","teplus.break_block","teplus.mark.scyther"]}
summon marker ~-2 ~ ~-2 {Tags:["teplus.marker","teplus.break_block","teplus.mark.scyther"]}
summon marker ~-2 ~ ~2 {Tags:["teplus.marker","teplus.break_block","teplus.mark.scyther"]}
summon marker ~2 ~ ~-2 {Tags:["teplus.marker","teplus.break_block","teplus.mark.scyther"]}
summon marker ~2 ~ ~2 {Tags:["teplus.marker","teplus.break_block","teplus.mark.scyther"]}
summon marker ~1 ~ ~2 {Tags:["teplus.marker","teplus.break_block","teplus.mark.scyther"]}
summon marker ~2 ~ ~1 {Tags:["teplus.marker","teplus.break_block","teplus.mark.scyther"]}
summon marker ~-1 ~ ~-2 {Tags:["teplus.marker","teplus.break_block","teplus.mark.scyther"]}
summon marker ~-2 ~ ~-1 {Tags:["teplus.marker","teplus.break_block","teplus.mark.scyther"]}
summon marker ~-1 ~ ~2 {Tags:["teplus.marker","teplus.break_block","teplus.mark.scyther"]}
summon marker ~-2 ~ ~1 {Tags:["teplus.marker","teplus.break_block","teplus.mark.scyther"]}
summon marker ~1 ~ ~-2 {Tags:["teplus.marker","teplus.break_block","teplus.mark.scyther"]}
summon marker ~2 ~ ~-1 {Tags:["teplus.marker","teplus.break_block","teplus.mark.scyther"]}