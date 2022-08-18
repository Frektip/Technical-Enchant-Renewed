scoreboard players set #drop.chance tepext.manager 100

execute if score #drop.looting tepext.manager matches 0 as @e[tag=tepdrop.can] run function teplus_exten:drops/set_loot/looting/chance
execute if score #drop.looting tepext.manager matches 1 as @e[tag=tepdrop.can] run function teplus_exten:drops/set_loot/normal/chance

function teplus_exten:manager/menu/drops/menu