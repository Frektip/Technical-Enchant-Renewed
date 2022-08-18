tellraw @s {"text":"\n"} 
tellraw @s {"text":"                                                                                ","color":"#67DE83","strikethrough":true} 
tellraw @s ["",{"translate":"                       Exceed Enchantment Level","color":"#47EFAD"}] 
tellraw @s {"text":"                                                                                ","color":"#67DE83","strikethrough":true}

#Enabled/Disabled
execute if score $Exceed tepext.manager matches 0 run tellraw @s ["",{"translate":"(Enabled)","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"Clic here to change"}]},"clickEvent":{"action":"run_command","value":"/function teplus_exten:manager/menu/exceed/off"}},{"text":" "},{"translate":"Use the Technical Anvil to surpass the vanilla enchantment level for:","color":"gray"},{"text":"\n"}]

execute if score $Exceed tepext.manager matches 1 run tellraw @s ["",{"translate":"(Disabled)","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"Clic here to change"}]},"clickEvent":{"action":"run_command","value":"/function teplus_exten:manager/menu/exceed/on"}},{"text":" "},{"translate":"Use the Technical Anvil to surpass the vanilla enchantment level for:","color":"gray"},{"text":"\n"}]



##=====================EFFICIENCY=====================##
execute if score #ecd.effi tepext.manager matches 6 run tellraw @s ["",{"translate":"Max level:","color":"#B5C2E7"},{"text":"  "},{"text":"◀","color":"gray"},{"text":"[6]","color":"#8FD26C"},{"text":"▶","color":"gold","clickEvent":{"action":"run_command","value":"/function teplus_exten:manager/menu/exceed/efficiency/7"}},{"text":"  ------------>   ","color":"#9CC3E1"},{"translate":"enchantment.minecraft.efficiency","color":"#AD9AD6"}]

execute if score #ecd.effi tepext.manager matches 7 run tellraw @s ["",{"translate":"Max level:","color":"#B5C2E7"},{"text":"  "},{"text":"◀","color":"gold","clickEvent":{"action":"run_command","value":"/function teplus_exten:manager/menu/exceed/efficiency/6"}},{"text":"[7]","color":"#8FD26C"},{"text":"▶","color":"gold","clickEvent":{"action":"run_command","value":"/function teplus_exten:manager/menu/exceed/efficiency/8"}},{"text":"  ------------>   ","color":"#9CC3E1"},{"translate":"enchantment.minecraft.efficiency","color":"#AD9AD6"}]

execute if score #ecd.effi tepext.manager matches 8 run tellraw @s ["",{"translate":"Max level:","color":"#B5C2E7"},{"text":"  "},{"text":"◀","color":"gold","clickEvent":{"action":"run_command","value":"/function teplus_exten:manager/menu/exceed/efficiency/7"}},{"text":"[8]","color":"#8FD26C"},{"text":"▶","color":"gold","clickEvent":{"action":"run_command","value":"/function teplus_exten:manager/menu/exceed/efficiency/9"}},{"text":"  ------------>   ","color":"#9CC3E1"},{"translate":"enchantment.minecraft.efficiency","color":"#AD9AD6"}]

execute if score #ecd.effi tepext.manager matches 9 run tellraw @s ["",{"translate":"Max level:","color":"#B5C2E7"},{"text":"  "},{"text":"◀","color":"gold","clickEvent":{"action":"run_command","value":"/function teplus_exten:manager/menu/exceed/efficiency/8"}},{"text":"[9]","color":"#8FD26C"},{"text":"▶","color":"gold","clickEvent":{"action":"run_command","value":"/function teplus_exten:manager/menu/exceed/efficiency/10"}},{"text":"  ------------>   ","color":"#9CC3E1"},{"translate":"enchantment.minecraft.efficiency","color":"#AD9AD6"}]

execute if score #ecd.effi tepext.manager matches 10 run tellraw @s ["",{"translate":"Max level:","color":"#B5C2E7"},{"text":"  "},{"text":"◀","color":"gold","clickEvent":{"action":"run_command","value":"/function teplus_exten:manager/menu/exceed/efficiency/9"}},{"text":"[10]","color":"#8FD26C"},{"text":"▶","color":"gray"},{"text":"  ------------>   ","color":"#9CC3E1"},{"translate":"enchantment.minecraft.efficiency","color":"#AD9AD6"}]


##=====================FEATHER FALLING=====================##
execute if score #ecd.fefll tepext.manager matches 5 run tellraw @s ["",{"translate":"Max level:","color":"#B5C2E7"},{"text":"  "},{"text":"◀","color":"gray"},{"text":"[5]","color":"#8FD26C"},{"text":"▶","color":"gold","clickEvent":{"action":"run_command","value":"/function teplus_exten:manager/menu/exceed/feather_falling/6"}},{"text":"  ------------>   ","color":"#9CC3E1"},{"translate":"enchantment.minecraft.feather_falling","color":"#AD9AD6"}]

execute if score #ecd.fefll tepext.manager matches 6 run tellraw @s ["",{"translate":"Max level:","color":"#B5C2E7"},{"text":"  "},{"text":"◀","color":"gold","clickEvent":{"action":"run_command","value":"/function teplus_exten:manager/menu/exceed/feather_falling/5"}},{"text":"[6]","color":"#8FD26C"},{"text":"▶","color":"gold","clickEvent":{"action":"run_command","value":"/function teplus_exten:manager/menu/exceed/feather_falling/7"}},{"text":"  ------------>   ","color":"#9CC3E1"},{"translate":"enchantment.minecraft.feather_falling","color":"#AD9AD6"}]

execute if score #ecd.fefll tepext.manager matches 7 run tellraw @s ["",{"translate":"Max level:","color":"#B5C2E7"},{"text":"  "},{"text":"◀","color":"gold","clickEvent":{"action":"run_command","value":"/function teplus_exten:manager/menu/exceed/feather_falling/6"}},{"text":"[7]","color":"#8FD26C"},{"text":"▶","color":"gray"},{"text":"  ------------>   ","color":"#9CC3E1"},{"translate":"enchantment.minecraft.feather_falling","color":"#AD9AD6"}]


##=====================FIRE ASPECT=====================##
execute if score #ecd.frap tepext.manager matches 3 run tellraw @s ["",{"translate":"Max level:","color":"#B5C2E7"},{"text":"  "},{"text":"◀","color":"gray"},{"text":"[3]","color":"#8FD26C"},{"text":"▶","color":"gold","clickEvent":{"action":"run_command","value":"/function teplus_exten:manager/menu/exceed/fire_aspect/4"}},{"text":"  ------------>   ","color":"#9CC3E1"},{"translate":"enchantment.minecraft.fire_aspect","color":"#AD9AD6"}]

execute if score #ecd.frap tepext.manager matches 4 run tellraw @s ["",{"translate":"Max level:","color":"#B5C2E7"},{"text":"  "},{"text":"◀","color":"gold","clickEvent":{"action":"run_command","value":"/function teplus_exten:manager/menu/exceed/fire_aspect/3"}},{"text":"[4]","color":"#8FD26C"},{"text":"▶","color":"gold","clickEvent":{"action":"run_command","value":"/function teplus_exten:manager/menu/exceed/fire_aspect/5"}},{"text":"  ------------>   ","color":"#9CC3E1"},{"translate":"enchantment.minecraft.fire_aspect","color":"#AD9AD6"}]

execute if score #ecd.frap tepext.manager matches 5 run tellraw @s ["",{"translate":"Max level:","color":"#B5C2E7"},{"text":"  "},{"text":"◀","color":"gold","clickEvent":{"action":"run_command","value":"/function teplus_exten:manager/menu/exceed/fire_aspect/4"}},{"text":"[5]","color":"#8FD26C"},{"text":"▶","color":"gray"},{"text":"  ------------>   ","color":"#9CC3E1"},{"translate":"enchantment.minecraft.fire_aspect","color":"#AD9AD6"}]


##=====================FORTUNE=====================##
execute if score #ecd.fort tepext.manager matches 4 run tellraw @s ["",{"translate":"Max level:","color":"#B5C2E7"},{"text":"  "},{"text":"◀","color":"gray"},{"text":"[4]","color":"#8FD26C"},{"text":"▶","color":"gold","clickEvent":{"action":"run_command","value":"/function teplus_exten:manager/menu/exceed/fortune/5"}},{"text":"  ------------>   ","color":"#9CC3E1"},{"translate":"enchantment.minecraft.fortune","color":"#AD9AD6"}]

execute if score #ecd.fort tepext.manager matches 5 run tellraw @s ["",{"translate":"Max level:","color":"#B5C2E7"},{"text":"  "},{"text":"◀","color":"gold","clickEvent":{"action":"run_command","value":"/function teplus_exten:manager/menu/exceed/fortune/4"}},{"text":"[5]","color":"#8FD26C"},{"text":"▶","color":"gold","clickEvent":{"action":"run_command","value":"/function teplus_exten:manager/menu/exceed/fortune/6"}},{"text":"  ------------>   ","color":"#9CC3E1"},{"translate":"enchantment.minecraft.fortune","color":"#AD9AD6"}]

execute if score #ecd.fort tepext.manager matches 6 run tellraw @s ["",{"translate":"Max level:","color":"#B5C2E7"},{"text":"  "},{"text":"◀","color":"gold","clickEvent":{"action":"run_command","value":"/function teplus_exten:manager/menu/exceed/fortune/5"}},{"text":"[6]","color":"#8FD26C"},{"text":"▶","color":"gold","clickEvent":{"action":"run_command","value":"/function teplus_exten:manager/menu/exceed/fortune/7"}},{"text":"  ------------>   ","color":"#9CC3E1"},{"translate":"enchantment.minecraft.fortune","color":"#AD9AD6"}]

execute if score #ecd.fort tepext.manager matches 7 run tellraw @s ["",{"translate":"Max level:","color":"#B5C2E7"},{"text":"  "},{"text":"◀","color":"gold","clickEvent":{"action":"run_command","value":"/function teplus_exten:manager/menu/exceed/fortune/6"}},{"text":"[7]","color":"#8FD26C"},{"text":"▶","color":"gray"},{"text":"  ------------>   ","color":"#9CC3E1"},{"translate":"enchantment.minecraft.fortune","color":"#AD9AD6"}]


##=====================IMPALING=====================##
execute if score #ecd.impl tepext.manager matches 6 run tellraw @s ["",{"translate":"Max level:","color":"#B5C2E7"},{"text":"  "},{"text":"◀","color":"gray"},{"text":"[6]","color":"#8FD26C"},{"text":"▶","color":"gold","clickEvent":{"action":"run_command","value":"/function teplus_exten:manager/menu/exceed/impaling/7"}},{"text":"  ------------>   ","color":"#9CC3E1"},{"translate":"enchantment.minecraft.impaling","color":"#AD9AD6"}]

execute if score #ecd.impl tepext.manager matches 7 run tellraw @s ["",{"translate":"Max level:","color":"#B5C2E7"},{"text":"  "},{"text":"◀","color":"gold","clickEvent":{"action":"run_command","value":"/function teplus_exten:manager/menu/exceed/impaling/6"}},{"text":"[7]","color":"#8FD26C"},{"text":"▶","color":"gold","clickEvent":{"action":"run_command","value":"/function teplus_exten:manager/menu/exceed/impaling/8"}},{"text":"  ------------>   ","color":"#9CC3E1"},{"translate":"enchantment.minecraft.impaling","color":"#AD9AD6"}]

execute if score #ecd.impl tepext.manager matches 8 run tellraw @s ["",{"translate":"Max level:","color":"#B5C2E7"},{"text":"  "},{"text":"◀","color":"gold","clickEvent":{"action":"run_command","value":"/function teplus_exten:manager/menu/exceed/impaling/7"}},{"text":"[8]","color":"#8FD26C"},{"text":"▶","color":"gold","clickEvent":{"action":"run_command","value":"/function teplus_exten:manager/menu/exceed/impaling/9"}},{"text":"  ------------>   ","color":"#9CC3E1"},{"translate":"enchantment.minecraft.impaling","color":"#AD9AD6"}]

execute if score #ecd.impl tepext.manager matches 9 run tellraw @s ["",{"translate":"Max level:","color":"#B5C2E7"},{"text":"  "},{"text":"◀","color":"gold","clickEvent":{"action":"run_command","value":"/function teplus_exten:manager/menu/exceed/impaling/8"}},{"text":"[9]","color":"#8FD26C"},{"text":"▶","color":"gold","clickEvent":{"action":"run_command","value":"/function teplus_exten:manager/menu/exceed/impaling/10"}},{"text":"  ------------>   ","color":"#9CC3E1"},{"translate":"enchantment.minecraft.impaling","color":"#AD9AD6"}]

execute if score #ecd.impl tepext.manager matches 10 run tellraw @s ["",{"translate":"Max level:","color":"#B5C2E7"},{"text":"  "},{"text":"◀","color":"gold","clickEvent":{"action":"run_command","value":"/function teplus_exten:manager/menu/exceed/impaling/9"}},{"text":"[10]","color":"#8FD26C"},{"text":"▶","color":"gray"},{"text":"  ------------>   ","color":"#9CC3E1"},{"translate":"enchantment.minecraft.impaling","color":"#AD9AD6"}]


##=====================KNOCKBACK=====================##
execute if score #ecd.knbk tepext.manager matches 3 run tellraw @s ["",{"translate":"Max level:","color":"#B5C2E7"},{"text":"  "},{"text":"◀","color":"gray"},{"text":"[3]","color":"#8FD26C"},{"text":"▶","color":"gold","clickEvent":{"action":"run_command","value":"/function teplus_exten:manager/menu/exceed/knockback/4"}},{"text":"  ------------>   ","color":"#9CC3E1"},{"translate":"enchantment.minecraft.knockback","color":"#AD9AD6"}]

execute if score #ecd.knbk tepext.manager matches 4 run tellraw @s ["",{"translate":"Max level:","color":"#B5C2E7"},{"text":"  "},{"text":"◀","color":"gold","clickEvent":{"action":"run_command","value":"/function teplus_exten:manager/menu/exceed/knockback/3"}},{"text":"[4]","color":"#8FD26C"},{"text":"▶","color":"gold","clickEvent":{"action":"run_command","value":"/function teplus_exten:manager/menu/exceed/knockback/5"}},{"text":"  ------------>   ","color":"#9CC3E1"},{"translate":"enchantment.minecraft.knockback","color":"#AD9AD6"}]

execute if score #ecd.knbk tepext.manager matches 5 run tellraw @s ["",{"translate":"Max level:","color":"#B5C2E7"},{"text":"  "},{"text":"◀","color":"gold","clickEvent":{"action":"run_command","value":"/function teplus_exten:manager/menu/exceed/knockback/4"}},{"text":"[5]","color":"#8FD26C"},{"text":"▶","color":"gray"},{"text":"  ------------>   ","color":"#9CC3E1"},{"translate":"enchantment.minecraft.knockback","color":"#AD9AD6"}]



##=====================LOOTING=====================##
execute if score #ecd.loot tepext.manager matches 4 run tellraw @s ["",{"translate":"Max level:","color":"#B5C2E7"},{"text":"  "},{"text":"◀","color":"gray"},{"text":"[4]","color":"#8FD26C"},{"text":"▶","color":"gold","clickEvent":{"action":"run_command","value":"/function teplus_exten:manager/menu/exceed/looting/5"}},{"text":"  ------------>   ","color":"#9CC3E1"},{"translate":"enchantment.minecraft.looting","color":"#AD9AD6"}]

execute if score #ecd.loot tepext.manager matches 5 run tellraw @s ["",{"translate":"Max level:","color":"#B5C2E7"},{"text":"  "},{"text":"◀","color":"gold","clickEvent":{"action":"run_command","value":"/function teplus_exten:manager/menu/exceed/looting/4"}},{"text":"[5]","color":"#8FD26C"},{"text":"▶","color":"gold","clickEvent":{"action":"run_command","value":"/function teplus_exten:manager/menu/exceed/looting/6"}},{"text":"  ------------>   ","color":"#9CC3E1"},{"translate":"enchantment.minecraft.looting","color":"#AD9AD6"}]

execute if score #ecd.loot tepext.manager matches 6 run tellraw @s ["",{"translate":"Max level:","color":"#B5C2E7"},{"text":"  "},{"text":"◀","color":"gold","clickEvent":{"action":"run_command","value":"/function teplus_exten:manager/menu/exceed/looting/5"}},{"text":"[6]","color":"#8FD26C"},{"text":"▶","color":"gold","clickEvent":{"action":"run_command","value":"/function teplus_exten:manager/menu/exceed/looting/7"}},{"text":"  ------------>   ","color":"#9CC3E1"},{"translate":"enchantment.minecraft.looting","color":"#AD9AD6"}]

execute if score #ecd.loot tepext.manager matches 7 run tellraw @s ["",{"translate":"Max level:","color":"#B5C2E7"},{"text":"  "},{"text":"◀","color":"gold","clickEvent":{"action":"run_command","value":"/function teplus_exten:manager/menu/exceed/looting/6"}},{"text":"[7]","color":"#8FD26C"},{"text":"▶","color":"gray"},{"text":"  ------------>   ","color":"#9CC3E1"},{"translate":"enchantment.minecraft.looting","color":"#AD9AD6"}]


##=====================LUCK OF THE SEA=====================##
execute if score #ecd.lksea tepext.manager matches 4 run tellraw @s ["",{"translate":"Max level:","color":"#B5C2E7"},{"text":"  "},{"text":"◀","color":"gray"},{"text":"[4]","color":"#8FD26C"},{"text":"▶","color":"gold","clickEvent":{"action":"run_command","value":"/function teplus_exten:manager/menu/exceed/luck_of_the_sea/5"}},{"text":"  ------------>   ","color":"#9CC3E1"},{"translate":"enchantment.minecraft.luck_of_the_sea","color":"#AD9AD6"}]

execute if score #ecd.lksea tepext.manager matches 5 run tellraw @s ["",{"translate":"Max level:","color":"#B5C2E7"},{"text":"  "},{"text":"◀","color":"gold","clickEvent":{"action":"run_command","value":"/function teplus_exten:manager/menu/exceed/luck_of_the_sea/4"}},{"text":"[5]","color":"#8FD26C"},{"text":"▶","color":"gold","clickEvent":{"action":"run_command","value":"/function teplus_exten:manager/menu/exceed/luck_of_the_sea/6"}},{"text":"  ------------>   ","color":"#9CC3E1"},{"translate":"enchantment.minecraft.luck_of_the_sea","color":"#AD9AD6"}]

execute if score #ecd.lksea tepext.manager matches 6 run tellraw @s ["",{"translate":"Max level:","color":"#B5C2E7"},{"text":"  "},{"text":"◀","color":"gold","clickEvent":{"action":"run_command","value":"/function teplus_exten:manager/menu/exceed/luck_of_the_sea/5"}},{"text":"[6]","color":"#8FD26C"},{"text":"▶","color":"gold","clickEvent":{"action":"run_command","value":"/function teplus_exten:manager/menu/exceed/luck_of_the_sea/7"}},{"text":"  ------------>   ","color":"#9CC3E1"},{"translate":"enchantment.minecraft.luck_of_the_sea","color":"#AD9AD6"}]

execute if score #ecd.lksea tepext.manager matches 7 run tellraw @s ["",{"translate":"Max level:","color":"#B5C2E7"},{"text":"  "},{"text":"◀","color":"gold","clickEvent":{"action":"run_command","value":"/function teplus_exten:manager/menu/exceed/luck_of_the_sea/6"}},{"text":"[7]","color":"#8FD26C"},{"text":"▶","color":"gold","clickEvent":{"action":"run_command","value":"/function teplus_exten:manager/menu/exceed/luck_of_the_sea/8"}},{"text":"  ------------>   ","color":"#9CC3E1"},{"translate":"enchantment.minecraft.luck_of_the_sea","color":"#AD9AD6"}]

execute if score #ecd.lksea tepext.manager matches 8 run tellraw @s ["",{"translate":"Max level:","color":"#B5C2E7"},{"text":"  "},{"text":"◀","color":"gold","clickEvent":{"action":"run_command","value":"/function teplus_exten:manager/menu/exceed/luck_of_the_sea/7"}},{"text":"[8]","color":"#8FD26C"},{"text":"▶","color":"gold","clickEvent":{"action":"run_command","value":"/function teplus_exten:manager/menu/exceed/luck_of_the_sea/9"}},{"text":"  ------------>   ","color":"#9CC3E1"},{"translate":"enchantment.minecraft.luck_of_the_sea","color":"#AD9AD6"}]

execute if score #ecd.lksea tepext.manager matches 9 run tellraw @s ["",{"translate":"Max level:","color":"#B5C2E7"},{"text":"  "},{"text":"◀","color":"gold","clickEvent":{"action":"run_command","value":"/function teplus_exten:manager/menu/exceed/luck_of_the_sea/8"}},{"text":"[9]","color":"#8FD26C"},{"text":"▶","color":"gold","clickEvent":{"action":"run_command","value":"/function teplus_exten:manager/menu/exceed/luck_of_the_sea/10"}},{"text":"  ------------>   ","color":"#9CC3E1"},{"translate":"enchantment.minecraft.luck_of_the_sea","color":"#AD9AD6"}]

execute if score #ecd.lksea tepext.manager matches 10 run tellraw @s ["",{"translate":"Max level:","color":"#B5C2E7"},{"text":"  "},{"text":"◀","color":"gold","clickEvent":{"action":"run_command","value":"/function teplus_exten:manager/menu/exceed/luck_of_the_sea/9"}},{"text":"[10]","color":"#8FD26C"},{"text":"▶","color":"gray"},{"text":"  ------------>   ","color":"#9CC3E1"},{"translate":"enchantment.minecraft.luck_of_the_sea","color":"#AD9AD6"}]


##=====================LURE=====================##
execute if score #ecd.lure tepext.manager matches 4 run tellraw @s ["",{"translate":"Max level:","color":"#B5C2E7"},{"text":"  "},{"text":"◀","color":"gray"},{"text":"[4]","color":"#8FD26C"},{"text":"▶","color":"gold","clickEvent":{"action":"run_command","value":"/function teplus_exten:manager/menu/exceed/lure/5"}},{"text":"  ------------>   ","color":"#9CC3E1"},{"translate":"enchantment.minecraft.lure","color":"#AD9AD6"}]

execute if score #ecd.lure tepext.manager matches 5 run tellraw @s ["",{"translate":"Max level:","color":"#B5C2E7"},{"text":"  "},{"text":"◀","color":"gold","clickEvent":{"action":"run_command","value":"/function teplus_exten:manager/menu/exceed/lure/4"}},{"text":"[5]","color":"#8FD26C"},{"text":"▶","color":"gray"},{"text":"  ------------>   ","color":"#9CC3E1"},{"translate":"enchantment.minecraft.lure","color":"#AD9AD6"}]




#Return button
tellraw @s [{"text":"\n"},{"translate":"[← Return]","italic":true,"color":"#ED6451","clickEvent":{"action":"run_command","value":"/function teplus_exten:manager/menu"}},{"text":"                                   "},{"translate":"[Next →]","italic":true,"color":"#D0F27B","clickEvent":{"action":"run_command","value":"/function teplus_exten:manager/menu/exceed/menu1"}}]

tellraw @s {"text":"                                                                                ","color":"#67DE83","strikethrough":true}


playsound minecraft:ui.button.click player @s ~ ~ ~ 0.5 1.75