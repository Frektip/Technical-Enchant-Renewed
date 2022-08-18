#Check first if the player also has the predicate "mainhand_normal", if it is true then set
# the bow score to 0, because no matter what, the player will use the mainhand first.

#This prevents the player shooting a custom enchanted arrow with a normal bow or crossbow
# while they are holding the enchanted bow or crossbow in their offhand at the same time!
execute if entity @s[predicate=enchbowcross:mainhand_normal] run scoreboard players set @s teplus.arrow 0 

#If "mainhand_normal" predicate is false then we are sure that the player will use the
# custom enchanted bow or crossbow that is in the offhand. So we store its value.
execute unless predicate enchbowcross:mainhand_normal run execute store result score @s teplus.arrow run data get entity @s HandItems[1].tag.CustomArrow 

execute unless predicate enchbowcross:mainhand_normal run execute store result score @s teplus.accst run data get entity @s HandItems[1].tag.CustomEnchantments[{id:"AccuracyShot"}].lvl
execute unless predicate enchbowcross:mainhand_normal run execute store result score @s teplus.arach run data get entity @s HandItems[1].tag.CustomEnchantments[{id:"Arachnid"}].lvl
execute unless predicate enchbowcross:mainhand_normal run execute store result score @s teplus.explo run data get entity @s HandItems[1].tag.CustomEnchantments[{id:"Explosive"}].lvl
execute unless predicate enchbowcross:mainhand_normal run execute store result score @s teplus.frbwv run data get entity @s HandItems[1].tag.CustomEnchantments[{id:"FireballWave"}].lvl
execute unless predicate enchbowcross:mainhand_normal run execute store result score @s teplus.shfng run data get entity @s HandItems[1].tag.CustomEnchantments[{id:"ShockFangs"}].lvl
execute unless predicate enchbowcross:mainhand_normal run execute store result score @s teplus.snpr run data get entity @s HandItems[1].tag.CustomEnchantments[{id:"Sniper"}].lvl