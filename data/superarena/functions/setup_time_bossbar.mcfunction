bossbar set superarena:time players @a
bossbar set superarena:time visible true
execute as @p store result bossbar superarena:time max run scoreboard players get SA_TRACKER SA_PREP_REM_TIME
execute as @p store result bossbar superarena:time value run scoreboard players get SA_TRACKER SA_PREP_REM_TIME