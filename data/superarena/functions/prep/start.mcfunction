execute if score SA_TRACKER SA_DEBUG matches 1 run tellraw @a ["",{"text":"[SA DEBUG] Starting preparation phase","color":"#D98943"}]
tellraw @a ["",{"text":"Preparation phase","color":"yellow"},{"text":" started, "},{"score":{"name":"SA_TRACKER","objective":"SA_PREP_LEN_H"}},{"text":" hours and "},{"score":{"name":"SA_TRACKER","objective":"SA_PREP_LEN_M"}},{"text":" minutes left."}]

gamemode survival @a

clear @a

effect clear @a
effect give @a regeneration 10 2
effect give @a saturation 10
effect give @a resistance 10 10

worldborder set 25000

spreadplayers 0 0 5000 10000 true @a

scoreboard players set SA_TRACKER SA_GAME_PHASE 1

execute as @p run function superarena:prep/calculate_minutes

function superarena:setup_time_bossbar

function superarena:prep/tick
function superarena:death/tick