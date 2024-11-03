execute if block ~ ~ ~ minecraft:structure_block run return run function sbtools:util/select_structure_block
execute positioned ~ ~-.5 ~ if block ~ ~ ~ minecraft:structure_block run return run function sbtools:util/select_structure_block
tellraw @s {"text":"No Structure Block found at this location","color":"red"}
return 0