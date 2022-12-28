item replace entity @a hotbar.0 with minecraft:red_wool{display:{Name:'{"text":"JOIN RED","color":"red","italic":false}'}} 1
item replace entity @a hotbar.1 with minecraft:lime_wool{display:{Name:'{"text":"JOIN GREEN","color":"green","italic":false}'}} 1
item replace entity @a hotbar.2 with minecraft:light_blue_wool{display:{Name:'{"text":"JOIN BLUE","color":"aqua","italic":false}'}} 1
item replace entity @a hotbar.3 with minecraft:magenta_wool{display:{Name:'{"text":"JOIN PURPLE","color":"light_purple","italic":false}'}} 1
item replace entity @a hotbar.4 with minecraft:gray_wool{display:{Name:'{"text":"JOIN GRAY","color":"gray","italic":false}'}} 1

execute as @a[nbt={SelectedItem:{id:"minecraft:red_wool"}},team=!TEAM_RED] run function superarena:idle/join_red
execute as @a[nbt={SelectedItem:{id:"minecraft:lime_wool"}},team=!TEAM_GREEN] run function superarena:idle/join_green
execute as @a[nbt={SelectedItem:{id:"minecraft:light_blue_wool"}},team=!TEAM_BLUE] run function superarena:idle/join_blue
execute as @a[nbt={SelectedItem:{id:"minecraft:magenta_wool"}},team=!TEAM_PURPLE] run function superarena:idle/join_purple
execute as @a[nbt={SelectedItem:{id:"minecraft:gray_wool"}},team=!TEAM_GRAY] run function superarena:idle/join_gray

effect give @a mining_fatigue 10 10
effect give @a regeneration 10 10
effect give @a resistance 10 10