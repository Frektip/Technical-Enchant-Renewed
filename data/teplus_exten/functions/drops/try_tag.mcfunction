#Based on the config options
#-Low
#-Medium
#-High
#-Very High
execute if score #drop.rates tepext.manager matches 0 if entity @s[tag=!tepdrop.can,predicate=enchantplus:random_chance/15] run function teplus_exten:drops/check_options
execute if score #drop.rates tepext.manager matches 1 if entity @s[tag=!tepdrop.can,predicate=enchantplus:random_chance/25] run function teplus_exten:drops/check_options
execute if score #drop.rates tepext.manager matches 2 if entity @s[tag=!tepdrop.can,predicate=enchantplus:random_chance/30] run function teplus_exten:drops/check_options
execute if score #drop.rates tepext.manager matches 3 if entity @s[tag=!tepdrop.can,predicate=enchantplus:random_chance/50] run function teplus_exten:drops/check_options

tag @s add tepdrop.try
