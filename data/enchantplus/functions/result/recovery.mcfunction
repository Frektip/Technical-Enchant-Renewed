advancement revoke @s only enchantplus:recovery_hurt

scoreboard players operation @s teplus.racdmg += @s TakeDamage

execute if score #rcv Enchopts matches 0 if score @s[nbt={Inventory:[{Slot:101b,tag:{CustomEnchantments:[{id:"Recovery",lvl:1}]}}]}] teplus.racdmg matches 60.. run effect give @s regeneration 5 1 true 
execute if score #rcv Enchopts matches 0 if score @s[nbt={Inventory:[{Slot:101b,tag:{CustomEnchantments:[{id:"Recovery",lvl:2}]}}]}] teplus.racdmg matches 60.. run effect give @s regeneration 3 2 true 

scoreboard players reset @s[scores={teplus.racdmg=60..}] teplus.racdmg