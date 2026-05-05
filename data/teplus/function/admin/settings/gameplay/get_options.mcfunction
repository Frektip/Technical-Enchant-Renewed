execute store result storage teplus:updates settings.gameplay.debug int 1 run execute if entity @s[tag=teplus.debug_mode]

# Set _opt1 (YES) and _opt2 (NO) for the single_option type in the dialog
# For this get the current value of the score and invert the boolean value
# Consider that for these settings the score is (0: TRUE, 1: FALSE, don't ask why I did it that way)
execute store result storage teplus:updates settings.gameplay.itwbk_opt2 int 1 run scoreboard players get #itwbk teplus.game_opts
function teplus:utils/invert_bool {target: "#itwbk", objective: "teplus.game_opts"}
execute store result storage teplus:updates settings.gameplay.itwbk_opt1 int 1 run scoreboard players get #inverted teplus.tmp

execute store result storage teplus:updates settings.gameplay.mrgbk_opt2 int 1 run scoreboard players get #mrgbk teplus.game_opts
function teplus:utils/invert_bool {target: "#mrgbk", objective: "teplus.game_opts"}
execute store result storage teplus:updates settings.gameplay.mrgbk_opt1 int 1 run scoreboard players get #inverted teplus.tmp

execute store result storage teplus:updates settings.gameplay.mrgit_opt2 int 1 run scoreboard players get #mrgit teplus.game_opts
function teplus:utils/invert_bool {target: "#mrgit", objective: "teplus.game_opts"}
execute store result storage teplus:updates settings.gameplay.mrgit_opt1 int 1 run scoreboard players get #inverted teplus.tmp

execute store result storage teplus:updates settings.gameplay.extrmd_opt2 int 1 run scoreboard players get #extrmd teplus.game_opts
function teplus:utils/invert_bool {target: "#extrmd", objective: "teplus.game_opts"}
execute store result storage teplus:updates settings.gameplay.extrmd_opt1 int 1 run scoreboard players get #inverted teplus.tmp

execute store result storage teplus:updates settings.gameplay.xpcrtlm_opt2 int 1 run scoreboard players get #xpcrtlm teplus.game_opts
function teplus:utils/invert_bool {target: "#xpcrtlm", objective: "teplus.game_opts"}
execute store result storage teplus:updates settings.gameplay.xpcrtlm_opt1 int 1 run scoreboard players get #inverted teplus.tmp

execute store result storage teplus:updates settings.gameplay.xprq int 1 run scoreboard players get #xprq teplus.game_opts

execute store result storage teplus:updates settings.gameplay.xpstr int 1 run scoreboard players get #xpstr teplus.player.xp
execute store result storage teplus:updates settings.gameplay.xpavr int 1 run scoreboard players get #xpavr teplus.player.xp
execute store result storage teplus:updates settings.gameplay.xplow int 1 run scoreboard players get #xplow teplus.player.xp

function teplus:admin/settings/gameplay/build_dialog with storage teplus:updates settings.gameplay

data remove storage teplus:updates settings.gameplay