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
scoreboard objectives add teplus.player.xp_crystal_use dummy
scoreboard objectives add teplus.player.id dummy

# Technical Anvil related
scoreboard objectives add teplus.anvil.value dummy
scoreboard objectives add teplus.anvil.cost dummy
scoreboard objectives add teplus.anvil.ench_count dummy
scoreboard objectives add teplus.anvil.inp1 dummy
scoreboard objectives add teplus.anvil.inp2 dummy

# Villager related
scoreboard objectives add teplus.trade_uses dummy

# Triggers
scoreboard objectives add teplus.trigger.get_birthday_potion trigger

# Constants
scoreboard players set #1const teplus.data 1
scoreboard players set #2const teplus.data 2
scoreboard players set #7const teplus.data 7
scoreboard players set #10const teplus.data 10
scoreboard players set #25const teplus.data 25
scoreboard players set #50const teplus.data 50
scoreboard players set #250const teplus.data 250

# Config related
scoreboard objectives add teplus.game_opts dummy
scoreboard objectives add teplus.maxlvl dummy
function teplus:core/settings/set_options

# Register the enchantments
function #teplus:register

# Scheduled functions
schedule function teplus:blocks/charged_bookshelf/light/main_1s 1s replace

# Enabled extensions
schedule clear teplus:drops/main_3min
schedule clear teplus:drops/main_20t
execute if score $Drops teplus.game_opts matches 0 run function teplus:drops/init

schedule clear teplus:villagers/main
execute if score $Villagers teplus.game_opts matches 0 run function teplus:villagers/init


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