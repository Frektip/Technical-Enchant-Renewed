# ==== Debug Message ====#
tellraw @a[tag=teplus.debug_mode] [{"text":"TE+» ","color":"#65DAD4","bold":true},{"text":"(Anvil): ","color":"yellow","italic":true,"bold":false},{"text":"Getting levels from the nearest player","color":"gray","italic":true,"bold":false}]

# Look for the player "owner" of the technical anvil current interaction
execute if score @s teplus.player.id = @p teplus.player.id run tag @p add teplus.anvil.current

# Get the levels from the player
execute as @p[tag=teplus.anvil.current] store result score @s teplus.player.xp run xp query @s levels

# Check conditions before completing the action
# - If the Technical Anvil can combine
# - If the xp level settings requirement makes sense (not negative values)
# - If the player has more or equal levels than the ones in the settings

# For Survival
# Xp settings make sense
execute if entity @s[tag=teplus.anvil.CanCombine] unless score #xprq teplus.game_opts matches ..1 if score @s teplus.anvil.cost <= @p[tag=teplus.anvil.current,gamemode=!creative] teplus.player.xp run say CAN COMBINE
execute if entity @s[tag=teplus.anvil.CanCombine] unless score #xprq teplus.game_opts matches ..1 unless score @s teplus.anvil.cost <= @p[tag=teplus.anvil.current,gamemode=!creative] teplus.player.xp run say CANNOT COMBINE

# Xp settings don't make sense
execute if entity @s[tag=teplus.anvil.CanCombine] if score #xprq teplus.game_opts matches ..1 as @p[tag=teplus.anvil.current] run say INVALID CONFIGURATION


# For creative (always succeed)
execute if entity @s[tag=teplus.anvil.CanCombine] unless score #xprq teplus.game_opts matches ..1 if entity @p[tag=teplus.anvil.current,gamemode=creative] run say CAN COMBINE (CREATIVE MODE)

tag @s remove teplus.anvil.CanCombine

#function technical_anvil:menu/change_item/deactivate_slots