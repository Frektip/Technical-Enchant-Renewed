scoreboard players set $min random 0
scoreboard players set $max random 3
function enchantplus:random_uniform

#Max Health
execute if score $out random matches 0 unless data entity @s Attributes[{Modifiers:[{Name:"TepDrop.MaxHealth"}]}] run function teplus_exten:drops/set_buffs/attributes/max_health

#Movement Speed
execute if score $out random matches 1 unless data entity @s Attributes[{Modifiers:[{Name:"TepDrop.Speed"}]}] run function teplus_exten:drops/set_buffs/attributes/speed

#Attack Damage
execute if score $out random matches 2 unless data entity @s Attributes[{Modifiers:[{Name:"TepDrop.Damage"}]}] run function teplus_exten:drops/set_buffs/attributes/damage

#Armor Toughness
execute if score $out random matches 3 unless data entity @s Attributes[{Modifiers:[{Name:"TepDrop.Toughness"}]}] run function teplus_exten:drops/set_buffs/attributes/armor_toughness