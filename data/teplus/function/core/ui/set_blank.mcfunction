# This function is used to place a blank item in a specified slot for the Technical Anvil ui

# @Args
#   ${mode}: Technical Anvil mode (Merge or Extract)
#   ${slot}: Slot number (0-26)
#   ${cmd}: Custom model data string from the RP

$data modify storage teplus:ui Global[{profile:"technical_anvil"}].$(mode) append value {id:"minecraft:black_stained_glass_pane",count:1,components:{"minecraft:tooltip_display":{hide_tooltip:true},"minecraft:bundle_contents":[{id:"minecraft:stick",count:64}],"minecraft:custom_data":{teplus:{ui:1b}},"minecraft:custom_model_data":$(cmd)},Slot:$(slot)b}