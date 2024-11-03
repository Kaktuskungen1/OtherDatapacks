$summon marker ~ ~ ~ {Tags:["sbtools.filler","newFiller"],data:{fill:"$(fill)",replace:"$(replace)"}}
scoreboard players operation @e[tag=newFiller,limit=1] sbtools.x1 = @s sbtools.x1
scoreboard players operation @e[tag=newFiller,limit=1] sbtools.x2 = @s sbtools.x2
scoreboard players operation @e[tag=newFiller,limit=1] sbtools.y1 = @s sbtools.y1
scoreboard players operation @e[tag=newFiller,limit=1] sbtools.y2 = @s sbtools.y2
scoreboard players operation @e[tag=newFiller,limit=1] sbtools.z1 = @s sbtools.z1
scoreboard players operation @e[tag=newFiller,limit=1] sbtools.z2 = @s sbtools.z2
tag @e[tag=newFiller] remove newFiller