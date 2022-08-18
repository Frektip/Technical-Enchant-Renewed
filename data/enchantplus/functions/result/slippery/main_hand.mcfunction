advancement revoke @s only enchantplus:slippery/main_hand

#Check if the player isn't trying to throw a trident
execute unless entity @s[advancements={enchantplus:slippery/using_trident=true}] if predicate enchantplus:random_chance/15 at @s anchored eyes positioned ~ ~1.7 ~ run function enchantplus:result/slippery/replace_main_hand

#Don't execute Slippery if the player throw a trident
execute if entity @s[advancements={enchantplus:slippery/using_trident=true}] run advancement revoke @s only enchantplus:slippery/using_trident
