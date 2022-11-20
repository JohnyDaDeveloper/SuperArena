scoreboard players set SA_TRACKER SA_GAME_PHASE 3

execute unless score Red SA_TEAM_M_C matches 0 run function superarena:win/announce_red_win
execute unless score Green SA_TEAM_M_C matches 0 run function superarena:win/announce_green_win
execute unless score Blue SA_TEAM_M_C matches 0 run function superarena:win/announce_blue_win