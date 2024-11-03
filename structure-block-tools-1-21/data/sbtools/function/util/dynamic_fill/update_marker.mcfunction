execute unless function sbtools:util/test.is_in_box run return run kill @s
execute unless function sbtools:util/dynamic_fill/test.detect_block run return run kill @s
function sbtools:util/dynamic_fill/macro.setblock with entity @s data
execute positioned ~1 ~ ~ unless entity @e[tag=sbtools.filler,distance=..0.01,limit=1] run function sbtools:util/dynamic_fill/create_marker with entity @s data
execute positioned ~-1 ~ ~ unless entity @e[tag=sbtools.filler,distance=..0.01,limit=1] run function sbtools:util/dynamic_fill/create_marker with entity @s data
execute positioned ~ ~1 ~ unless entity @e[tag=sbtools.filler,distance=..0.01,limit=1] run function sbtools:util/dynamic_fill/create_marker with entity @s data
execute positioned ~ ~-1 ~ unless entity @e[tag=sbtools.filler,distance=..0.01,limit=1] run function sbtools:util/dynamic_fill/create_marker with entity @s data
execute positioned ~ ~ ~1 unless entity @e[tag=sbtools.filler,distance=..0.01,limit=1] run function sbtools:util/dynamic_fill/create_marker with entity @s data
execute positioned ~ ~ ~-1 unless entity @e[tag=sbtools.filler,distance=..0.01,limit=1] run function sbtools:util/dynamic_fill/create_marker with entity @s data
kill @s