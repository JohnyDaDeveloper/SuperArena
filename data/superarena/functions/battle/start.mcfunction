execute if score SA_TRACKER SA_DEBUG matches 1 run tellraw @a ["",{"text":"[SA DEBUG] Starting battle phase","color":"#D98943"}]

title @a subtitle {"text":"Last team standing wins","color":"yellow"}
title @a title {"text":"Fight!","color":"red"}

bossbar set superarena:time visible false
scoreboard objectives setdisplay sidebar SA_TEAM_M_C

effect give @a regeneration 10 2
effect give @a saturation 10
effect give @a resistance 10 10

scoreboard players set SA_TRACKER SA_GAME_PHASE 2

spreadplayers 0 0 200 500 true @a

worldborder center 0 0
worldborder set 1500
worldborder set 200 900
tellraw @a {"text":"World border set to 1500x1500, it will shrink to 200x200 over 15 minutes.","color":"yellow"}

schedule function superarena:battle/min_wb_shrink_in_15_m 900s replace