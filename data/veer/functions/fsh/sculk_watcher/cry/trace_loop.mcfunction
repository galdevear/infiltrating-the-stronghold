##
 # Date: 12/19/22
 # Recursive loop that checks for a ray along the vector
 # Created by Galdeveer.
##

## Increment loop counter
# Starts at 1 because it immediately increments
scoreboard players add $i veer.fsh.sculk_watcher.cry 1

## Out of Bounds
execute if score $i veer.fsh.sculk_watcher.cry matches 41.. run scoreboard players set $seesEntity veer.fsh.sculk_watcher.cry -1

## Detect wall
# Fail if the block is not seethrough. Checks if atleast 1/5 points are seethrough in a 1x1 grid (orthogonal to sightline)
execute if score $seesEntity veer.fsh.sculk_watcher.cry matches 0 unless block ~ ~ ~ #veer:fsh/seethrough run scoreboard players set $seesEntity veer.fsh.sculk_watcher.cry -1
execute if score $seesEntity veer.fsh.sculk_watcher.cry matches 0 unless block ^0.49 ^ ^ #veer:fsh/seethrough unless block ^-0.49 ^ ^ #veer:fsh/seethrough run scoreboard players set $seesEntity veer.fsh.sculk_watcher.cry -1
execute if score $seesEntity veer.fsh.sculk_watcher.cry matches 0 unless block ^ ^0.49 ^ #veer:fsh/seethrough unless block ^ ^-0.49 ^ #veer:fsh/seethrough run scoreboard players set $seesEntity veer.fsh.sculk_watcher.cry -1
particle minecraft:flame ~ ~ ~ 0 0 0 0 1 force @a
particle minecraft:flame ^0.49 ^ ^ 0 0 0 0 1 force @a
particle minecraft:flame ^-0.49 ^ ^ 0 0 0 0 1 force @a
particle minecraft:flame ^ ^0.49 ^ 0 0 0 0 1 force @a
particle minecraft:flame ^ ^-0.49 ^ 0 0 0 0 1 force @a

## Success
# Detect entity at location
execute positioned ~-0.25 ~-0.25 ~-0.25 if entity @s[dx=0.5,dy=0.5,dz=0.5] run scoreboard players add $seesEntity veer.fsh.sculk_watcher.cry 1

## Startle Filter
execute if score $seesEntity veer.fsh.sculk_watcher.cry matches 1 if entity @s[type=#veer:fsh/sculk_watcher/cry/startle] unless score @s veer.fsh.sculk_watcher.cry.startleDuration matches 3.. run scoreboard players add @s veer.fsh.sculk_watcher.cry.startleDuration 1
execute if score $seesEntity veer.fsh.sculk_watcher.cry matches 1 if entity @s[type=#veer:fsh/sculk_watcher/cry/startle] if score @s veer.fsh.sculk_watcher.cry.startleDuration matches 3.. run scoreboard players set $seesEntity veer.fsh.sculk_watcher.cry -1

## Recurse
execute if score $seesEntity veer.fsh.sculk_watcher.cry matches 0 positioned ^ ^ ^0.5 run function veer:fsh/sculk_watcher/cry/trace_loop

## Return
execute unless score $seesEntity veer.fsh.sculk_watcher.cry matches 1 run scoreboard players set $seesEntity veer.fsh.sculk_watcher.cry 0
