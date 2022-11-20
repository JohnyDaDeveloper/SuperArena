scoreboard players operation @s SA_DEAD_M = @s SA_DEAD_S
scoreboard players operation @s SA_DEAD_M /= SA_TRACKER SA_60

scoreboard players operation @s SA_DEAD_HELP = @s SA_DEAD_S
scoreboard players operation @s SA_DEAD_HELP %= SA_TRACKER SA_60

execute if score @s SA_DEAD_HELP matches 0 unless score @s SA_DEAD_S matches 0 run tellraw @s ["",{"text":"You will be revived in ","color":"yellow"},{"score":{"name":"@s","objective":"SA_DEAD_M"},"color":"yellow"},{"text":" minutes.","color":"yellow"}]

execute unless score @s SA_DEAD_S matches 0 run scoreboard players remove @s SA_DEAD_S 1