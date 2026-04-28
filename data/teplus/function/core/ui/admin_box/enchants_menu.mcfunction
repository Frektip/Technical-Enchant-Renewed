# ================================================= #
#       BUILD ADMIN BOX ENCHANTS MENU UI
# ================================================= #

data modify storage teplus:ui Global[{profile:"admin_box"}].Enchants set value []

# --------------- First Row --------------- #
# Slot 0 : Custom Enchantments Button
data modify storage teplus:ui Global[{profile:"admin_box"}].Enchants append value {id:"minecraft:enchanted_book",count:1,components:{"minecraft:custom_name":[{translate:"teplus.admin_box.enchants.custom_enchants_tittle",fallback:"Custom Enchantments",color:"#E75532",italic:false,bold:true}],"minecraft:bundle_contents":[{id:"minecraft:stick",count:64}],"minecraft:custom_data":{teplus:{ui:1b,custom_ench_btn:1b}}},Slot:0b}
# Slot 1 : Blank
function teplus:core/ui/set_blank {slot:1,profile:"admin_box",type:"Enchants",cmd:{strings:["teplus:blank_slot"]}}
# --------------- Second Row --------------- #
# Slot 9 : Blank
function teplus:core/ui/set_blank {slot:9,profile:"admin_box",type:"Enchants",cmd:{strings:["teplus:blank_slot"]}}
# Slot 10 : Blank
function teplus:core/ui/set_blank {slot:10,profile:"admin_box",type:"Enchants",cmd:{strings:["teplus:blank_slot"]}}
# --------------- Third Row --------------- #
# Slot 18 : Vanilla Enchantments Button
data modify storage teplus:ui Global[{profile:"admin_box"}].Enchants append value {id:"minecraft:enchanted_book",count:1,components:{"minecraft:custom_name":[{translate:"teplus.admin_box.enchants.vanilla_enchants_tittle",fallback:"Vanilla Enchantments",color:"#5CDDA8",italic:false,bold:true}],"minecraft:bundle_contents":[{id:"minecraft:stick",count:64}],"minecraft:custom_data":{teplus:{ui:1b,vanilla_ench_btn:1b}}},Slot:18b}
# Slot 19 : Blank
function teplus:core/ui/set_blank {slot:19,profile:"admin_box",type:"Enchants",cmd:{strings:["teplus:blank_slot"]}}