# Apply settings using the input from the dialog
$scoreboard players set $Villagers teplus.game_opts $(input_villagers)
$scoreboard players set #vill.dsnt teplus.game_opts $(input_vill_dsnt)
$scoreboard players set #vill.renws teplus.game_opts $(input_vill_renws)
$scoreboard players set #vill.anylvl teplus.game_opts $(input_vill_anylvl)

# Additional actions based on the new score
# In case the renewable special items option was enabled again
execute if score #vill.renws teplus.game_opts matches 0 as @e[type=villager,tag=teplus.enchanter.trade4,tag=!teplus.enchanter.trade_special] run function teplus:admin/settings/enchanters/renable_renew

# In case the extension was enabled/disabled
schedule clear teplus:villagers/main
execute if score $Villagers teplus.game_opts matches 0 run function teplus:villagers/init