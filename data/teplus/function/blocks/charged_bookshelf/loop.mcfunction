scoreboard players operation $temp teplus.block_id = @s teplus.block_id

# Check for villager lectern
execute if score $Villagers teplus.game_opts matches 0 run function teplus:blocks/charged_bookshelf/station/core

execute unless block ~ ~ ~ bookshelf run function teplus:blocks/charged_bookshelf/break