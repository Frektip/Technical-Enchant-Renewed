tellraw @s {"text":"\n\n"} 
tellraw @s {"text":"                                                                                ","color":"dark_purple","strikethrough":true} 
tellraw @s ["",{"translate":"                       GAMEPLAY OPTIONS MENU","color":"light_purple"}] 
tellraw @s {"text":"                                                                                ","color":"dark_purple","strikethrough":true} 

execute if score #crftbksh game.Opts matches 0 run tellraw @s ["",{"text":"[\u2714]","color":"green"},{"text":"/","color":"white"},{"text":"[\u274c]","color":"gray","hoverEvent":{"action":"show_text","contents":[{"text":"Click to disable"}]},"clickEvent":{"action":"run_command","value":"/function enchantplus:settings/gameplay/craft_bookshelf_off"}},{"text":" "},{"translate":"Charged Bookshelf crafting:","color":"#AB8449"},{"text":" "},{"translate":"Allow all players to get Charged Bookshelves.","color":"#E2E3D9"}] 
execute if score #crftbksh game.Opts matches 1 run tellraw @s ["",{"text":"[\u2714]","color":"gray","hoverEvent":{"action":"show_text","contents":[{"text":"Click to enable"}]},"clickEvent":{"action":"run_command","value":"/function enchantplus:settings/gameplay/craft_bookshelf_on"}},{"text":"/","color":"white"},{"text":"[\u274c]","color":"red"},{"text":" "},{"translate":"Charged Bookshelf crafting:","color":"#AB8449"},{"text":" "},{"translate":"Allow all players to get Charged Bookshelves.","color":"#E2E3D9"}] 


execute if score #crftchnv game.Opts matches 0 run tellraw @s ["",{"text":"[\u2714]","color":"green"},{"text":"/","color":"white"},{"text":"[\u274c]","color":"gray","hoverEvent":{"action":"show_text","contents":[{"text":"Click to disable"}]},"clickEvent":{"action":"run_command","value":"/function enchantplus:settings/gameplay/craft_anvil_off"}},{"text":" "},{"translate":"Technical Anvil crafting:","color":"#AB8449"},{"text":" "},{"translate":"Allow all players to get the Technical Anvil.","color":"#E2E3D9"}] 
execute if score #crftchnv game.Opts matches 1 run tellraw @s ["",{"text":"[\u2714]","color":"gray","hoverEvent":{"action":"show_text","contents":[{"text":"Click to enable"}]},"clickEvent":{"action":"run_command","value":"/function enchantplus:settings/gameplay/craft_anvil_on"}},{"text":"/","color":"white"},{"text":"[\u274c]","color":"red"},{"text":" "},{"translate":"Technical Anvil crafting:","color":"#AB8449"},{"text":" "},{"translate":"Allow all players to get the Technical Anvil.","color":"#E2E3D9"}]

tellraw @s ["",{"translate":"[Replace]","color":"#E97843","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to go"}]},"clickEvent":{"action":"run_command","value":"/function enchantplus:settings/gameplay/base_charge"}},{"text":" "},{"translate":"The main material to increase the Base Charge of an enchanting table.","color":"#E2E3D9"}] 

tellraw @s ["",{"text":"[✎","color":"#EF6156"},{"translate":"Edit","color":"#EF6156","clickEvent":{"action":"suggest_command","value":"/scoreboard players set #qtychrg game.Opts 3"}},{"text":"] ","color":"#EF6156"},{"text":"<","color":"#E5C62F"},{"score":{"name":"#qtychrg","objective":"game.Opts"},"color":"#E2805E"},{"text":"> ","color":"#E5C62F"},{"translate":"Amount added each time the Base Charge is increased with an item.","color":"#E2E3D9"}] 

tellraw @s ["",{"text":"(✎","color":"#75F396"},{"translate":"Edit","color":"#75F396","clickEvent":{"action":"suggest_command","value":"/scoreboard players set #xplow game.Opts 12"}},{"text":") ","color":"#75F396"},{"text":"[","color":"white"},{"score":{"name":"#xplow","objective":"game.Opts"},"color":"#75AAF3"},{"text":"] ","color":"white"},{"translate":"Xp level cost:","color":"#319745"},{"text":" "},{"translate":"To get Low enchantments.","color":"#E2E3D9"}]
tellraw @s ["",{"text":"(✎","color":"#75F396"},{"translate":"Edit","color":"#75F396","clickEvent":{"action":"suggest_command","value":"/scoreboard players set #xpavr game.Opts 24"}},{"text":") ","color":"#75F396"},{"text":"[","color":"white"},{"score":{"name":"#xpavr","objective":"game.Opts"},"color":"#686EF1"},{"text":"] ","color":"white"},{"translate":"Xp level cost:","color":"#319745"},{"text":" "},{"translate":"To get Average enchantments.","color":"#E2E3D9"}]
tellraw @s ["",{"text":"(✎","color":"#75F396"},{"translate":"Edit","color":"#75F396","clickEvent":{"action":"suggest_command","value":"/scoreboard players set #xpstr game.Opts 36"}},{"text":") ","color":"#75F396"},{"text":"[","color":"white"},{"score":{"name":"#xpstr","objective":"game.Opts"},"color":"#9468F1"},{"text":"] ","color":"white"},{"translate":"Xp level cost:","color":"#319745"},{"text":" "},{"translate":"To get Strong enchantments.","color":"#E2E3D9"}]


execute if score #xpcrtlm game.Opts matches 0 run tellraw @s ["",{"text":"[\u2714]","color":"green"},{"text":"/","color":"white"},{"text":"[\u274c]","color":"gray","hoverEvent":{"action":"show_text","contents":[{"text":"Click to disable"}]},"clickEvent":{"action":"run_command","value":"/function enchantplus:settings/gameplay/xp_crystal_merge_off"}},{"text":" "},{"translate":"Experience Crystal upgrades:","color":"#92A85E"},{"text":" "},{"translate":"Allow the increase of the Experience crystal Tier.","color":"#E2E3D9"}] 
execute if score #xpcrtlm game.Opts matches 1 run tellraw @s ["",{"text":"[\u2714]","color":"gray","hoverEvent":{"action":"show_text","contents":[{"text":"Click to enable"}]},"clickEvent":{"action":"run_command","value":"/function enchantplus:settings/gameplay/xp_crystal_merge_on"}},{"text":"/","color":"white"},{"text":"[\u274c]","color":"red"},{"text":" "},{"translate":"Experience Crystal upgrades:","color":"#92A85E"},{"text":" "},{"translate":"Allow the increase of the Experience crystal Tier.","color":"#E2E3D9"}]



tellraw @s [{"text":"                                    ","color":"dark_purple","strikethrough":true},{"text":"(↔▎↔)","color":"#B5FFDC","strikethrough":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Return to the main page"}]},"clickEvent":{"action":"run_command","value":"/function enchantplus:config"}},{"text":"                               ","color":"dark_purple","strikethrough":true},{"text":" (","color":"#7A1DA2","strikethrough":false},{"text":"←","color":"#7A1DA2","strikethrough":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Previous page"}]},"clickEvent":{"action":"run_command","value":"/function enchantplus:settings/gameplay_settings/page2"}},{"text":")","color":"#7A1DA2","strikethrough":false}] 


playsound ui.button.click player @s ~ ~ ~ 0.5 1.75 