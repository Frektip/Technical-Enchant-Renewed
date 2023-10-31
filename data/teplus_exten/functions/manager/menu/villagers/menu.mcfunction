tellraw @s {"text":"\n"} 
tellraw @s {"text":"                                                                                ","color":"#67DE83","strikethrough":true} 
tellraw @s ["",{"translate":"                           ADVANCED ENCHANTERS","color":"#47EFAD"}] 
tellraw @s {"text":"                                                                                ","color":"#67DE83","strikethrough":true}

#Enabled/Disabled
execute if score $Villager tepext.manager matches 0 run tellraw @s ["",{"translate":"(Enabled)","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to change"}]},"clickEvent":{"action":"run_command","value":"/function teplus_exten:manager/menu/villagers/off"}},{"text":" "},{"translate":"Allow librarians to convert into an Advanced Enchanter.","color":"gray"}]

execute if score $Villager tepext.manager matches 1 run tellraw @s ["",{"translate":"(Disabled)","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to change"}]},"clickEvent":{"action":"run_command","value":"/function teplus_exten:manager/menu/villagers/on"}},{"text":" "},{"translate":"Allow librarians to convert into an Advanced Enchanter.","color":"gray"}]

tellraw @s {"text":"\n"}

#------------------Sell special items------------------#
execute if score #vill.slspc tepext.manager matches 0 run tellraw @s ["",{"text":"[\u2714]","color":"green"},{"text":"/","color":"white"},{"text":"[\u274c]","color":"gray","hoverEvent":{"action":"show_text","contents":[{"text":"Click to disable"}]},"clickEvent":{"action":"run_command","value":"/function teplus_exten:manager/menu/villagers/sell_special/off"}},{"text":"  ","color":"#A6B9DE"},{"translate":"Can sell special items at level 5","color":"#EBF1D2"}]

execute if score #vill.slspc tepext.manager matches 1 run tellraw @s ["",{"text":"[\u2714]","color":"gray","hoverEvent":{"action":"show_text","contents":[{"text":"Click to enable"}]},"clickEvent":{"action":"run_command","value":"/function teplus_exten:manager/menu/villagers/sell_special/on"}},{"text":"/","color":"white"},{"text":"[\u274c]","color":"red"},{"text":"  ","color":"#A6B9DE"},{"translate":"Can sell special items at level 5","color":"#EBF1D2"}]

#------------------Renewable Special Items------------------#
execute if score #vill.renws tepext.manager matches 0 run tellraw @s ["",{"text":"[\u2714]","color":"green"},{"text":"/","color":"white"},{"text":"[\u274c]","color":"gray","hoverEvent":{"action":"show_text","contents":[{"text":"Click to disable"}]},"clickEvent":{"action":"run_command","value":"/function teplus_exten:manager/menu/villagers/renewable/off"}},{"text":"  ","color":"#A6B9DE"},{"translate":"Make special items renewable (restock)","color":"#EBF1D2"}]

execute if score #vill.renws tepext.manager matches 1 run tellraw @s ["",{"text":"[\u2714]","color":"gray","hoverEvent":{"action":"show_text","contents":[{"text":"Click to enable"}]},"clickEvent":{"action":"run_command","value":"/function teplus_exten:manager/menu/villagers/renewable/on"}},{"text":"/","color":"white"},{"text":"[\u274c]","color":"red"},{"text":"  ","color":"#A6B9DE"},{"translate":"Make special items renewable (restock)","color":"#EBF1D2"}]

#------------------Can offer discounts------------------#
execute if score #vill.dsnt tepext.manager matches 0 run tellraw @s ["",{"text":"[\u2714]","color":"green"},{"text":"/","color":"white"},{"text":"[\u274c]","color":"gray","hoverEvent":{"action":"show_text","contents":[{"text":"Click to disable"}]},"clickEvent":{"action":"run_command","value":"/function teplus_exten:manager/menu/villagers/discounts/off"}},{"text":"  ","color":"#A6B9DE"},{"translate":"Can offer discounts like vanilla","color":"#EBF1D2"}]

execute if score #vill.dsnt tepext.manager matches 1 run tellraw @s ["",{"text":"[\u2714]","color":"gray","hoverEvent":{"action":"show_text","contents":[{"text":"Click to enable"}]},"clickEvent":{"action":"run_command","value":"/function teplus_exten:manager/menu/villagers/discounts/on"}},{"text":"/","color":"white"},{"text":"[\u274c]","color":"red"},{"text":"  ","color":"#A6B9DE"},{"translate":"Can offer discounts like vanilla","color":"#EBF1D2"}]

#------------------Can trade more than one level------------------#
execute if score #vill.anylvl tepext.manager matches 0 run tellraw @s ["",{"text":"[\u2714]","color":"green"},{"text":"/","color":"white"},{"text":"[\u274c]","color":"gray","hoverEvent":{"action":"show_text","contents":[{"text":"Click to disable"}]},"clickEvent":{"action":"run_command","value":"/function teplus_exten:manager/menu/villagers/level/off"}},{"text":"  ","color":"#A6B9DE"},{"translate":"Are allowed to sell enchantments at a higher level","color":"#EBF1D2"}]

execute if score #vill.anylvl tepext.manager matches 1 run tellraw @s ["",{"text":"[\u2714]","color":"gray","hoverEvent":{"action":"show_text","contents":[{"text":"Click to enable"}]},"clickEvent":{"action":"run_command","value":"/function teplus_exten:manager/menu/villagers/level/on"}},{"text":"/","color":"white"},{"text":"[\u274c]","color":"red"},{"text":"  ","color":"#A6B9DE"},{"translate":"Are allowed to sell enchantments at a higher level","color":"#EBF1D2"}]



tellraw @s {"text":"\n"}

#Return button
tellraw @s [{"translate":"[← Return]","italic":true,"color":"#ED6451","clickEvent":{"action":"run_command","value":"/function teplus_exten:manager/menu"}}]

tellraw @s {"text":"                                                                                ","color":"#67DE83","strikethrough":true}


playsound ui.button.click player @s ~ ~ ~ 0.5 1.75