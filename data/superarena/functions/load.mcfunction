gamerule sendCommandFeedback false
gamerule announceAdvancements false

bossbar add superarena:time {"text": "Time until BATTLE"}

scoreboard objectives add SA_SET_DEFAULTS dummy
scoreboard objectives add SA_DEBUG dummy

scoreboard objectives add SA_HP health
scoreboard objectives add SA_GAME_PHASE dummy

scoreboard objectives add SA_PREP_LEN_H dummy
scoreboard objectives add SA_PREP_LEN_M dummy
scoreboard objectives add SA_PREP_REM_H dummy
scoreboard objectives add SA_PREP_REM_M dummy
scoreboard objectives add SA_REM_HELP dummy
scoreboard objectives add SA_PREP_REM_TIME dummy

scoreboard objectives add SA_DEATHS deathCount
scoreboard objectives add SA_FORGIVEN_DEATHS dummy
scoreboard objectives add SA_IS_DEAD dummy
scoreboard objectives add SA_DEAD_M dummy
scoreboard objectives add SA_DEAD_S dummy
scoreboard objectives add SA_DEAD_HELP dummy

scoreboard objectives add SA_60 dummy
scoreboard objectives add SA_15 dummy
scoreboard objectives add SA_1 dummy
scoreboard players set SA_TRACKER SA_60 60
scoreboard players set SA_TRACKER SA_15 15
scoreboard players set SA_TRACKER SA_1 1

execute as @p unless score SA_TRACKER SA_SET_DEFAULTS matches 1 run function superarena:set_tracker_defaults

tellraw @a ["",{"text":"Super Arena","bold":true,"color":"red"},{"text":" loaded","color":"yellow"}]