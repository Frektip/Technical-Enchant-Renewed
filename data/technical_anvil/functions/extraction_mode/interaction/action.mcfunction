
execute if entity @s[tag=CanExtract,tag=!techanv.vanilla,tag=!CurseExtract] run function technical_anvil:extraction_mode/interaction/extraction_succeed
execute if entity @s[tag=CanExtract,tag=techanv.vanilla,tag=!CurseExtract] run function technical_anvil:extraction_mode/interaction/extraction_vanilla

execute if entity @s[tag=CanExtract,tag=!techanv.vanilla,tag=CurseExtract] run function technical_anvil:extraction_mode/interaction/curse_extract/custom
execute if entity @s[tag=CanExtract,tag=techanv.vanilla,tag=CurseExtract] run function technical_anvil:extraction_mode/interaction/curse_extract/vanilla


tag @s remove CanExtract
tag @s remove CurseExtract

function technical_anvil:extraction_mode/menu/change_item/deactivate_slots