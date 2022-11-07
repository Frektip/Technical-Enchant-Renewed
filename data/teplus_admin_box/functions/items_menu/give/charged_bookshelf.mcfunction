execute if score @s tep.plid = @p tep.plid run playsound minecraft:entity.item.pickup master @p ~ ~ ~ 5 .5
execute if score @s tep.plid = @p tep.plid run loot give @p loot enchantplus:charged_bookshelf
execute unless score @s tep.plid = @p tep.plid run tellraw @p [{"translate":"You are not the owner from this Admin Box","color":"red"}]