# Reset cost related score and tags
#scoreboard players reset @s TCHA.cost
#tag @s[tag=No.xpcomb] remove No.xpcomb
#tag @s[tag=Noxpcost] remove Noxpcost

# Reset the input slots tags and UI
tag @s remove teplus.anvil.CanCombine
tag @s remove teplus.anvil.InSlot1
data remove storage teplus:updates TAM.Inputs.Section1
function teplus:anvil/merge/menu/update_ui/input_indicator {slot: 11, tag: "teplus.anvil.InSlot1", cmd_empty: "teplus:progress.empty.vertical", cmd_filled: "teplus:progress.filled.vertical"}
function teplus:anvil/merge/menu/update_ui/input_indicator {slot: 20, tag: "teplus.anvil.InSlot1", cmd_empty: "teplus:progress.empty.turn_right", cmd_filled: "teplus:progress.filled.turn_right"}
function teplus:anvil/merge/menu/update_ui/input_indicator {slot: 21, tag: "teplus.anvil.InSlot1", cmd_empty: "teplus:progress.empty.arrow_right", cmd_filled: "teplus:progress.filled.arrow_right"}

tag @s remove teplus.anvil.InSlot2
data remove storage teplus:updates TAM.Inputs.Section2
function teplus:anvil/merge/menu/update_ui/input_indicator {slot: 15, tag: "teplus.anvil.InSlot2", cmd_empty: "teplus:progress.empty.vertical", cmd_filled: "teplus:progress.filled.vertical"}
function teplus:anvil/merge/menu/update_ui/input_indicator {slot: 24, tag: "teplus.anvil.InSlot2", cmd_empty: "teplus:progress.empty.turn_left", cmd_filled: "teplus:progress.filled.turn_left"}
function teplus:anvil/merge/menu/update_ui/input_indicator {slot: 23, tag: "teplus.anvil.InSlot2", cmd_empty: "teplus:progress.empty.arrow_left", cmd_filled: "teplus:progress.filled.arrow_left"}

# Reset output slot UI
function teplus:anvil/merge/menu/update_ui/output_slot