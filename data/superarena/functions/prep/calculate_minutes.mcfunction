scoreboard players operation SA_TRACKER SA_PREP_REM_TIME = SA_TRACKER SA_PREP_LEN_H
scoreboard players operation SA_TRACKER SA_PREP_REM_TIME *= SA_TRACKER SA_60

scoreboard players operation SA_TRACKER SA_PREP_REM_TIME += SA_TRACKER SA_PREP_LEN_M

execute if score SA_TRACKER SA_DEBUG matches 1 run tellraw @a ["",{"text":"[SA DEBUG] Calculated prep. minutes: ","color":"#D98943"},{"score":{"name":"SA_TRACKER","objective":"SA_PREP_REM_TIME"},"color":"#D98943"}]