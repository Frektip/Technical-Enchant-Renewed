scoreboard players set #aksp Enchopts 0

#General Message
tellraw @a ["",{"text":"\n\n\n\n\n"}]
tellraw @a ["",{"text":"*--*---*-----*---*---*--*-----*--*---*---*-----*---*--*","color":"gold"}]
tellraw @a ["",{"translate":"Attack Speed","color":"#1D9BAC"},{"text":" "},{"translate":"Enchantment","color":"#1D9BAC"},{"text":" "},{"translate":"Is now enabled!","color":"green"}]
tellraw @a ["",{"translate":"In case you don't have the Attributes from this enchantment in your items,","color":"#E3C086"},{"text":" "},{"translate":"add this enchantment again using a Technical Anivl.","color":"white"}]
tellraw @a ["",{"text":"*--*---*-----*---*---*--*-----*--*---*---*-----*---*--*","color":"gold"}]
tellraw @s ["",{"text":"\n"}]
tellraw @s ["",{"text":"[Return to the Menu?]","italic":true,"color":"#8EB67F","hoverEvent":{"action":"show_text","contents":[{"text":"Click here"}]},"clickEvent":{"action":"run_command","value":"/function enchantplus:settings/enchsett_pages/page1"}}]
tellraw @s ["",{"text":"\n"}]

playsound minecraft:ui.button.click ambient @a ~ ~ ~ 10 1.75