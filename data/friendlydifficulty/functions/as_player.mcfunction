#hunger fix
execute if score $saturation fd.global matches 0 run effect give @s saturation 1 0 true

execute if score @s fd.use_bow matches 1.. run tag @e[type=arrow,limit=1,sort=nearest,scores={fd.alive_time=1}] add from_player
execute if score @s fd.use_cbow matches 1.. run tag @e[type=arrow,limit=1,sort=nearest,scores={fd.alive_time=1}] add from_player
execute if score @s fd.use_bow matches 1.. run tag @e[type=spectral_arrow,limit=1,sort=nearest,scores={fd.alive_time=1}] add from_player
execute if score @s fd.use_cbow matches 1.. run tag @e[type=spectral_arrow,limit=1,sort=nearest,scores={fd.alive_time=1}] add from_player
execute if score @s fd.throw_splash matches 1.. run tag @e[type=potion,limit=1,sort=nearest,scores={fd.alive_time=1}] add from_player


execute if score @s fd.use_trident matches 1.. run tag @e[type=trident,limit=1,sort=nearest,scores={fd.alive_time=1}] add from_player

scoreboard players reset @s fd.use_bow
scoreboard players reset @s fd.use_cbow
scoreboard players reset @s fd.use_trident
scoreboard players reset @s fd.throw_splash


#delete fireballs
execute if entity @e[type=#friendlydifficulty:fireball,distance=..3] run playsound minecraft:entity.chicken.egg hostile @a
execute at @e[type=#friendlydifficulty:fireball,distance=..3] run particle minecraft:block minecraft:lava ~ ~ ~ 0.2 0.2 0.2 0 10
kill @e[type=#friendlydifficulty:fireball,distance=..3] 

#delete fireballs
execute if entity @e[type=shulker_bullet,distance=..2] run playsound minecraft:entity.chicken.egg hostile @a
execute at @e[type=shulker_bullet,distance=..2] run particle minecraft:block minecraft:shulker_box ~ ~ ~ 0.2 0.2 0.2 0 10
kill @e[type=shulker_bullet,distance=..2] 