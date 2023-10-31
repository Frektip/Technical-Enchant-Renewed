tellraw @s {"text":"\n"} 
tellraw @s {"text":"                                                                                ","color":"#67DE83","strikethrough":true} 
tellraw @s ["",{"translate":"                                MOB SPAWNING","color":"#47EFAD"}] 
tellraw @s {"text":"                                                                                ","color":"#67DE83","strikethrough":true}

#Enabled/Disabled
execute if score $Spawn tepext.manager matches 0 run tellraw @s ["",{"translate":"(Enabled)","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to change"}]},"clickEvent":{"action":"run_command","value":"/function teplus_exten:manager/menu/spawn/off"}},{"text":" "},{"translate":"Mobs can spawn wearing armor and other items with custom enchantments. They can't spawn with netherite gear.","color":"gray"}]

execute if score $Spawn tepext.manager matches 1 run tellraw @s ["",{"translate":"(Disabled)","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to change"}]},"clickEvent":{"action":"run_command","value":"/function teplus_exten:manager/menu/spawn/on"}},{"text":" "},{"translate":"Mobs can spawn wearing armor and other items with custom enchantments. They can't spawn with netherite gear.","color":"gray"}]

tellraw @s {"text":"\n"}

#------------------Helmet------------------#
execute if score #spwdrop_hel tepext.manager matches ..-1 run tellraw @s ["",{"translate":"- Helmet drop chance:","color":"#4A96B5"},{"text":"  "},{"translate":"Vanilla (very low)","color":"#D1DBEE"},{"text":"   [✎","color":"#567EC8"},{"translate":"Edit","color":"#567EC8","clickEvent":{"action":"suggest_command","value":"/scoreboard players set #spwdrop_hel tepext.manager <number>"}},{"text":"]","color":"#567EC8"}]

execute if score #spwdrop_hel tepext.manager matches 0.. run tellraw @s ["",{"translate":"- Helmet drop chance:","color":"#4A96B5"},{"text":"  "},{"score":{"name":"#spwdrop_hel","objective":"tepext.manager"},"color":"#D1DBEE"},{"text":"%","color":"#D1DBEE"},{"text":"   [✎","color":"#567EC8"},{"translate":"Edit","color":"#567EC8","clickEvent":{"action":"suggest_command","value":"/scoreboard players set #spwdrop_hel tepext.manager <number>"}},{"text":"]","color":"#567EC8"}]


#------------------Chestplate------------------#
execute if score #spwdrop_cht tepext.manager matches ..-1 run tellraw @s ["",{"translate":"- Chestplate drop chance:","color":"#4A96B5"},{"text":"  "},{"translate":"Vanilla (very low)","color":"#D1DBEE"},{"text":"   [✎","color":"#567EC8"},{"translate":"Edit","color":"#567EC8","clickEvent":{"action":"suggest_command","value":"/scoreboard players set #spwdrop_cht tepext.manager <number>"}},{"text":"]","color":"#567EC8"}]

execute if score #spwdrop_cht tepext.manager matches 0.. run tellraw @s ["",{"translate":"- Chestplate drop chance:","color":"#4A96B5"},{"text":"  "},{"score":{"name":"#spwdrop_cht","objective":"tepext.manager"},"color":"#D1DBEE"},{"text":"%","color":"#D1DBEE"},{"text":"   [✎","color":"#567EC8"},{"translate":"Edit","color":"#567EC8","clickEvent":{"action":"suggest_command","value":"/scoreboard players set #spwdrop_cht tepext.manager <number>"}},{"text":"]","color":"#567EC8"}]


#------------------Leggings------------------#
execute if score #spwdrop_leg tepext.manager matches ..-1 run tellraw @s ["",{"translate":"- Leggings drop chance:","color":"#4A96B5"},{"text":"  "},{"translate":"Vanilla (very low)","color":"#D1DBEE"},{"text":"   [✎","color":"#567EC8"},{"translate":"Edit","color":"#567EC8","clickEvent":{"action":"suggest_command","value":"/scoreboard players set #spwdrop_leg tepext.manager <number>"}},{"text":"]","color":"#567EC8"}]

execute if score #spwdrop_leg tepext.manager matches 0.. run tellraw @s ["",{"translate":"- Leggings drop chance:","color":"#4A96B5"},{"text":"  "},{"score":{"name":"#spwdrop_leg","objective":"tepext.manager"},"color":"#D1DBEE"},{"text":"%","color":"#D1DBEE"},{"text":"   [✎","color":"#567EC8"},{"translate":"Edit","color":"#567EC8","clickEvent":{"action":"suggest_command","value":"/scoreboard players set #spwdrop_leg tepext.manager <number>"}},{"text":"]","color":"#567EC8"}]


#------------------Boots------------------#
execute if score #spwdrop_feet tepext.manager matches ..-1 run tellraw @s ["",{"translate":"- Boots drop chance:","color":"#4A96B5"},{"text":"  "},{"translate":"Vanilla (very low)","color":"#D1DBEE"},{"text":"   [✎","color":"#567EC8"},{"translate":"Edit","color":"#567EC8","clickEvent":{"action":"suggest_command","value":"/scoreboard players set #spwdrop_feet tepext.manager <number>"}},{"text":"]","color":"#567EC8"}]

execute if score #spwdrop_feet tepext.manager matches 0.. run tellraw @s ["",{"translate":"- Boots drop chance:","color":"#4A96B5"},{"text":"  "},{"score":{"name":"#spwdrop_feet","objective":"tepext.manager"},"color":"#D1DBEE"},{"text":"%","color":"#D1DBEE"},{"text":"   [✎","color":"#567EC8"},{"translate":"Edit","color":"#567EC8","clickEvent":{"action":"suggest_command","value":"/scoreboard players set #spwdrop_feet tepext.manager <number>"}},{"text":"]","color":"#567EC8"}]


#------------------Mainhand------------------#
execute if score #spwdrop_mnh tepext.manager matches ..-1 run tellraw @s ["",{"translate":"- Mainhand drop chance:","color":"#4A96B5"},{"text":"  "},{"translate":"Vanilla (very low)","color":"#D1DBEE"},{"text":"   [✎","color":"#567EC8"},{"translate":"Edit","color":"#567EC8","clickEvent":{"action":"suggest_command","value":"/scoreboard players set #spwdrop_mnh tepext.manager <number>"}},{"text":"]","color":"#567EC8"}]

execute if score #spwdrop_mnh tepext.manager matches 0.. run tellraw @s ["",{"translate":"- Mainhand drop chance:","color":"#4A96B5"},{"text":"  "},{"score":{"name":"#spwdrop_mnh","objective":"tepext.manager"},"color":"#D1DBEE"},{"text":"%","color":"#D1DBEE"},{"text":"   [✎","color":"#567EC8"},{"translate":"Edit","color":"#567EC8","clickEvent":{"action":"suggest_command","value":"/scoreboard players set #spwdrop_mnh tepext.manager <number>"}},{"text":"]","color":"#567EC8"}]


#------------------Offhand------------------#
execute if score #spwdrop_ofh tepext.manager matches ..-1 run tellraw @s ["",{"translate":"- Offhand drop chance:","color":"#4A96B5"},{"text":"  "},{"translate":"Vanilla (very low)","color":"#D1DBEE"},{"text":"   [✎","color":"#567EC8"},{"translate":"Edit","color":"#567EC8","clickEvent":{"action":"suggest_command","value":"/scoreboard players set #spwdrop_ofh tepext.manager <number>"}},{"text":"]","color":"#567EC8"}]

execute if score #spwdrop_ofh tepext.manager matches 0.. run tellraw @s ["",{"translate":"- Offhand drop chance:","color":"#4A96B5"},{"text":"  "},{"score":{"name":"#spwdrop_ofh","objective":"tepext.manager"},"color":"#D1DBEE"},{"text":"%","color":"#D1DBEE"},{"text":"   [✎","color":"#567EC8"},{"translate":"Edit","color":"#567EC8","clickEvent":{"action":"suggest_command","value":"/scoreboard players set #spwdrop_ofh tepext.manager <number>"}},{"text":"]","color":"#567EC8"}]
tellraw @s {"text":"\n"}


#Return button
tellraw @s [{"translate":"[← Return]","italic":true,"color":"#ED6451","clickEvent":{"action":"run_command","value":"/function teplus_exten:manager/menu"}}]

tellraw @s {"text":"                                                                                ","color":"#67DE83","strikethrough":true}


playsound ui.button.click player @s ~ ~ ~ 0.5 1.75