title @a subtitle {"text":"Last team standing wins","color":"yellow"}
title @a title {"text":"Fight!","color":"red"}

bossbar set superarena:time visible false

execute as @a[scores={SA_IS_DEAD=1,SA_DEAD_S=5..}] run function superarena:death/revive
scoreboard players set SA_TRACKER SA_PREP_IN_PROG 0

spreadplayers 0 0 200 500 true @a