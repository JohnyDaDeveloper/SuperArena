schedule clear superarena:battle/min_wb_shrink_in_15_m
schedule clear superarena:battle/shrink_wb_minimum

execute if score SA_TRACKER SA_DEBUG matches 1 run tellraw @a ["",{"text":"[SA DEBUG] Starting win phase","color":"#D98943"}]

scoreboard players set SA_TRACKER SA_GAME_PHASE 4
scoreboard objectives setdisplay sidebar

worldborder set 25000

execute unless score Red SA_TEAM_M_C matches 0 run scoreboard players set SA_TRACKER SA_TEAM_WINNER 1
execute unless score Green SA_TEAM_M_C matches 0 run scoreboard players set SA_TRACKER SA_TEAM_WINNER 2
execute unless score Blue SA_TEAM_M_C matches 0 run scoreboard players set SA_TRACKER SA_TEAM_WINNER 3
execute unless score Purple SA_TEAM_M_C matches 0 run scoreboard players set SA_TRACKER SA_TEAM_WINNER 4
execute unless score Gray SA_TEAM_M_C matches 0 run scoreboard players set SA_TRACKER SA_TEAM_WINNER 5

execute unless score Red SA_TEAM_M_C matches 0 run function superarena:win/announce_red_win
execute unless score Green SA_TEAM_M_C matches 0 run function superarena:win/announce_green_win
execute unless score Blue SA_TEAM_M_C matches 0 run function superarena:win/announce_blue_win
execute unless score Purple SA_TEAM_M_C matches 0 run function superarena:win/announce_purple_win
execute unless score Gray SA_TEAM_M_C matches 0 run function superarena:win/announce_gray_win

function superarena:win/tick