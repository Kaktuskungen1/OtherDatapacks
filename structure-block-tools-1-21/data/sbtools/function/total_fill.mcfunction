execute unless function sbtools:util/test.is_valid_structure_block run return 0
scoreboard players remove @s sbtools.x2 1
scoreboard players remove @s sbtools.y2 1
scoreboard players remove @s sbtools.z2 1
execute store result storage sbtools:util total_fill.x1 int 1 run scoreboard players get @s sbtools.x1
execute store result storage sbtools:util total_fill.y1 int 1 run scoreboard players get @s sbtools.y1
execute store result storage sbtools:util total_fill.z1 int 1 run scoreboard players get @s sbtools.z1
execute store result storage sbtools:util total_fill.x2 int 1 run scoreboard players get @s sbtools.x2
execute store result storage sbtools:util total_fill.y2 int 1 run scoreboard players get @s sbtools.y2
execute store result storage sbtools:util total_fill.z2 int 1 run scoreboard players get @s sbtools.z2
$data modify storage sbtools:util total_fill.fill set value "$(fill)"
function sbtools:util/macro.total_fill with storage sbtools:util total_fill
data remove storage sbtools:util total_fill
scoreboard players add @s sbtools.x2 1
scoreboard players add @s sbtools.y2 1
scoreboard players add @s sbtools.z2 1