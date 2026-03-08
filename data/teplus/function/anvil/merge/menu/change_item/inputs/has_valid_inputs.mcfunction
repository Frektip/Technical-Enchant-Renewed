#------------ Turn all input indicators in success state ------------#

# Input Section 1
data remove entity @s Items[{Slot:11b}]
data modify entity @s Items prepend value {id:"minecraft:lime_stained_glass_pane",count:1,components:{"minecraft:tooltip_display":{hide_tooltip:true},"minecraft:bundle_contents":[{id:"minecraft:stick",count:64}],"minecraft:custom_data":{teplus:{ui:1b}},"minecraft:custom_model_data":{strings:["teplus:progress.filled.vertical"]}},Slot:11b}
data remove entity @s Items[{Slot:20b}]
data modify entity @s Items prepend value {id:"minecraft:lime_stained_glass_pane",count:1,components:{"minecraft:tooltip_display":{hide_tooltip:true},"minecraft:bundle_contents":[{id:"minecraft:stick",count:64}],"minecraft:custom_data":{teplus:{ui:1b}},"minecraft:custom_model_data":{strings:["teplus:progress.filled.turn_right"]}},Slot:20b}
data remove entity @s Items[{Slot:21b}]
data modify entity @s Items prepend value {id:"minecraft:lime_stained_glass_pane",count:1,components:{"minecraft:tooltip_display":{hide_tooltip:true},"minecraft:bundle_contents":[{id:"minecraft:stick",count:64}],"minecraft:custom_data":{teplus:{ui:1b}},"minecraft:custom_model_data":{strings:["teplus:progress.filled.arrow_right"]}},Slot:21b}

# Input section 2
data remove entity @s Items[{Slot:15b}]
data modify entity @s Items prepend value {id:"minecraft:lime_stained_glass_pane",count:1,components:{"minecraft:tooltip_display":{hide_tooltip:true},"minecraft:bundle_contents":[{id:"minecraft:stick",count:64}],"minecraft:custom_data":{teplus:{ui:1b}},"minecraft:custom_model_data":{strings:["teplus:progress.filled.vertical"]}},Slot:15b}
data remove entity @s Items[{Slot:23b}]
data modify entity @s Items prepend value {id:"minecraft:lime_stained_glass_pane",count:1,components:{"minecraft:tooltip_display":{hide_tooltip:true},"minecraft:bundle_contents":[{id:"minecraft:stick",count:64}],"minecraft:custom_data":{teplus:{ui:1b}},"minecraft:custom_model_data":{strings:["teplus:progress.filled.arrow_left"]}},Slot:23b}
data remove entity @s Items[{Slot:24b}]
data modify entity @s Items prepend value {id:"minecraft:lime_stained_glass_pane",count:1,components:{"minecraft:tooltip_display":{hide_tooltip:true},"minecraft:bundle_contents":[{id:"minecraft:stick",count:64}],"minecraft:custom_data":{teplus:{ui:1b}},"minecraft:custom_model_data":{strings:["teplus:progress.filled.turn_left"]}},Slot:24b}

# Add tags to make make the UI know the current state
tag @s add InSlot1
tag @s add InSlot2

# In case we used exceed vanilla enchanting limit
# - We succeeded, so we remove the tags from the books
#tag @s remove tech_anv.match_exceed

function teplus:anvil/merge/interaction/create_item/main
#------------------------------------------#