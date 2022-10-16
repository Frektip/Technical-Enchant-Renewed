###Debug Message###
tellraw @a[tag=teplus.pydbgm,distance=..15,scores={Teplus.Report=1..}] ["",{"text":"TE+» ","color":"#65DAD4","bold":true},{"text":"Charged Bookshelf showing cool particle animation","color":"gray","italic":true,"bold":false}]
particle electric_spark ~ ~ ~ 0 3 0 0 100 force @a[tag=teplus.pydbgm,distance=..15,scores={Teplus.Report=1..}]

#scoreboard players add @s tep.CbBf.animt 1
scoreboard players add @s tep.CbBf.animt 1

#When the player enchants succesfully something
execute if entity @s[tag=speed_enchanted] run function enchantplus:entity/marker/charged_bookshelf_animation/enchanted/get

##========LOOP ANIMATION========##
#Top and Bottom
execute if score @s[tag=!speed_enchanted] tep.CbBf.animt matches 1..12 run function enchantplus:entity/marker/charged_bookshelf_animation/part1
execute if score @s[tag=!speed_enchanted] tep.CbBf.animt matches 11..22 run function enchantplus:entity/marker/charged_bookshelf_animation/part2

#Left and Right
execute if score @s[tag=!speed_enchanted] tep.CbBf.animt matches 21..32 run function enchantplus:entity/marker/charged_bookshelf_animation/part3
execute if score @s[tag=!speed_enchanted] tep.CbBf.animt matches 31..42 run function enchantplus:entity/marker/charged_bookshelf_animation/part4

#Front and Behind
execute if score @s[tag=!speed_enchanted] tep.CbBf.animt matches 41..52 run function enchantplus:entity/marker/charged_bookshelf_animation/part5
execute if score @s[tag=!speed_enchanted] tep.CbBf.animt matches 51..60 run function enchantplus:entity/marker/charged_bookshelf_animation/part6




#Reset the scoreboard to start the animation again
execute if score @s tep.CbBf.animt matches 60.. run scoreboard players reset @s tep.CbBf.animt