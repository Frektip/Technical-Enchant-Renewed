#------------ Turn all input indicators in success state ------------#

# Input Section 1
data remove entity @s Items[{Slot:11b}]
data modify entity @s Items prepend value {id:"minecraft:lime_stained_glass_pane",count:1,components:{"minecraft:tooltip_display":{hide_tooltip:true},"minecraft:bundle_contents":[{id:"minecraft:stick",count:64}],"minecraft:custom_data":{teplus:{ui:1b}},"minecraft:custom_model_data":{strings:["teplus:progress.filled.horizontal"]}},Slot:11b}
data remove entity @s Items[{Slot:12b}]
data modify entity @s Items prepend value {id:"minecraft:lime_stained_glass_pane",count:1,components:{"minecraft:tooltip_display":{hide_tooltip:true},"minecraft:bundle_contents":[{id:"minecraft:stick",count:64}],"minecraft:custom_data":{teplus:{ui:1b}},"minecraft:custom_model_data":{strings:["teplus:progress.filled.arrow_right"]}},Slot:12b}

# Input section 2
data remove entity @s Items[{Slot:15b}]
data modify entity @s Items prepend value {id:"minecraft:lime_stained_glass_pane",count:1,components:{"minecraft:tooltip_display":{hide_tooltip:true},"minecraft:bundle_contents":[{id:"minecraft:stick",count:64}],"minecraft:custom_data":{teplus:{ui:1b}},"minecraft:custom_model_data":{strings:["teplus:progress.filled.horizontal"]}},Slot:15b}
data remove entity @s Items[{Slot:14b}]
data modify entity @s Items prepend value {id:"minecraft:lime_stained_glass_pane",count:1,components:{"minecraft:tooltip_display":{hide_tooltip:true},"minecraft:bundle_contents":[{id:"minecraft:stick",count:64}],"minecraft:custom_data":{teplus:{ui:1b}},"minecraft:custom_model_data":{strings:["teplus:progress.filled.arrow_left"]}},Slot:14b}

# Add tags to make make the UI know the current state
tag @s add teplus.anvil.InSlot1
tag @s add teplus.anvil.InSlot2
#------------------------------------------#