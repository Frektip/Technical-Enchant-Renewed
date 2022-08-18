scoreboard players set $LapisCount tep.count 0 

execute store result score $HasLapis tep.count run clear @p lapis_lazuli 0 
execute if score $HasLapis tep.count matches 1.. run scoreboard players operation $LapisCount tep.count = $HasLapis tep.count 

execute if score $LapisCount tep.count matches 1.. run function enchantplus:loot/checkitem 