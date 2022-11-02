scoreboard players set #vill.renws tepext.manager 0
function teplus_exten:manager/menu/villagers/menu

execute as @e[type=villager,tag=!tepxv.special] if data entity @s Offers.Recipes[-1].sell.tag.TeplusHead.isolated_core run function teplus_exten:manager/menu/villagers/renewable/get_back_uses
execute as @e[type=villager,tag=!tepxv.special] if data entity @s Offers.Recipes[-1].sell.tag.TeplusHead.blessed_orb run function teplus_exten:manager/menu/villagers/renewable/get_back_uses