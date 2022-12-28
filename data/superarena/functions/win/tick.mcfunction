effect give @a resistance 5 10
effect give @a regeneration 5 10
effect give @a saturation 5 10

execute if score SA_TRACKER SA_TEAM_WINNER matches 1 as @a[team=TEAM_RED] at @s run function superarena:win/red_tick
execute if score SA_TRACKER SA_TEAM_WINNER matches 2 as @a[team=TEAM_GREEN] at @s run function superarena:win/green_tick
execute if score SA_TRACKER SA_TEAM_WINNER matches 3 as @a[team=TEAM_BLUE] at @s run function superarena:win/blue_tick
execute if score SA_TRACKER SA_TEAM_WINNER matches 4 as @a[team=TEAM_YELLOW] at @s run function superarena:win/yellow_tick
execute if score SA_TRACKER SA_TEAM_WINNER matches 5 as @a[team=TEAM_WHITE] at @s run function superarena:win/white_tick

execute if score SA_TRACKER SA_GAME_PHASE matches 3 run schedule function superarena:win/tick 1s replace