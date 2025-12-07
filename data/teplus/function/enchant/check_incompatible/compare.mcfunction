execute store success score $incomp teplus.data run data modify storage teplus:loot Incomp.With[0] set from storage teplus:loot Incomp.Source[0]
execute if score $incomp teplus.data matches 0 run data remove storage teplus:loot Temp[0]


data remove storage teplus:loot Incomp.With[0]
execute if score $incomp teplus.data matches 1 if data storage teplus:loot Incomp.With[0] run function enchantplus:loot/enchanting/incompatible/compare