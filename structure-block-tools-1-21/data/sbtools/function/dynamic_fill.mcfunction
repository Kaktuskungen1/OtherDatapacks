execute unless function sbtools:util/test.is_valid_structure_block run return 0
$execute unless block ~ ~ ~ $(replace) run return run tellraw @s {"text":"Dynamic Fill must start from a block matching \"$(replace)\".","color":"red"}
$execute align xyz positioned ~.5 ~.5 ~.5 run function sbtools:util/dynamic_fill/create_marker {fill:"$(fill)",replace:"$(replace)"}
execute align xyz positioned ~.5 ~.5 ~.5 as @e[tag=sbtools.filler,distance=..0.01,limit=1] at @s unless function sbtools:util/test.is_in_box run kill @s
execute align xyz positioned ~.5 ~.5 ~.5 unless entity @e[tag=sbtools.filler,distance=..0.01,limit=1] run return run tellraw @s {"text":"Starting point for Dynamic Fill must be within the bounding box","color":"red"}
function sbtools:util/dynamic_fill/update_all_markers