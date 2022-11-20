execute as @a[scores={SA_HP=1..}] if score @s SA_IS_DEAD matches 1 run function superarena:death/tick_as

schedule function superarena:death/tick 1s replace