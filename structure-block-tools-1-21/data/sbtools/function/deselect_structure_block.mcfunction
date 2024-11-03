scoreboard players reset @s sbtools.sbX
scoreboard players reset @s sbtools.sbY
scoreboard players reset @s sbtools.sbZ
scoreboard players reset @s sbtools.x1
scoreboard players reset @s sbtools.y1
scoreboard players reset @s sbtools.z1
scoreboard players reset @s sbtools.x2
scoreboard players reset @s sbtools.y2
scoreboard players reset @s sbtools.z2
execute unless entity @s[tag=sbtools.sbSelected] run return run tellraw @s "No Structure Block is currently selected."
tag @s remove sbtools.sbSelected
tellraw @s {"text":"Structure Block has been deselected.","color":"yellow"}