execute if score SA_TRACKER SA_DEBUG matches 1 run tellraw @a ["",{"text":"[SA DEBUG] Setting defaults for ","color":"#D98943"},{"selector":"@s","color":"#D98943"}]

scoreboard players set @s SA_SET_DEFAULTS 1

scoreboard players set @s SA_DEATHS 0
scoreboard players set @s SA_FORGIVEN_DEATHS 0
scoreboard players set @s SA_IS_DEAD 0

scoreboard players set @s SA_HP 20