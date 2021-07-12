#send active message to chat
tellraw @a ["",{"text":"[V1.0.0] "},{"text":"Friendly Difficulty","color":"green","hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Peaceful, but with hostile mobs!"}]}}},{"text":" by "},{"text":"Scommander","color":"gold","clickEvent":{"action":"open_url","value":"https://www.youtube.com/scommander"},"hoverEvent":{"action":"show_text","contents":{"text":"Click: Visit YouTube","color":"white"}}},{"text":" > "},{"text":"[Options]","color":"gray","clickEvent":{"action":"run_command","value":"/function friendlydifficulty:options/give"},"hoverEvent":{"action":"show_text","contents":{"text":"[Change Pack Settings]","color":"white"}}}]



#adds scoreboards
scoreboard objectives add fd.use_bow minecraft.used:minecraft.bow
scoreboard objectives add fd.use_cbow minecraft.used:minecraft.crossbow
scoreboard objectives add fd.use_trident minecraft.used:minecraft.trident
scoreboard objectives add fd.throw_splash minecraft.used:minecraft.splash_potion
scoreboard objectives add fd.alive_time dummy
scoreboard objectives add fd.global dummy

#
scoreboard players add $saturation fd.global 0