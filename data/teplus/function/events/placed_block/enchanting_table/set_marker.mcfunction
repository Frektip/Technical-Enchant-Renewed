###Debug###
tellraw @a[tag=teplus.debug_mode] [{"text":"TE+» ","color":"#65DAD4","bold":true},{"text":"Placed an enchanting table, link a marker to it","color":"gray","italic":true,"bold":false}]
tellraw @a[tag=teplus.debug_mode] ["",{"text":"TE+» ","color":"#65DAD4","bold":true},{"text":"Summon lapis lazuli item display to the enchanting table","color":"gray","italic":true,"bold":false}]
particle happy_villager ~ ~ ~ 0 3 0 0 100 force @a[tag=teplus.debug_mode]

# Center marker in the middle of the enchanting table
summon marker ~.5 ~ ~.5 {Tags:["teplus.marker","teplus.enchanting_table"]}

summon item_display ~.5 ~1.1 ~ {Tags:["teplus.decorative","teplus.bookshelf_level","teplus.level1"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.6f,0.6f,0.6f]},item:{id:"minecraft:lapis_lazuli",count:1}}

#summon item_display ~.5 ~-1.1 ~.5 {Tags:["teplus.decorative","teplus.bookshelf_level","teplus.level2"],item:{id:"minecraft:lapis_lazuli",count:1}}

#summon item_display ~.5 ~-1.1 ~.5 {Tags:["teplus.decorative","teplus.bookshelf_level","teplus.level3"],item:{id:"minecraft:lapis_lazuli",count:1}}

#Kill raycast marker
kill @s