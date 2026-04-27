# ================================================= #
#       BUILD ADMIN BOX ENCHANTS MENU UI
#           vanilla enchantments page
# ================================================= #

data modify storage teplus:ui Global[{profile:"admin_box"}].Vanilla set value []

# --------------- First Row --------------- #
# Slot 2 : Efficiency
data modify storage teplus:ui Global[{profile:"admin_box"}].Vanilla append value {id:"minecraft:enchanted_book",count:1,components:{"minecraft:bundle_contents":[{id:"minecraft:stick",count:64}],"minecraft:custom_data":{teplus:{ui:1b}}},Slot:2b}
function teplus:core/ui/admin_box/ench_pages/get_lvl {slot:2,ench:"efficiency"}
# Slot 3 : Feather Falling
data modify storage teplus:ui Global[{profile:"admin_box"}].Vanilla append value {id:"minecraft:enchanted_book",count:1,components:{"minecraft:bundle_contents":[{id:"minecraft:stick",count:64}],"minecraft:custom_data":{teplus:{ui:1b}}},Slot:3b}
function teplus:core/ui/admin_box/ench_pages/get_lvl {slot:3,ench:"feather_falling"}
# Slot 4 : Fire Aspect
data modify storage teplus:ui Global[{profile:"admin_box"}].Vanilla append value {id:"minecraft:enchanted_book",count:1,components:{"minecraft:bundle_contents":[{id:"minecraft:stick",count:64}],"minecraft:custom_data":{teplus:{ui:1b}}},Slot:4b}
function teplus:core/ui/admin_box/ench_pages/get_lvl {slot:4,ench:"fire_aspect"}
# Slot 5 : Fortune
data modify storage teplus:ui Global[{profile:"admin_box"}].Vanilla append value {id:"minecraft:enchanted_book",count:1,components:{"minecraft:bundle_contents":[{id:"minecraft:stick",count:64}],"minecraft:custom_data":{teplus:{ui:1b}}},Slot:5b}
function teplus:core/ui/admin_box/ench_pages/get_lvl {slot:5,ench:"fortune"}
# Slot 6 : Impaling
data modify storage teplus:ui Global[{profile:"admin_box"}].Vanilla append value {id:"minecraft:enchanted_book",count:1,components:{"minecraft:bundle_contents":[{id:"minecraft:stick",count:64}],"minecraft:custom_data":{teplus:{ui:1b}}},Slot:6b}
function teplus:core/ui/admin_box/ench_pages/get_lvl {slot:6,ench:"impaling"}
# Slot 7 : Knockback
data modify storage teplus:ui Global[{profile:"admin_box"}].Vanilla append value {id:"minecraft:enchanted_book",count:1,components:{"minecraft:bundle_contents":[{id:"minecraft:stick",count:64}],"minecraft:custom_data":{teplus:{ui:1b}}},Slot:7b}
function teplus:core/ui/admin_box/ench_pages/get_lvl {slot:7,ench:"knockback"}
# Slot 8 : Looting
data modify storage teplus:ui Global[{profile:"admin_box"}].Vanilla append value {id:"minecraft:enchanted_book",count:1,components:{"minecraft:bundle_contents":[{id:"minecraft:stick",count:64}],"minecraft:custom_data":{teplus:{ui:1b}}},Slot:8b}
function teplus:core/ui/admin_box/ench_pages/get_lvl {slot:8,ench:"looting"}
# --------------- Second Row --------------- #
# Slot 11 : Luck of the Sea
data modify storage teplus:ui Global[{profile:"admin_box"}].Vanilla append value {id:"minecraft:enchanted_book",count:1,components:{"minecraft:bundle_contents":[{id:"minecraft:stick",count:64}],"minecraft:custom_data":{teplus:{ui:1b}}},Slot:11b}
function teplus:core/ui/admin_box/ench_pages/get_lvl {slot:11,ench:"luck_of_the_sea"}
# Slot 12 : Lure
data modify storage teplus:ui Global[{profile:"admin_box"}].Vanilla append value {id:"minecraft:enchanted_book",count:1,components:{"minecraft:bundle_contents":[{id:"minecraft:stick",count:64}],"minecraft:custom_data":{teplus:{ui:1b}}},Slot:12b}
function teplus:core/ui/admin_box/ench_pages/get_lvl {slot:12,ench:"lure"}
# Slot 13 : Piercing
data modify storage teplus:ui Global[{profile:"admin_box"}].Vanilla append value {id:"minecraft:enchanted_book",count:1,components:{"minecraft:bundle_contents":[{id:"minecraft:stick",count:64}],"minecraft:custom_data":{teplus:{ui:1b}}},Slot:13b}
function teplus:core/ui/admin_box/ench_pages/get_lvl {slot:13,ench:"piercing"}
# Slot 14 : Power
data modify storage teplus:ui Global[{profile:"admin_box"}].Vanilla append value {id:"minecraft:enchanted_book",count:1,components:{"minecraft:bundle_contents":[{id:"minecraft:stick",count:64}],"minecraft:custom_data":{teplus:{ui:1b}}},Slot:14b}
function teplus:core/ui/admin_box/ench_pages/get_lvl {slot:14,ench:"power"}
# Slot 15 : Protection
data modify storage teplus:ui Global[{profile:"admin_box"}].Vanilla append value {id:"minecraft:enchanted_book",count:1,components:{"minecraft:bundle_contents":[{id:"minecraft:stick",count:64}],"minecraft:custom_data":{teplus:{ui:1b}}},Slot:15b}
function teplus:core/ui/admin_box/ench_pages/get_lvl {slot:15,ench:"protection"}
# Slot 16 : Punch
data modify storage teplus:ui Global[{profile:"admin_box"}].Vanilla append value {id:"minecraft:enchanted_book",count:1,components:{"minecraft:bundle_contents":[{id:"minecraft:stick",count:64}],"minecraft:custom_data":{teplus:{ui:1b}}},Slot:16b}
function teplus:core/ui/admin_box/ench_pages/get_lvl {slot:16,ench:"punch"}
# Slot 17 : Respiration
data modify storage teplus:ui Global[{profile:"admin_box"}].Vanilla append value {id:"minecraft:enchanted_book",count:1,components:{"minecraft:bundle_contents":[{id:"minecraft:stick",count:64}],"minecraft:custom_data":{teplus:{ui:1b}}},Slot:17b}
function teplus:core/ui/admin_box/ench_pages/get_lvl {slot:17,ench:"respiration"}
# --------------- Third Row --------------- #
# Slot 20 : Riptide
data modify storage teplus:ui Global[{profile:"admin_box"}].Vanilla append value {id:"minecraft:enchanted_book",count:1,components:{"minecraft:bundle_contents":[{id:"minecraft:stick",count:64}],"minecraft:custom_data":{teplus:{ui:1b}}},Slot:20b}
function teplus:core/ui/admin_box/ench_pages/get_lvl {slot:20,ench:"riptide"}
# Slot 21 : Sharpness
data modify storage teplus:ui Global[{profile:"admin_box"}].Vanilla append value {id:"minecraft:enchanted_book",count:1,components:{"minecraft:bundle_contents":[{id:"minecraft:stick",count:64}],"minecraft:custom_data":{teplus:{ui:1b}}},Slot:21b}
function teplus:core/ui/admin_box/ench_pages/get_lvl {slot:21,ench:"sharpness"}
# Slot 22 : Sweeping Edge
data modify storage teplus:ui Global[{profile:"admin_box"}].Vanilla append value {id:"minecraft:enchanted_book",count:1,components:{"minecraft:bundle_contents":[{id:"minecraft:stick",count:64}],"minecraft:custom_data":{teplus:{ui:1b}}},Slot:22b}
function teplus:core/ui/admin_box/ench_pages/get_lvl {slot:22,ench:"sweeping_edge"}
# Slot 23 : Swift Sneak
data modify storage teplus:ui Global[{profile:"admin_box"}].Vanilla append value {id:"minecraft:enchanted_book",count:1,components:{"minecraft:bundle_contents":[{id:"minecraft:stick",count:64}],"minecraft:custom_data":{teplus:{ui:1b}}},Slot:23b}
function teplus:core/ui/admin_box/ench_pages/get_lvl {slot:23,ench:"swift_sneak"}
# Slot 24 : Thorns
data modify storage teplus:ui Global[{profile:"admin_box"}].Vanilla append value {id:"minecraft:enchanted_book",count:1,components:{"minecraft:bundle_contents":[{id:"minecraft:stick",count:64}],"minecraft:custom_data":{teplus:{ui:1b}}},Slot:24b}
function teplus:core/ui/admin_box/ench_pages/get_lvl {slot:24,ench:"thorns"}
# Slot 25 : Unbreaking
data modify storage teplus:ui Global[{profile:"admin_box"}].Vanilla append value {id:"minecraft:enchanted_book",count:1,components:{"minecraft:bundle_contents":[{id:"minecraft:stick",count:64}],"minecraft:custom_data":{teplus:{ui:1b}}},Slot:25b}
function teplus:core/ui/admin_box/ench_pages/get_lvl {slot:25,ench:"unbreaking"}
# Slot 26 : Return
data modify storage teplus:ui Global[{profile:"admin_box"}].Vanilla append value {id:"minecraft:player_head",count:1,components:{"minecraft:custom_name":[{text:"[← ",color:"blue"},{translate:"teplus.misc.return",fallback:"Return",color:"blue"},{text:"]",color:"blue"}],"minecraft:profile":{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDdiOTlkN2QzY2JhNDU5ZTFhODgyNDQ3ZGFjZGIyNzk0M2MxZWY3MjFiMmFlY2FjZWM2NjliYWQzMWNhZmEifX19"}]},"minecraft:bundle_contents":[{id:"minecraft:stick",count:64}],"minecraft:custom_data":{teplus:{ui:1b,main_return:1b}}},Slot:26b}