setblock ~ ~ ~ minecraft:barrel[facing=up] replace
#Add decorative things
summon glow_item_frame ~ ~ ~ {Invulnerable:1b,Invisible:1b,Fixed:1b,Tags:["teplus.technical_anvil_decorative"],Item:{id:"minecraft:enchanted_book",Count:1b}}

summon item_frame ~ ~ ~ {Facing:2b,Invulnerable:1b,Invisible:1b,Fixed:1b,Tags:["teplus.technical_anvil_decorative"],Item:{id:"minecraft:lapis_lazuli",Count:1b}}
summon item_frame ~ ~ ~ {Facing:3b,Invulnerable:1b,Invisible:1b,Fixed:1b,Tags:["teplus.technical_anvil_decorative"],Item:{id:"minecraft:lapis_lazuli",Count:1b}}
summon item_frame ~ ~ ~ {Facing:4b,Invulnerable:1b,Invisible:1b,Fixed:1b,Tags:["teplus.technical_anvil_decorative"],Item:{id:"minecraft:lapis_lazuli",Count:1b}}
summon item_frame ~ ~ ~ {Facing:5b,Invulnerable:1b,Invisible:1b,Fixed:1b,Tags:["teplus.technical_anvil_decorative"],Item:{id:"minecraft:lapis_lazuli",Count:1b}}

#Initialize the contents
data modify block ~ ~ ~ Items set from storage teplus:admin_box Profile.Main