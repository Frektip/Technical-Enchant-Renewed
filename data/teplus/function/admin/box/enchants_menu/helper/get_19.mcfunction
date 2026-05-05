# Get first enchantment
data modify storage teplus:ui Global[{profile:"admin_box"}].Build append from storage teplus:ui Global[{profile:"admin_box"}].Get[0]

# Loop until it gets 19 enchantments or if it reaches the limit for enchantments (less than 19)
data remove storage teplus:ui Global[{profile:"admin_box"}].Get[0]
scoreboard players add %loop.19 teplus.admin_box.data 1
execute if score %loop.19 teplus.admin_box.data matches ..18 if data storage teplus:ui Global[{profile:"admin_box"}].Build[0].id run function teplus:admin/box/enchants_menu/helper/get_19