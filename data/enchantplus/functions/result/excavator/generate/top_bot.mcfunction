###Debug Message###
tellraw @a[tag=teplus.pydbgm] ["",{"text":"TE+» ","color":"#65DAD4","bold":true},{"text":"(Exavator): ","color":"#9B6446","italic":true,"bold":false},{"text":"Mined in Up - Down direction","color":"gray","italic":true,"bold":false}]
tellraw @a[tag=teplus.pydbgm] ["",{"text":"TE+» ","color":"#65DAD4","bold":true},{"text":"(Exavator): ","color":"#9B6446","italic":true,"bold":false},{"text":"Markers generated, breaking blocks in 3x3 area","color":"gray","italic":true,"bold":false}]

#UP - DOWN
summon marker ~1 ~ ~1 {Tags:["teplus.marker","teplus.break_block","teplus.mark.excav"]}
summon marker ~1 ~ ~-1 {Tags:["teplus.marker","teplus.break_block","teplus.mark.excav"]}
summon marker ~-1 ~ ~-1 {Tags:["teplus.marker","teplus.break_block","teplus.mark.excav"]}
summon marker ~-1 ~ ~1 {Tags:["teplus.marker","teplus.break_block","teplus.mark.excav"]}
summon marker ~ ~ ~-1 {Tags:["teplus.marker","teplus.break_block","teplus.mark.excav"]}
summon marker ~ ~ ~1 {Tags:["teplus.marker","teplus.break_block","teplus.mark.excav"]}
summon marker ~-1 ~ ~ {Tags:["teplus.marker","teplus.break_block","teplus.mark.excav"]}
summon marker ~1 ~ ~ {Tags:["teplus.marker","teplus.break_block","teplus.mark.excav"]}