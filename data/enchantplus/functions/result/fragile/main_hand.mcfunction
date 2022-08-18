advancement revoke @s only enchantplus:fragile/main_hand

#Check if the player isn't trying to throw a trident
execute unless entity @s[advancements={enchantplus:fragile/using_trident=true}] unless predicate enchantplus:fragile_fix/zero_mainhand if predicate enchantplus:fragile_fix/low_items run item modify entity @s weapon.mainhand enchantplus:fragile_extra

execute unless entity @s[advancements={enchantplus:fragile/using_trident=true}] unless predicate enchantplus:fragile_fix/zero_mainhand unless predicate enchantplus:fragile_fix/low_items run item modify entity @s weapon.mainhand enchantplus:fragile



#Don't execute Fragile if the player throw a trident
execute if entity @s[advancements={enchantplus:fragile/using_trident=true}] run advancement revoke @s only enchantplus:fragile/using_trident

