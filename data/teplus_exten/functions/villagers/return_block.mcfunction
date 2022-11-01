#Give back the item
execute if entity @s[gamemode=!creative,advancements={teplus_exten:place_custom_head={isolated_core=true}}] run loot give @s loot enchantplus:isolated_core
execute if entity @s[gamemode=!creative,advancements={teplus_exten:place_custom_head={polished_lapis=true}}] run loot give @s loot enchantplus:polished_lapis

#Remove the correct head (in order to preven removing other heads)
fill ~7 ~7 ~7 ~-7 ~-7 ~-7 air replace #technical_anvil:player_heads{SkullOwner:{Id:[I;-1182053666,1416774549,-1949217575,-819028885]}}
fill ~7 ~7 ~7 ~-7 ~-7 ~-7 air replace #technical_anvil:player_heads{SkullOwner:{Id:[I;-379562060,930630984,-1401696648,1912235959]}}

advancement revoke @s only teplus_exten:place_custom_head