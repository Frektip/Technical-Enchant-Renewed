#Obtain entity health
function teplus_exten:mobs/get_health

#Give effect
execute if data entity @s[scores={tepxm.health=3..10}] ArmorItems[1].tag.CustomEnchantments[{id:"Recovery",lvl:1}] run effect give @s regeneration 5 1 true 
execute if data entity @s[scores={tepxm.health=3..12}] ArmorItems[1].tag.CustomEnchantments[{id:"Recovery",lvl:2}] run effect give @s regeneration 3 2 true 
