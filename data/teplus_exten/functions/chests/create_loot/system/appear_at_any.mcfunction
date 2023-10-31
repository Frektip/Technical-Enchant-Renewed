function teplus_exten:chests/create_loot/system/success

#Usually if the enchantment has an "all" nbt tag
# it should be at the begining of the array
data remove storage teplus:chest Struct.With[].all
data remove storage teplus:chest Struct.With[0]