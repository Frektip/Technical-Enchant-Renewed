# Spin default rotation
execute unless entity @s[tag=teplus.speed_enchanted] run tp @s ~ ~ ~ ~1 ~

# Detect if the enchanting table is used, to stop the normal spin and make it faster
execute if entity @s[tag=teplus.speed_enchanted] run function teplus:entity/armor_stand/table_rotate/enchanted_speed

# Do special actions with each armor stand (tier)
execute as @s[tag=teplus.level1] run function teplus:entity/armor_stand/table_rotate/update/display {table_tier: "tier1", tag_type: "lapis_visible", on_fun: "show_lapis", off_fun: "set_air"}
execute as @s[tag=teplus.level2] run function teplus:entity/armor_stand/table_rotate/update/display {table_tier: "tier2", tag_type: "lapis_visible", on_fun: "show_lapis", off_fun: "set_air"}
execute as @s[tag=teplus.level3] run function teplus:entity/armor_stand/table_rotate/update/display {table_tier: "tier3", tag_type: "lapis_visible", on_fun: "show_lapis", off_fun: "set_air"}

# Add/Remove enchantment glint from the lapis item only if tier 3 has been reached by the enchanting table marker
function teplus:entity/armor_stand/table_rotate/update/display {table_tier: "tier4", tag_type: "lapis_glint", on_fun: "glint_on", off_fun: "glint_off"}

# Hover animation based on the scoreboard
function teplus:entity/armor_stand/table_rotate/animate_hover
