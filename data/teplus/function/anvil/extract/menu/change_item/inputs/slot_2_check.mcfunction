execute if entity @s[tag=teplus.anvil.HasExtracted] run function teplus:anvil/extract/menu/update_ui/output_slot

# Update related input indicator slots based on the tag
tag @s add teplus.anvil.InSlot2
function teplus:anvil/extract/menu/update_ui/input_indicator {slot: 15, tag: "teplus.anvil.InSlot2", cmd_empty: "teplus:progress.empty.horizontal", cmd_filled: "teplus:progress.filled.horizontal"}
function teplus:anvil/extract/menu/update_ui/input_indicator {slot: 14, tag: "teplus.anvil.InSlot2", cmd_empty: "teplus:progress.empty.arrow_left", cmd_filled: "teplus:progress.filled.arrow_left"}

# If there's an item in the input slot, set the 'teplus.anvil.value' score to 0.
# With this, we asume that the other input slot could be valid (until we verify it), allowing the extract action
execute if data entity @s Items[{Slot:16b}].id run scoreboard players set @s teplus.anvil.value 0