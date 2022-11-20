title @a subtitle {"text":"Last team standing wins","color":"yellow"}
title @a title {"text":"Fight!","color":"red"}

bossbar set superarena:time visible false

scoreboard players set SA_TRACKER SA_GAME_PHASE 2

spreadplayers 0 0 200 500 true @a

worldborder center 0 0
worldborder set 1500
worldborder set 200 900
tellraw @a {"text":"World border set to 1500x1500, it will shrink to 200x200 over 15 minutes.","color":"yellow"}