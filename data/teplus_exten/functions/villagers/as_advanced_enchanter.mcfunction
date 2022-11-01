execute if entity @s[tag=!tepxv.init] run function teplus_exten:villagers/new_aden

#When it levels up 3 times more
execute if entity @s[tag=!tepxv.trade1,nbt={VillagerData:{level:2}}] run function teplus_exten:villagers/generate_trades/level1
execute if entity @s[tag=!tepxv.trade2,nbt={VillagerData:{level:3}}] run function teplus_exten:villagers/generate_trades/level2
execute if entity @s[tag=!tepxv.trade3,nbt={VillagerData:{level:4}}] run function teplus_exten:villagers/generate_trades/level3/init

#An special level up for a special trade!
execute if entity @s[tag=!tepxv.tradend,nbt={VillagerData:{level:5}}] run function teplus_exten:villagers/generate_trades/special/chance
execute if score #vill.renws tepext.manager matches 1 if entity @s[tag=tepxv.special] run function teplus_exten:villagers/generate_trades/special/limit_trade

#If the villager reaches max level
execute if entity @s[tag=tepxv.tradend,tag=!tepxv.finish] run function teplus_exten:villagers/max_level

#In case the villager has a positive Gossip (prevent lowering the price)
execute if score #vill.dsnt tepext.manager matches 1 if entity @s[predicate=teplus_exten:villagers/can_discount] run function teplus_exten:villagers/no_discount

#In case it got reset (hasn't trade for once)
execute if entity @s[nbt={VillagerData:{profession:"minecraft:none"}}] run data modify entity @s CustomName set value '{"translate":"entity.minecraft.villager.librarian","color":"dark_gray","italic":false}'
tag @s[nbt={VillagerData:{profession:"minecraft:none"}}] remove tepxv.station_match