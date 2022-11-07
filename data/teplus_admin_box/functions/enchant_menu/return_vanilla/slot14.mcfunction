#Create a temp storage
data modify storage teplus:admin_box Copy set from storage teplus:admin_box Profile.Vanilla[10]
data remove storage teplus:admin_box Copy.Slot
data remove storage teplus:admin_box Copy.id
data remove storage teplus:admin_box Copy.Count
data remove storage teplus:admin_box Copy.tag.Teplus

execute if score @s tep.plid = @p tep.plid run playsound minecraft:entity.item.pickup master @p ~ ~ ~ 5 .5
execute if score @s tep.plid = @p tep.plid run loot give @p loot teplus_admin_box:vanilla_book_reward
execute unless score @s tep.plid = @p tep.plid run tellraw @p [{"translate":"You are not the owner from this Admin Box","color":"red"}]

data modify block ~ ~ ~ Items append from storage teplus:admin_box Profile.Vanilla[]