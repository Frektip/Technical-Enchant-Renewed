###Debug Message###
tellraw @a[tag=teplus.pydbgm] ["",{"text":"TE+» ","color":"#65DAD4","bold":true},{"text":"Player head in the ground removed","color":"gray","italic":true,"bold":false}]

#Clear wrong placed player head blocks 15x7x15 area
fill ~7 ~7 ~7 ~-7 ~-7 ~-7 air replace #technical_anvil:player_heads{SkullOwner:{Id:[I;-679585275,275596174,-1314527187,-1621836145]}}
