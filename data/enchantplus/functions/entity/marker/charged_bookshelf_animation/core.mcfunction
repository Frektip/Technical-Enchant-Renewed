#scoreboard players add @s tep.CbBf.animt 1
scoreboard players add @s tep.CbBf.animt 1

##========LOOP ANIMATION========##
#Top and Bottom
execute if score @s tep.CbBf.animt matches 1..12 run function enchantplus:entity/marker/charged_bookshelf_animation/part1
execute if score @s tep.CbBf.animt matches 11..22 run function enchantplus:entity/marker/charged_bookshelf_animation/part2

#Left and Right
execute if score @s tep.CbBf.animt matches 21..32 run function enchantplus:entity/marker/charged_bookshelf_animation/part3
execute if score @s tep.CbBf.animt matches 31..42 run function enchantplus:entity/marker/charged_bookshelf_animation/part4

#Front and Behind
execute if score @s tep.CbBf.animt matches 41..52 run function enchantplus:entity/marker/charged_bookshelf_animation/part5
execute if score @s tep.CbBf.animt matches 51..60 run function enchantplus:entity/marker/charged_bookshelf_animation/part6




#Reset the scoreboard to start the animation again
execute if score @s tep.CbBf.animt matches 60.. run scoreboard players reset @s tep.CbBf.animt