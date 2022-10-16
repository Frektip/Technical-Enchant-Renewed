###Debug Message###
tellraw @a[tag=teplus.pydbgm] ["",{"text":"TE+» ","color":"#65DAD4","bold":true},{"text":"Placed an enchanting table, link a marker to it","color":"gray","italic":true,"bold":false}]
tellraw @a[tag=teplus.pydbgm] ["",{"text":"TE+» ","color":"#65DAD4","bold":true},{"text":"Summon armor stands to the enchanting table","color":"gray","italic":true,"bold":false}]
particle happy_villager ~ ~ ~ 0 3 0 0 100 force @a[tag=teplus.pydbgm]

#Center marker in the middle of the enchanting table
summon marker ~.5 ~ ~.5 {Tags:["teplus.marker","teplus.enchanting_table"]}

#Other armor stands that will spin and display the charged bookshelf level
#These armor stands are at the center and I only set it's head rotation (this was a pain
# to get the correct rotation :/)
summon armor_stand ~.5 ~-1.1 ~.5 {Invulnerable:1b,Marker:1b,Invisible:1b,NoGravity:1b,Tags:["teplus.armor_stand","teplus.bookshelf_level","teplus.level1"],Pose:{Head:[0f,90f,0f]},DisabledSlots:4144959}

summon armor_stand ~.5 ~-1.1 ~.5 {Invulnerable:1b,Marker:1b,Invisible:1b,NoGravity:1b,Tags:["teplus.armor_stand","teplus.bookshelf_level","teplus.level2"],Pose:{Head:[0f,-25f,0f]},DisabledSlots:4144959}

summon armor_stand ~.5 ~-1.1 ~.5 {Invulnerable:1b,Marker:1b,Invisible:1b,NoGravity:1b,Tags:["teplus.armor_stand","teplus.bookshelf_level","teplus.level3"],Pose:{Head:[0f,215f,0f]},DisabledSlots:4144959}
#Kill marker
kill @s

#Functions to delay the armor stand animation
schedule function enchantplus:enchanting_table/place/14_delay 14t
schedule function enchantplus:enchanting_table/place/28_delay 28t