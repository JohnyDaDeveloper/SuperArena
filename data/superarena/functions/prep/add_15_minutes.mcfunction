execute as @p if score SA_TRACKER SA_PREP_LEN_M matches 45 run scoreboard players add SA_TRACKER SA_PREP_LEN_H 1
execute as @p run scoreboard players add SA_TRACKER SA_PREP_LEN_M 15
execute as @p if score SA_TRACKER SA_PREP_LEN_M matches 60 run scoreboard players set SA_TRACKER SA_PREP_LEN_M 0
function superarena:setup