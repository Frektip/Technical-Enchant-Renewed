##------------REPEAT FOR ALL ENCHANTMENTS THAT HAVE MORE THAN ONE LEVEL------------##
# -Detect if it has the enchantment, then store it's value
# -If the value is higher than 2, add it to $tep.diench teplus.diench
# -Remove 1 value from $tep.diench teplus.diench for each enchantment

#IMPORTANT to always check first if the item has that enchantment, otherwise the xp
# value will accumulate even if the item doesn't have that enchantment
#-----------------------------------------------------------------------------------#
#Bane of Arthropods
execute if data entity @s Item.tag.Enchantments[{id:"minecraft:bane_of_arthropods"}] store result score @s teplus.diench run data get entity @s Item.tag.Enchantments[{id:"minecraft:bane_of_arthropods"}].lvl
execute if data entity @s Item.tag.Enchantments[{id:"minecraft:bane_of_arthropods"}] if score @s teplus.diench matches 2.. run scoreboard players operation $tep.diench teplus.diench += @s teplus.diench
execute if data entity @s Item.tag.Enchantments[{id:"minecraft:bane_of_arthropods"}] if score @s teplus.diench matches 2.. run scoreboard players remove $tep.diench teplus.diench 1
#-----------------------------------------------------------------------------------#
#Blast Protection
execute if data entity @s Item.tag.Enchantments[{id:"minecraft:blast_protection"}] store result score @s teplus.diench run data get entity @s Item.tag.Enchantments[{id:"minecraft:blast_protection"}].lvl
execute if data entity @s Item.tag.Enchantments[{id:"minecraft:blast_protection"}] if score @s teplus.diench matches 2.. run scoreboard players operation $tep.diench teplus.diench += @s teplus.diench
execute if data entity @s Item.tag.Enchantments[{id:"minecraft:blast_protection"}] if score @s teplus.diench matches 2.. run scoreboard players remove $tep.diench teplus.diench 1
#-----------------------------------------------------------------------------------#
#Depth Strider
execute if data entity @s Item.tag.Enchantments[{id:"minecraft:depth_strider"}] store result score @s teplus.diench run data get entity @s Item.tag.Enchantments[{id:"minecraft:depth_strider"}].lvl
execute if data entity @s Item.tag.Enchantments[{id:"minecraft:depth_strider"}] if score @s teplus.diench matches 2.. run scoreboard players operation $tep.diench teplus.diench += @s teplus.diench
execute if data entity @s Item.tag.Enchantments[{id:"minecraft:depth_strider"}] if score @s teplus.diench matches 2.. run scoreboard players remove $tep.diench teplus.diench 1
#-----------------------------------------------------------------------------------#
#Efficiency
execute if data entity @s Item.tag.Enchantments[{id:"minecraft:efficiency"}] store result score @s teplus.diench run data get entity @s Item.tag.Enchantments[{id:"minecraft:efficiency"}].lvl
execute if data entity @s Item.tag.Enchantments[{id:"minecraft:efficiency"}] if score @s teplus.diench matches 2.. run scoreboard players operation $tep.diench teplus.diench += @s teplus.diench
execute if data entity @s Item.tag.Enchantments[{id:"minecraft:efficiency"}] if score @s teplus.diench matches 2.. run scoreboard players remove $tep.diench teplus.diench 1
#-----------------------------------------------------------------------------------#
#Feather Falling
execute if data entity @s Item.tag.Enchantments[{id:"minecraft:feather_falling"}] store result score @s teplus.diench run data get entity @s Item.tag.Enchantments[{id:"minecraft:feather_falling"}].lvl
execute if data entity @s Item.tag.Enchantments[{id:"minecraft:feather_falling"}] if score @s teplus.diench matches 2.. run scoreboard players operation $tep.diench teplus.diench += @s teplus.diench
execute if data entity @s Item.tag.Enchantments[{id:"minecraft:feather_falling"}] if score @s teplus.diench matches 2.. run scoreboard players remove $tep.diench teplus.diench 1
#-----------------------------------------------------------------------------------#
#Fire Aspect
execute if data entity @s Item.tag.Enchantments[{id:"minecraft:fire_aspect"}] store result score @s teplus.diench run data get entity @s Item.tag.Enchantments[{id:"minecraft:fire_aspect"}].lvl
execute if data entity @s Item.tag.Enchantments[{id:"minecraft:fire_aspect"}] if score @s teplus.diench matches 2.. run scoreboard players operation $tep.diench teplus.diench += @s teplus.diench
execute if data entity @s Item.tag.Enchantments[{id:"minecraft:fire_aspect"}] if score @s teplus.diench matches 2.. run scoreboard players remove $tep.diench teplus.diench 1
#-----------------------------------------------------------------------------------#
#Fire Protection
execute if data entity @s Item.tag.Enchantments[{id:"minecraft:fire_protection"}] store result score @s teplus.diench run data get entity @s Item.tag.Enchantments[{id:"minecraft:fire_protection"}].lvl
execute if data entity @s Item.tag.Enchantments[{id:"minecraft:fire_protection"}] if score @s teplus.diench matches 2.. run scoreboard players operation $tep.diench teplus.diench += @s teplus.diench
execute if data entity @s Item.tag.Enchantments[{id:"minecraft:fire_protection"}] if score @s teplus.diench matches 2.. run scoreboard players remove $tep.diench teplus.diench 1
#-----------------------------------------------------------------------------------#
#Fortune
execute if data entity @s Item.tag.Enchantments[{id:"minecraft:fortune"}] store result score @s teplus.diench run data get entity @s Item.tag.Enchantments[{id:"minecraft:fortune"}].lvl
execute if data entity @s Item.tag.Enchantments[{id:"minecraft:fortune"}] if score @s teplus.diench matches 2.. run scoreboard players operation $tep.diench teplus.diench += @s teplus.diench
execute if data entity @s Item.tag.Enchantments[{id:"minecraft:fortune"}] if score @s teplus.diench matches 2.. run scoreboard players remove $tep.diench teplus.diench 1
#-----------------------------------------------------------------------------------#
#Frost Walker
execute if data entity @s Item.tag.Enchantments[{id:"minecraft:frost_walker"}] store result score @s teplus.diench run data get entity @s Item.tag.Enchantments[{id:"minecraft:frost_walker"}].lvl
execute if data entity @s Item.tag.Enchantments[{id:"minecraft:frost_walker"}] if score @s teplus.diench matches 2.. run scoreboard players operation $tep.diench teplus.diench += @s teplus.diench
execute if data entity @s Item.tag.Enchantments[{id:"minecraft:frost_walker"}] if score @s teplus.diench matches 2.. run scoreboard players remove $tep.diench teplus.diench 1
#-----------------------------------------------------------------------------------#
#Impaling
execute if data entity @s Item.tag.Enchantments[{id:"minecraft:impaling"}] store result score @s teplus.diench run data get entity @s Item.tag.Enchantments[{id:"minecraft:impaling"}].lvl
execute if data entity @s Item.tag.Enchantments[{id:"minecraft:impaling"}] if score @s teplus.diench matches 2.. run scoreboard players operation $tep.diench teplus.diench += @s teplus.diench
execute if data entity @s Item.tag.Enchantments[{id:"minecraft:impaling"}] if score @s teplus.diench matches 2.. run scoreboard players remove $tep.diench teplus.diench 1
#-----------------------------------------------------------------------------------#
#Knockback
execute if data entity @s Item.tag.Enchantments[{id:"minecraft:knockback"}] store result score @s teplus.diench run data get entity @s Item.tag.Enchantments[{id:"minecraft:knockback"}].lvl
execute if data entity @s Item.tag.Enchantments[{id:"minecraft:knockback"}] if score @s teplus.diench matches 2.. run scoreboard players operation $tep.diench teplus.diench += @s teplus.diench
execute if data entity @s Item.tag.Enchantments[{id:"minecraft:knockback"}] if score @s teplus.diench matches 2.. run scoreboard players remove $tep.diench teplus.diench 1
#-----------------------------------------------------------------------------------#
#Looting
execute if data entity @s Item.tag.Enchantments[{id:"minecraft:looting"}] store result score @s teplus.diench run data get entity @s Item.tag.Enchantments[{id:"minecraft:looting"}].lvl
execute if data entity @s Item.tag.Enchantments[{id:"minecraft:looting"}] if score @s teplus.diench matches 2.. run scoreboard players operation $tep.diench teplus.diench += @s teplus.diench
execute if data entity @s Item.tag.Enchantments[{id:"minecraft:looting"}] if score @s teplus.diench matches 2.. run scoreboard players remove $tep.diench teplus.diench 1
#-----------------------------------------------------------------------------------#
#Loyalty
execute if data entity @s Item.tag.Enchantments[{id:"minecraft:loyalty"}] store result score @s teplus.diench run data get entity @s Item.tag.Enchantments[{id:"minecraft:loyalty"}].lvl
execute if data entity @s Item.tag.Enchantments[{id:"minecraft:loyalty"}] if score @s teplus.diench matches 2.. run scoreboard players operation $tep.diench teplus.diench += @s teplus.diench
execute if data entity @s Item.tag.Enchantments[{id:"minecraft:loyalty"}] if score @s teplus.diench matches 2.. run scoreboard players remove $tep.diench teplus.diench 1
#-----------------------------------------------------------------------------------#
#Luck Of The Sea
execute if data entity @s Item.tag.Enchantments[{id:"minecraft:luck_of_the_sea"}] store result score @s teplus.diench run data get entity @s Item.tag.Enchantments[{id:"minecraft:luck_of_the_sea"}].lvl
execute if data entity @s Item.tag.Enchantments[{id:"minecraft:luck_of_the_sea"}] if score @s teplus.diench matches 2.. run scoreboard players operation $tep.diench teplus.diench += @s teplus.diench
execute if data entity @s Item.tag.Enchantments[{id:"minecraft:luck_of_the_sea"}] if score @s teplus.diench matches 2.. run scoreboard players remove $tep.diench teplus.diench 1
#-----------------------------------------------------------------------------------#
#Lure
execute if data entity @s Item.tag.Enchantments[{id:"minecraft:lure"}] store result score @s teplus.diench run data get entity @s Item.tag.Enchantments[{id:"minecraft:lure"}].lvl
execute if data entity @s Item.tag.Enchantments[{id:"minecraft:lure"}] if score @s teplus.diench matches 2.. run scoreboard players operation $tep.diench teplus.diench += @s teplus.diench
execute if data entity @s Item.tag.Enchantments[{id:"minecraft:lure"}] if score @s teplus.diench matches 2.. run scoreboard players remove $tep.diench teplus.diench 1
#-----------------------------------------------------------------------------------#
#Piercing
execute if data entity @s Item.tag.Enchantments[{id:"minecraft:piercing"}] store result score @s teplus.diench run data get entity @s Item.tag.Enchantments[{id:"minecraft:piercing"}].lvl
execute if data entity @s Item.tag.Enchantments[{id:"minecraft:piercing"}] if score @s teplus.diench matches 2.. run scoreboard players operation $tep.diench teplus.diench += @s teplus.diench
execute if data entity @s Item.tag.Enchantments[{id:"minecraft:piercing"}] if score @s teplus.diench matches 2.. run scoreboard players remove $tep.diench teplus.diench 1
#-----------------------------------------------------------------------------------#
#Power
execute if data entity @s Item.tag.Enchantments[{id:"minecraft:power"}] store result score @s teplus.diench run data get entity @s Item.tag.Enchantments[{id:"minecraft:power"}].lvl
execute if data entity @s Item.tag.Enchantments[{id:"minecraft:power"}] if score @s teplus.diench matches 2.. run scoreboard players operation $tep.diench teplus.diench += @s teplus.diench
execute if data entity @s Item.tag.Enchantments[{id:"minecraft:power"}] if score @s teplus.diench matches 2.. run scoreboard players remove $tep.diench teplus.diench 1
#-----------------------------------------------------------------------------------#
#Projectile Protection
execute if data entity @s Item.tag.Enchantments[{id:"minecraft:projectile_protection"}] store result score @s teplus.diench run data get entity @s Item.tag.Enchantments[{id:"minecraft:projectile_protection"}].lvl
execute if data entity @s Item.tag.Enchantments[{id:"minecraft:projectile_protection"}] if score @s teplus.diench matches 2.. run scoreboard players operation $tep.diench teplus.diench += @s teplus.diench
execute if data entity @s Item.tag.Enchantments[{id:"minecraft:projectile_protection"}] if score @s teplus.diench matches 2.. run scoreboard players remove $tep.diench teplus.diench 1
#-----------------------------------------------------------------------------------#
#Protection
execute if data entity @s Item.tag.Enchantments[{id:"minecraft:protection"}] store result score @s teplus.diench run data get entity @s Item.tag.Enchantments[{id:"minecraft:protection"}].lvl
execute if data entity @s Item.tag.Enchantments[{id:"minecraft:protection"}] if score @s teplus.diench matches 2.. run scoreboard players operation $tep.diench teplus.diench += @s teplus.diench
execute if data entity @s Item.tag.Enchantments[{id:"minecraft:protection"}] if score @s teplus.diench matches 2.. run scoreboard players remove $tep.diench teplus.diench 1
#-----------------------------------------------------------------------------------#
#Punch
execute if data entity @s Item.tag.Enchantments[{id:"minecraft:punch"}] store result score @s teplus.diench run data get entity @s Item.tag.Enchantments[{id:"minecraft:punch"}].lvl
execute if data entity @s Item.tag.Enchantments[{id:"minecraft:punch"}] if score @s teplus.diench matches 2.. run scoreboard players operation $tep.diench teplus.diench += @s teplus.diench
execute if data entity @s Item.tag.Enchantments[{id:"minecraft:punch"}] if score @s teplus.diench matches 2.. run scoreboard players remove $tep.diench teplus.diench 1
#-----------------------------------------------------------------------------------#
#Quick Charge
execute if data entity @s Item.tag.Enchantments[{id:"minecraft:quick_charge"}] store result score @s teplus.diench run data get entity @s Item.tag.Enchantments[{id:"minecraft:quick_charge"}].lvl
execute if data entity @s Item.tag.Enchantments[{id:"minecraft:quick_charge"}] if score @s teplus.diench matches 2.. run scoreboard players operation $tep.diench teplus.diench += @s teplus.diench
execute if data entity @s Item.tag.Enchantments[{id:"minecraft:quick_charge"}] if score @s teplus.diench matches 2.. run scoreboard players remove $tep.diench teplus.diench 1
#-----------------------------------------------------------------------------------#
#Respiration
execute if data entity @s Item.tag.Enchantments[{id:"minecraft:respiration"}] store result score @s teplus.diench run data get entity @s Item.tag.Enchantments[{id:"minecraft:respiration"}].lvl
execute if data entity @s Item.tag.Enchantments[{id:"minecraft:respiration"}] if score @s teplus.diench matches 2.. run scoreboard players operation $tep.diench teplus.diench += @s teplus.diench
execute if data entity @s Item.tag.Enchantments[{id:"minecraft:respiration"}] if score @s teplus.diench matches 2.. run scoreboard players remove $tep.diench teplus.diench 1
#-----------------------------------------------------------------------------------#
#Riptide
execute if data entity @s Item.tag.Enchantments[{id:"minecraft:riptide"}] store result score @s teplus.diench run data get entity @s Item.tag.Enchantments[{id:"minecraft:riptide"}].lvl
execute if data entity @s Item.tag.Enchantments[{id:"minecraft:riptide"}] if score @s teplus.diench matches 2.. run scoreboard players operation $tep.diench teplus.diench += @s teplus.diench
execute if data entity @s Item.tag.Enchantments[{id:"minecraft:riptide"}] if score @s teplus.diench matches 2.. run scoreboard players remove $tep.diench teplus.diench 1
#-----------------------------------------------------------------------------------#
#Sharpness
execute if data entity @s Item.tag.Enchantments[{id:"minecraft:sharpness"}] store result score @s teplus.diench run data get entity @s Item.tag.Enchantments[{id:"minecraft:sharpness"}].lvl
execute if data entity @s Item.tag.Enchantments[{id:"minecraft:sharpness"}] if score @s teplus.diench matches 2.. run scoreboard players operation $tep.diench teplus.diench += @s teplus.diench
execute if data entity @s Item.tag.Enchantments[{id:"minecraft:sharpness"}] if score @s teplus.diench matches 2.. run scoreboard players remove $tep.diench teplus.diench 1
#-----------------------------------------------------------------------------------#
#Smite
execute if data entity @s Item.tag.Enchantments[{id:"minecraft:smite"}] store result score @s teplus.diench run data get entity @s Item.tag.Enchantments[{id:"minecraft:smite"}].lvl
execute if data entity @s Item.tag.Enchantments[{id:"minecraft:smite"}] if score @s teplus.diench matches 2.. run scoreboard players operation $tep.diench teplus.diench += @s teplus.diench
execute if data entity @s Item.tag.Enchantments[{id:"minecraft:smite"}] if score @s teplus.diench matches 2.. run scoreboard players remove $tep.diench teplus.diench 1
#-----------------------------------------------------------------------------------#
#Soul Speed
execute if data entity @s Item.tag.Enchantments[{id:"minecraft:soul_speed"}] store result score @s teplus.diench run data get entity @s Item.tag.Enchantments[{id:"minecraft:soul_speed"}].lvl
execute if data entity @s Item.tag.Enchantments[{id:"minecraft:soul_speed"}] if score @s teplus.diench matches 2.. run scoreboard players operation $tep.diench teplus.diench += @s teplus.diench
execute if data entity @s Item.tag.Enchantments[{id:"minecraft:soul_speed"}] if score @s teplus.diench matches 2.. run scoreboard players remove $tep.diench teplus.diench 1
#-----------------------------------------------------------------------------------#
#Sweeping
execute if data entity @s Item.tag.Enchantments[{id:"minecraft:sweeping"}] store result score @s teplus.diench run data get entity @s Item.tag.Enchantments[{id:"minecraft:sweeping"}].lvl
execute if data entity @s Item.tag.Enchantments[{id:"minecraft:sweeping"}] if score @s teplus.diench matches 2.. run scoreboard players operation $tep.diench teplus.diench += @s teplus.diench
execute if data entity @s Item.tag.Enchantments[{id:"minecraft:sweeping"}] if score @s teplus.diench matches 2.. run scoreboard players remove $tep.diench teplus.diench 1
#-----------------------------------------------------------------------------------#
#Swift Sneak
execute if data entity @s Item.tag.Enchantments[{id:"minecraft:swift_sneak"}] store result score @s teplus.diench run data get entity @s Item.tag.Enchantments[{id:"minecraft:swift_sneak"}].lvl
execute if data entity @s Item.tag.Enchantments[{id:"minecraft:swift_sneak"}] if score @s teplus.diench matches 2.. run scoreboard players operation $tep.diench teplus.diench += @s teplus.diench
execute if data entity @s Item.tag.Enchantments[{id:"minecraft:swift_sneak"}] if score @s teplus.diench matches 2.. run scoreboard players remove $tep.diench teplus.diench 1
#-----------------------------------------------------------------------------------#
#Thorns
execute if data entity @s Item.tag.Enchantments[{id:"minecraft:thorns"}] store result score @s teplus.diench run data get entity @s Item.tag.Enchantments[{id:"minecraft:thorns"}].lvl
execute if data entity @s Item.tag.Enchantments[{id:"minecraft:thorns"}] if score @s teplus.diench matches 2.. run scoreboard players operation $tep.diench teplus.diench += @s teplus.diench
execute if data entity @s Item.tag.Enchantments[{id:"minecraft:thorns"}] if score @s teplus.diench matches 2.. run scoreboard players remove $tep.diench teplus.diench 1
#-----------------------------------------------------------------------------------#
#Unbreaking
execute if data entity @s Item.tag.Enchantments[{id:"minecraft:unbreaking"}] store result score @s teplus.diench run data get entity @s Item.tag.Enchantments[{id:"minecraft:unbreaking"}].lvl
execute if data entity @s Item.tag.Enchantments[{id:"minecraft:unbreaking"}] if score @s teplus.diench matches 2.. run scoreboard players operation $tep.diench teplus.diench += @s teplus.diench
execute if data entity @s Item.tag.Enchantments[{id:"minecraft:unbreaking"}] if score @s teplus.diench matches 2.. run scoreboard players remove $tep.diench teplus.diench 1
