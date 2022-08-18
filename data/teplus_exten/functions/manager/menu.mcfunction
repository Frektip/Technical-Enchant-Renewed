tellraw @s {"text":"\n"} 
tellraw @s {"text":"                                                                                ","color":"#67DE83","strikethrough":true} 
tellraw @s ["",{"translate":"                        EXTENTIONS MANAGER","color":"#47EFAD"}] 
tellraw @s {"text":"                                                                                ","color":"#67DE83","strikethrough":true}
tellraw @s ["",{"translate":"Select a category:","color":"#CDEADF","bold":true},{"text":"\n"}]

#Mob Use
execute if score $Mobs tepext.manager matches 0 run tellraw @s ["",{"text":"[","color":"#A37BC3"},{"translate":"Mob Use","color":"#7761AC"},{"text":"]: ","color":"#A37BC3"},{"text":" "},{"translate":"(Enabled)","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"Clic here to change"}]},"clickEvent":{"action":"run_command","value":"/function teplus_exten:manager/menu/use/off"}},{"text":"\n"},{"translate":"Allow hostile mobs to use custom enchantments. Note that if the enchantment is disabled, the mob won't trigger it, even if this feature is enabled!","color":"gray"}]

execute if score $Mobs tepext.manager matches 1 run tellraw @s ["",{"text":"[","color":"#A37BC3"},{"translate":"Mob Use","color":"#7761AC"},{"text":"]: ","color":"#A37BC3"},{"text":" "},{"translate":"(Disabled)","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"Clic here to change"}]},"clickEvent":{"action":"run_command","value":"/function teplus_exten:manager/menu/use/on"}},{"text":"\n"},{"translate":"Allow hostile mobs to use custom enchantments. Note that if the enchantment is disabled, the mob won't trigger it, even if this feature is enabled!","color":"gray"}]
tellraw @s {"text":"\n"}

#Separate the Rest
tellraw @s ["",{"translate":"- Open the Menu for:   ","color":"white"},{"text":"[","color":"#50D5D1"},{"translate":"Mob Spawning","color":"#40B8B4","hoverEvent":{"action":"show_text","contents":[{"text":"Clic here to go"}]},"clickEvent":{"action":"run_command","value":"/function teplus_exten:manager/menu/spawn/menu"}},{"text":"]","color":"#50D5D1"}]
tellraw @s ["",{"translate":"- Open the Menu for:   ","color":"white"},{"text":"[","color":"#50D576"},{"translate":"Enchanted Mob Drops","color":"#3EA95D","hoverEvent":{"action":"show_text","contents":[{"text":"Clic here to go"}]},"clickEvent":{"action":"run_command","value":"/function teplus_exten:manager/menu/drops/menu"}},{"text":"]","color":"#50D576"}]
tellraw @s ["",{"translate":"- Open the Menu for:   ","color":"white"},{"text":"[","color":"#D5CB50"},{"translate":"Structure Chest Loot","color":"#B3AB42","hoverEvent":{"action":"show_text","contents":[{"text":"Clic here to go"}]},"clickEvent":{"action":"run_command","value":"/function teplus_exten:manager/menu/chests/menu"}},{"text":"]","color":"#D5CB50"}]
tellraw @s ["",{"translate":"- Open the Menu for:   ","color":"white"},{"text":"[","color":"#E38B46"},{"translate":"Exceed vanilla enchant level","color":"#BE7439","hoverEvent":{"action":"show_text","contents":[{"text":"Clic here to go"}]},"clickEvent":{"action":"run_command","value":"/function teplus_exten:manager/menu/exceed/menu"}},{"text":"]","color":"#E38B46"}]


tellraw @s [{"text":"                                    ","color":"#67DE83","strikethrough":true},{"text":"(↔▎↔)","color":"#B5FFDC","strikethrough":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Return to the main page"}]},"clickEvent":{"action":"run_command","value":"/function enchantplus:config"}},{"text":"                                    ","color":"#67DE83","strikethrough":true}] 


playsound ui.button.click player @s ~ ~ ~ 0.5 1.75