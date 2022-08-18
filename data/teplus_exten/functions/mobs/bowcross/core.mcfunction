execute if entity @s[tag=!tepxm.checked] run function teplus_exten:mobs/bowcross/uuid

#Debug, check conditions if the entity has a custom enchanted bow or crossbow

scoreboard players set #predicate teplus.data 0
execute store success score #predicate teplus.data if predicate enchbowcross:mainhand_bowcross
execute if score #predicate teplus.data matches 0 run function #enchbowcross:custom_arrow/clear
execute if score #predicate teplus.data matches 1 run function teplus_exten:mobs/bowcross/custom_arrow/get_arrow

#If the entity bow score is 0, maybe he is holding a bow or crossbow with 
# CustomEnchantments{} nbt tag in his offhand.
#A predicate checks this condition, if it is true run a function that serves as an extra
# step before storing the value from his offhand 
execute if score @s teplus.arrow matches 0 if entity @s[predicate=enchbowcross:offhand_bowcross] run function teplus_exten:mobs/bowcross/custom_arrow/offhand_arrow

#If the bow score is greater than 1 the entity has a custom arrow, so we proceed to 
# identify what enchantment he has
execute if score @s teplus.arrow matches 1.. at @s run function teplus_exten:mobs/bowcross/custom_arrow/directory