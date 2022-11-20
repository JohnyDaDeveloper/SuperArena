tellraw @a ["",{"selector":"@s"},{"text":" will be revived in "},{"score":{"name":"SA_TRACKER","objective":"SA_DEAD_M"}},{"text":" minutes.","color":"yellow"}]

execute at @s as @p run forceload add ~ ~

scoreboard players set @s SA_IS_DEAD 1
scoreboard players operation @s SA_DEAD_S = SA_TRACKER SA_DEAD_M
scoreboard players operation @s SA_DEAD_S *= SA_TRACKER SA_60

scoreboard players set @s SA_DEATH_TP 0