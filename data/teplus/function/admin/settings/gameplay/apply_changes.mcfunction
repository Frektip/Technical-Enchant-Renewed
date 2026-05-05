# Give the current player the debug mode tag based on the input form the settings
$scoreboard players set #debug_inpt teplus.tmp $(input_debug)
execute if score #debug_inpt teplus.tmp matches 1 run tag @s add teplus.debug_mode
execute if score #debug_inpt teplus.tmp matches 0 run tag @s remove teplus.debug_mode

# Apply the rest of the settings using the input from the dialog
$scoreboard players set #mrgbk teplus.game_opts $(input_mrgbk)
$scoreboard players set #itwbk teplus.game_opts $(input_itwbk)
$scoreboard players set #mrgit teplus.game_opts $(input_mrgit)
$scoreboard players set #extrmd teplus.game_opts $(input_extrmd)
$scoreboard players set #xpcrtlm teplus.game_opts $(input_xpcrtlm)
$scoreboard players set #xprq teplus.game_opts $(input_xprq)

$scoreboard players set #xpstr teplus.player.xp $(input_xpstr)
$scoreboard players set #xpavr teplus.player.xp $(input_xpavr)
$scoreboard players set #xplow teplus.player.xp $(input_xplow)