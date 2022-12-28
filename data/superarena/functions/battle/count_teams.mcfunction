scoreboard players set Red SA_TEAM_M_C 0
scoreboard players set Green SA_TEAM_M_C 0
scoreboard players set Blue SA_TEAM_M_C 0
scoreboard players set Purple SA_TEAM_M_C 0
scoreboard players set Gray SA_TEAM_M_C 0

execute as @a[team=TEAM_RED,scores={SA_IS_DEAD=0}] run scoreboard players add Red SA_TEAM_M_C 1
execute as @a[team=TEAM_GREEN,scores={SA_IS_DEAD=0}] run scoreboard players add Green SA_TEAM_M_C 1
execute as @a[team=TEAM_BLUE,scores={SA_IS_DEAD=0}] run scoreboard players add Blue SA_TEAM_M_C 1
execute as @a[team=TEAM_PURPLE,scores={SA_IS_DEAD=0}] run scoreboard players add Purple SA_TEAM_M_C 1
execute as @a[team=TEAM_GRAY,scores={SA_IS_DEAD=0}] run scoreboard players add Gray SA_TEAM_M_C 1

scoreboard players set SA_TRACKER SA_TEAMS_ALIVE 0

execute unless score Red SA_TEAM_M_C matches 0 run scoreboard players add SA_TRACKER SA_TEAMS_ALIVE 1
execute unless score Green SA_TEAM_M_C matches 0 run scoreboard players add SA_TRACKER SA_TEAMS_ALIVE 1
execute unless score Blue SA_TEAM_M_C matches 0 run scoreboard players add SA_TRACKER SA_TEAMS_ALIVE 1
execute unless score Purple SA_TEAM_M_C matches 0 run scoreboard players add SA_TRACKER SA_TEAMS_ALIVE 1
execute unless score Gray SA_TEAM_M_C matches 0 run scoreboard players add SA_TRACKER SA_TEAMS_ALIVE 1