tellraw @s {"text":"\n\n"} 
tellraw @s {"text":"                                                                                ","color":"dark_purple","strikethrough":true} 
tellraw @s ["",{"translate":"                       GAMEPLAY OPTIONS MENU","color":"light_purple"}] 
tellraw @s {"text":"                                                                                ","color":"dark_purple","strikethrough":true} 

execute if score #crftbksh game.Opts matches 0 run tellraw @s ["",{"text":"[\u2714]","color":"green"},{"text":"/","color":"white"},{"text":"[\u274c]","color":"gray","hoverEvent":{"action":"show_text","contents":[{"text":"Clic to disable"}]},"clickEvent":{"action":"run_command","value":"/function enchantplus:settings/gameplay/craft_bookshelf_off"}},{"text":" "},{"translate":"Charged Bookshelf crafting:","color":"#AB8449"},{"text":" "},{"translate":"Allow all players to get Charged Bookshelves.","color":"#E2E3D9"}] 
execute if score #crftbksh game.Opts matches 1 run tellraw @s ["",{"text":"[\u2714]","color":"gray","hoverEvent":{"action":"show_text","contents":[{"text":"Clic to enable"}]},"clickEvent":{"action":"run_command","value":"/function enchantplus:settings/gameplay/craft_bookshelf_on"}},{"text":"/","color":"white"},{"text":"[\u274c]","color":"red"},{"text":" "},{"translate":"Charged Bookshelf crafting:","color":"#AB8449"},{"text":" "},{"translate":"Allow all players to get Charged Bookshelves.","color":"#E2E3D9"}] 


execute if score #crftchnv game.Opts matches 0 run tellraw @s ["",{"text":"[\u2714]","color":"green"},{"text":"/","color":"white"},{"text":"[\u274c]","color":"gray","hoverEvent":{"action":"show_text","contents":[{"text":"Clic to disable"}]},"clickEvent":{"action":"run_command","value":"/function enchantplus:settings/gameplay/craft_anvil_off"}},{"text":" "},{"translate":"Technical Anvil crafting:","color":"#AB8449"},{"text":" "},{"translate":"Allow all players to get the Technical Anvil.","color":"#E2E3D9"}] 
execute if score #crftchnv game.Opts matches 1 run tellraw @s ["",{"text":"[\u2714]","color":"gray","hoverEvent":{"action":"show_text","contents":[{"text":"Clic to enable"}]},"clickEvent":{"action":"run_command","value":"/function enchantplus:settings/gameplay/craft_anvil_on"}},{"text":"/","color":"white"},{"text":"[\u274c]","color":"red"},{"text":" "},{"translate":"Technical Anvil crafting:","color":"#AB8449"},{"text":" "},{"translate":"Allow all players to get the Technical Anvil.","color":"#E2E3D9"}]



tellraw @s [{"text":"                                    ","color":"dark_purple","strikethrough":true},{"text":"(↔▎↔)","color":"#B5FFDC","strikethrough":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Return to the main page"}]},"clickEvent":{"action":"run_command","value":"/function enchantplus:config"}},{"text":"                               ","color":"dark_purple","strikethrough":true},{"text":" (","color":"#7A1DA2","strikethrough":false},{"text":"←","color":"#7A1DA2","strikethrough":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Previous page"}]},"clickEvent":{"action":"run_command","value":"/function enchantplus:settings/gameplay_settings/page2"}},{"text":")","color":"#7A1DA2","strikethrough":false}] 


playsound ui.button.click player @s ~ ~ ~ 0.5 1.75 