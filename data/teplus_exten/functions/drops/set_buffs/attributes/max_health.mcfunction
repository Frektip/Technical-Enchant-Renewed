scoreboard players set $min random 0
scoreboard players set $max random 7
function enchantplus:random_uniform

execute if score $out random matches 0 run attribute @s generic.max_health modifier add 9262874b-44e7-4239-a6c4-c9a9ebae4f80 TepDrop.MaxHealth 5 add
execute if score $out random matches 1 run attribute @s generic.max_health modifier add 9262874b-44e7-4239-a6c4-c9a9ebae4f80 TepDrop.MaxHealth 10 add
execute if score $out random matches 2 run attribute @s generic.max_health modifier add 9262874b-44e7-4239-a6c4-c9a9ebae4f80 TepDrop.MaxHealth 15 add
execute if score $out random matches 3 run attribute @s generic.max_health modifier add 9262874b-44e7-4239-a6c4-c9a9ebae4f80 TepDrop.MaxHealth 20 add
execute if score $out random matches 4 run attribute @s generic.max_health modifier add 9262874b-44e7-4239-a6c4-c9a9ebae4f80 TepDrop.MaxHealth 25 add
execute if score $out random matches 5 run attribute @s generic.max_health modifier add 9262874b-44e7-4239-a6c4-c9a9ebae4f80 TepDrop.MaxHealth 30 add
execute if score $out random matches 6 run attribute @s generic.max_health modifier add 9262874b-44e7-4239-a6c4-c9a9ebae4f80 TepDrop.MaxHealth 35 add
execute if score $out random matches 7 run attribute @s generic.max_health modifier add 9262874b-44e7-4239-a6c4-c9a9ebae4f80 TepDrop.MaxHealth 40 add


execute if entity @s[type=#enchantplus:undead] run effect give @s instant_damage 5 5
execute if entity @s[type=!#enchantplus:undead] run effect give @s instant_health 5 5
