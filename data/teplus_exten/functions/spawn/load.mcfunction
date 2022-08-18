schedule clear teplus_exten:spawn/main
execute if score $Spawn tepext.manager matches 0 run function teplus_exten:spawn/main
