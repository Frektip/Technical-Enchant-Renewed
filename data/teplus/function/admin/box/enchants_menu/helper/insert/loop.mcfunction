# Format the selected enchantment (Build[0]) to a compound ---> Store the value in "teplus:temp singlenchobj" storage
function teplus:utils/ench_to_single_obj with storage teplus:ui Global[{profile:"admin_box"}].Build[0]
data modify storage teplus:temp targetench set from storage teplus:temp singlenchobj

# Insert the new enchatment based on the storage
# calls ---> teplus:admin/box/enchants_menu/helper/insert/in_barrel.mcfunction
function #teplus:extra/insert_in_admin_box

# Repeat untill all the enchantments have been covered
data remove storage teplus:ui Global[{profile:"admin_box"}].Build[0]
execute if data storage teplus:ui Global[{profile:"admin_box"}].Build[0].id run function teplus:admin/box/enchants_menu/helper/insert/loop

# Clear storages after insert
data remove storage teplus:ui Global[{profile:"admin_box"}].Get
data remove storage teplus:ui Global[{profile:"admin_box"}].Build
data remove storage teplus:temp singlenchobj
data remove storage teplus:temp targetench
