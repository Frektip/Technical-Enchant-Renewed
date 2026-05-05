#Execute as any charged bookshelf marker with light source control
execute as @e[type=marker,tag=teplus.charged_bookshelf] at @s run function teplus:blocks/charged_bookshelf/light/check

#Call again this function every second
schedule function teplus:blocks/charged_bookshelf/light/main_1s 1s