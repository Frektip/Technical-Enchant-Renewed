# ================================================= #
#       BUILD TECHNICAL ANVIL MERGE MODE UI
# ================================================= #

data modify storage teplus:ui Global[{profile:"technical_anvil"}].Merge set value []

# --------------- First Row --------------- #
# Slot 0 : Blank
function teplus:core/ui/set_blank {slot:0,mode:"Merge",cmd:{strings:["teplus:blank_slot"]}}
# Slot 1 : Blank
function teplus:core/ui/set_blank {slot:1,mode:"Merge",cmd:{strings:["teplus:blank_slot"]}}
# Slot 3 : Blank
function teplus:core/ui/set_blank {slot:3,mode:"Merge",cmd:{strings:["teplus:blank_slot"]}}
# Slot 4 : Toggle
data modify storage teplus:ui Global[{profile:"technical_anvil"}].Merge append value {id:"minecraft:player_head",count:1,components:{"minecraft:custom_name":[{translate:"teplus.technical_anvil.toggle.merge_title",fallback:"Merging Mode",color:"aqua",italic:false,bold:true}],"minecraft:lore":[{translate:"teplus.technical_anvil.toggle.merge_lore1",fallback:"Use it as a normal anvil to",color:"white",italic:false},{translate:"teplus.technical_anvil.toggle.merge_lore2",fallback:"combine custom enchantments to your items!",color:"white",italic:false},{text:"---------------------------------------",color:"aqua",italic:false},{translate:"teplus.technical_anvil.toggle_switch",fallback:"Clic this icon to change Technical Anvil mode",color:"blue",italic:true}],"minecraft:profile":{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNWQyOTMwYzhiMGU2M2QxY2E2YTBhMDU4YTgzNjdmNGY2MDg4MTlmOTY4YmJhYWI0ZjAzY2YwMTNlNjJmZmMwMSJ9fX0="}]},"minecraft:bundle_contents":[{id:"minecraft:stick",count:64}],"minecraft:custom_data":{teplus:{ui:1b,toggle:1b}},"minecraft:custom_model_data":{strings:["teplus:technical_anvil.toggle_merge"]}},Slot:4b}
# Slot 5 : Blank
function teplus:core/ui/set_blank {slot:5,mode:"Merge",cmd:{strings:["teplus:blank_slot"]}}
# Slot 7 : Blank
function teplus:core/ui/set_blank {slot:7,mode:"Merge",cmd:{strings:["teplus:blank_slot"]}}
# Slot 8 : Blank
function teplus:core/ui/set_blank {slot:8,mode:"Merge",cmd:{strings:["teplus:blank_slot"]}}
# --------------- Second Row --------------- #
# Slot 9 : Blank
function teplus:core/ui/set_blank {slot:9,mode:"Merge",cmd:{strings:["teplus:blank_slot"]}}
# Slot 10 : Blank
function teplus:core/ui/set_blank {slot:10,mode:"Merge",cmd:{strings:["teplus:blank_slot"]}}

# Slot 12 : Blank
function teplus:core/ui/set_blank {slot:12,mode:"Merge",cmd:{strings:["teplus:blank_slot"]}}
# Slot 13 : Action
data modify storage teplus:ui Global[{profile:"technical_anvil"}].Merge append value {id:"minecraft:experience_bottle",count:1,components:{"minecraft:custom_name":[{translate:"teplus.technical_anvil.merge_action.title",fallback:"Need levels",color:"green",italic:false}],"minecraft:lore":[{translate:"teplus.technical_anvil.merge_action.lore",fallback:"Clic this item to combine",color:"white",italic:false}],"minecraft:bundle_contents":[{id:"minecraft:stick",count:64}],"minecraft:custom_data":{teplus:{ui:1b,merge:1b}},"minecraft:custom_model_data":{strings:["teplus:technical_anvil.merge_action"]}},Slot:13b}
# Slot 14 : Blank
function teplus:core/ui/set_blank {slot:14,mode:"Merge",cmd:{strings:["teplus:blank_slot"]}}

# Slot 16 : Blank
function teplus:core/ui/set_blank {slot:16,mode:"Merge",cmd:{strings:["teplus:blank_slot"]}}
# Slot 17 : Blank
function teplus:core/ui/set_blank {slot:17,mode:"Merge",cmd:{strings:["teplus:blank_slot"]}}
# --------------- Third Row --------------- #
# Slot 18 : Blank
function teplus:core/ui/set_blank {slot:18,mode:"Merge",cmd:{strings:["teplus:blank_slot"]}}
# Slot 19 : Blank
function teplus:core/ui/set_blank {slot:19,mode:"Merge",cmd:{strings:["teplus:blank_slot"]}}


# Slot 25 : Blank
function teplus:core/ui/set_blank {slot:25,mode:"Merge",cmd:{strings:["teplus:blank_slot"]}}
# Slot 26 : Merge Frame + Blank
function teplus:core/ui/set_blank {slot:26,mode:"Merge",cmd:{strings:["teplus:technical_anvil.merge_frame"]}}