scoreboard players set $min random 0
scoreboard players set $max random 100
function enchantplus:random_uniform

execute if score $out random <= #tepl.trns teplus.data if predicate enchantplus:dimension/in_overworld run function enchantplus:result/transmission/teleport/in_overworld/y_level
execute if score $out random <= #tepl.trns teplus.data if predicate enchantplus:dimension/in_nether run function enchantplus:result/transmission/teleport/in_nether/y_level
execute if score $out random <= #tepl.trns teplus.data if predicate enchantplus:dimension/in_end run function enchantplus:result/transmission/teleport_end