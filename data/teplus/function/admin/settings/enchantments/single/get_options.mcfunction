# Set _opt1 (YES) and _opt2 (NO) for the single_option type in the dialog
# For this get the current value of the score and invert the boolean value
# Consider that for these settings the score is (0: FALSE, 1: TRUE)
$execute store result storage teplus:common dialogs.opt1 int 1 run scoreboard players get $(ench_target) teplus.game_opts
$function teplus:utils/invert_bool {target: "$(ench_target)", objective: "teplus.game_opts"}
execute store result storage teplus:common dialogs.opt2 int 1 run scoreboard players get #inverted teplus.tmp

$execute store result storage teplus:common dialogs.current_lvl int 1 run scoreboard players get $(ench_target) teplus.maxlvl

# Add enchantment specific data for score update (in case the player confirms the changes to the enchantment)
$data modify storage teplus:common dialogs.ench_name set value "$(ench_name)"
$data modify storage teplus:common dialogs.ench_fallback set value "$(ench_fallback)"
$data modify storage teplus:common dialogs.ench_target set value "$(ench_target)"

function teplus:admin/settings/enchantments/single/build_dialog with storage teplus:common dialogs

data remove storage teplus:common dialogs