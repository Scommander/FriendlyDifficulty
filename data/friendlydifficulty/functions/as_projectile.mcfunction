scoreboard players add @s fd.alive_time 1

execute store success score $has_owner fd.global run data get entity @s Owner
execute if score @s fd.alive_time matches 1 if score $has_owner fd.global matches 0 run tag @s add from_player