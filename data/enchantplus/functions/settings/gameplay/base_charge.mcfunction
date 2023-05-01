
tellraw @s ["",{"text":"====================================================","color":"#E97843"}]
tellraw @s ["",{"translate":"Hold in your mainhand the item you want to be the used to increase the Base Charge of an enchanting table. Then click on continue to make the change.","color":"white"},{"translate":" You can change it to whatever item you like!","color":"#EFDC90"}]
tellraw @s ["",{"text":"\n"}]
tellraw @s ["",{"text":"                 "},{"translate":"[Continue]","color":"#81EAB6","clickEvent":{"action":"run_command","value":"/function enchantplus:settings/gameplay/base_charge_change"}},{"text":"                  "},{"translate":"[Return]","color":"#81BAEA","clickEvent":{"action":"run_command","value":"/function enchantplus:settings/gameplay_settings/page3"}}]
tellraw @s ["",{"text":"====================================================","color":"#E97843"}]


playsound ui.button.click player @s ~ ~ ~ 0.5 1.75 