#Kill the nearest fishing bobber
kill @e[type=fishing_bobber,sort=nearest,limit=1]


##===RAYCAST SYSTEM===##
tag @s add splt.raycast

#Check if the player is in creative, so it doesn't break the rod accidentally
execute unless entity @s[gamemode=creative] run function enchantplus:result/splatter/check_damage

# Anchor to the eyes and position with vector coordinates (Remove if not running from eyes of entity)

execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{CustomEnchantments:[{id:"Splatter",lvl:1}]}}]}] at @s anchored eyes positioned ^ ^ ^ run function enchantplus:result/splatter/raycast1 
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{CustomEnchantments:[{id:"Splatter",lvl:2}]}}]}] at @s anchored eyes positioned ^ ^ ^ run function enchantplus:result/splatter/raycast2 
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{CustomEnchantments:[{id:"Splatter",lvl:3}]}}]}] at @s anchored eyes positioned ^ ^ ^ run function enchantplus:result/splatter/raycast3 

# Remove the raycasting tag after raycast completion to prepare for the next player
tag @s remove splt.raycast 
scoreboard players reset .distance tep.rc