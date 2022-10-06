summon firework_rocket ~ ~.2 ~ {Silent:1b,FireworksItem:{id:"fire_charge",Count:1,tag:{Fireworks:{Explosions:[{Type:0,Colors:[I;16718602,16736284],FadeColors:[I;16764229,16773970]}]}}}}

#Play a sound and a particle
playsound minecraft:entity.generic.extinguish_fire master @a ~ ~ ~ 5 .7
particle minecraft:dripping_dripstone_lava ~ ~1 ~ 0.5 .5 0.5 0 100

# The value in "#durability teplus.data" is additive when the item
#  loses durability, meaning that it will damage the item by that number
scoreboard players set #durability teplus.data 5

#Unbreaking enchantment doesn't prevent the item to lose durability
# 100% for the mainhand
# 50% chance for the offhand
# 25% for any armor piece
function enchantplus:durability_change/mainhand
execute if predicate enchantplus:random_chance/50 run function enchantplus:durability_change/offhand
execute if predicate enchantplus:random_chance/25 run function enchantplus:durability_change/head
execute if predicate enchantplus:random_chance/25 run function enchantplus:durability_change/chest
execute if predicate enchantplus:random_chance/25 run function enchantplus:durability_change/legs
execute if predicate enchantplus:random_chance/25 run function enchantplus:durability_change/feet