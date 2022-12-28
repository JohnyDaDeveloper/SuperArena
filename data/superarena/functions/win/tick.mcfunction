effect give @a resistance 5 10
effect give @a regeneration 5 10
effect give @a saturation 5 10

execute if score SA_TRACKER SA_TEAM_WINNER matches 1 as @a[team=TEAM_RED] at @s run function superarena:win/tick_red
execute if score SA_TRACKER SA_TEAM_WINNER matches 2 as @a[team=TEAM_GREEN] at @s run function superarena:win/tick_green
execute if score SA_TRACKER SA_TEAM_WINNER matches 3 as @a[team=TEAM_BLUE] at @s run function superarena:win/tick_blue
execute if score SA_TRACKER SA_TEAM_WINNER matches 4 as @a[team=TEAM_PURPLE] at @s run function superarena:win/tick_purple
execute if score SA_TRACKER SA_TEAM_WINNER matches 5 as @a[team=TEAM_GRAY] at @s run function superarena:win/tick_gray

execute if score SA_TRACKER SA_GAME_PHASE matches 4 run schedule function superarena:win/tick 1s replace