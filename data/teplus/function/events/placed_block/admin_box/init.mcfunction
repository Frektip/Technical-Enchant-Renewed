#------------ Debug Message ------------#
tellraw @a[tag=teplus.debug_mode] [{"text":"TE+» ","color":"#65DAD4","bold":true},{"text":"Looking for admin box player head","color":"gray","italic":true,"bold":false}]
#---------------------------------------#
advancement revoke @s only teplus:events/placed_admin_box

# Prepare a storage to search the player head block
data modify storage teplus:temp search_head set value {radius: 5,custom_data:{components:{"minecraft:custom_data":{teplus:{block:1b,id:"admin_box"}}}},callback_func:"function teplus:events/placed_block/admin_box/create"}

function teplus:utils/search_head/init with storage teplus:temp search_head