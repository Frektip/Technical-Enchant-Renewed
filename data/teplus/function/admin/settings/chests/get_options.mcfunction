# Set _opt1 (YES) and _opt2 (NO) for the single_option type in the dialog
# For this get the current value of the score and invert the boolean value
# Consider that for these settings the score is (0: TRUE, 1: FALSE, don't ask why I did it that way)
execute store result storage teplus:updates settings.chests.chests_opt2 int 1 run scoreboard players get $Chests teplus.game_opts
function teplus:utils/invert_bool {target: "$Chests", objective: "teplus.game_opts"}
execute store result storage teplus:updates settings.chests.chests_opt1 int 1 run scoreboard players get #inverted teplus.tmp

# For each structure get if the sturture generation is enabled (0 or 1)
# Then get the rates for that structure (0-100)

# mineshaft
execute store result storage teplus:updates settings.chests.mineshaft_opt2 int 1 run scoreboard players get #chl_mineshaft teplus.game_opts
function teplus:utils/invert_bool {target: "#chl_mineshaft", objective: "teplus.game_opts"}
execute store result storage teplus:updates settings.chests.mineshaft_opt1 int 1 run scoreboard players get #inverted teplus.tmp
execute store result storage teplus:updates settings.chests.mineshaft_rate int 1 run scoreboard players get #chance_mineshaft teplus.game_opts

# ancient city
execute store result storage teplus:updates settings.chests.ancity_opt2 int 1 run scoreboard players get #chl_ancity teplus.game_opts
function teplus:utils/invert_bool {target: "#chl_ancity", objective: "teplus.game_opts"}
execute store result storage teplus:updates settings.chests.ancity_opt1 int 1 run scoreboard players get #inverted teplus.tmp
execute store result storage teplus:updates settings.chests.ancity_rate int 1 run scoreboard players get #chance_ancity teplus.game_opts

# bastion
execute store result storage teplus:updates settings.chests.bastion_opt2 int 1 run scoreboard players get #chl_bastion teplus.game_opts
function teplus:utils/invert_bool {target: "#chl_bastion", objective: "teplus.game_opts"}
execute store result storage teplus:updates settings.chests.bastion_opt1 int 1 run scoreboard players get #inverted teplus.tmp
execute store result storage teplus:updates settings.chests.bastion_rate int 1 run scoreboard players get #chance_bastion teplus.game_opts

# burried treasure
execute store result storage teplus:updates settings.chests.btreasure_opt2 int 1 run scoreboard players get #chl_btreasure teplus.game_opts
function teplus:utils/invert_bool {target: "#chl_btreasure", objective: "teplus.game_opts"}
execute store result storage teplus:updates settings.chests.btreasure_opt1 int 1 run scoreboard players get #inverted teplus.tmp
execute store result storage teplus:updates settings.chests.btreasure_rate int 1 run scoreboard players get #chance_btreasure teplus.game_opts

# desert pyramid
execute store result storage teplus:updates settings.chests.despyram_opt2 int 1 run scoreboard players get #chl_despyram teplus.game_opts
function teplus:utils/invert_bool {target: "#chl_despyram", objective: "teplus.game_opts"}
execute store result storage teplus:updates settings.chests.despyram_opt1 int 1 run scoreboard players get #inverted teplus.tmp
execute store result storage teplus:updates settings.chests.despyram_rate int 1 run scoreboard players get #chance_despyram teplus.game_opts

# endcity
execute store result storage teplus:updates settings.chests.endcity_opt2 int 1 run scoreboard players get #chl_endcity teplus.game_opts
function teplus:utils/invert_bool {target: "#chl_endcity", objective: "teplus.game_opts"}
execute store result storage teplus:updates settings.chests.endcity_opt1 int 1 run scoreboard players get #inverted teplus.tmp
execute store result storage teplus:updates settings.chests.endcity_rate int 1 run scoreboard players get #chance_endcity teplus.game_opts

# igloo
execute store result storage teplus:updates settings.chests.igloo_opt2 int 1 run scoreboard players get #chl_igloo teplus.game_opts
function teplus:utils/invert_bool {target: "#chl_igloo", objective: "teplus.game_opts"}
execute store result storage teplus:updates settings.chests.igloo_opt1 int 1 run scoreboard players get #inverted teplus.tmp
execute store result storage teplus:updates settings.chests.igloo_rate int 1 run scoreboard players get #chance_igloo teplus.game_opts

# jungle temple
execute store result storage teplus:updates settings.chests.jngltmp_opt2 int 1 run scoreboard players get #chl_jngltmp teplus.game_opts
function teplus:utils/invert_bool {target: "#chl_jngltmp", objective: "teplus.game_opts"}
execute store result storage teplus:updates settings.chests.jngltmp_opt1 int 1 run scoreboard players get #inverted teplus.tmp
execute store result storage teplus:updates settings.chests.jngltmp_rate int 1 run scoreboard players get #chance_jngltmp teplus.game_opts

# nether fortress
execute store result storage teplus:updates settings.chests.fortress_opt2 int 1 run scoreboard players get #chl_fortress teplus.game_opts
function teplus:utils/invert_bool {target: "#chl_fortress", objective: "teplus.game_opts"}
execute store result storage teplus:updates settings.chests.fortress_opt1 int 1 run scoreboard players get #inverted teplus.tmp
execute store result storage teplus:updates settings.chests.fortress_rate int 1 run scoreboard players get #chance_fortress teplus.game_opts

# outpost
execute store result storage teplus:updates settings.chests.outpost_opt2 int 1 run scoreboard players get #chl_outpost teplus.game_opts
function teplus:utils/invert_bool {target: "#chl_outpost", objective: "teplus.game_opts"}
execute store result storage teplus:updates settings.chests.outpost_opt1 int 1 run scoreboard players get #inverted teplus.tmp
execute store result storage teplus:updates settings.chests.outpost_rate int 1 run scoreboard players get #chance_outpost teplus.game_opts

# ruined portal
execute store result storage teplus:updates settings.chests.ruinport_opt2 int 1 run scoreboard players get #chl_ruinport teplus.game_opts
function teplus:utils/invert_bool {target: "#chl_ruinport", objective: "teplus.game_opts"}
execute store result storage teplus:updates settings.chests.ruinport_opt1 int 1 run scoreboard players get #inverted teplus.tmp
execute store result storage teplus:updates settings.chests.ruinport_rate int 1 run scoreboard players get #chance_ruinport teplus.game_opts

# shipwreck
execute store result storage teplus:updates settings.chests.shipwreck_opt2 int 1 run scoreboard players get #chl_shipwreck teplus.game_opts
function teplus:utils/invert_bool {target: "#chl_shipwreck", objective: "teplus.game_opts"}
execute store result storage teplus:updates settings.chests.shipwreck_opt1 int 1 run scoreboard players get #inverted teplus.tmp
execute store result storage teplus:updates settings.chests.shipwreck_rate int 1 run scoreboard players get #chance_shipwreck teplus.game_opts

# dungeon
execute store result storage teplus:updates settings.chests.dungeon_opt2 int 1 run scoreboard players get #chl_dungeon teplus.game_opts
function teplus:utils/invert_bool {target: "#chl_dungeon", objective: "teplus.game_opts"}
execute store result storage teplus:updates settings.chests.dungeon_opt1 int 1 run scoreboard players get #inverted teplus.tmp
execute store result storage teplus:updates settings.chests.dungeon_rate int 1 run scoreboard players get #chance_dungeon teplus.game_opts

# stronghold
execute store result storage teplus:updates settings.chests.stronghold_opt2 int 1 run scoreboard players get #chl_stronghold teplus.game_opts
function teplus:utils/invert_bool {target: "#chl_stronghold", objective: "teplus.game_opts"}
execute store result storage teplus:updates settings.chests.stronghold_opt1 int 1 run scoreboard players get #inverted teplus.tmp
execute store result storage teplus:updates settings.chests.stronghold_rate int 1 run scoreboard players get #chance_stronghold teplus.game_opts

# library
execute store result storage teplus:updates settings.chests.library_opt2 int 1 run scoreboard players get #chl_library teplus.game_opts
function teplus:utils/invert_bool {target: "#chl_library", objective: "teplus.game_opts"}
execute store result storage teplus:updates settings.chests.library_opt1 int 1 run scoreboard players get #inverted teplus.tmp
execute store result storage teplus:updates settings.chests.library_rate int 1 run scoreboard players get #chance_library teplus.game_opts

# underwater ruin
execute store result storage teplus:updates settings.chests.undwruin_opt2 int 1 run scoreboard players get #chl_undwruin teplus.game_opts
function teplus:utils/invert_bool {target: "#chl_undwruin", objective: "teplus.game_opts"}
execute store result storage teplus:updates settings.chests.undwruin_opt1 int 1 run scoreboard players get #inverted teplus.tmp
execute store result storage teplus:updates settings.chests.undwruin_rate int 1 run scoreboard players get #chance_undwruin teplus.game_opts

# village
execute store result storage teplus:updates settings.chests.village_opt2 int 1 run scoreboard players get #chl_village teplus.game_opts
function teplus:utils/invert_bool {target: "#chl_village", objective: "teplus.game_opts"}
execute store result storage teplus:updates settings.chests.village_opt1 int 1 run scoreboard players get #inverted teplus.tmp
execute store result storage teplus:updates settings.chests.village_rate int 1 run scoreboard players get #chance_village teplus.game_opts

# mansion
execute store result storage teplus:updates settings.chests.mansion_opt2 int 1 run scoreboard players get #chl_mansion teplus.game_opts
function teplus:utils/invert_bool {target: "#chl_mansion", objective: "teplus.game_opts"}
execute store result storage teplus:updates settings.chests.mansion_opt1 int 1 run scoreboard players get #inverted teplus.tmp
execute store result storage teplus:updates settings.chests.mansion_rate int 1 run scoreboard players get #chance_mansion teplus.game_opts

function teplus:admin/settings/chests/build_dialog with storage teplus:updates settings.chests

data remove storage teplus:updates settings.chests