execute unless score SA_TRACKER SA_PREP_LEN_H matches 0 run scoreboard players remove SA_TRACKER SA_PREP_LEN_H 1
execute if score SA_TRACKER SA_PREP_LEN_H matches 0 if score SA_TRACKER SA_PREP_LEN_M matches 0 run scoreboard players set SA_TRACKER SA_PREP_LEN_M 15
function superarena:setup