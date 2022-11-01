execute if block ~ ~1 ~ lectern if entity @s[tag=!set_station] run function teplus_exten:villagers/as_charged_bookshelf/set_station

execute unless block ~ ~1 ~ lectern if entity @s[tag=set_station] run function teplus_exten:villagers/as_charged_bookshelf/reset_value