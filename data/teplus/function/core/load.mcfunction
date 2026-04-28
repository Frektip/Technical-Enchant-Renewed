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

# Admin Box related
scoreboard objectives add teplus.admin_box.value dummy
scoreboard objectives add teplus.admin_box.data dummy
scoreboard objectives add teplus.admin_box.page dummy

# Villager related
scoreboard objectives add teplus.trade_uses dummy

# Triggers
scoreboard objectives add teplus.trigger.get_birthday_potion trigger
scoreboard objectives add teplus.trigger.settings_dialogs trigger

# Constants
scoreboard players set #1const teplus.data 1
scoreboard players set #2const teplus.data 2
scoreboard players set #7const teplus.data 7
scoreboard players set #10const teplus.data 10
scoreboard players set #19const teplus.data 19
scoreboard players set #25const teplus.data 25
scoreboard players set #27const teplus.data 27
scoreboard players set #50const teplus.data 50
scoreboard players set #250const teplus.data 250

# Config related
scoreboard objectives add teplus.game_opts dummy
scoreboard objectives add teplus.maxlvl dummy
execute unless score #new_world teplus.game_opts matches 1 run function teplus:core/settings/set_options

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

data modify storage teplus:ui Global append value {profile:"admin_box"}
function teplus:core/ui/admin_box/main_menu
function teplus:core/ui/admin_box/items_menu

function teplus:core/ui/admin_box/ench_pages/custom
function teplus:core/ui/admin_box/ench_pages/vanilla
function teplus:core/ui/admin_box/enchants_menu


tellraw @a ["",{text:"*--*---*-----*---*---*--*-----*--*---*---*-----*---*--*",color:"gold"}]
tellraw @a ["",{text:"[",color:"gold"},{text:"Technical Enchant+ is ready",color:"green"},{text:"]",color:"gold"},{text:" -- ",color:"gold"},{text:"By Frektip",color:"red"}]
tellraw @a ["",{text:" |----> ",color:"gold"},{text:"[",color:"aqua",italic:true},{translate:"teplus.settings.reset",fallback:"Reset All Settings",color:"#DDC65C",click_event:{action:"suggest_command",command:"/function teplus:core/settings/init"},italic:true},{text:"]",color:"aqua",italic:true}]
tellraw @a ["",{text:"*--*---*-----*---*---*--*-----*--*---*---*-----*---*--*",color:"gold"}]