scoreboard players set $min random 0 
scoreboard players set $max random 28
function enchantplus:random_uniform

execute if score $out random matches 0 run setblock ~ ~-1 ~ candle_cake[lit=true] keep
execute if score $out random matches 1 run setblock ~ ~-1 ~ black_candle_cake[lit=true] keep
execute if score $out random matches 2 run setblock ~ ~-1 ~ blue_candle_cake[lit=true] keep
execute if score $out random matches 3 run setblock ~ ~-1 ~ brown_candle_cake[lit=true] keep
execute if score $out random matches 4 run setblock ~ ~-1 ~ cyan_candle_cake[lit=true] keep
execute if score $out random matches 5 run setblock ~ ~-1 ~ gray_candle_cake[lit=true] keep
execute if score $out random matches 6 run setblock ~ ~-1 ~ green_candle_cake[lit=true] keep
execute if score $out random matches 7 run setblock ~ ~-1 ~ light_blue_candle_cake[lit=true] keep
execute if score $out random matches 8 run setblock ~ ~-1 ~ light_gray_candle_cake[lit=true] keep
execute if score $out random matches 9 run setblock ~ ~-1 ~ lime_candle_cake[lit=true] keep
execute if score $out random matches 10 run setblock ~ ~-1 ~ magenta_candle_cake[lit=true] keep
execute if score $out random matches 11 run setblock ~ ~-1 ~ orange_candle_cake[lit=true] keep
execute if score $out random matches 12 run setblock ~ ~-1 ~ pink_candle_cake[lit=true] keep
execute if score $out random matches 13 run setblock ~ ~-1 ~ purple_candle_cake[lit=true] keep
execute if score $out random matches 14 run setblock ~ ~-1 ~ red_candle_cake[lit=true] keep
execute if score $out random matches 15 run setblock ~ ~-1 ~ white_candle_cake[lit=true] keep
execute if score $out random matches 16 run setblock ~ ~-1 ~ yellow_candle_cake[lit=true] keep

execute if score $out random matches 17..28 run setblock ~ ~-1 ~ cake keep