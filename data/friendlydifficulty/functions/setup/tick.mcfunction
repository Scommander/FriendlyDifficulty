# 20tps

#special case for wolf

#give hostile weakness
execute as @e[type=#friendlydifficulty:hostile,tag=!friendlydifficulty_checked] run function friendlydifficulty:weakness

#running function as projectiles
execute as @e[type=#friendlydifficulty:projectile] at @s run function friendlydifficulty:as_projectile

#run function as and at player
execute as @a at @s run function friendlydifficulty:as_player
#make arrows do no damage if not tagged
execute as @e[type=#minecraft:arrows,tag=!from_player,scores={fd.alive_time=1}] run data merge entity @s {damage:0}
execute as @e[type=trident,tag=!from_player,scores={fd.alive_time=1}] run data merge entity @s {DealtDamage:1b}
execute as @e[type=potion,nbt={Item:{id:"minecraft:splash_potion"}},tag=!from_player,scores={fd.alive_time=1}] run data merge entity @s {Item:{id:"minecraft:splash_potion",tag:{Potion:"minecraft:water",CustomPotionEffects:[{}]},Count:1b}}