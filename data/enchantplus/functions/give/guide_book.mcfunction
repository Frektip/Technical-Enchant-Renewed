###Debug Message###
tellraw @a[tag=teplus.pydbgm] ["",{"text":"TE+» ","color":"#65DAD4","bold":true},{"text":"Book and Quill detected, generating Guide Book","color":"gray","italic":true,"bold":false}]

loot spawn ~ ~ ~ loot enchantplus:guide_book
particle flame ~ ~1 ~ 0.1 0.1 0.1 0.1 250 
particle soul ~ ~1 ~ 0.1 0.1 0.1 0.5 150 
playsound block.enchantment_table.use master @a[distance=..30] ~ ~ ~ 100
kill @s[type=!player]
