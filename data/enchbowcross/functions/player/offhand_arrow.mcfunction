#If "mainhand_normal" predicate is false then we are sure that the player will use the
# custom enchanted bow or crossbow that is in the offhand. So we store its value.
execute store result score @s teplus.arrow run data get entity @s Inventory[{Slot:-106b}].tag.CustomArrow

execute store result score @s teplus.accst run data get entity @s Inventory[{Slot:-106b}].tag.CustomEnchantments[{id:"AccuracyShot"}].lvl
execute store result score @s teplus.arach run data get entity @s Inventory[{Slot:-106b}].tag.CustomEnchantments[{id:"Arachnid"}].lvl
execute store result score @s teplus.explo run data get entity @s Inventory[{Slot:-106b}].tag.CustomEnchantments[{id:"Explosive"}].lvl
execute store result score @s teplus.frbwv run data get entity @s Inventory[{Slot:-106b}].tag.CustomEnchantments[{id:"FireballWave"}].lvl
execute store result score @s teplus.shfng run data get entity @s Inventory[{Slot:-106b}].tag.CustomEnchantments[{id:"ShockFangs"}].lvl
 execute store result score @s teplus.snpr run data get entity @s Inventory[{Slot:-106b}].tag.CustomEnchantments[{id:"Sniper"}].lvl