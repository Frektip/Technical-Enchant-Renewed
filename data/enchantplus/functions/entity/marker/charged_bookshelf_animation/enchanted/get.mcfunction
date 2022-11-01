#Show a different particle based on the rarity
execute if score #enchant.rarity teplus.data matches 1 run function enchantplus:entity/marker/charged_bookshelf_animation/enchanted/low
execute if score #enchant.rarity teplus.data matches 2 run function enchantplus:entity/marker/charged_bookshelf_animation/enchanted/average
execute if score #enchant.rarity teplus.data matches 3 run function enchantplus:entity/marker/charged_bookshelf_animation/enchanted/strong
execute if score #enchant.rarity teplus.data matches 4 run function enchantplus:entity/marker/charged_bookshelf_animation/enchanted/convert

execute if score #enchant.rarity teplus.data matches -1 run function enchantplus:entity/marker/charged_bookshelf_animation/enchanted/curse