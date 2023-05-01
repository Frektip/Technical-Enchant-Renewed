# Recursively search on the Z axis

execute if block ~ ~ ~ #technical_anvil:player_heads{SkullOwner:{Id:[I;-679585275,275596174,-1314527187,-1621836145],Name:"%teplus.block.technical_anvil"}} run function technical_anvil:place/search/found
scoreboard players remove $z teplus.place 1
execute if score $found teplus.place matches 0 if score $z teplus.place matches 1.. positioned ~ ~ ~1 run function technical_anvil:place/search/z