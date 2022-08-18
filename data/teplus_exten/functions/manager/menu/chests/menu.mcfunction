tellraw @s {"text":"\n"} 
tellraw @s {"text":"                                                                                ","color":"#67DE83","strikethrough":true} 
tellraw @s ["",{"translate":"                           STRUCTURE CHESTS LOOT","color":"#47EFAD"}] 
tellraw @s {"text":"                                                                                ","color":"#67DE83","strikethrough":true}

#Enabled/Disabled
execute if score $Chests tepext.manager matches 0 run tellraw @s ["",{"translate":"(Enabled)","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"Clic here to change"}]},"clickEvent":{"action":"run_command","value":"/function teplus_exten:manager/menu/chestss/off"}},{"text":" "},{"translate":"Generate custom enchanted books in any Minecraft Vanilla structure. This feature, don't overwrite the vanilla loot-table!","color":"gray"},{"text":"\n"}]

execute if score $Chests tepext.manager matches 1 run tellraw @s ["",{"translate":"(Disabled)","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"Clic here to change"}]},"clickEvent":{"action":"run_command","value":"/function teplus_exten:manager/menu/chestss/on"}},{"text":" "},{"translate":"Generate custom enchanted books in any Minecraft Vanilla structure. This feature, don't overwrite the vanilla loot-table!","color":"gray"},{"text":"\n"}]


tellraw @s ["",{"translate":"For a specific structure:","color":"#CDEADF","bold":true}]

#---------Abandoned Mineshaft---------#
execute if score #chl_mineshaft tepext.manager matches 0 run tellraw @s ["",{"text":"[\u2714]","color":"green"},{"text":"/","color":"white"},{"text":"[\u274c]","color":"gray","clickEvent":{"action":"run_command","value":"/function teplus_exten:manager/menu/chests/abandoned_mineshaft/off"}},{"text":"  ","color":"#A6B9DE"},{"translate":"Abandoned Mineshaft","color":"#B2F5EC"}]
execute if score #chl_mineshaft tepext.manager matches 1 run tellraw @s ["",{"text":"[\u2714]","color":"gray","clickEvent":{"action":"run_command","value":"/function teplus_exten:manager/menu/chests/abandoned_mineshaft/on"}},{"text":"/","color":"white"},{"text":"[\u274c]","color":"red"},{"text":"  ","color":"#A6B9DE"},{"translate":"Abandoned Mineshaft","color":"#B2F5EC"}]


#---------Ancient City---------#
execute if score #chl_ancity tepext.manager matches 0 run tellraw @s ["",{"text":"[\u2714]","color":"green"},{"text":"/","color":"white"},{"text":"[\u274c]","color":"gray","clickEvent":{"action":"run_command","value":"/function teplus_exten:manager/menu/chests/ancient_city/off"}},{"text":"  ","color":"#A6B9DE"},{"translate":"Ancient City","color":"#B2F5EC"}]
execute if score #chl_ancity tepext.manager matches 1 run tellraw @s ["",{"text":"[\u2714]","color":"gray","clickEvent":{"action":"run_command","value":"/function teplus_exten:manager/menu/chests/ancient_city/on"}},{"text":"/","color":"white"},{"text":"[\u274c]","color":"red"},{"text":"  ","color":"#A6B9DE"},{"translate":"Ancient City","color":"#B2F5EC"}]


#---------Bastion---------#
execute if score #chl_bastion tepext.manager matches 0 run tellraw @s ["",{"text":"[\u2714]","color":"green"},{"text":"/","color":"white"},{"text":"[\u274c]","color":"gray","clickEvent":{"action":"run_command","value":"/function teplus_exten:manager/menu/chests/bastion/off"}},{"text":"  ","color":"#A6B9DE"},{"translate":"Bastion Remnant","color":"#B2F5EC"}]
execute if score #chl_bastion tepext.manager matches 1 run tellraw @s ["",{"text":"[\u2714]","color":"gray","clickEvent":{"action":"run_command","value":"/function teplus_exten:manager/menu/chests/bastion/on"}},{"text":"/","color":"white"},{"text":"[\u274c]","color":"red"},{"text":"  ","color":"#A6B9DE"},{"translate":"Bastion Remnant","color":"#B2F5EC"}]


#---------Buried Treasure---------#
execute if score #chl_btreasure tepext.manager matches 0 run tellraw @s ["",{"text":"[\u2714]","color":"green"},{"text":"/","color":"white"},{"text":"[\u274c]","color":"gray","clickEvent":{"action":"run_command","value":"/function teplus_exten:manager/menu/chests/buried_treasure/off"}},{"text":"  ","color":"#A6B9DE"},{"translate":"Buried Treasure","color":"#B2F5EC"}]
execute if score #chl_btreasure tepext.manager matches 1 run tellraw @s ["",{"text":"[\u2714]","color":"gray","clickEvent":{"action":"run_command","value":"/function teplus_exten:manager/menu/chests/buried_treasure/on"}},{"text":"/","color":"white"},{"text":"[\u274c]","color":"red"},{"text":"  ","color":"#A6B9DE"},{"translate":"Buried Treasure","color":"#B2F5EC"}]


#---------Desert Pyramid---------#
execute if score #chl_despyram tepext.manager matches 0 run tellraw @s ["",{"text":"[\u2714]","color":"green"},{"text":"/","color":"white"},{"text":"[\u274c]","color":"gray","clickEvent":{"action":"run_command","value":"/function teplus_exten:manager/menu/chests/desert_pyramid/off"}},{"text":"  ","color":"#A6B9DE"},{"translate":"Desert Pyramid","color":"#B2F5EC"}]
execute if score #chl_despyram tepext.manager matches 1 run tellraw @s ["",{"text":"[\u2714]","color":"gray","clickEvent":{"action":"run_command","value":"/function teplus_exten:manager/menu/chests/desert_pyramid/on"}},{"text":"/","color":"white"},{"text":"[\u274c]","color":"red"},{"text":"  ","color":"#A6B9DE"},{"translate":"Desert Pyramid","color":"#B2F5EC"}]


#---------End City---------#
execute if score #chl_endcity tepext.manager matches 0 run tellraw @s ["",{"text":"[\u2714]","color":"green"},{"text":"/","color":"white"},{"text":"[\u274c]","color":"gray","clickEvent":{"action":"run_command","value":"/function teplus_exten:manager/menu/chests/end_city_treasure/off"}},{"text":"  ","color":"#A6B9DE"},{"translate":"End City","color":"#B2F5EC"}]
execute if score #chl_endcity tepext.manager matches 1 run tellraw @s ["",{"text":"[\u2714]","color":"gray","clickEvent":{"action":"run_command","value":"/function teplus_exten:manager/menu/chests/end_city_treasure/on"}},{"text":"/","color":"white"},{"text":"[\u274c]","color":"red"},{"text":"  ","color":"#A6B9DE"},{"translate":"End City","color":"#B2F5EC"}]


#Return button
tellraw @s [{"text":"\n"},{"translate":"[← Return]","italic":true,"color":"#ED6451","clickEvent":{"action":"run_command","value":"/function teplus_exten:manager/menu"}},{"text":"                       "},{"translate":"[Next →]","italic":true,"color":"#D0F27B","clickEvent":{"action":"run_command","value":"/function teplus_exten:manager/menu/chests/menu1"}}]

tellraw @s {"text":"                                                                                ","color":"#67DE83","strikethrough":true}


playsound ui.button.click player @s ~ ~ ~ 0.5 1.75