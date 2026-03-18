# Change the Name
data modify entity @s CustomName set value {translate:"teplus.entity.advanced_enchanter",fallback:"Advanced Enchanter",color:"dark_gray",italic:false}

# Add it into a Team
team join teplus.advanced_enchanter @s

# Remove Vanilla default trades
data remove entity @s Offers.Recipes

# Change the first trade, to be the currency
data modify entity @s Offers.Recipes append value {maxUses:10,uses:0,rewardExp:0b,priceMultiplier:0.05f,buy:{id:"minecraft:lapis_lazuli",count:6},buyB:{id:"minecraft:emerald",count:3},sell:{id:"minecraft:player_head",count:1,components:{"minecraft:profile": {properties: [{value: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTNlZGVlZWM2ZDczYTRiZTZlYTY4NmNjN2IxNDk1ZGU2OGU4NGMwMjQwNDRlOGQzZTIwNDFjZTQ3YTY5M2M5NSJ9fX0=", name: "textures"}]}, "minecraft:attribute_modifiers": [{type: "minecraft:block_interaction_range", operation: "add_value", amount: -5.0d, id: "teplus:range_zero", display: {type: "hidden"}, slot: "hand"}], "minecraft:lore": [{italic: 0b, fallback: "Currency to trade with", translate: "teplus.polished_lapis.desc.lore1", color: "white"}, {italic: 0b, fallback: "an Advanced Enchanter", translate: "teplus.polished_lapis.desc.lore2", color: "white"}, {italic: 1b, text: "Technical Enchant+", color: "#63C0E3"}], "minecraft:custom_name": {italic: 0b, fallback: "Polished Lapis", translate: "teplus.item.polished_lapis", color: "#298EE6"}, "!minecraft:equippable": {}, "minecraft:custom_data": {teplus: {head: 1b, id: "polished_lapis"}}}}}

# Assign tag
tag @s add teplus.enchanter.init


# Particles & sounds
playsound minecraft:block.enchantment_table.use master @a[distance=..7] ~ ~ ~ 5 2
playsound minecraft:block.enchantment_table.use master @a[distance=..7] ~ ~ ~ 5 2
playsound minecraft:block.enchantment_table.use master @a[distance=..7] ~ ~ ~ 5 2
particle minecraft:scrape ~ ~.5 ~ 0.05 .5 0.05 7 25