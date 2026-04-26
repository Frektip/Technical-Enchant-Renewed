# This function is used to place a blank item in a specified slot for specific ui storage (profile)

# @Args
#   ${profile}: UI profile (technical_anvil, admin_box)
#   ${type}: UI sub-type from the profile: [technical_anvil:(Merge, Extract), admin_box:(Main, Items, Enchants)]
#   ${slot}: Slot number (0-26)
#   ${cmd}: Custom model data string from the RP

$data modify storage teplus:ui Global[{profile:$(profile)}].$(type) append value {id:"minecraft:black_stained_glass_pane",count:1,components:{"minecraft:tooltip_display":{hide_tooltip:true},"minecraft:bundle_contents":[{id:"minecraft:stick",count:64}],"minecraft:custom_data":{teplus:{ui:1b}},"minecraft:custom_model_data":$(cmd)},Slot:$(slot)b}