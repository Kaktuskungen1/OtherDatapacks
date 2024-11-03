tag @e[tag=sbtools.filler] add resolving
execute as @e[tag=sbtools.filler,tag=resolving] at @s run function sbtools:util/dynamic_fill/update_marker
execute if entity @e[tag=sbtools.filler,limit=1] run schedule function sbtools:util/dynamic_fill/update_all_markers 1t