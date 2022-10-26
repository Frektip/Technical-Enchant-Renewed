#At the bookshelf marker init, check if an enchanting table with tier 3 tag is near
#If it's successful then grant the advancement to the nearest player without that advancement
execute as @e[type=marker,tag=teplus.charged_bookshelf_init] at @s if entity @e[type=marker,tag=teplus.tier3,distance=2..5,sort=nearest] run advancement grant @p[advancements={enchantplus:progress/start/charged_bookshelf_challenge=false}] only enchantplus:progress/start/charged_bookshelf_challenge

execute as @e[type=marker,tag=teplus.charged_bookshelf_init] at @s if entity @e[type=marker,tag=teplus.tier5,distance=2..5,sort=nearest] run advancement grant @p[advancements={enchantplus:progress/start/charged_bookshelf_ultimate=false}] only enchantplus:progress/start/charged_bookshelf_ultimate

#Remove the init tag so it doesn't affect near placed charged bookshelfs
tag @e[type=marker,tag=teplus.charged_bookshelf_init] remove teplus.charged_bookshelf_init