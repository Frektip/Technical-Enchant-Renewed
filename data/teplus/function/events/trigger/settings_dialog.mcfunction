execute if score @s teplus.trigger.settings_dialogs matches 1 run function teplus:admin/settings/gameplay/get_options
execute if score @s teplus.trigger.settings_dialogs matches 2 run function teplus:admin/settings/enchantments/list/init
execute if score @s teplus.trigger.settings_dialogs matches 3 run dialog show @s teplus:extensions_menu

scoreboard players set @s teplus.trigger.settings_dialogs 0