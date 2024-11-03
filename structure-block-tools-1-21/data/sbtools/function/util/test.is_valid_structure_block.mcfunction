#Missing SB location data, or no tag to begin with
execute unless score @s sbtools.sbX matches -2147483648..2147483647 run tag @s remove sbtools.sbSelected
execute unless score @s sbtools.sbY matches -2147483648..2147483647 run tag @s remove sbtools.sbSelected
execute unless score @s sbtools.sbZ matches -2147483648..2147483647 run tag @s remove sbtools.sbSelected
execute unless entity @s[tag=sbtools.sbSelected] run tellraw @s {"text":"No Structure Block has been selected.","color":"red"}
execute unless entity @s[tag=sbtools.sbSelected] run return 0

#Make sure selected location still has a structure block
function sbtools:util/locate_structure_block
execute unless function sbtools:util/test.structure_block_present run tag @s remove sbtools.sbSelected
data remove storage sbtools:util sbPos
execute unless entity @s[tag=sbtools.sbSelected] run tellraw @s {"text":"Selected location no longer contains a Structure Block, deselecting now","color":"red"}
execute unless entity @s[tag=sbtools.sbSelected] run return 0

#Calculate box, and check if it's valid
function sbtools:util/set_box
execute if score @s sbtools.x2 <= @s sbtools.x1 run tag @s remove sbtools.sbSelected
execute if score @s sbtools.y2 <= @s sbtools.y1 run tag @s remove sbtools.sbSelected
execute if score @s sbtools.z2 <= @s sbtools.z1 run tag @s remove sbtools.sbSelected
execute unless entity @s[tag=sbtools.sbSelected] run tellraw @s {"text":"Selected Structure Block has invalid bounding box dimensions, deselecting now","color":"red"}
execute unless entity @s[tag=sbtools.sbSelected] run return 0

#Structure block is valid
return 1