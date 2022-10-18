#Scoreboard checks
function #enchantplus:break_block/use_tools

#Run only when Mined with a custom enchanted tool
execute if entity @s[scores={teplus.pick=1..},predicate=enchantplus:has_ench/selected] run function enchantplus:entity/player/when_mined_block/success
execute if entity @s[scores={teplus.axe=1..},predicate=enchantplus:has_ench/selected] run function enchantplus:entity/player/when_mined_block/success
execute if entity @s[scores={teplus.shov=1..},predicate=enchantplus:has_ench/selected] run function enchantplus:entity/player/when_mined_block/success
execute if entity @s[scores={teplus.hoe=1..},predicate=enchantplus:has_ench/selected] run function enchantplus:entity/player/when_mined_block/success