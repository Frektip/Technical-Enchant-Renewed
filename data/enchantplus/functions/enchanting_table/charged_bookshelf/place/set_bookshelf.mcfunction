###Debug Message###
tellraw @a[tag=teplus.pydbgm] ["",{"text":"TE+» ","color":"#65DAD4","bold":true},{"text":"Placed a charged bookshelf, link a marker to it","color":"gray","italic":true,"bold":false}]
particle happy_villager ~ ~ ~ 0 3 0 0 100 force @a[tag=teplus.pydbgm]

#Summon a marker with two tags
#Init tag is for getting the "Full enchanting power advancement"
summon marker ~.5 ~ ~.5 {Tags:["teplus.marker","teplus.charged_bookshelf","teplus.charged_bookshelf_init"]}

#Kill marker
kill @s