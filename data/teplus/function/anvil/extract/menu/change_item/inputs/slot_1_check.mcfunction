# Update related input indicator slots based on the tag
tag @s add teplus.anvil.InSlot1
function teplus:anvil/extract/menu/update_ui/input_indicator {slot: 11, tag: "teplus.anvil.InSlot1", cmd_empty: "teplus:progress.empty.horizontal", cmd_filled: "teplus:progress.filled.horizontal"}
function teplus:anvil/extract/menu/update_ui/input_indicator {slot: 12, tag: "teplus.anvil.InSlot1", cmd_empty: "teplus:progress.empty.arrow_right", cmd_filled: "teplus:progress.filled.arrow_right"}

# If there's an item in the input slot, set the 'teplus.anvil.value' score to 0.
# With this, we asume that the other input slot could be valid (until we verify it), allowing the extract action
execute if data entity @s Items[{Slot:10b}].id run scoreboard players set @s teplus.anvil.value 0