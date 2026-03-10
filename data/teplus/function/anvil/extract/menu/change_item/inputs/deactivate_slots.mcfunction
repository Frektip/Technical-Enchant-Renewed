# Add general input error tag
tag @s add teplus.anvil.error.invalid_items

# Reset the input slots tags and UI
tag @s remove teplus.anvil.CanExtract
tag @s remove teplus.anvil.CurseExtract
tag @s remove teplus.anvil.InSlot1
data remove storage teplus:updates TAE.Inputs.Section1

function teplus:anvil/extract/menu/update_ui/input_indicator {slot: 11, tag: "teplus.anvil.InSlot1", cmd_empty: "teplus:progress.empty.horizontal", cmd_filled: "teplus:progress.filled.horizontal"}
function teplus:anvil/extract/menu/update_ui/input_indicator {slot: 12, tag: "teplus.anvil.InSlot1", cmd_empty: "teplus:progress.empty.arrow_right", cmd_filled: "teplus:progress.filled.arrow_right"}

tag @s remove teplus.anvil.InSlot2
data remove storage teplus:updates TAE.Inputs.Section2
function teplus:anvil/extract/menu/update_ui/input_indicator {slot: 15, tag: "teplus.anvil.InSlot2", cmd_empty: "teplus:progress.empty.horizontal", cmd_filled: "teplus:progress.filled.horizontal"}
function teplus:anvil/extract/menu/update_ui/input_indicator {slot: 14, tag: "teplus.anvil.InSlot2", cmd_empty: "teplus:progress.empty.arrow_left", cmd_filled: "teplus:progress.filled.arrow_left"}

# Reset output slot UI
function teplus:anvil/extract/menu/update_ui/output_slot