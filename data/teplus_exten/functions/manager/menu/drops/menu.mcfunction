tellraw @s {"text":"\n"} 
tellraw @s {"text":"                                                                                ","color":"#67DE83","strikethrough":true} 
tellraw @s ["",{"translate":"                           ENCHANTED MOB DROPS","color":"#47EFAD"}] 
tellraw @s {"text":"                                                                                ","color":"#67DE83","strikethrough":true}

#Enabled/Disabled
execute if score $Drops tepext.manager matches 0 run tellraw @s ["",{"translate":"(Enabled)","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"Clic here to change"}]},"clickEvent":{"action":"run_command","value":"/function teplus_exten:manager/menu/drops/off"}},{"text":" "},{"translate":"Some random mobs (excluding bosses, pets and villagers) will spawn with the chance of dropping custom enchanted books.","color":"gray"}]

execute if score $Drops tepext.manager matches 1 run tellraw @s ["",{"translate":"(Disabled)","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"Clic here to change"}]},"clickEvent":{"action":"run_command","value":"/function teplus_exten:manager/menu/drops/on"}},{"text":" "},{"translate":"Some random mobs (excluding bosses, pets and villagers) will spawn with the chance of dropping custom enchanted books.","color":"gray"}]

tellraw @s {"text":"\n"}

#------------------Get with Looting III------------------#
execute if score #drop.looting tepext.manager matches 0 run tellraw @s ["",{"text":"[\u2714]","color":"green"},{"text":"/","color":"white"},{"text":"[\u274c]","color":"gray","hoverEvent":{"action":"show_text","contents":[{"text":"Click to disable"}]},"clickEvent":{"action":"run_command","value":"/function teplus_exten:manager/menu/drops/looting/off"}},{"text":"  ","color":"#A6B9DE"},{"translate":"Will drop a custom enchanted book when killing them with Looting III or beyond","color":"#EBF1D2"}]

execute if score #drop.looting tepext.manager matches 1 run tellraw @s ["",{"text":"[\u2714]","color":"gray","hoverEvent":{"action":"show_text","contents":[{"text":"Click to enable"}]},"clickEvent":{"action":"run_command","value":"/function teplus_exten:manager/menu/drops/looting/on"}},{"text":"/","color":"white"},{"text":"[\u274c]","color":"red"},{"text":"  ","color":"#A6B9DE"},{"translate":"Will drop a custom enchanted book when killing them with Looting III or beyond","color":"#EBF1D2"}]

#------------------Mobs Glow------------------#
execute if score #drop.glow tepext.manager matches 0 run tellraw @s ["",{"text":"[\u2714]","color":"green"},{"text":"/","color":"white"},{"text":"[\u274c]","color":"gray","hoverEvent":{"action":"show_text","contents":[{"text":"Click to disable"}]},"clickEvent":{"action":"run_command","value":"/function teplus_exten:manager/menu/drops/glow/off"}},{"text":"  ","color":"#A6B9DE"},{"translate":"Glow based on their rarity","color":"#EBF1D2"}]

execute if score #drop.glow tepext.manager matches 1 run tellraw @s ["",{"text":"[\u2714]","color":"gray","hoverEvent":{"action":"show_text","contents":[{"text":"Click to enable"}]},"clickEvent":{"action":"run_command","value":"/function teplus_exten:manager/menu/drops/glow/on"}},{"text":"/","color":"white"},{"text":"[\u274c]","color":"red"},{"text":"  ","color":"#A6B9DE"},{"translate":"Glow based on their rarity","color":"#EBF1D2"}]

#------------------Mobs Buffs------------------#
execute if score #drop.buffs tepext.manager matches 0 run tellraw @s ["",{"text":"[\u2714]","color":"green"},{"text":"/","color":"white"},{"text":"[\u274c]","color":"gray","hoverEvent":{"action":"show_text","contents":[{"text":"Click to disable"}]},"clickEvent":{"action":"run_command","value":"/function teplus_exten:manager/menu/drops/buffs/off"}},{"text":"  ","color":"#A6B9DE"},{"translate":"Can spawn with attributes and potion effects","color":"#EBF1D2"}]

execute if score #drop.buffs tepext.manager matches 1 run tellraw @s ["",{"text":"[\u2714]","color":"gray","hoverEvent":{"action":"show_text","contents":[{"text":"Click to enable"}]},"clickEvent":{"action":"run_command","value":"/function teplus_exten:manager/menu/drops/buffs/on"}},{"text":"/","color":"white"},{"text":"[\u274c]","color":"red"},{"text":"  ","color":"#A6B9DE"},{"translate":"Can spawn with attributes and potion effects","color":"#EBF1D2"}]

#------------------Mobs Drop chance------------------#
execute if score #drop.chance tepext.manager matches 10 run tellraw @s ["",{"text":"◀","color":"gray"},{"text":"[10%]","color":"#D9F4ED"},{"text":"▶","color":"gold","clickEvent":{"action":"run_command","value":"/function teplus_exten:manager/menu/drops/chance/25"}},{"text":"  ","color":"#A6B9DE"},{"translate":"Enchanted book drop chance when killed","color":"#EBF1D2"}]

execute if score #drop.chance tepext.manager matches 25 run tellraw @s ["",{"text":"◀","color":"gold","clickEvent":{"action":"run_command","value":"/function teplus_exten:manager/menu/drops/chance/10"}},{"text":"[25%]","color":"#D9F4ED"},{"text":"▶","color":"gold","clickEvent":{"action":"run_command","value":"/function teplus_exten:manager/menu/drops/chance/50"}},{"text":"  ","color":"#A6B9DE"},{"translate":"Enchanted book drop chance when killed","color":"#EBF1D2"}]

execute if score #drop.chance tepext.manager matches 50 run tellraw @s ["",{"text":"◀","color":"gold","clickEvent":{"action":"run_command","value":"/function teplus_exten:manager/menu/drops/chance/25"}},{"text":"[50%]","color":"#D9F4ED"},{"text":"▶","color":"gold","clickEvent":{"action":"run_command","value":"/function teplus_exten:manager/menu/drops/chance/100"}},{"text":"  ","color":"#A6B9DE"},{"translate":"Enchanted book drop chance when killed","color":"#EBF1D2"}]

execute if score #drop.chance tepext.manager matches 100 run tellraw @s ["",{"text":"◀","color":"gold","clickEvent":{"action":"run_command","value":"/function teplus_exten:manager/menu/drops/chance/50"}},{"text":"[100%]","color":"#D9F4ED"},{"text":"▶","color":"gray"},{"text":"  ","color":"#A6B9DE"},{"translate":"Enchanted book drop chance when killed","color":"#EBF1D2"}]

#------------------Spawning Rates------------------#
execute if score #drop.rates tepext.manager matches 0 run tellraw @s ["",{"text":"◀","color":"gray"},{"translate":"[LOW]","color":"#D9F4E2"},{"text":"▶","color":"gold","clickEvent":{"action":"run_command","value":"/function teplus_exten:manager/menu/drops/rates/medium"}},{"text":"  ","color":"#A6B9DE"},{"translate":"Enchanted Mob spawning rates","color":"#EBF1D2"}]

execute if score #drop.rates tepext.manager matches 1 run tellraw @s ["",{"text":"◀","color":"gold","clickEvent":{"action":"run_command","value":"/function teplus_exten:manager/menu/drops/rates/low"}},{"translate":"[MEDIUM]","color":"#D9F4E2"},{"text":"▶","color":"gold","clickEvent":{"action":"run_command","value":"/function teplus_exten:manager/menu/drops/rates/high"}},{"text":"  ","color":"#A6B9DE"},{"translate":"Enchanted Mob spawning rates","color":"#EBF1D2"}]

execute if score #drop.rates tepext.manager matches 2 run tellraw @s ["",{"text":"◀","color":"gold","clickEvent":{"action":"run_command","value":"/function teplus_exten:manager/menu/drops/rates/medium"}},{"translate":"[HIGH]","color":"#D9F4E2"},{"text":"▶","color":"gold","clickEvent":{"action":"run_command","value":"/function teplus_exten:manager/menu/drops/rates/very_high"}},{"text":"  ","color":"#A6B9DE"},{"translate":"Enchanted Mob spawning rates","color":"#EBF1D2"}]

execute if score #drop.rates tepext.manager matches 3 run tellraw @s ["",{"text":"◀","color":"gold","clickEvent":{"action":"run_command","value":"/function teplus_exten:manager/menu/drops/rates/high"}},{"translate":"[VERY HIGH]","color":"#D9F4E2"},{"text":"▶","color":"gray"},{"text":"  ","color":"#A6B9DE"},{"translate":"Enchanted Mob spawning rates","color":"#EBF1D2"}]

tellraw @s {"text":"\n"}

#Return button
tellraw @s [{"translate":"[← Return]","italic":true,"color":"#ED6451","clickEvent":{"action":"run_command","value":"/function teplus_exten:manager/menu"}}]

tellraw @s {"text":"                                                                                ","color":"#67DE83","strikethrough":true}


playsound minecraft:ui.button.click player @s ~ ~ ~ 0.5 1.75