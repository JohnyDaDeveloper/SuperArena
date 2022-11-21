execute if score SA_TRACKER SA_DEBUG matches 1 run tellraw @a ["",{"text":"[SA DEBUG] Starting win phase","color":"#D98943"}]

scoreboard players set SA_TRACKER SA_GAME_PHASE 3

worldborder set 25000

execute unless score Red SA_TEAM_M_C matches 0 run function superarena:win/announce_red_win
execute unless score Green SA_TEAM_M_C matches 0 run function superarena:win/announce_green_win
execute unless score Blue SA_TEAM_M_C matches 0 run function superarena:win/announce_blue_win