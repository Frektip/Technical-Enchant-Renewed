#Give back the item/except experience orb
execute if entity @s[gamemode=!creative,advancements={teplus_exten:place_custom_head={isolated_core=true}}] run loot spawn ~ ~ ~ loot enchantplus:isolated_core
execute if entity @s[gamemode=!creative,advancements={teplus_exten:place_custom_head={polished_lapis=true}}] run loot spawn ~ ~ ~ loot enchantplus:polished_lapis
execute if entity @s[gamemode=!creative,advancements={teplus_exten:place_custom_head={blessed_orb=true}}] run loot spawn ~ ~ ~ loot enchantplus:blessed_orb

#Remove the correct head (in order to prevent removing other heads)
fill ~7 ~7 ~7 ~-7 ~-7 ~-7 air replace #technical_anvil:player_heads{SkullOwner:{Id:[I;-1182053666,1416774549,-1949217575,-819028885]}}
fill ~7 ~7 ~7 ~-7 ~-7 ~-7 air replace #technical_anvil:player_heads{SkullOwner:{Id:[I;-379562060,930630984,-1401696648,1912235959]}}
fill ~7 ~7 ~7 ~-7 ~-7 ~-7 air replace #technical_anvil:player_heads{SkullOwner:{Id:[I;1426414260,-1053604529,-1932565519,-1658789434]}}
fill ~7 ~7 ~7 ~-7 ~-7 ~-7 air replace #technical_anvil:player_heads{SkullOwner:{Id:[I;811942937,2026326024,-1788336601,510310751]}}

advancement revoke @s only teplus_exten:place_custom_head