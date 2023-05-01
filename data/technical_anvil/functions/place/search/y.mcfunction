# Recursively search on the Y axis

scoreboard players set $z teplus.place 10
function technical_anvil:place/search/z
scoreboard players remove $y teplus.place 1
execute if score $found teplus.place matches 0 if score $y teplus.place matches 1.. positioned ~ ~1 ~ run function technical_anvil:place/search/y