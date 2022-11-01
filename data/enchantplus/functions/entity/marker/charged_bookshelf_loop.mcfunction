##PARTICLES##

#---Set by default a particle animation---#
scoreboard players set #success teplus.data 0
execute if score #tslpm game.Opts matches 1 store success score #success teplus.data if entity @a[distance=..10]
execute if score #tslpm game.Opts matches 1 if score #success teplus.data matches 1 run function enchantplus:entity/marker/charged_bookshelf_animation/core
execute if score #tslpm game.Opts matches 1 if score #success teplus.data matches 0 run scoreboard players reset @s[scores={tep.CbBf.animt=1..}] tep.CbBf.animt

#---Change the particle animation for LPM---#
execute if score #tslpm game.Opts matches 0 run scoreboard players reset @s[scores={tep.CbBf.animt=1..}] tep.CbBf.animt
execute if score #tslpm game.Opts matches 0 if entity @a[distance=..15] run particle dust_color_transition 0.541 1.000 0.541 1 0.451 0.467 1.000 ~ ~.4 ~ 0.3 0.3 0.3 0 1

#---Special Case for Villagers extension---#
execute if score $Villager tepext.manager matches 0 run function teplus_exten:villagers/as_charged_bookshelf/core

#If the bookshelf is removed
execute unless block ~ ~ ~ bookshelf run function enchantplus:entity/marker/charged_bookshelf_remove