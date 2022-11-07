###Debug Message###
tellraw @a[tag=teplus.pydbgm] ["",{"text":"TE+» ","color":"#65DAD4","bold":true},{"text":"Placed an Admin Box, link a marker to it","color":"gray","italic":true,"bold":false}]
particle happy_villager ~ ~ ~ 0 3 0 0 100 force @a[tag=teplus.pydbgm]

#Summon a marker and add the corrent score ID
summon marker ~.5 ~ ~.5 {Tags:["teplus.marker","teplus.admin_box"]}
scoreboard players operation @e[type=marker,tag=teplus.admin_box,limit=1,sort=nearest] tep.plid = #admin.this tep.plid

#Add decorative things
summon glow_item_frame ~ ~ ~ {Invulnerable:1b,Invisible:1b,Fixed:1b,Tags:["teplus.technical_anvil_decorative"],Item:{id:"minecraft:enchanted_book",Count:1b}}

summon item_frame ~ ~ ~ {Facing:2b,Invulnerable:1b,Invisible:1b,Fixed:1b,Tags:["teplus.technical_anvil_decorative"],Item:{id:"minecraft:lapis_lazuli",Count:1b}}

#Kill marker
kill @s