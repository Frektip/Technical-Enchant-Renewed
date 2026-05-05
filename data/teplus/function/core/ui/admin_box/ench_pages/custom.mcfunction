# ================================================= #
#       BUILD ADMIN BOX ENCHANTS MENU UI
#           custom enchantments page
# ================================================= #

data modify storage teplus:ui Global[{profile:"admin_box"}].All set value []

# Get all custom enchantments
data modify storage teplus:ui Global[{profile:"admin_box"}].All append from storage teplus:register Custom[].Enchantment[].Low[]
data modify storage teplus:ui Global[{profile:"admin_box"}].All append from storage teplus:register Custom[].Enchantment[].Average[]
data modify storage teplus:ui Global[{profile:"admin_box"}].All append from storage teplus:register Custom[].Enchantment[].Strong[]
data modify storage teplus:ui Global[{profile:"admin_box"}].All append from storage teplus:register Custom[].Curse[]

# Remove unnecessary data to save space
data remove storage teplus:ui Global[{profile:"admin_box"}].All[].Enabled
data remove storage teplus:ui Global[{profile:"admin_box"}].All[].Charge
data remove storage teplus:ui Global[{profile:"admin_box"}].All[].Sell
data remove storage teplus:ui Global[{profile:"admin_box"}].All[].ForItem
data remove storage teplus:ui Global[{profile:"admin_box"}].All[].Rarity
data remove storage teplus:ui Global[{profile:"admin_box"}].All[].Structure
data remove storage teplus:ui Global[{profile:"admin_box"}].All[].Incompatible
data remove storage teplus:ui Global[{profile:"admin_box"}].All[].NoEnch
data remove storage teplus:ui Global[{profile:"admin_box"}].All[].NoDrop

# Scoreboard to get the ammount of pages to create
execute store result score $Total teplus.admin_box.data run data get storage teplus:ui Global[{profile:"admin_box"}].All

scoreboard players operation $page.lim teplus.admin_box.data = $Total teplus.admin_box.data
scoreboard players operation $extra.pg teplus.admin_box.data = $page.lim teplus.admin_box.data

scoreboard players operation $page.lim teplus.admin_box.data /= #19const teplus.data
scoreboard players operation $extra.pg teplus.admin_box.data %= #19const teplus.data

# If there aren't 19 enchantments per page
# Update the total page count
execute if score $extra.pg teplus.admin_box.data matches 1.. run scoreboard players add $page.lim teplus.admin_box.data 1

#--------- Set navigation buttons based on the pages avaiable ---------#

# Navigation buttons for the (first) page
execute if score $page.lim teplus.admin_box.data matches 2.. run data modify storage teplus:ui Global[{profile:"admin_box"}].Nav.Init set value [{Slot:25b,id:"minecraft:player_head",count:1,components:{"minecraft:custom_name":[{text:"[← ",color:"blue"},{translate:"teplus.misc.return",fallback:"Return",color:"blue"},{text:"]",color:"blue"}],"minecraft:profile":{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDdiOTlkN2QzY2JhNDU5ZTFhODgyNDQ3ZGFjZGIyNzk0M2MxZWY3MjFiMmFlY2FjZWM2NjliYWQzMWNhZmEifX19"}]},"minecraft:bundle_contents":[{id:"minecraft:stick",count:64}],"minecraft:custom_data":{teplus:{ui:1b,main_return:1b}}}},{Slot:26b,id:"minecraft:player_head",count:1,components:{"minecraft:custom_name":[{text:"[",color:"#D0F27B"},{translate:"teplus.misc.next",fallback:"Next",color:"#D0F27B"},{text:" →]",color:"#D0F27B"}],"minecraft:profile":{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNGVmMzU2YWQyYWE3YjE2NzhhZWNiODgyOTBlNWZhNWEzNDI3ZTVlNDU2ZmY0MmZiNTE1NjkwYzY3NTE3YjgifX19"}]},"minecraft:bundle_contents":[{id:"minecraft:stick",count:64}],"minecraft:custom_data":{teplus:{ui:1b,next_pg:1b}}}}]

execute if score $page.lim teplus.admin_box.data matches ..1 run data modify storage teplus:ui Global[{profile:"admin_box"}].Nav.Init set value [{Slot:26b,id:"minecraft:player_head",count:1,components:{"minecraft:custom_name":[{text:"[← ",color:"blue"},{translate:"teplus.misc.return",fallback:"Return",color:"blue"},{text:"]",color:"blue"}],"minecraft:profile":{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDdiOTlkN2QzY2JhNDU5ZTFhODgyNDQ3ZGFjZGIyNzk0M2MxZWY3MjFiMmFlY2FjZWM2NjliYWQzMWNhZmEifX19"}]},"minecraft:bundle_contents":[{id:"minecraft:stick",count:64}],"minecraft:custom_data":{teplus:{ui:1b,main_return:1b}}}}]

# Navigation buttons for (n-1) page
data modify storage teplus:ui Global[{profile:"admin_box"}].Nav.Mid set value [{Slot:25b,id:"minecraft:player_head",count:1,components:{"minecraft:custom_name":[{text:"[← ",color:"#EB5959"},{translate:"teplus.misc.previous",fallback:"Previous",color:"#EB5959"},{text:"]",color:"#EB5959"}],"minecraft:profile":{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjg0ZjU5NzEzMWJiZTI1ZGMwNThhZjg4OGNiMjk4MzFmNzk1OTliYzY3Yzk1YzgwMjkyNWNlNGFmYmEzMzJmYyJ9fX0="}]},"minecraft:bundle_contents":[{id:"minecraft:stick",count:64}],"minecraft:custom_data":{teplus:{ui:1b,prev_pg:1b}}}},{Slot:26b,id:"minecraft:player_head",count:1,components:{"minecraft:custom_name":[{text:"[",color:"#D0F27B"},{translate:"teplus.misc.next",fallback:"Next",color:"#D0F27B"},{text:" →]",color:"#D0F27B"}],"minecraft:profile":{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNGVmMzU2YWQyYWE3YjE2NzhhZWNiODgyOTBlNWZhNWEzNDI3ZTVlNDU2ZmY0MmZiNTE1NjkwYzY3NTE3YjgifX19"}]},"minecraft:bundle_contents":[{id:"minecraft:stick",count:64}],"minecraft:custom_data":{teplus:{ui:1b,next_pg:1b}}}}]

# Navigation buttons for (n) page
data modify storage teplus:ui Global[{profile:"admin_box"}].Nav.End set value [{Slot:26b,id:"minecraft:player_head",count:1,components:{"minecraft:custom_name":[{text:"[← ",color:"#EB5959"},{translate:"teplus.misc.previous",fallback:"Previous",color:"#EB5959"},{text:"]",color:"#EB5959"}],"minecraft:profile":{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjg0ZjU5NzEzMWJiZTI1ZGMwNThhZjg4OGNiMjk4MzFmNzk1OTliYzY3Yzk1YzgwMjkyNWNlNGFmYmEzMzJmYyJ9fX0="}]},"minecraft:bundle_contents":[{id:"minecraft:stick",count:64}],"minecraft:custom_data":{teplus:{ui:1b,prev_pg:1b}}}}]