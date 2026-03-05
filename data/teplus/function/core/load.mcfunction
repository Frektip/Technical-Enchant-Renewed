# Datapack version
scoreboard objectives add teplus.version dummy
scoreboard players set #major teplus.version 8
scoreboard players set #minor teplus.version 0
scoreboard players set #patch teplus.version 0

# General use
scoreboard objectives add teplus.data dummy
scoreboard objectives add teplus.rng dummy
scoreboard objectives add teplus.ryc dummy
scoreboard objectives add teplus.tmp dummy

# Placed Blocks scoreboard
scoreboard objectives add teplus.block_id dummy

# Enchanting setup system
scoreboard objectives add teplus.chrgbksf.qnty dummy
scoreboard objectives add teplus.base_charge dummy

# Animations
scoreboard objectives add teplus.hover dummy
scoreboard objectives add teplus.open_lapis dummy

# Player related
scoreboard objectives add teplus.drop minecraft.custom:minecraft.drop
scoreboard objectives add teplus.player.xp dummy
scoreboard objectives add teplus.player.id dummy

# Technical Anvil related
scoreboard objectives add teplus.anvil.value dummy

# Triggers
scoreboard objectives add teplus.trigger.get_birthday_potion trigger

# Constants
scoreboard players set #25const teplus.data 25

# Config related
scoreboard objectives add teplus.game_opts dummy
function teplus:core/settings/set_options

# Register the enchantments
function #teplus:register

# Scheduled functions
schedule function teplus:blocks/charged_bookshelf/light/main_1s 1s replace

# Enabled extensions
schedule clear teplus:drops/main_3min
schedule clear teplus:drops/main_20t
execute if score $Drops teplus.game_opts matches 0 run function teplus:drops/init


# GUI interfaces
data modify storage teplus:ui Global set value []
data modify storage teplus:ui Global append value {profile:"technical_anvil"}
function teplus:core/ui/technical_anvil/merge_mode
function teplus:core/ui/technical_anvil/extract_mode



tellraw @a ["",{"text":"             [","color":"gold"},{"text":"Technical Enchant+ Renewed","color":"green"},{"text":" is ready","color":"green"},{"text":"]","color":"gold"}]
tellraw @a ["",{"text":"              *------*--*--*------*--*--*------*","color":"gold"}]
tellraw @a ["",{"text":"        *-----*","color":"gold"},{"text":" By Hardel ","color":"blue"},{"text":" Modified by Frektip ","color":"red"},{"text":"*-----*","color":"gold"}]
tellraw @a ["",{"text":"                      [","color":"aqua","italic":true},{"translate":"Reset All Global Settings","color":"#DDC65C","clickEvent":{"action":"suggest_command","value":"/function enchantplus:set_options/init"},"italic":true},{"text":"]","color":"aqua","italic":true}]
tellraw @a ["",{"text":"*--*---*-----*---*---*--*-----*--*---*---*-----*---*--*","color":"gold"}]