###Debug###
tellraw @a[tag=teplus.debug_mode] [{"text":"TE+» ","color":"#65DAD4","bold":true},{"text":"Placed an enchanting table, link a marker to it","color":"gray","italic":true,"bold":false}]
tellraw @a[tag=teplus.debug_mode] ["",{"text":"TE+» ","color":"#65DAD4","bold":true},{"text":"Summon lapis lazuli item display to the enchanting table","color":"gray","italic":true,"bold":false}]
particle happy_villager ~ ~ ~ 0 3 0 0 100 force @a[tag=teplus.debug_mode]

# Center marker in the middle of the enchanting table
summon marker ~.5 ~ ~.5 {Tags:["teplus.marker","teplus.enchanting_table"]}

# Summon decorative armor stands
summon armor_stand ~.5 ~-1.1 ~.5 {Invulnerable:1b,Marker:1b,Invisible:1b,NoGravity:1b,NoBasePlate:1b,Tags:["teplus.armor_stand","teplus.bookshelf_level","teplus.level1","teplus.init_stand"],Pose:{Head:[0f,90f,0f]},DisabledSlots:4144959}

summon armor_stand ~.5 ~-1.1 ~.5 {Invulnerable:1b,Marker:1b,Invisible:1b,NoGravity:1b,NoBasePlate:1b,Tags:["teplus.armor_stand","teplus.bookshelf_level","teplus.level2"],Pose:{Head:[0f,-25f,0f]},DisabledSlots:4144959}

summon armor_stand ~.5 ~-1.1 ~.5 {Invulnerable:1b,Marker:1b,Invisible:1b,NoGravity:1b,NoBasePlate:1b,Tags:["teplus.armor_stand","teplus.bookshelf_level","teplus.level3"],Pose:{Head:[0f,215f,0f]},DisabledSlots:4144959}

# Kill raycast marker
kill @s

# Functions to delay the armor stand animation for tier 2 and tier 3
schedule function teplus:events/placed_block/enchanting_table/init_tier2_stand 14t
schedule function teplus:events/placed_block/enchanting_table/init_tier3_stand 28t