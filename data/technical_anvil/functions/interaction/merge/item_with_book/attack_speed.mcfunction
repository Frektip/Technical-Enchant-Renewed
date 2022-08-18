#Remove ComError tag, because is a compatible enchantment
tag @s remove ComError
#---------GET LEVELS OF BOTH SECTIONS---------#
execute store result score @s TCHA.Section1 run data get storage teplus:tech_anvil.ui CurrentItems[{Slot:2b}].tag.CustomEnchantments[{id:"AttackSpeed"}].lvl
execute store result score @s TCHA.Section2 run data get storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.StoredCustomEnchantments[{id:"AttackSpeed"}].lvl
#-------INCREASE LEVEL IF THEY MATCH-------#
#Section1 is the limit for this enchatment
execute if entity @s[scores={TCHA.Section1=..2}] if score @s TCHA.Section2 = @s TCHA.Section1 run scoreboard players add @s TCHA.Section1 1
#--CHOOSE THE LARGEST IF THEY DON'T MATCH--#
execute if score @s TCHA.Section2 > @s TCHA.Section1 run scoreboard players operation @s TCHA.Section1 = @s TCHA.Section2
#-------ADD ENCHANT IF IT RESULTITEM DOESN'T HAVE IT YET-------#
execute unless data storage teplus:tech_anvil.ui ResultItem.tag.CustomEnchantments[{id:"AttackSpeed"}] run data modify storage teplus:tech_anvil.ui ResultItem.tag.CustomEnchantments append value {id:"AttackSpeed",lvl:1}
#--------SET THE NEW ENCHANTMENT LEVEL--------#
execute store result storage teplus:tech_anvil.ui ResultItem.tag.CustomEnchantments[{id:"AttackSpeed"}].lvl int 1 run scoreboard players get @s TCHA.Section1


##--------SET THE ATTRIBUTE--------#
data modify storage teplus:attribute Base set from entity @s Items[{Slot:2b}].tag.AttributeModifiers
data remove entity @s Items[{Slot:22b}].tag.AttributeModifiers
#First we check what item we are trying to modify it's attribute
# trident and all swords attributes are completelly different
execute if data storage teplus:tech_anvil.ui {ResultItem:{tag:{Teplus:{item_type:"TRIDENT"}}}} run item modify entity @s container.22 technical_anvil:attack_speed/trident
execute if data storage teplus:tech_anvil.ui {ResultItem:{tag:{Teplus:{item_type:"SWORD"}}}} run function #technical_anvil:merge_attributes/attack_speed_sword

#Change attack speed and attack damage attributes because of sharpness
execute if data storage teplus:tech_anvil.ui ResultItem.tag.Enchantments[{id:"minecraft:sharpness"}] run function technical_anvil:interaction/merge/item_with_book/extra_step/attack_speed/sharpness_damage

#Once ensured we change corretly the attribute, copy it to the data storage
data modify storage teplus:tech_anvil.ui ResultItem.tag.AttributeModifiers set from entity @s Items[{Slot:22b}].tag.AttributeModifiers
function technical_anvil:interaction/merge/maintain_attributes/weapon

tag @s add CEitm