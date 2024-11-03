execute store result score @s sbtools.sbX run data get block ~ ~ ~ x
execute store result score @s sbtools.sbY run data get block ~ ~ ~ y
execute store result score @s sbtools.sbZ run data get block ~ ~ ~ z
execute align xyz run particle portal ~.5 ~.5 ~.5 0 0 0 .5 100
tellraw @s [{"text":"Selected Structure Block at (","color":"yellow"},{"score":{"name":"@s","objective":"sbtools.sbX"}},",",{"score":{"name":"@s","objective":"sbtools.sbY"}},",",{"score":{"name":"@s","objective":"sbtools.sbZ"}},")"]
tag @s add sbtools.sbSelected
return 1