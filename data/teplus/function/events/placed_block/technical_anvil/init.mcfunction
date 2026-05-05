#------------ Debug Message ------------#
tellraw @a[tag=teplus.debug_mode] [{"text":"TE+» ","color":"#65DAD4","bold":true},{"text":"Looking for technical anvil player head","color":"gray","italic":true,"bold":false}]
#---------------------------------------#
advancement revoke @s only teplus:events/placed_technical_anvil

# Prepare a storage to search the player head block
data modify storage teplus:temp search_head set value {radius: 5,custom_data:{components:{"minecraft:custom_data":{teplus:{block:1b,id:"technical_anvil"}}}},callback_func:"function teplus:events/placed_block/technical_anvil/create"}

function teplus:utils/search_head/init with storage teplus:temp search_head