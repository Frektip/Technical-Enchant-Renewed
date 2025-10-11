#Datapack version
scoreboard objectives add teplus.version dummy
scoreboard players set #major teplus.version 8
scoreboard players set #minor teplus.version 0
scoreboard players set #patch teplus.version 0

#Placed Blocks scoreboard
scoreboard objectives add teplus.block_id dummy

#Triggers
scoreboard objectives add teplus.trigger.get_birthday_potion trigger


tellraw @a ["",{"text":"             [","color":"gold"},{"text":"Technical Enchant+ Renewed","color":"green"},{"text":" is ready","color":"green"},{"text":"]","color":"gold"}]
tellraw @a ["",{"text":"              *------*--*--*------*--*--*------*","color":"gold"}]
tellraw @a ["",{"text":"        *-----*","color":"gold"},{"text":" By Hardel ","color":"blue"},{"text":" Modified by Frektip ","color":"red"},{"text":"*-----*","color":"gold"}]
tellraw @a ["",{"text":"                      [","color":"aqua","italic":true},{"translate":"Reset All Global Settings","color":"#DDC65C","clickEvent":{"action":"suggest_command","value":"/function enchantplus:set_options/init"},"italic":true},{"text":"]","color":"aqua","italic":true}]
tellraw @a ["",{"text":"*--*---*-----*---*---*--*-----*--*---*---*-----*---*--*","color":"gold"}]