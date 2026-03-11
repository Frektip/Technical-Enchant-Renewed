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
execute if entity @s[tag=teplus.anvil.CanCombine] unless score #xprq teplus.game_opts matches ..1 if score @s teplus.anvil.cost <= @p[tag=teplus.anvil.current,gamemode=!creative] teplus.player.xp run function teplus:anvil/merge/action/succeed
execute if entity @s[tag=teplus.anvil.CanCombine] unless score #xprq teplus.game_opts matches ..1 unless score @s teplus.anvil.cost <= @p[tag=teplus.anvil.current,gamemode=!creative] teplus.player.xp run function teplus:anvil/merge/action/failed


# For creative (always succeed)
execute if entity @s[tag=teplus.anvil.CanCombine] unless score #xprq teplus.game_opts matches ..1 if entity @p[tag=teplus.anvil.current,gamemode=creative] run function teplus:anvil/merge/action/succeed

tag @s remove teplus.anvil.CanCombine

function teplus:anvil/merge/menu/change_item/inputs/deactivate_slots