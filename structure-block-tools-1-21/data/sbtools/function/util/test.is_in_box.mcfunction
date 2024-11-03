execute store result score Pos sbtools.x1 run data get entity @s Pos[0]
execute if score Pos sbtools.x1 < @s sbtools.x1 run return 0
execute if score Pos sbtools.x1 >= @s sbtools.x2 run return 0

execute store result score Pos sbtools.x1 run data get entity @s Pos[1]
execute if score Pos sbtools.x1 < @s sbtools.y1 run return 0
execute if score Pos sbtools.x1 >= @s sbtools.y2 run return 0

execute store result score Pos sbtools.x1 run data get entity @s Pos[2]
execute if score Pos sbtools.x1 < @s sbtools.z1 run return 0
execute if score Pos sbtools.x1 >= @s sbtools.z2 run return 0

return 1