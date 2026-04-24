# Set _opt1 (YES) and _opt2 (NO) for the single_option type in the dialog
# For this get the current value of the score and invert the boolean value
# Consider that for these settings the score is (0: FALSE, 1: TRUE)
$execute store result storage teplus:updates settings.ench.$(ench_name)_opt1 int 1 run scoreboard players get $(ench_target) teplus.game_opts
$function teplus:utils/invert_bool {target: "$(ench_target)", objective: "teplus.game_opts"}
$execute store result storage teplus:updates settings.ench.$(ench_name)_opt2 int 1 run scoreboard players get #inverted teplus.tmp

$execute store result storage teplus:updates settings.ench.$(ench_name)_lvl int 1 run scoreboard players get $(ench_target) teplus.maxlvl