tag @s add splt.raycast

# Anchor to the eyes and position with vector coordinates (Remove if not running from eyes of entity)

execute if data entity @s HandItems[1].tag.CustomEnchantments[{id:"Splatter",lvl:1}] at @s anchored eyes positioned ^ ^ ^ run function enchantplus:result/splatter/raycast1 
execute if data entity @s HandItems[1].tag.CustomEnchantments[{id:"Splatter",lvl:2}] at @s anchored eyes positioned ^ ^ ^ run function enchantplus:result/splatter/raycast2 
execute if data entity @s HandItems[1].tag.CustomEnchantments[{id:"Splatter",lvl:3}] at @s anchored eyes positioned ^ ^ ^ run function enchantplus:result/splatter/raycast3 

# Remove the raycasting tag after raycast completion to prepare fo the next player
tag @s remove splt.raycast 
tag @s remove tepxm.canspl
scoreboard players reset .distance tep.rc
