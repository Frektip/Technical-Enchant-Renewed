# Set _opt1 (YES) and _opt2 (NO) for the single_option type in the dialog
# For this get the current value of the score and invert the boolean value
# Consider that for these settings the score is (0: TRUE, 1: FALSE, don't ask why I did it that way)
execute store result storage teplus:updates settings.enchanters.villagers_opt2 int 1 run scoreboard players get $Villagers teplus.game_opts
function teplus:utils/invert_bool {target: "$Villagers", objective: "teplus.game_opts"}
execute store result storage teplus:updates settings.enchanters.villagers_opt1 int 1 run scoreboard players get #inverted teplus.tmp

execute store result storage teplus:updates settings.enchanters.vill_dsnt_opt2 int 1 run scoreboard players get #vill.dsnt teplus.game_opts
function teplus:utils/invert_bool {target: "#vill.dsnt", objective: "teplus.game_opts"}
execute store result storage teplus:updates settings.enchanters.vill_dsnt_opt1 int 1 run scoreboard players get #inverted teplus.tmp

execute store result storage teplus:updates settings.enchanters.vill_renws_opt2 int 1 run scoreboard players get #vill.renws teplus.game_opts
function teplus:utils/invert_bool {target: "#vill.renws", objective: "teplus.game_opts"}
execute store result storage teplus:updates settings.enchanters.vill_renws_opt1 int 1 run scoreboard players get #inverted teplus.tmp

execute store result storage teplus:updates settings.enchanters.vill_anylvl_opt2 int 1 run scoreboard players get #vill.anylvl teplus.game_opts
function teplus:utils/invert_bool {target: "#vill.anylvl", objective: "teplus.game_opts"}
execute store result storage teplus:updates settings.enchanters.vill_anylvl_opt1 int 1 run scoreboard players get #inverted teplus.tmp

function teplus:admin/settings/enchanters/build_dialog with storage teplus:updates settings.enchanters

data remove storage teplus:updates settings.enchanters