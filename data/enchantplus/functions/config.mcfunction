tellraw @s {"text":"\n\n\n"} 
tellraw @s {"text":"                                                                                ","color":"dark_aqua","strikethrough":true} 
tellraw @s ["",{"text":"                  TECHNICAL ENCHANT +","color":"aqua"},{"translate":" | Settings MENU","color":"gray"}] 
tellraw @s {"text":"                                                                                ","color":"dark_aqua","strikethrough":true} 
tellraw @s ["",{"text":"[\u25b6\u25b6]","bold":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/function enchantplus:settings/gameplay_settings/page1"},"hoverEvent":{"action":"show_text","contents":"Clic here to go"}},{"translate":" Gameplay options:","color":"#8E54A8"},{"translate":" Configure the way the datapack works, like how to get and apply custom enchantments!","color":"gray"}]
tellraw @s {"text":"\n"}
tellraw @s ["",{"text":"[\u25b6\u25b6]","bold":true,"color":"#C1750F","clickEvent":{"action":"run_command","value":"/function enchantplus:settings/enchsett_pages/page1"},"hoverEvent":{"action":"show_text","contents":"Clic here to go"}},{"translate":" Custom enchantments options:","color":"#E5EA74"},{"translate":" Enable and Disable the enchantments you want.","color":"gray"}]
tellraw @s {"text":"\n"}
tellraw @s ["",{"text":"[\u25b6\u25b6]","bold":true,"color":"#409F57","clickEvent":{"action":"run_command","value":"/function teplus_exten:manager/menu"},"hoverEvent":{"action":"show_text","contents":"Clic here to go"}},{"translate":" Extentions Manager:","color":"#74E18E"},{"translate":" Change the behaviour of extra features from the datapack adjusting to your needs.","color":"gray"}]
tellraw @s {"text":"\n"}
tellraw @s[tag=teplus.pydbgm] ["",{"text":"[\u25b6\u25b6]","bold":true,"color":"#26C4F3","clickEvent":{"action":"run_command","value":"/function enchantplus:settings/debug_off"},"hoverEvent":{"action":"show_text","contents":"Clic here to deactivate"}},{"translate":" Debug Mode:","color":"#596CF7"},{"translate":" Get command feedback from many features in this datapack in-game. Try also using /trigger Teplus.Report","color":"gray"}]
tellraw @s[tag=!teplus.pydbgm] ["",{"text":"[\u25b6\u25b6]","bold":true,"color":"#1A5E9A","clickEvent":{"action":"run_command","value":"/function enchantplus:settings/debug_on"},"hoverEvent":{"action":"show_text","contents":"Clic here to activate"}},{"translate":" Debug Mode:","color":"#596CF7"},{"translate":" Get command feedback from many features in this datapack in-game. Try also using /trigger Teplus.Report","color":"gray"}]
tellraw @s {"text":"                                                                                ","color":"dark_aqua","strikethrough":true} 
playsound block.note_block.hat player @s ~ ~ ~ 3 0.8 

execute if entity @s[advancements={enchantplus:progress/start/cheats=false}] run advancement grant @s only enchantplus:progress/start/cheats 