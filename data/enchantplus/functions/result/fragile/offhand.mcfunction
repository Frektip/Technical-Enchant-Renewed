advancement revoke @s only enchantplus:fragile/offhand

#Check if the player isn't trying to throw a trident
scoreboard players set #durability teplus.data 7
execute unless entity @s[advancements={enchantplus:fragile/using_trident=true}] run function enchantplus:durability_change/offhand

#Don't execute Fragile if the player throw a trident
execute if entity @s[advancements={enchantplus:fragile/using_trident=true}] run advancement revoke @s only enchantplus:fragile/using_trident