#Remove ComError tag, because is a compatible enchantment
tag @s remove ComError
#---------GET LEVELS OF BOTH SECTIONS---------#
execute store result score @s TCHA.Section1 run data get storage teplus:tech_anvil.ui CurrentItems[{Slot:2b}].tag.CustomEnchantments[{id:"AntiKnockback"}].lvl
execute store result score @s TCHA.Section2 run data get storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.CustomEnchantments[{id:"AntiKnockback"}].lvl
#-------INCREASE LEVEL IF THEY MATCH-------#
#Section1 is the limit for this enchatment
execute if entity @s[scores={TCHA.Section1=..1}] if score @s TCHA.Section2 = @s TCHA.Section1 run scoreboard players add @s TCHA.Section1 1
#--CHOOSE THE LARGEST IF THEY DON'T MATCH--#
execute if score @s TCHA.Section2 > @s TCHA.Section1 run scoreboard players operation @s TCHA.Section1 = @s TCHA.Section2
#-------ADD ENCHANT IF IT RESULTITEM DOESN'T HAVE IT YET-------#
execute unless data storage teplus:tech_anvil.ui ResultItem.tag.CustomEnchantments[{id:"AntiKnockback"}] run data modify storage teplus:tech_anvil.ui ResultItem.tag.CustomEnchantments append value {id:"AntiKnockback",lvl:1}
#--------SET THE NEW ENCHANTMENT LEVEL--------#
execute store result storage teplus:tech_anvil.ui ResultItem.tag.CustomEnchantments[{id:"AntiKnockback"}].lvl int 1 run scoreboard players get @s TCHA.Section1


##--------SET THE ATTRIBUTE--------#
data remove entity @s Items[{Slot:22b}].tag.AttributeModifiers
data remove storage teplus:tech_anvil.ui ResultItem.tag.AttributeModifiers



#By default store the Result Item Anti-Knockback Value
execute store result score @s teplus.antkbk run data get storage teplus:tech_anvil.ui ResultItem.tag.CustomEnchantments[{id:"AntiKnockback"}].lvl
#Then use item modifiers
item modify entity @s container.22 technical_anvil:anti_knockback

#In case, there is Hardness+ add it too
execute if score #hdns Enchopts matches 0 if data storage teplus:tech_anvil.ui ResultItem.tag.CustomEnchantments[{id:"HardnessPlus"}] run item modify entity @s container.22 technical_anvil:hardness_plus


#Once ensured we change corretly the attribute, copy it to the data storage
data modify storage teplus:tech_anvil.ui ResultItem.tag.AttributeModifiers set from entity @s Items[{Slot:22b}].tag.AttributeModifiers


tag @s add CEitm