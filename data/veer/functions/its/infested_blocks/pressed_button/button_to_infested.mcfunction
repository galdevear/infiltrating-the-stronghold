execute if block ~ ~ ~ stone_button[face=ceiling] positioned ~ ~1 ~ if block ~ ~ ~ #veer:its/infested run setblock ~ ~ ~ air destroy
execute if block ~ ~ ~ stone_button[face=ceiling] positioned ~ ~-1 ~ if block ~ ~ ~ #veer:its/infested run setblock ~ ~ ~ air destroy
execute if block ~ ~ ~ stone_button[face=wall,facing=north] positioned ~ ~ ~1 if block ~ ~ ~ #veer:its/infested run setblock ~ ~ ~ air destroy
execute if block ~ ~ ~ stone_button[face=wall,facing=south] positioned ~ ~ ~-1 if block ~ ~ ~ #veer:its/infested run setblock ~ ~ ~ air destroy
execute if block ~ ~ ~ stone_button[face=wall,facing=east] positioned ~-1 ~ ~ if block ~ ~ ~ #veer:its/infested run setblock ~ ~ ~ air destroy
execute if block ~ ~ ~ stone_button[face=wall,facing=west] positioned ~1 ~ ~ if block ~ ~ ~ #veer:its/infested run setblock ~ ~ ~ air destroy