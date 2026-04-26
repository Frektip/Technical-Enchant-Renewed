# ================================================= #
#       BUILD ADMIN BOX ITEMS MENU UI
# ================================================= #

data modify storage teplus:ui Global[{profile:"admin_box"}].Items set value []

# --------------- First Row --------------- #
# Slot 0 : Blank
function teplus:core/ui/set_blank {slot:0,profile:"admin_box",type:"Items",cmd:{strings:["teplus:blank_slot"]}}
# Slot 1 : Blank
function teplus:core/ui/set_blank {slot:1,profile:"admin_box",type:"Items",cmd:{strings:["teplus:blank_slot"]}}
# Slot 7 : Blank
function teplus:core/ui/set_blank {slot:7,profile:"admin_box",type:"Items",cmd:{strings:["teplus:blank_slot"]}}
# Slot 8 : Blank
function teplus:core/ui/set_blank {slot:8,profile:"admin_box",type:"Items",cmd:{strings:["teplus:blank_slot"]}}
# --------------- Second Row --------------- #
# Slot 9 : Blank
function teplus:core/ui/set_blank {slot:9,profile:"admin_box",type:"Items",cmd:{strings:["teplus:blank_slot"]}}
# Slot 10 : Blank
function teplus:core/ui/set_blank {slot:10,profile:"admin_box",type:"Items",cmd:{strings:["teplus:blank_slot"]}}
# Slot 11 : Blank
function teplus:core/ui/set_blank {slot:11,profile:"admin_box",type:"Items",cmd:{strings:["teplus:blank_slot"]}}
# Slot 15 : Blank
function teplus:core/ui/set_blank {slot:15,profile:"admin_box",type:"Items",cmd:{strings:["teplus:blank_slot"]}}
# Slot 16 : Blank
function teplus:core/ui/set_blank {slot:16,profile:"admin_box",type:"Items",cmd:{strings:["teplus:blank_slot"]}}
# Slot 17 : Blank
function teplus:core/ui/set_blank {slot:17,profile:"admin_box",type:"Items",cmd:{strings:["teplus:blank_slot"]}}
# --------------- Third Row --------------- #
# Slot 18 : Blank
function teplus:core/ui/set_blank {slot:18,profile:"admin_box",type:"Items",cmd:{strings:["teplus:blank_slot"]}}
# Slot 19 : Blank
function teplus:core/ui/set_blank {slot:19,profile:"admin_box",type:"Items",cmd:{strings:["teplus:blank_slot"]}}
# Slot 20 : Blank
function teplus:core/ui/set_blank {slot:20,profile:"admin_box",type:"Items",cmd:{strings:["teplus:blank_slot"]}}
# Slot 21 : Blank
function teplus:core/ui/set_blank {slot:21,profile:"admin_box",type:"Items",cmd:{strings:["teplus:blank_slot"]}}
# Slot 23 : Blank
function teplus:core/ui/set_blank {slot:23,profile:"admin_box",type:"Items",cmd:{strings:["teplus:blank_slot"]}}
# Slot 24 : Blank
function teplus:core/ui/set_blank {slot:24,profile:"admin_box",type:"Items",cmd:{strings:["teplus:blank_slot"]}}
# Slot 25 : Blank
function teplus:core/ui/set_blank {slot:25,profile:"admin_box",type:"Items",cmd:{strings:["teplus:blank_slot"]}}
# Slot 26 : Return
data modify storage teplus:ui Global[{profile:"admin_box"}].Items append value {id:"minecraft:player_head",count:1,components:{"minecraft:custom_name":[{text:"[← ",color:"blue"},{translate:"teplus.misc.return",fallback:"Return",color:"blue"},{text:"]",color:"blue"}],"minecraft:profile":{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDdiOTlkN2QzY2JhNDU5ZTFhODgyNDQ3ZGFjZGIyNzk0M2MxZWY3MjFiMmFlY2FjZWM2NjliYWQzMWNhZmEifX19"}]},"minecraft:bundle_contents":[{id:"minecraft:stick",count:64}],"minecraft:custom_data":{teplus:{ui:1b,main_return:1b}}},Slot:26b}