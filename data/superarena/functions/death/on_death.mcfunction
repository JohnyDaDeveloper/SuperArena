execute if score SA_TRACKER SA_GAME_PHASE matches 1 run tellraw @a ["",{"selector":"@s"},{"text":" will be revived in ","color":"yellow"},{"score":{"name":"SA_TRACKER","objective":"SA_DEAD_M"},"color":"yellow"},{"text":" minutes.","color":"yellow"}]

scoreboard players set @s SA_IS_DEAD 1
scoreboard players operation @s SA_DEAD_S = SA_TRACKER SA_DEAD_M
scoreboard players operation @s SA_DEAD_S *= SA_TRACKER SA_60

scoreboard players set @s SA_DEATH_TP 0