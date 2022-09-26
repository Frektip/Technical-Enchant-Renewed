###Debug Message###
tellraw @a[tag=teplus.pydbgm] ["",{"text":"TE+» ","color":"#65DAD4","bold":true},{"text":"(Mining+): ","color":"#7F9DA5","italic":true,"bold":false},{"text":"Mined in East - West direction","color":"gray","italic":true,"bold":false}]
tellraw @a[tag=teplus.pydbgm] ["",{"text":"TE+» ","color":"#65DAD4","bold":true},{"text":"(Mining+): ","color":"#7F9DA5","italic":true,"bold":false},{"text":"Markers generated, breaking blocks in 3x3 area","color":"gray","italic":true,"bold":false}]

#EAST - WEST
summon marker ~ ~ ~-1 {Tags:["teplus.marker","teplus.break_block","teplus.mark.minplus"]}
summon marker ~ ~ ~1 {Tags:["teplus.marker","teplus.break_block","teplus.mark.minplus"]}
summon marker ~ ~1 ~-1 {Tags:["teplus.marker","teplus.break_block","teplus.mark.minplus"]}
summon marker ~ ~1 ~1 {Tags:["teplus.marker","teplus.break_block","teplus.mark.minplus"]}
summon marker ~ ~-1 ~-1 {Tags:["teplus.marker","teplus.break_block","teplus.mark.minplus"]}
summon marker ~ ~-1 ~1 {Tags:["teplus.marker","teplus.break_block","teplus.mark.minplus"]}
summon marker ~ ~1 ~ {Tags:["teplus.marker","teplus.break_block","teplus.mark.minplus"]}
summon marker ~ ~-1 ~ {Tags:["teplus.marker","teplus.break_block","teplus.mark.minplus"]}