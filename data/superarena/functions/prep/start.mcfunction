tellraw @a ["",{"text":"Preparation phase","color":"yellow"},{"text":" started, "},{"score":{"name":"SA_TRACKER","objective":"SA_PREP_LEN_H"}},{"text":" hours and "},{"score":{"name":"SA_TRACKER","objective":"SA_PREP_LEN_M"}},{"text":" minutes left."}]

gamemode survival @a

worldborder center 0 0
worldborder set 25000

spreadplayers 0 0 5000 10000 true @a

scoreboard players set SA_TRACKER SA_GAME_PHASE 1

execute as @p run function superarena:prep/calculate_minutes

function superarena:setup_time_bossbar

function superarena:prep/tick
function superarena:death/tick