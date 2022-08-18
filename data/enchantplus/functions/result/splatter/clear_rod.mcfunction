#Excecute one last time the raycast before breaking the fishing rod
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{CustomEnchantments:[{id:"Splatter",lvl:1}]}}]}] at @s anchored eyes positioned ^ ^ ^ run function enchantplus:result/splatter/raycast1 
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{CustomEnchantments:[{id:"Splatter",lvl:2}]}}]}] at @s anchored eyes positioned ^ ^ ^ run function enchantplus:result/splatter/raycast2 
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{CustomEnchantments:[{id:"Splatter",lvl:3}]}}]}] at @s anchored eyes positioned ^ ^ ^ run function enchantplus:result/splatter/raycast3 
#Removing the fishing rod :(
item replace entity @s weapon.offhand with air 
playsound entity.item.break master @s ~ ~ ~ 2 1 
particle item fishing_rod ^ ^1.7 ^0.1 0.1 0.1 0.1 0 7 
scoreboard players reset .dmg tep.rc 