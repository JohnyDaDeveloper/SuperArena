execute as @a unless score @s SA_SET_DEFAULTS matches 1 run function superarena:set_defaults
function superarena:death/check_deaths
execute as @a[scores={SA_IS_DEAD=1}] run gamemode spectator @s

execute as @a[scores={SA_DEAD_S=0, SA_IS_DEAD=1}] run function superarena:death/revive

execute as @a[scores={SA_HP=1.., SA_IS_DEAD=1}] at @s unless block ~ ~ ~ minecraft:water unless block ~ ~ ~ minecraft:lava at @s run spawnpoint @s