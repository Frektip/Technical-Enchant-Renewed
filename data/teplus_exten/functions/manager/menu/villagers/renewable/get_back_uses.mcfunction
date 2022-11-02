data modify entity @s Offers.Recipes[-1].uses set value 0
execute if entity @s[nbt={Offers:{Recipes:[{sell:{tag:{TeplusHead:{isolated_core:1b}}}}]}}] run data modify entity @s Offers.Recipes[-1].maxUses set value 3
execute if entity @s[nbt={Offers:{Recipes:[{sell:{tag:{TeplusHead:{blessed_orb:1b}}}}]}}] run data modify entity @s Offers.Recipes[-1].maxUses set value 3

tag @s[nbt={Offers:{Recipes:[{sell:{tag:{TeplusHead:{isolated_core:1b}}}}]}}] add tepxv.isl_cr
tag @s[nbt={Offers:{Recipes:[{sell:{tag:{TeplusHead:{blessed_orb:1b}}}}]}}] add tepxv.bls_orb

tag @s add tepxv.special