#Give a tag for /attribute
tag @s[tag=!teplus.fearatt] add teplus.fearatt

#Timer for Particles and sounds
scoreboard players add @s teplus.scared 1

#Reset the attributes
function enchantplus:result/fear/clear_attributes

#Based on the number of hostile entities
execute if score @s teplus.htlct matches 6..18 run function enchantplus:result/fear/low
execute if score @s teplus.htlct matches 19..30 run function enchantplus:result/fear/normal
execute if score @s teplus.htlct matches 30.. run function enchantplus:result/fear/high

#Reset particles and sounds
scoreboard players reset @s[scores={teplus.scared=60..}] teplus.scared