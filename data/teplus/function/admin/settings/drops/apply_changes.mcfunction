# Apply settings using the input from the dialog
$scoreboard players set $Drops teplus.game_opts $(input_drops)
$scoreboard players set #drop.chance teplus.game_opts $(input_chance)
$scoreboard players set #drop.glow teplus.game_opts $(input_glow)
$scoreboard players set #drop.rates teplus.game_opts $(input_rates)
$scoreboard players set #drop.buffs teplus.game_opts $(input_buffs)

# Additional actions based on the new score
# In case glowing effect was disabled
execute if score #drop.glow teplus.game_opts matches 1 as @e[tag=teplus.drop.can] run effect clear @s glowing

# In case the extension was enabled/disabled
schedule clear teplus:drops/main_20t
schedule clear teplus:drops/main_3min
execute if score $Drops teplus.game_opts matches 1 run kill @e[tag=teplus.drop.can]
execute if score $Drops teplus.game_opts matches 0 run function teplus:drops/init