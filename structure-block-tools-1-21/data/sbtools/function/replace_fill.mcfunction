execute unless function sbtools:util/test.is_valid_structure_block run return 0
scoreboard players remove @s sbtools.x2 1
scoreboard players remove @s sbtools.y2 1
scoreboard players remove @s sbtools.z2 1
execute store result storage sbtools:util replace_fill.x1 int 1 run scoreboard players get @s sbtools.x1
execute store result storage sbtools:util replace_fill.y1 int 1 run scoreboard players get @s sbtools.y1
execute store result storage sbtools:util replace_fill.z1 int 1 run scoreboard players get @s sbtools.z1
execute store result storage sbtools:util replace_fill.x2 int 1 run scoreboard players get @s sbtools.x2
execute store result storage sbtools:util replace_fill.y2 int 1 run scoreboard players get @s sbtools.y2
execute store result storage sbtools:util replace_fill.z2 int 1 run scoreboard players get @s sbtools.z2
$data modify storage sbtools:util replace_fill.fill set value "$(fill)"
$data modify storage sbtools:util replace_fill.replace set value "$(replace)"
function sbtools:util/macro.replace_fill with storage sbtools:util replace_fill
data remove storage sbtools:util replace_fill
scoreboard players add @s sbtools.x2 1
scoreboard players add @s sbtools.y2 1
scoreboard players add @s sbtools.z2 1