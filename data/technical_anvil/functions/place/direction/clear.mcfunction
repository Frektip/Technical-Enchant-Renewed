###Debug Message###
tellraw @a[tag=teplus.pydbgm] ["",{"text":"TE+» ","color":"#65DAD4","bold":true},{"text":"Player head in the ground removed","color":"gray","italic":true,"bold":false}]

#Clear wrong placed player head blocks 7x7x1 area
fill ~3 ~1 ~3 ~-3 ~2 ~-3 air replace #technical_anvil:player_heads{SkullOwner:{Id:[I;-16677274,-2092873373,-2138865010,388938733]}}
