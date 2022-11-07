#Create a temp storage
data modify storage teplus:admin_box Copy set from storage teplus:admin_box Enchantments[1]
data remove storage teplus:admin_box Copy.Slot
data remove storage teplus:admin_box Copy.id
data remove storage teplus:admin_box Copy.Count
data remove storage teplus:admin_box Copy.tag.Teplus

#Give if it is a valid enchantment or curse
scoreboard players set #valid TADBX.data 0
execute store success score #valid TADBX.data run execute if data storage teplus:admin_box Copy.tag.StoredCustomEnchantments
execute if score #valid TADBX.data matches 0 store success score #valid TADBX.data run execute if data storage teplus:admin_box Copy.tag.StoredCustomCurse

execute if score #valid TADBX.data matches 1 if score @s tep.plid = @p tep.plid run playsound minecraft:entity.item.pickup master @p ~ ~ ~ 5 .5
execute if score #valid TADBX.data matches 1 if score @s tep.plid = @p tep.plid run loot give @p loot teplus_admin_box:custom_book_reward
execute unless score @s tep.plid = @p tep.plid run tellraw @p [{"translate":"You are not the owner from this Admin Box","color":"red"}]

data modify block ~ ~ ~ Items append from storage teplus:admin_box Enchantments[]