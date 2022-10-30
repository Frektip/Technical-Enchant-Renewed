#data remove storage teplus:loot Temp[0].Incompatible
data modify storage teplus:loot Incomp.Source[0] set from storage teplus:loot Temp[0].Incompatible[0]

data modify storage teplus:loot Incomp.With set value []
data modify storage teplus:loot Incomp.With append from entity @s Item.tag.Enchantments[]
data modify storage teplus:loot Incomp.With append from entity @s Item.tag.CustomEnchantments[]
data modify storage teplus:loot Incomp.With append from entity @s Item.tag.CustomCurse[]
data remove storage teplus:loot Incomp.With[].lvl

function enchantplus:loot/enchanting/incompatible/compare

#In case it fails and it has more than one incompatible enchantment
#  run it again, until the Incompatible nbt has been fully covered
data remove storage teplus:loot Temp[0].Incompatible[0]
execute if data storage teplus:loot Temp[0].Incompatible[0].id run function enchantplus:loot/enchanting/incompatible/init