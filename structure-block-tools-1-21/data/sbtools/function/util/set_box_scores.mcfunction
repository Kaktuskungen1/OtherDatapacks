execute store result score @s sbtools.x1 run data get block ~ ~ ~ posX
scoreboard players operation @s sbtools.x1 += @s sbtools.sbX
execute store result score @s sbtools.x2 run data get block ~ ~ ~ sizeX
scoreboard players operation @s sbtools.x2 += @s sbtools.x1

execute store result score @s sbtools.y1 run data get block ~ ~ ~ posY
scoreboard players operation @s sbtools.y1 += @s sbtools.sbY
execute store result score @s sbtools.y2 run data get block ~ ~ ~ sizeY
scoreboard players operation @s sbtools.y2 += @s sbtools.y1

execute store result score @s sbtools.z1 run data get block ~ ~ ~ posZ
scoreboard players operation @s sbtools.z1 += @s sbtools.sbZ
execute store result score @s sbtools.z2 run data get block ~ ~ ~ sizeZ
scoreboard players operation @s sbtools.z2 += @s sbtools.z1