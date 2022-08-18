schedule clear teplus_exten:drops/main_3min
schedule clear teplus_exten:drops/main_20t
execute if score $Drops tepext.manager matches 0 run function teplus_exten:drops/init
