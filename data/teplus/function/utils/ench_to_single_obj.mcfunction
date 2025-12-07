tellraw @a[tag=teplus.debug_mode] [{"text":"TE+» ","color":"#65DAD4","bold":true},{"text":"(Enchanting★★★): ","color":"#24E3F9","italic":true,"bold":false},{"text":"Selected enchantment is ","color":"gray","italic":true,"bold":false},{"nbt":"Temp[0].id","storage":"teplus:loot","color":"#bb864d","italic":true,"bold":false}, {"text":" with levels ","color":"gray","italic":true,"bold":false},{"nbt":"Temp[0].lvl","storage":"teplus:loot","color":"green","italic":true,"bold":false}]

# Basically we get the following object: {id:"ench1", lvl:1}
# And we want to format it as a compound: {"ench1":1}
# For this we store the compound result in a storage
# We use the object properties "id" & "lvl" as parameters in this function

# Inititalize the List storage
data remove storage teplus:temp singlenchobj
$data modify storage teplus:temp singlenchobj.$(id) set value $(lvl) 