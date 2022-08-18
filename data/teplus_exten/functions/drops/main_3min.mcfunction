execute as @e[type=!#teplus_exten:drops/ignore,tag=!smithed.entity,tag=!tepdrop.try] at @s run function teplus_exten:drops/try_tag

#Run this function every 3 minutes
schedule function teplus_exten:drops/main 180s