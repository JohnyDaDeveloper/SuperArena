execute as @a[scores={SA_HP=1..,SA_IS_DEAD=1}] run function superarena:death/tick_as

execute if score SA_TRACKER SA_GAME_PHASE matches 2 run schedule function superarena:death/tick 1s replace