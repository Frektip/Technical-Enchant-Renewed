#Auto-Feed
scoreboard players add @s TimerFeed 1 
execute if score @s TimerFeed matches 3600 at @s run function enchantplus:result/auto-feed_effect 
