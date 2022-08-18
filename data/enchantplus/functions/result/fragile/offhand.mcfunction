advancement revoke @s only enchantplus:fragile/offhand


#Check if the player isn't trying to throw a trident
execute unless entity @s[advancements={enchantplus:fragile/using_trident=true}] unless predicate enchantplus:fragile_fix/zero_offhand run item modify entity @s weapon.offhand enchantplus:fragile_extra

#Don't execute Fragile if the player throw a trident
execute if entity @s[advancements={enchantplus:fragile/using_trident=true}] run advancement revoke @s only enchantplus:fragile/using_trident