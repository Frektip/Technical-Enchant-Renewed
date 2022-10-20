#Tag the item with the curse (so it is applyied again)
execute if data storage teplus:diench Current[{id:"minecraft:vanishing_curse"}] run tag @s add has_vanishing
execute if data storage teplus:diench Current[{id:"minecraft:binding_curse"}] run tag @s add has_binding

tag @s add has_vanilla_curse

#Ignore the Vanilla enchantment curse
# -First remove 1 from the counter
# -Then set the Current storage level to 0, just in case
# -Remove the first enchantment in "Enchantments" storage (the curse)
# -If there is another enchantment left, update the "Current" storage
scoreboard players remove @s teplus.cencnt 1
data modify storage teplus:diench Current[0].lvl set value 0
data remove storage teplus:diench Enchantments[0]
data modify storage teplus:diench Current[] set from storage teplus:diench Enchantments[0]