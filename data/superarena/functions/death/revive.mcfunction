scoreboard players set @s SA_IS_DEAD 0
scoreboard players operation @s SA_FORGIVEN_DEATHS = @s SA_DEATHS

tellraw @a ["",{"selector":"@s"},{"text":" was revived.","color":"yellow"}]

gamemode survival @s
effect give @s slow_falling 5
effect give @s regeneration 15
effect give @s resistance 15 30
effect give @s fire_resistance 15
effect give @s regeneration 30 3