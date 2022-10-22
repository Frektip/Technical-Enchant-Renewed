#Remove ComError tag, because is a compatible enchantment
# this tag remove is for the items
tag @s remove ComError
#---------GET LEVELS OF BOTH SECTIONS---------#
# -TCHA.inpbk = the input is a book, seach for StoredCustomEnchantments
# -TCHA.inpit = the input is an item, seach for CustomEnchantments
execute store result score @s[tag=TCHA.inpbk] TCHA.Section1 run data get storage teplus:tech_anvil.ui CurrentItems[{Slot:2b}].tag.StoredCustomEnchantments[{id:"AttackSpeed"}].lvl
execute store result score @s[tag=TCHA.inpit] TCHA.Section1 run data get storage teplus:tech_anvil.ui CurrentItems[{Slot:2b}].tag.CustomEnchantments[{id:"AttackSpeed"}].lvl
#If it has the tag "Is.same_item" means that the other item is the same
#  one as the one in Slot:2b.
# - !Is.same_item = book nbt = StoredCustomEnchantments
# - Is.same_item = item nbt = CustomEnchantments
execute store result score @s[tag=!Is.same_item] TCHA.Section2 run data get storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.StoredCustomEnchantments[{id:"AttackSpeed"}].lvl
execute store result score @s[tag=Is.same_item] TCHA.Section2 run data get storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.CustomEnchantments[{id:"AttackSpeed"}].lvl
#-------INCREASE LEVEL IF THEY MATCH-------#
#Section1 is the limit for this enchatment
execute if score @s TCHA.Section1 < #aksp teplus.maxlvl if score @s TCHA.Section2 = @s TCHA.Section1 run scoreboard players add @s TCHA.Section1 1
#--CHOOSE THE LARGEST IF THEY DON'T MATCH--#
execute if score @s TCHA.Section2 > @s TCHA.Section1 run scoreboard players operation @s TCHA.Section1 = @s TCHA.Section2
#-------ADD ENCHANT IF IT RESULTITEM DOESN'T HAVE IT YET-------#
execute if entity @s[tag=TCHA.inpbk] unless data storage teplus:tech_anvil.ui ResultItem.tag.StoredCustomEnchantments[{id:"AttackSpeed"}].lvl run data modify storage teplus:tech_anvil.ui ResultItem.tag.StoredCustomEnchantments append value {id:"AttackSpeed",lvl:1}
execute if entity @s[tag=TCHA.inpit] unless data storage teplus:tech_anvil.ui ResultItem.tag.CustomEnchantments[{id:"AttackSpeed"}] run data modify storage teplus:tech_anvil.ui ResultItem.tag.CustomEnchantments append value {id:"AttackSpeed",lvl:1}
#--------SET THE NEW ENCHANTMENT LEVEL--------#
execute if entity @s[tag=TCHA.inpbk] store result storage teplus:tech_anvil.ui ResultItem.tag.StoredCustomEnchantments[{id:"AttackSpeed"}].lvl int 1 run scoreboard players get @s TCHA.Section1
execute if entity @s[tag=TCHA.inpit] store result storage teplus:tech_anvil.ui ResultItem.tag.CustomEnchantments[{id:"AttackSpeed"}].lvl int 1 run scoreboard players get @s TCHA.Section1


##--------SET THE ATTRIBUTE--------#
execute if entity @s[tag=TCHA.inpit] run data modify storage teplus:attribute Base set from entity @s Items[{Slot:2b}].tag.AttributeModifiers
execute if entity @s[tag=TCHA.inpit] run data remove entity @s Items[{Slot:22b}].tag.AttributeModifiers
#First we check what item we are trying to modify it's attribute
# trident and all swords attributes are completelly different
execute if entity @s[tag=TCHA.inpit] if data storage teplus:tech_anvil.ui {ResultItem:{tag:{Teplus:{item_type:"TRIDENT"}}}} run item modify entity @s container.22 technical_anvil:attack_speed/trident
execute if entity @s[tag=TCHA.inpit] if data storage teplus:tech_anvil.ui {ResultItem:{tag:{Teplus:{item_type:"SWORD"}}}} run function #technical_anvil:merge_attributes/attack_speed_sword

#Change attack speed and attack damage attributes because of sharpness
execute if entity @s[tag=TCHA.inpit] if data storage teplus:tech_anvil.ui ResultItem.tag.Enchantments[{id:"minecraft:sharpness"}] run function technical_anvil:interaction/merge/apply_enchantments/extra_step/attack_speed/sharpness_damage

#Once ensured we change corretly the attribute, copy it to the data storage
execute if entity @s[tag=TCHA.inpit] run data modify storage teplus:tech_anvil.ui ResultItem.tag.AttributeModifiers set from entity @s Items[{Slot:22b}].tag.AttributeModifiers
execute if entity @s[tag=TCHA.inpit] run function technical_anvil:interaction/merge/maintain_attributes/weapon

#Tag the item
tag @s[tag=TCHA.inpit] add CEitm
tag @s[tag=TCHA.inpbk] add CEnchApply