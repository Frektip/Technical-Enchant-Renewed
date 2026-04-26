# ================================================= #
#       BUILD ADMIN BOX MAIN MENU UI
# ================================================= #

data modify storage teplus:ui Global[{profile:"admin_box"}].Main set value []

# --------------- First Row --------------- #
# Slot 0 : Blank
function teplus:core/ui/set_blank {slot:0,profile:"admin_box",type:"Main",cmd:{strings:["teplus:blank_slot"]}}
# Slot 1 : Blank
function teplus:core/ui/set_blank {slot:1,profile:"admin_box",type:"Main",cmd:{strings:["teplus:blank_slot"]}}
# Slot 2 : Blank
function teplus:core/ui/set_blank {slot:2,profile:"admin_box",type:"Main",cmd:{strings:["teplus:blank_slot"]}}
# Slot 3 : Blank
function teplus:core/ui/set_blank {slot:3,profile:"admin_box",type:"Main",cmd:{strings:["teplus:blank_slot"]}}
# Slot 4 : Blank
function teplus:core/ui/set_blank {slot:4,profile:"admin_box",type:"Main",cmd:{strings:["teplus:blank_slot"]}}
# Slot 5 : Blank
function teplus:core/ui/set_blank {slot:5,profile:"admin_box",type:"Main",cmd:{strings:["teplus:blank_slot"]}}
# Slot 6 : Blank
function teplus:core/ui/set_blank {slot:6,profile:"admin_box",type:"Main",cmd:{strings:["teplus:blank_slot"]}}
# Slot 7 : Blank
function teplus:core/ui/set_blank {slot:7,profile:"admin_box",type:"Main",cmd:{strings:["teplus:blank_slot"]}}
# Slot 8 : Blank
function teplus:core/ui/set_blank {slot:8,profile:"admin_box",type:"Main",cmd:{strings:["teplus:blank_slot"]}}
# --------------- Second Row --------------- #
# Slot 9 : Blank
function teplus:core/ui/set_blank {slot:9,profile:"admin_box",type:"Main",cmd:{strings:["teplus:blank_slot"]}}
# Slot 10 : Blank
function teplus:core/ui/set_blank {slot:10,profile:"admin_box",type:"Main",cmd:{strings:["teplus:blank_slot"]}}
# Slot 11 : Item Button
data modify storage teplus:ui Global[{profile:"admin_box"}].Main append value {id:"minecraft:enchanting_table",count:1,components:{"minecraft:custom_name":[{translate:"teplus.admin_box.items.button_tittle",fallback:"Custom Items",color:"aqua",italic:false,bold:true}],"minecraft:bundle_contents":[{id:"minecraft:stick",count:64}],"minecraft:custom_data":{teplus:{ui:1b,items_btn:1b}}},Slot:11b}
# Slot 12 : Blank
function teplus:core/ui/set_blank {slot:12,profile:"admin_box",type:"Main",cmd:{strings:["teplus:blank_slot"]}}
# Slot 13 : Action
function teplus:core/ui/set_blank {slot:13,profile:"admin_box",type:"Main",cmd:{strings:["teplus:blank_slot"]}}
# Slot 14 : Blank
function teplus:core/ui/set_blank {slot:14,profile:"admin_box",type:"Main",cmd:{strings:["teplus:blank_slot"]}}
# Slot 15 : Enchants Button
data modify storage teplus:ui Global[{profile:"admin_box"}].Main append value {id:"minecraft:enchanted_book",count:1,components:{"minecraft:custom_name":[{translate:"teplus.admin_box.enchants.button_tittle",fallback:"Enchantments",color:"green",italic:false,bold:true}],"minecraft:bundle_contents":[{id:"minecraft:stick",count:64}],"minecraft:custom_data":{teplus:{ui:1b,enchants_btn:1b}}},Slot:15b}
# Slot 16 : Blank
function teplus:core/ui/set_blank {slot:16,profile:"admin_box",type:"Main",cmd:{strings:["teplus:blank_slot"]}}
# Slot 17 : Blank
function teplus:core/ui/set_blank {slot:17,profile:"admin_box",type:"Main",cmd:{strings:["teplus:blank_slot"]}}
# --------------- Third Row --------------- #
# Slot 18 : Blank
function teplus:core/ui/set_blank {slot:18,profile:"admin_box",type:"Main",cmd:{strings:["teplus:blank_slot"]}}
# Slot 19 : Blank
function teplus:core/ui/set_blank {slot:19,profile:"admin_box",type:"Main",cmd:{strings:["teplus:blank_slot"]}}
# Slot 20 : Blank
function teplus:core/ui/set_blank {slot:20,profile:"admin_box",type:"Main",cmd:{strings:["teplus:blank_slot"]}}
# Slot 21 : Blank
function teplus:core/ui/set_blank {slot:21,profile:"admin_box",type:"Main",cmd:{strings:["teplus:blank_slot"]}}
# Slot 22 : Blank
function teplus:core/ui/set_blank {slot:22,profile:"admin_box",type:"Main",cmd:{strings:["teplus:blank_slot"]}}
# Slot 23 : Blank
function teplus:core/ui/set_blank {slot:23,profile:"admin_box",type:"Main",cmd:{strings:["teplus:blank_slot"]}}
# Slot 24 : Blank
function teplus:core/ui/set_blank {slot:24,profile:"admin_box",type:"Main",cmd:{strings:["teplus:blank_slot"]}}
# Slot 25 : Blank
function teplus:core/ui/set_blank {slot:25,profile:"admin_box",type:"Main",cmd:{strings:["teplus:blank_slot"]}}
# Slot 26 : Blank
function teplus:core/ui/set_blank {slot:26,profile:"admin_box",type:"Main",cmd:{strings:["teplus:blank_slot"]}}