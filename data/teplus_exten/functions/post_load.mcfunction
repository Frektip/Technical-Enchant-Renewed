#Check if TE+ base datapack is installed
execute if score #teplus.version load.status matches 700.. run function #teplus_exten:load_all
execute unless score #teplus.version load.status matches 700.. run tellraw @a [{"text":"[","color":"gold"},{"text":"Error!","color":"dark_red","bold":true},{"text":" Couldn't load","color":"red","bold":false},{"text":" (Technical Enchant+ Extentions).","color":"#F08D3C","bold":false},{"text":"]","color":"gold"}]

