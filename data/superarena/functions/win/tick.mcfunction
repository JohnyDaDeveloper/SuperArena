effect give @a resistance 2 10
effect give @a regeneration 2 10
effect give @a saturation 2 10

execute if score SA_TRACKER SA_TEAM_WINNER matches 1 as @a[team=TEAM_RED] at @s run function superarena:win/red_tick
execute if score SA_TRACKER SA_TEAM_WINNER matches 2 as @a[team=TEAM_GREEN] at @s run function superarena:win/green_tick
execute if score SA_TRACKER SA_TEAM_WINNER matches 3 as @a[team=TEAM_BLUE] at @s run function superarena:win/blue_tick

schedule function superarena:win/tick 1s replace