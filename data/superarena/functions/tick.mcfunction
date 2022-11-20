execute as @a unless score @s SA_SET_DEFAULTS matches 1 run function superarena:set_defaults
function superarena:death/check_deaths
execute as @a if score @s SA_IS_DEAD matches 1 run gamemode spectator @s

execute as @a if score @s SA_DEAD_S matches 0 if score @s SA_IS_DEAD matches 1 run function superarena:death/revive

execute as @a at @s unless score @s[scores={SA_HP=1..}] SA_IS_DEAD matches 1 unless block ~ ~ ~ minecraft:water unless block ~ ~ ~ minecraft:lava at @s run spawnpoint @s