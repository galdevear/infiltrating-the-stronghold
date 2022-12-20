##
 # Date: 12/19/22
 # Recursive loop that checks for a ray along the vector
 # Created by Galdeveer.
##

# TODO: Check if the player is crouching
# TODO: Check if the player is crawling?
# TODO: Only skew position for eyes if 2 blocks tall

#alias vector DetectFeetFromEyes ~ ~-0.8 ~

## Increment loop counter
# Starts at 1 because it immediately increments
scoreboard players add $i veer.fsh.swc 1

## Out of Bounds
execute if score $i veer.fsh.swc matches 41.. run scoreboard players set $seesEntity veer.fsh.swc -1
# execute if score $i veer.fsh.swc matches 9.. anchored feet at @s positioned ~ ~ ~ as @s[predicate=veer:fsh/is_stealthy] run scoreboard players set $seesEntity veer.fsh.swc -1

## Detect wall
# Fail if the block is not seethrough. Checks if atleast 1/5 points are seethrough in a 1x1 grid (orthogonal to sightline)
execute if score $seesEntity veer.fsh.swc matches 0 unless block ~ ~ ~ #veer:fsh/seethrough run scoreboard players set $seesEntity veer.fsh.swc -1
execute if score $seesEntity veer.fsh.swc matches 0 unless block ^0.49 ^ ^ #veer:fsh/seethrough unless block ^-0.49 ^ ^ #veer:fsh/seethrough run scoreboard players set $seesEntity veer.fsh.swc -1
execute if score $seesEntity veer.fsh.swc matches 0 unless block ^ ^0.49 ^ #veer:fsh/seethrough unless block ^ ^-0.49 ^ #veer:fsh/seethrough run scoreboard players set $seesEntity veer.fsh.swc -1
# particle minecraft:effect ~ ~ ~ 0 0 0 0 1 force @a
# particle minecraft:effect ^0.49 ^ ^ 0 0 0 0 1 force @a
# particle minecraft:effect ^-0.49 ^ ^ 0 0 0 0 1 force @a
# particle minecraft:effect ^ ^0.49 ^ 0 0 0 0 1 force @a
# particle minecraft:effect ^ ^-0.49 ^ 0 0 0 0 1 force @a

## Success
# Detect entity at location
execute positioned ~ ~-0.8 ~ if entity @s[distance=..1] run scoreboard players set $seesEntity veer.fsh.swc 1

## Recurse
execute if score $seesEntity veer.fsh.swc matches 0 positioned ^ ^ ^0.5 run function veer:fsh/sculk_watcher/cry/trace_loop

## Return
execute if score $seesEntity veer.fsh.swc matches -1 run scoreboard players set $seesEntity veer.fsh.swc 0