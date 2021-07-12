#MAKES EM WEAK
attribute @s minecraft:generic.attack_damage base set -100000
effect give @s[type=!minecraft:zombie_villager,type=!creeper] minecraft:weakness 1000000 100 true
#add tag
tag @s add friendlydifficulty_checked


#mob specific changes
execute if entity @s[type=minecraft:creeper] run data merge entity @s {ExplosionRadius:0}
#fireballs
execute if entity @s[type=minecraft:fireball] run data merge entity @s {ExplosionPower:0b}
execute if entity @s[type=minecraft:small_fireball] run data merge entity @s {HasBeenShot:0,ExplosionPower:0b}
#guardian
execute if entity @s[type=#friendlydifficulty:guardian] run data merge entity @s {Attributes:[{Name:"generic.follow_range",Base:0}]}
#evoker fangs
execute if entity @s[type=minecraft:evoker_fangs] run data merge entity @s {Warmup:-20}