execute store result storage teplus:updates settings.gameplay.debug int 1 run execute if entity @s[tag=teplus.debug_mode]

# Invert the following boolean values (0: TRUE, 1: FALSE, don't ask why I did it that way)
function teplus:utils/invert_bool {target: "#itwbk", objective: "teplus.game_opts"}
execute store result storage teplus:updates settings.gameplay.itwbk int 1 run scoreboard players get #inverted teplus.tmp

function teplus:utils/invert_bool {target: "#mrgbk", objective: "teplus.game_opts"}
execute store result storage teplus:updates settings.gameplay.mrgbk int 1 run scoreboard players get #inverted teplus.tmp

function teplus:utils/invert_bool {target: "#mrgit", objective: "teplus.game_opts"}
execute store result storage teplus:updates settings.gameplay.mrgit int 1 run scoreboard players get #inverted teplus.tmp

function teplus:utils/invert_bool {target: "#extrmd", objective: "teplus.game_opts"}
execute store result storage teplus:updates settings.gameplay.extrmd int 1 run scoreboard players get #inverted teplus.tmp

function teplus:utils/invert_bool {target: "#xpcrtlm", objective: "teplus.game_opts"}
execute store result storage teplus:updates settings.gameplay.xpcrtlm int 1 run scoreboard players get #inverted teplus.tmp

execute store result storage teplus:updates settings.gameplay.xprq int 1 run scoreboard players get #xprq teplus.game_opts

function teplus:admin/settings/gameplay/build_dialog with storage teplus:updates settings.gameplay