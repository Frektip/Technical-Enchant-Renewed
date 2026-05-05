# Set _opt1 (YES) and _opt2 (NO) for the single_option type in the dialog
# For this get the current value of the score and invert the boolean value
# Consider that for these settings the score is (0: TRUE, 1: FALSE, don't ask why I did it that way)
execute store result storage teplus:updates settings.vanench.vanench_opt2 int 1 run scoreboard players get $VanPlus teplus.game_opts
function teplus:utils/invert_bool {target: "$VanPlus", objective: "teplus.game_opts"}
execute store result storage teplus:updates settings.vanench.vanench_opt1 int 1 run scoreboard players get #inverted teplus.tmp

# Get the current levels for each enchantment
execute store result storage teplus:updates settings.vanench.efficiency_lvl int 1 run scoreboard players get #efficiency teplus.maxlvl
execute store result storage teplus:updates settings.vanench.feather_falling_lvl int 1 run scoreboard players get #feather_falling teplus.maxlvl
execute store result storage teplus:updates settings.vanench.fire_aspect_lvl int 1 run scoreboard players get #fire_aspect teplus.maxlvl
execute store result storage teplus:updates settings.vanench.fortune_lvl int 1 run scoreboard players get #fortune teplus.maxlvl
execute store result storage teplus:updates settings.vanench.impaling_lvl int 1 run scoreboard players get #impaling teplus.maxlvl
execute store result storage teplus:updates settings.vanench.knockback_lvl int 1 run scoreboard players get #knockback teplus.maxlvl
execute store result storage teplus:updates settings.vanench.looting_lvl int 1 run scoreboard players get #looting teplus.maxlvl
execute store result storage teplus:updates settings.vanench.luck_of_the_sea_lvl int 1 run scoreboard players get #luck_of_the_sea teplus.maxlvl
execute store result storage teplus:updates settings.vanench.lure_lvl int 1 run scoreboard players get #lure teplus.maxlvl
execute store result storage teplus:updates settings.vanench.piercing_lvl int 1 run scoreboard players get #piercing teplus.maxlvl
execute store result storage teplus:updates settings.vanench.power_lvl int 1 run scoreboard players get #power teplus.maxlvl
execute store result storage teplus:updates settings.vanench.protection_lvl int 1 run scoreboard players get #protection teplus.maxlvl
execute store result storage teplus:updates settings.vanench.punch_lvl int 1 run scoreboard players get #punch teplus.maxlvl
execute store result storage teplus:updates settings.vanench.respiration_lvl int 1 run scoreboard players get #respiration teplus.maxlvl
execute store result storage teplus:updates settings.vanench.riptide_lvl int 1 run scoreboard players get #riptide teplus.maxlvl
execute store result storage teplus:updates settings.vanench.sharpness_lvl int 1 run scoreboard players get #sharpness teplus.maxlvl
execute store result storage teplus:updates settings.vanench.sweeping_edge_lvl int 1 run scoreboard players get #sweeping_edge teplus.maxlvl
execute store result storage teplus:updates settings.vanench.swift_sneak_lvl int 1 run scoreboard players get #swift_sneak teplus.maxlvl
execute store result storage teplus:updates settings.vanench.thorns_lvl int 1 run scoreboard players get #thorns teplus.maxlvl
execute store result storage teplus:updates settings.vanench.unbreaking_lvl int 1 run scoreboard players get #unbreaking teplus.maxlvl

function teplus:admin/settings/vanench/build_dialog with storage teplus:updates settings.vanench

data remove storage teplus:updates settings.vanench