execute store result score #drops.out teplus.rng run random value 0..3

# Max Health
execute if score #drops.out teplus.rng matches 0 unless data entity @s attributes[{modifiers:[{id:"teplus:drop.max_health"}]}] run function teplus:drops/convert_entity/set_buffs/attributes/max_health

# Movement Speed
execute if score #drops.out teplus.rng matches 1 unless data entity @s attributes[{modifiers:[{id:"teplus:drop.speed"}]}] run function teplus:drops/convert_entity/set_buffs/attributes/speed

# Attack Damage
execute if score #drops.out teplus.rng matches 2 unless data entity @s attributes[{modifiers:[{id:"teplus:drop.damage"}]}] run function teplus:drops/convert_entity/set_buffs/attributes/damage

# Armor Toughness
execute if score #drops.out teplus.rng matches 3 unless data entity @s attributes[{modifiers:[{id:"teplus:drop.toughness"}]}] run function teplus:drops/convert_entity/set_buffs/attributes/armor_toughness