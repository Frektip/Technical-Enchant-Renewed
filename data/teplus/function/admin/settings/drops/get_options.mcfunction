# Set _opt1 (YES) and _opt2 (NO) for the single_option type in the dialog
# For this get the current value of the score and invert the boolean value
# Consider that for these settings the score is (0: TRUE, 1: FALSE, don't ask why I did it that way)
execute store result storage teplus:updates settings.drops.drops_opt2 int 1 run scoreboard players get $Drops teplus.game_opts
function teplus:utils/invert_bool {target: "$Drops", objective: "teplus.game_opts"}
execute store result storage teplus:updates settings.drops.drops_opt1 int 1 run scoreboard players get #inverted teplus.tmp


execute store result storage teplus:updates settings.drops.chance int 1 run scoreboard players get #drop.chance teplus.game_opts

execute store result storage teplus:updates settings.drops.glow_opt2 int 1 run scoreboard players get #drop.glow teplus.game_opts
function teplus:utils/invert_bool {target: "#drop.glow", objective: "teplus.game_opts"}
execute store result storage teplus:updates settings.drops.glow_opt1 int 1 run scoreboard players get #inverted teplus.tmp

execute store result storage teplus:updates settings.drops.rates int 1 run scoreboard players get #drop.rates teplus.game_opts

execute store result storage teplus:updates settings.drops.buffs_opt2 int 1 run scoreboard players get #drop.buffs teplus.game_opts
function teplus:utils/invert_bool {target: "#drop.buffs", objective: "teplus.game_opts"}
execute store result storage teplus:updates settings.drops.buffs_opt1 int 1 run scoreboard players get #inverted teplus.tmp

function teplus:admin/settings/drops/build_dialog with storage teplus:updates settings.drops

data remove storage teplus:updates settings.drops