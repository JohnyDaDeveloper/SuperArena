execute as @p store result bossbar superarena:time value run scoreboard players get SA_TRACKER SA_PREP_REM_TIME

scoreboard players remove SA_TRACKER SA_PREP_REM_TIME 1

scoreboard players operation SA_TRACKER SA_PREP_REM_M = SA_TRACKER SA_PREP_REM_TIME

scoreboard players operation SA_TRACKER SA_PREP_REM_H = SA_TRACKER SA_PREP_REM_TIME
scoreboard players operation SA_TRACKER SA_PREP_REM_H /= SA_TRACKER SA_60

scoreboard players operation SA_TRACKER SA_REM_HELP = SA_TRACKER SA_PREP_REM_H
scoreboard players operation SA_TRACKER SA_REM_HELP *= SA_TRACKER SA_60
scoreboard players operation SA_TRACKER SA_PREP_REM_M -= SA_TRACKER SA_REM_HELP

scoreboard players operation SA_TRACKER SA_REM_HELP = SA_TRACKER SA_PREP_REM_TIME
scoreboard players operation SA_TRACKER SA_REM_HELP %= SA_TRACKER SA_15

execute as @p if score SA_TRACKER SA_REM_HELP matches 0 run tellraw @a ["",{"score":{"name":"SA_TRACKER","objective":"SA_PREP_REM_H"},"color":"yellow"},{"text":" hours and ","color":"yellow"},{"score":{"name":"SA_TRACKER","objective":"SA_PREP_REM_M"},"color":"yellow"},{"text":" minutes remaining.","color":"yellow"}]
execute if score SA_TRACKER SA_PREP_REM_TIME matches 0 run function superarena:start_battle

execute unless score SA_TRACKER SA_PREP_REM_TIME matches 0 run schedule function superarena:prep/tick 60s replace