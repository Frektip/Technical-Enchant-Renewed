# This function updates input related Slots wether there's an item in any input slot (2b or 6b) or not
# @params
# - {slot}: the slot to update (11, 15, 20, 21, 23 or 24)
# - {tag}: the tag to track the state of the indicator UI (could be for intput 1 or input 2)
# - {cmd_empty}/{cmd_filled}: asign the correct Custom Model Data

$data remove entity @s Items[{Slot:$(slot)b}]

# Success case
$execute if entity @s[tag=$(tag)] run data modify entity @s Items append value {id:"minecraft:lime_stained_glass_pane",count:1,components:{"minecraft:tooltip_display":{hide_tooltip:true},"minecraft:bundle_contents":[{id:"minecraft:stick",count:64}],"minecraft:custom_data":{teplus:{ui:1b}},"minecraft:custom_model_data":{strings:["$(cmd_filled)"]}},Slot:$(slot)b}

# Error/Default case
$execute if entity @s[tag=!$(tag)] run data modify entity @s Items append value {id:"minecraft:red_stained_glass_pane",count:1,components:{"minecraft:tooltip_display":{hide_tooltip:true},"minecraft:bundle_contents":[{id:"minecraft:stick",count:64}],"minecraft:custom_data":{teplus:{ui:1b}},"minecraft:custom_model_data":{strings:["$(cmd_empty)"]}},Slot:$(slot)b}

$data modify storage teplus:updates TAM.CurrentUI[{Slot:$(slot)b}] set from entity @s Items[{Slot:$(slot)b}]