# ================================================= #
#     BUILD TECHNICAL ANVIL EXTRACT MODE UI
# ================================================= #

data modify storage teplus:ui Global[{profile:"technical_anvil"}].Extract set value []

# --------------- First Row --------------- #
# Slot 0 : Blank
function teplus:core/ui/set_blank {slot:0,profile:"technical_anvil",type:"Extract",cmd:{strings:["teplus:blank_slot"]}}
# Slot 1 : Blank
function teplus:core/ui/set_blank {slot:1,profile:"technical_anvil",type:"Extract",cmd:{strings:["teplus:blank_slot"]}}
# Slot 2 : Blank
function teplus:core/ui/set_blank {slot:2,profile:"technical_anvil",type:"Extract",cmd:{strings:["teplus:blank_slot"]}}
# Slot 3 : Blank
function teplus:core/ui/set_blank {slot:3,profile:"technical_anvil",type:"Extract",cmd:{strings:["teplus:blank_slot"]}}
# Slot 4 : Toggle
data modify storage teplus:ui Global[{profile:"technical_anvil"}].Extract append value {id:"minecraft:player_head",count:1,components:{"minecraft:custom_name":[{translate:"teplus.technical_anvil.toggle.extract_title",fallback:"Extracting Mode",color:"#FF9A36",italic:false,bold:true}],"minecraft:lore":[{translate:"teplus.technical_anvil.toggle.extract_lore1",fallback:"Place on the left any item with custom",color:"white",italic:false},{translate:"teplus.technical_anvil.toggle.extract_lore2",fallback:"enchantments and on the right normal books",color:"white",italic:false},{text:"---------------------------------------",color:"gold",italic:false},{translate:"teplus.technical_anvil.toggle_switch",fallback:"Clic this icon to change Technical Anvil mode",color:"blue",italic:true}],"minecraft:profile":{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNGI4NTJlZTkwYjgzZDkyOTM5NjBmYTY0NGMyNTZkNjU1ODJjYjk5YWFlYjU5MzAzZjdlYzM1NWFiZTNmZjQwNiJ9fX0="}]},"minecraft:bundle_contents":[{id:"minecraft:stick",count:64}],"minecraft:custom_data":{teplus:{ui:1b,toggle:1b}},"minecraft:custom_model_data":{strings:["teplus:technical_anvil.toggle_extract"]}},Slot:4b}
# Slot 5 : Blank
function teplus:core/ui/set_blank {slot:5,profile:"technical_anvil",type:"Extract",cmd:{strings:["teplus:blank_slot"]}}
# Slot 6 : Blank
function teplus:core/ui/set_blank {slot:6,profile:"technical_anvil",type:"Extract",cmd:{strings:["teplus:blank_slot"]}}
# Slot 7 : Blank
function teplus:core/ui/set_blank {slot:7,profile:"technical_anvil",type:"Extract",cmd:{strings:["teplus:blank_slot"]}}
# Slot 8 : Blank
function teplus:core/ui/set_blank {slot:8,profile:"technical_anvil",type:"Extract",cmd:{strings:["teplus:blank_slot"]}}
# --------------- Second Row --------------- #
# Slot 9 : Blank
function teplus:core/ui/set_blank {slot:9,profile:"technical_anvil",type:"Extract",cmd:{strings:["teplus:blank_slot"]}}
# Slot 11 : Progress/Horizontal
data modify storage teplus:ui Global[{profile:"technical_anvil"}].Extract append value {id:"minecraft:red_stained_glass_pane",count:1,components:{"minecraft:tooltip_display":{hide_tooltip:true},"minecraft:bundle_contents":[{id:"minecraft:stick",count:64}],"minecraft:custom_data":{teplus:{ui:1b}},"minecraft:custom_model_data":{strings:["teplus:progress.empty.horizontal"]}},Slot:11b}
# Slot 12 : Progress/Arrow Right
data modify storage teplus:ui Global[{profile:"technical_anvil"}].Extract append value {id:"minecraft:red_stained_glass_pane",count:1,components:{"minecraft:tooltip_display":{hide_tooltip:true},"minecraft:bundle_contents":[{id:"minecraft:stick",count:64}],"minecraft:custom_data":{teplus:{ui:1b}},"minecraft:custom_model_data":{strings:["teplus:progress.empty.arrow_right"]}},Slot:12b}
# Slot 13 : Result
data modify storage teplus:ui Global[{profile:"technical_anvil"}].Extract append value {id:"minecraft:structure_void",count:1,components:{"minecraft:custom_name":[{text:""}],"minecraft:bundle_contents":[{id:"minecraft:stick",count:64}],"minecraft:custom_data":{teplus:{ui:1b}},"minecraft:custom_model_data":{strings:["teplus:error"]}},Slot:13b}
# Slot 14 : Progress/Arrow Left
data modify storage teplus:ui Global[{profile:"technical_anvil"}].Extract append value {id:"minecraft:red_stained_glass_pane",count:1,components:{"minecraft:tooltip_display":{hide_tooltip:true},"minecraft:bundle_contents":[{id:"minecraft:stick",count:64}],"minecraft:custom_data":{teplus:{ui:1b}},"minecraft:custom_model_data":{strings:["teplus:progress.empty.arrow_left"]}},Slot:14b}
# Slot 15 : Progress/Horizontal
data modify storage teplus:ui Global[{profile:"technical_anvil"}].Extract append value {id:"minecraft:red_stained_glass_pane",count:1,components:{"minecraft:tooltip_display":{hide_tooltip:true},"minecraft:bundle_contents":[{id:"minecraft:stick",count:64}],"minecraft:custom_data":{teplus:{ui:1b}},"minecraft:custom_model_data":{strings:["teplus:progress.empty.horizontal"]}},Slot:15b}
# Slot 17 : Blank
function teplus:core/ui/set_blank {slot:17,profile:"technical_anvil",type:"Extract",cmd:{strings:["teplus:blank_slot"]}}
# --------------- Third Row --------------- #
# Slot 18 : Blank
function teplus:core/ui/set_blank {slot:18,profile:"technical_anvil",type:"Extract",cmd:{strings:["teplus:blank_slot"]}}
# Slot 19 : Blank
function teplus:core/ui/set_blank {slot:19,profile:"technical_anvil",type:"Extract",cmd:{strings:["teplus:blank_slot"]}}
# Slot 20 : Blank
function teplus:core/ui/set_blank {slot:20,profile:"technical_anvil",type:"Extract",cmd:{strings:["teplus:blank_slot"]}}
# Slot 21 : Blank
function teplus:core/ui/set_blank {slot:21,profile:"technical_anvil",type:"Extract",cmd:{strings:["teplus:blank_slot"]}}
# Slot 22 : Action
data modify storage teplus:ui Global[{profile:"technical_anvil"}].Extract append value {id:"minecraft:nether_star",count:1,components:{"minecraft:custom_name":[{translate:"teplus.technical_anvil.extract_action.title",fallback:"Clic this item",color:"yellow",italic:false}],"minecraft:lore":[{translate:"teplus.technical_anvil.extract_action.lore",fallback:"to extract a custom enchantment",color:"white",italic:false}],"minecraft:bundle_contents":[{id:"minecraft:stick",count:64}],"minecraft:custom_data":{teplus:{ui:1b,extract:1b}},"minecraft:custom_model_data":{strings:["teplus:technical_anvil.extract_action"]}},Slot:22b}
# Slot 23 : Blank
function teplus:core/ui/set_blank {slot:23,profile:"technical_anvil",type:"Extract",cmd:{strings:["teplus:blank_slot"]}}
# Slot 24 : Blank
function teplus:core/ui/set_blank {slot:24,profile:"technical_anvil",type:"Extract",cmd:{strings:["teplus:blank_slot"]}}
# Slot 25 : Blank
function teplus:core/ui/set_blank {slot:25,profile:"technical_anvil",type:"Extract",cmd:{strings:["teplus:blank_slot"]}}
# Slot 26 : Extract Frame + Blank
function teplus:core/ui/set_blank {slot:26,profile:"technical_anvil",type:"Extract",cmd:{strings:["teplus:technical_anvil.extract_frame"]}}