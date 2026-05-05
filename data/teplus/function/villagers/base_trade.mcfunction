data modify storage teplus:register BaseTrade set value {}

# Basic trade properties
data modify storage teplus:register BaseTrade.maxUses set value 6
data modify storage teplus:register BaseTrade.uses set value 0
data modify storage teplus:register BaseTrade.priceMultiplier set value 0.2f
data modify storage teplus:register BaseTrade.xp set value 3

# Polished lapis trade item
data modify storage teplus:register BaseTrade.buy set value {id:"minecraft:player_head",count:1,components:{"minecraft:profile": {properties: [{value: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTNlZGVlZWM2ZDczYTRiZTZlYTY4NmNjN2IxNDk1ZGU2OGU4NGMwMjQwNDRlOGQzZTIwNDFjZTQ3YTY5M2M5NSJ9fX0=", name: "textures"}]}, "minecraft:attribute_modifiers": [{type: "minecraft:block_interaction_range", operation: "add_value", amount: -5.0d, id: "teplus:range_zero", display: {type: "hidden"}, slot: "hand"}], "minecraft:lore": [{italic:false, fallback: "Currency to trade with", translate: "teplus.polished_lapis.desc.lore1", color: "white"}, {italic:false, fallback: "an Advanced Enchanter", translate: "teplus.polished_lapis.desc.lore2", color: "white"}, {italic:true, text: "Technical Enchant+", color: "#63C0E3"}], "minecraft:custom_name": {italic:false, fallback: "Polished Lapis", translate: "teplus.item.polished_lapis", color: "#298EE6"}, "!minecraft:equippable": {}, "minecraft:custom_data": {teplus: {head: 1b, id: "polished_lapis"}}}}

# Paper trade item
data modify storage teplus:register BaseTrade.buyB set value {id:"minecraft:paper",count:1}

# Page of Power trade item
data modify storage teplus:register BaseTrade.sell set value {id:"minecraft:paper",count:1,components:{"minecraft:custom_name":{translate:"teplus.item.page_of_power",fallback:"Page of Power",color:"aqua",italic:false}, "minecraft:lore":[{translate:"teplus.page_of_power.desc.lore1",fallback:"A page full of unique",color:"white",italic:false},{translate:"teplus.page_of_power.desc.lore2",fallback:"enchantment knowledge",color:"white",italic:false}],"minecraft:enchantment_glint_override":true,"minecraft:custom_data":{teplus:{id:"page_of_power"}}}}