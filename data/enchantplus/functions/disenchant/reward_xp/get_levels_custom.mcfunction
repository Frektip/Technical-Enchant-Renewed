##------------REPEAT FOR ALL CustomEnchantments THAT HAVE MORE THAN ONE LEVEL------------##
# -Detect if it has the enchantment, then store it's value
# -If the value is higher than 2, add it to $tep.diench teplus.diench
# -Remove 1 value from $tep.diench teplus.diench for each enchantment

#IMPORTANT to always check first if the item has that enchantment, otherwise the xp
# value will accumulate even if the item doesn't have that enchantment
#-----------------------------------------------------------------------------------#
#Agility
execute if data entity @s Item.tag.CustomEnchantments[{id:"Agility"}] store result score @s teplus.diench run data get entity @s Item.tag.CustomEnchantments[{id:"Agility"}].lvl
execute if data entity @s Item.tag.CustomEnchantments[{id:"Agility"}] if score @s teplus.diench matches 2.. run scoreboard players operation $tep.diench teplus.diench += @s teplus.diench
execute if data entity @s Item.tag.CustomEnchantments[{id:"Agility"}] if score @s teplus.diench matches 2.. run scoreboard players remove $tep.diench teplus.diench 1
#-----------------------------------------------------------------------------------#
#Anti-Knockback
execute if data entity @s Item.tag.CustomEnchantments[{id:"AntiKnockback"}] store result score @s teplus.diench run data get entity @s Item.tag.CustomEnchantments[{id:"AntiKnockback"}].lvl
execute if data entity @s Item.tag.CustomEnchantments[{id:"AntiKnockback"}] if score @s teplus.diench matches 2.. run scoreboard players operation $tep.diench teplus.diench += @s teplus.diench
execute if data entity @s Item.tag.CustomEnchantments[{id:"AntiKnockback"}] if score @s teplus.diench matches 2.. run scoreboard players remove $tep.diench teplus.diench 1
#-----------------------------------------------------------------------------------#
#Anti-Venom
execute if data entity @s Item.tag.CustomEnchantments[{id:"AntiVenom"}] store result score @s teplus.diench run data get entity @s Item.tag.CustomEnchantments[{id:"AntiVenom"}].lvl
execute if data entity @s Item.tag.CustomEnchantments[{id:"AntiVenom"}] if score @s teplus.diench matches 2.. run scoreboard players operation $tep.diench teplus.diench += @s teplus.diench
execute if data entity @s Item.tag.CustomEnchantments[{id:"AntiVenom"}] if score @s teplus.diench matches 2.. run scoreboard players remove $tep.diench teplus.diench 1
#-----------------------------------------------------------------------------------#
#Armored
execute if data entity @s Item.tag.CustomEnchantments[{id:"Armored"}] store result score @s teplus.diench run data get entity @s Item.tag.CustomEnchantments[{id:"Armored"}].lvl
execute if data entity @s Item.tag.CustomEnchantments[{id:"Armored"}] if score @s teplus.diench matches 2.. run scoreboard players operation $tep.diench teplus.diench += @s teplus.diench
execute if data entity @s Item.tag.CustomEnchantments[{id:"Armored"}] if score @s teplus.diench matches 2.. run scoreboard players remove $tep.diench teplus.diench 1
#-----------------------------------------------------------------------------------#
#Attack Speed
execute if data entity @s Item.tag.CustomEnchantments[{id:"AttackSpeed"}] store result score @s teplus.diench run data get entity @s Item.tag.CustomEnchantments[{id:"AttackSpeed"}].lvl
execute if data entity @s Item.tag.CustomEnchantments[{id:"AttackSpeed"}] if score @s teplus.diench matches 2.. run scoreboard players operation $tep.diench teplus.diench += @s teplus.diench
execute if data entity @s Item.tag.CustomEnchantments[{id:"AttackSpeed"}] if score @s teplus.diench matches 2.. run scoreboard players remove $tep.diench teplus.diench 1
#-----------------------------------------------------------------------------------#
#Dasher
execute if data entity @s Item.tag.CustomEnchantments[{id:"Dasher"}] store result score @s teplus.diench run data get entity @s Item.tag.CustomEnchantments[{id:"Dasher"}].lvl
execute if data entity @s Item.tag.CustomEnchantments[{id:"Dasher"}] if score @s teplus.diench matches 2.. run scoreboard players operation $tep.diench teplus.diench += @s teplus.diench
execute if data entity @s Item.tag.CustomEnchantments[{id:"Dasher"}] if score @s teplus.diench matches 2.. run scoreboard players remove $tep.diench teplus.diench 1
#-----------------------------------------------------------------------------------#
#Hardness+
execute if data entity @s Item.tag.CustomEnchantments[{id:"HardnessPlus"}] store result score @s teplus.diench run data get entity @s Item.tag.CustomEnchantments[{id:"HardnessPlus"}].lvl
execute if data entity @s Item.tag.CustomEnchantments[{id:"HardnessPlus"}] if score @s teplus.diench matches 2.. run scoreboard players operation $tep.diench teplus.diench += @s teplus.diench
execute if data entity @s Item.tag.CustomEnchantments[{id:"HardnessPlus"}] if score @s teplus.diench matches 2.. run scoreboard players remove $tep.diench teplus.diench 1
#-----------------------------------------------------------------------------------#
#Haste
execute if data entity @s Item.tag.CustomEnchantments[{id:"Haste"}] store result score @s teplus.diench run data get entity @s Item.tag.CustomEnchantments[{id:"Haste"}].lvl
execute if data entity @s Item.tag.CustomEnchantments[{id:"Haste"}] if score @s teplus.diench matches 2.. run scoreboard players operation $tep.diench teplus.diench += @s teplus.diench
execute if data entity @s Item.tag.CustomEnchantments[{id:"Haste"}] if score @s teplus.diench matches 2.. run scoreboard players remove $tep.diench teplus.diench 1
#-----------------------------------------------------------------------------------#
#Leaping
execute if data entity @s Item.tag.CustomEnchantments[{id:"Leaping"}] store result score @s teplus.diench run data get entity @s Item.tag.CustomEnchantments[{id:"Leaping"}].lvl
execute if data entity @s Item.tag.CustomEnchantments[{id:"Leaping"}] if score @s teplus.diench matches 2.. run scoreboard players operation $tep.diench teplus.diench += @s teplus.diench
execute if data entity @s Item.tag.CustomEnchantments[{id:"Leaping"}] if score @s teplus.diench matches 2.. run scoreboard players remove $tep.diench teplus.diench 1
#-----------------------------------------------------------------------------------#
#Life+
execute if data entity @s Item.tag.CustomEnchantments[{id:"LifePlus"}] store result score @s teplus.diench run data get entity @s Item.tag.CustomEnchantments[{id:"LifePlus"}].lvl
execute if data entity @s Item.tag.CustomEnchantments[{id:"LifePlus"}] if score @s teplus.diench matches 2.. run scoreboard players operation $tep.diench teplus.diench += @s teplus.diench
execute if data entity @s Item.tag.CustomEnchantments[{id:"LifePlus"}] if score @s teplus.diench matches 2.. run scoreboard players remove $tep.diench teplus.diench 1
#-----------------------------------------------------------------------------------#
#Marine Grace
execute if data entity @s Item.tag.CustomEnchantments[{id:"MarineGrace"}] store result score @s teplus.diench run data get entity @s Item.tag.CustomEnchantments[{id:"MarineGrace"}].lvl
execute if data entity @s Item.tag.CustomEnchantments[{id:"MarineGrace"}] if score @s teplus.diench matches 2.. run scoreboard players operation $tep.diench teplus.diench += @s teplus.diench
execute if data entity @s Item.tag.CustomEnchantments[{id:"MarineGrace"}] if score @s teplus.diench matches 2.. run scoreboard players remove $tep.diench teplus.diench 1
#-----------------------------------------------------------------------------------#
#Poison Aspect
execute if data entity @s Item.tag.CustomEnchantments[{id:"PoisonAspect"}] store result score @s teplus.diench run data get entity @s Item.tag.CustomEnchantments[{id:"PoisonAspect"}].lvl
execute if data entity @s Item.tag.CustomEnchantments[{id:"PoisonAspect"}] if score @s teplus.diench matches 2.. run scoreboard players operation $tep.diench teplus.diench += @s teplus.diench
execute if data entity @s Item.tag.CustomEnchantments[{id:"PoisonAspect"}] if score @s teplus.diench matches 2.. run scoreboard players remove $tep.diench teplus.diench 1
#-----------------------------------------------------------------------------------#
#Recovery
execute if data entity @s Item.tag.CustomEnchantments[{id:"Recovery"}] store result score @s teplus.diench run data get entity @s Item.tag.CustomEnchantments[{id:"Recovery"}].lvl
execute if data entity @s Item.tag.CustomEnchantments[{id:"Recovery"}] if score @s teplus.diench matches 2.. run scoreboard players operation $tep.diench teplus.diench += @s teplus.diench
execute if data entity @s Item.tag.CustomEnchantments[{id:"Recovery"}] if score @s teplus.diench matches 2.. run scoreboard players remove $tep.diench teplus.diench 1
#-----------------------------------------------------------------------------------#
#Scyther
execute if data entity @s Item.tag.CustomEnchantments[{id:"Scyther"}] store result score @s teplus.diench run data get entity @s Item.tag.CustomEnchantments[{id:"Scyther"}].lvl
execute if data entity @s Item.tag.CustomEnchantments[{id:"Scyther"}] if score @s teplus.diench matches 2.. run scoreboard players operation $tep.diench teplus.diench += @s teplus.diench
execute if data entity @s Item.tag.CustomEnchantments[{id:"Scyther"}] if score @s teplus.diench matches 2.. run scoreboard players remove $tep.diench teplus.diench 1
#-----------------------------------------------------------------------------------#
#Soul Reaper
execute if data entity @s Item.tag.CustomEnchantments[{id:"SoulReaper"}] store result score @s teplus.diench run data get entity @s Item.tag.CustomEnchantments[{id:"SoulReaper"}].lvl
execute if data entity @s Item.tag.CustomEnchantments[{id:"SoulReaper"}] if score @s teplus.diench matches 2.. run scoreboard players operation $tep.diench teplus.diench += @s teplus.diench
execute if data entity @s Item.tag.CustomEnchantments[{id:"SoulReaper"}] if score @s teplus.diench matches 2.. run scoreboard players remove $tep.diench teplus.diench 1
#-----------------------------------------------------------------------------------#
#Splatter
execute if data entity @s Item.tag.CustomEnchantments[{id:"Splatter"}] store result score @s teplus.diench run data get entity @s Item.tag.CustomEnchantments[{id:"Splatter"}].lvl
execute if data entity @s Item.tag.CustomEnchantments[{id:"Splatter"}] if score @s teplus.diench matches 2.. run scoreboard players operation $tep.diench teplus.diench += @s teplus.diench
execute if data entity @s Item.tag.CustomEnchantments[{id:"Splatter"}] if score @s teplus.diench matches 2.. run scoreboard players remove $tep.diench teplus.diench 1
#-----------------------------------------------------------------------------------#
#Striker
execute if data entity @s Item.tag.CustomEnchantments[{id:"Striker"}] store result score @s teplus.diench run data get entity @s Item.tag.CustomEnchantments[{id:"Striker"}].lvl
execute if data entity @s Item.tag.CustomEnchantments[{id:"Striker"}] if score @s teplus.diench matches 2.. run scoreboard players operation $tep.diench teplus.diench += @s teplus.diench
execute if data entity @s Item.tag.CustomEnchantments[{id:"Striker"}] if score @s teplus.diench matches 2.. run scoreboard players remove $tep.diench teplus.diench 1
#-----------------------------------------------------------------------------------#
#Time Breaker
execute if data entity @s Item.tag.CustomEnchantments[{id:"TimeBreaker"}] store result score @s teplus.diench run data get entity @s Item.tag.CustomEnchantments[{id:"TimeBreaker"}].lvl
execute if data entity @s Item.tag.CustomEnchantments[{id:"TimeBreaker"}] if score @s teplus.diench matches 2.. run scoreboard players operation $tep.diench teplus.diench += @s teplus.diench
execute if data entity @s Item.tag.CustomEnchantments[{id:"TimeBreaker"}] if score @s teplus.diench matches 2.. run scoreboard players remove $tep.diench teplus.diench 1
#-----------------------------------------------------------------------------------#
#Transmission
execute if data entity @s Item.tag.CustomEnchantments[{id:"Transmission"}] store result score @s teplus.diench run data get entity @s Item.tag.CustomEnchantments[{id:"Transmission"}].lvl
execute if data entity @s Item.tag.CustomEnchantments[{id:"Transmission"}] if score @s teplus.diench matches 2.. run scoreboard players operation $tep.diench teplus.diench += @s teplus.diench
execute if data entity @s Item.tag.CustomEnchantments[{id:"Transmission"}] if score @s teplus.diench matches 2.. run scoreboard players remove $tep.diench teplus.diench 1
#-----------------------------------------------------------------------------------#
#Xp Boost
execute if data entity @s Item.tag.CustomEnchantments[{id:"XpBoost"}] store result score @s teplus.diench run data get entity @s Item.tag.CustomEnchantments[{id:"XpBoost"}].lvl
execute if data entity @s Item.tag.CustomEnchantments[{id:"XpBoost"}] if score @s teplus.diench matches 2.. run scoreboard players operation $tep.diench teplus.diench += @s teplus.diench
execute if data entity @s Item.tag.CustomEnchantments[{id:"XpBoost"}] if score @s teplus.diench matches 2.. run scoreboard players remove $tep.diench teplus.diench 1
#-----------------------------------------------------------------------------------#
