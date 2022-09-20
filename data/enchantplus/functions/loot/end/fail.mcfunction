### Debug Message ###
tellraw @a[tag=teplus.pydbgm] ["",{"text":"TE+» ","color":"#65DAD4","bold":true},{"text":"(Enchanting★): ","color":"#24E3F9","italic":true,"bold":false},{"text":"Fail! ","color":"red","italic":true,"bold":false},{"text":"Maybe you disabled all custom enchantments and enchant with vanilla enchantments?","color":"gray","italic":true,"bold":false}]
tellraw @a[tag=teplus.pydbgm] ["",{"text":"TE+» ","color":"#65DAD4","bold":true},{"text":"(Enchanting★): ","color":"#24E3F9","italic":true,"bold":false},{"text":"Fail! ","color":"red","italic":true,"bold":false},{"text":"Seriously, what you were thinkng?","color":"gray","italic":true,"bold":false}]

#Remove nbt data
data remove entity @s Item.tag.Enchantments
data remove entity @s Item.tag.CustomArrow

#Make some particles and sounds
particle angry_villager ~ ~.5 ~ .2 .35 .2 1 20 force
particle block barrier ~ ~.5 ~ 0.1 0.2 0.1 2 50 force
particle block barrier ~ ~.5 ~ 0.1 0.2 0.1 2 50 force

playsound entity.wither.break_block ambient @a[distance=..15] ~ ~ ~ 5 1.5
playsound entity.wither.break_block ambient @a[distance=..15] ~ ~ ~ 5 1.5
playsound entity.wither.break_block ambient @a[distance=..15] ~ ~ ~ 5 1.5