execute if score SA_TRACKER SA_DEBUG matches 1 run tellraw @a ["",{"text":"[SA DEBUG] Resetting","color":"#D98943"}]
scoreboard players set SA_TRACKER SA_GAME_PHASE 0
execute as @a run function superarena:death/revive
