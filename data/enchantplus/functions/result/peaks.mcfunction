advancement revoke @s only enchantplus:peaks

execute if score #pks Enchopts matches 0 as @e[limit=1,distance=0.5..3,sort=nearest] at @s run effect give @s wither 1 1 true
