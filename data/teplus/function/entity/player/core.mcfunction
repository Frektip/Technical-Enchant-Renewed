execute if entity @s[scores={teplus.drop=1..}] run function teplus:entity/player/when_drop 

execute unless score @s teplus.trigger.get_birthday_potion matches 0 run function teplus:events/trigger/get_birthday_potion