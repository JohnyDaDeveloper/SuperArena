execute as @p run scoreboard players remove SA_TRACKER SA_PREP_LEN_M 15

execute as @p if score SA_TRACKER SA_PREP_LEN_M matches 60 run function superarena:prep/add_hour
execute as @p if score SA_TRACKER SA_PREP_LEN_M matches 60 run scoreboard players set SA_TRACKER SA_PREP_LEN_M 0

execute as @p if score SA_TRACKER SA_PREP_LEN_M matches -15 run scoreboard players remove SA_TRACKER SA_PREP_LEN_H 1
execute as @p if score SA_TRACKER SA_PREP_LEN_M matches -15 if score SA_TRACKER SA_PREP_LEN_H matches -1 run scoreboard players set SA_TRACKER SA_PREP_LEN_M 0
execute as @p if score SA_TRACKER SA_PREP_LEN_M matches -15 unless score SA_TRACKER SA_PREP_LEN_H matches -1 run scoreboard players set SA_TRACKER SA_PREP_LEN_M 45
execute as @p if score SA_TRACKER SA_PREP_LEN_H matches -1 run scoreboard players set SA_TRACKER SA_PREP_LEN_H 0

execute as @p if score SA_TRACKER SA_PREP_LEN_H matches 0 if score SA_TRACKER SA_PREP_LEN_M matches 0 run scoreboard players set SA_TRACKER SA_PREP_LEN_M 15

function superarena:setup