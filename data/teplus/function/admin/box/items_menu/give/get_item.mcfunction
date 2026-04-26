# Prepare configurations (if any)
$$(prev_give_callback)

# Re-insert the item again
$loot insert ~ ~ ~ loot teplus:items/$(item_id)

$data modify block ~ ~ ~ Items[{components:{"minecraft:custom_data":{teplus:{id:"$(item_id)"}}}}].components merge value {"minecraft:bundle_contents":[{id:"minecraft:stick",count:64}]}
$data modify block ~ ~ ~ Items[{components:{"minecraft:custom_data":{teplus:{id:"$(item_id)"}}}}].components.minecraft:custom_data.teplus merge value {ui:1b}

# Give the item to the player (if it is the owner of the current Admin Box)
# Send the item id & a callback to clear previous configuration when building the item (if any)
$execute if score @s teplus.player.id = @p teplus.player.id run return run function teplus:admin/box/items_menu/give/grant_to_player {item_id:"$(item_id)", post_give_callback:"$(post_give_callback)"}

# If the player is not the owner, give feedback
playsound entity.enderman.teleport master @p ~ ~ ~ 1 0 1
tellraw @p [{translate:"teplus.admin_box.not_owner_msg",fallback:"You are not the owner from this Admin Box",color:"red"}]