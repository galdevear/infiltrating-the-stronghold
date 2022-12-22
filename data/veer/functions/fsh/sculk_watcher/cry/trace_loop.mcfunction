##
 # Date: 12/19/22
 # Recursive loop that checks for a ray along the vector
 # Created by Galdeveer.
##

## Increment counter
scoreboard players add $i veer.fsh.sculk_watcher.cry 1

## Out of Bounds
execute if score $i veer.fsh.sculk_watcher.cry matches 41.. run scoreboard players set $seesEntity veer.fsh.sculk_watcher.cry -1

## Detect wall
# Fail if the block is not seethrough. Checks if atleast 1/5 points are seethrough in a 1x1 grid (orthogonal to sightline)
execute if score $seesEntity veer.fsh.sculk_watcher.cry matches 0 unless block ~ ~ ~ #veer:fsh/seethrough run scoreboard players set $seesEntity veer.fsh.sculk_watcher.cry -1
execute if score $seesEntity veer.fsh.sculk_watcher.cry matches 0 unless block ^0.5 ^ ^ #veer:fsh/seethrough unless block ^-0.5 ^ ^ #veer:fsh/seethrough run scoreboard players set $seesEntity veer.fsh.sculk_watcher.cry -1
execute if score $seesEntity veer.fsh.sculk_watcher.cry matches 0 unless block ^ ^0.5 ^ #veer:fsh/seethrough unless block ^ ^-0.5 ^ #veer:fsh/seethrough run scoreboard players set $seesEntity veer.fsh.sculk_watcher.cry -1

## Detect Wall Debuh
# particle minecraft:flame ~ ~ ~ 0 0 0 0 1 force @a
# particle minecraft:flame ^0.49 ^ ^ 0 0 0 0 1 force @a
# particle minecraft:flame ^-0.49 ^ ^ 0 0 0 0 1 force @a
# particle minecraft:flame ^ ^0.49 ^ 0 0 0 0 1 force @a
# particle minecraft:flame ^ ^-0.49 ^ 0 0 0 0 1 force @a

## Success debug
# execute if score $seesEntity veer.fsh.sculk_watcher.cry matches 0 positioned ^ ^ ^-0.25 positioned ~-0.144337567298 ~-0.144337567298 ~-0.144337567298 positioned ~ ~ ~ run particle minecraft:flame ~ ~ ~ 0 0 0 0 1 force @a
# execute if score $seesEntity veer.fsh.sculk_watcher.cry matches 0 positioned ^ ^ ^-0.25 positioned ~-0.144337567298 ~-0.144337567298 ~-0.144337567298 positioned ~0.288675134595 ~ ~ run particle minecraft:flame ~ ~ ~ 0 0 0 0 1 force @a
# execute if score $seesEntity veer.fsh.sculk_watcher.cry matches 0 positioned ^ ^ ^-0.25 positioned ~-0.144337567298 ~-0.144337567298 ~-0.144337567298 positioned ~ ~0.288675134595 ~ run particle minecraft:flame ~ ~ ~ 0 0 0 0 1 force @a
# execute if score $seesEntity veer.fsh.sculk_watcher.cry matches 0 positioned ^ ^ ^-0.25 positioned ~-0.144337567298 ~-0.144337567298 ~-0.144337567298 positioned ~ ~ ~0.288675134595 run particle minecraft:flame ~ ~ ~ 0 0 0 0 1 force @a
# execute if score $seesEntity veer.fsh.sculk_watcher.cry matches 0 positioned ^ ^ ^-0.25 positioned ~-0.144337567298 ~-0.144337567298 ~-0.144337567298 positioned ~ ~0.288675134595 ~0.288675134595 run particle minecraft:flame ~ ~ ~ 0 0 0 0 1 force @a
# execute if score $seesEntity veer.fsh.sculk_watcher.cry matches 0 positioned ^ ^ ^-0.25 positioned ~-0.144337567298 ~-0.144337567298 ~-0.144337567298 positioned ~0.288675134595 ~0.288675134595 ~ run particle minecraft:flame ~ ~ ~ 0 0 0 0 1 force @a
# execute if score $seesEntity veer.fsh.sculk_watcher.cry matches 0 positioned ^ ^ ^-0.25 positioned ~-0.144337567298 ~-0.144337567298 ~-0.144337567298 positioned ~0.288675134595 ~ ~0.288675134595 run particle minecraft:flame ~ ~ ~ 0 0 0 0 1 force @a
# execute if score $seesEntity veer.fsh.sculk_watcher.cry matches 0 positioned ^ ^ ^-0.25 positioned ~-0.144337567298 ~-0.144337567298 ~-0.144337567298 positioned ~0.288675134595 ~0.288675134595 ~0.288675134595 run particle minecraft:flame ~ ~ ~ 0 0 0 0 1 force @a

## Success
function veer:fsh/sculk_watcher/cry/offset_to_feet

## Failed Experiment
# If the diagonal of the cube is 0.5, then the side is sqrt((0.5^2)/3) = 0.288675134595
# 1 - 0.288675134595 = 0.711324865405 (accounts for bug MC-128876)
# sqrt((0.25^2)/3) = 0.144337567297
# particle minecraft:effect ~ ~ ~ 0 0 0 0 1 force @a
# Why its commented out: I cannot figure out why this was detecting like a block and a half off of where it should of been. This line was suppose to be the greatest line of code I'd ever written ;(
# execute if score $seesEntity veer.fsh.sculk_watcher.cry matches 0 positioned ^ ^ ^-0.25 positioned ~-0.144337567298 ~-0.144337567298 ~-0.144337567298 if entity @s[dx=0.711324865405,dy=0.711324865405,dz=0.711324865405] run scoreboard players set $seesEntity veer.fsh.sculk_watcher.cry 1

## Startle Filter
execute if score $seesEntity veer.fsh.sculk_watcher.cry matches 1 if entity @s[type=#veer:fsh/sculk_watcher/cry/startle] unless score @s veer.fsh.sculk_watcher.cry.startleDuration matches 3.. run scoreboard players add @s veer.fsh.sculk_watcher.cry.startleDuration 1
execute if score $seesEntity veer.fsh.sculk_watcher.cry matches 1 if entity @s[type=#veer:fsh/sculk_watcher/cry/startle] if score @s veer.fsh.sculk_watcher.cry.startleDuration matches 3.. run scoreboard players set $seesEntity veer.fsh.sculk_watcher.cry -1

## Recurse
execute if score $seesEntity veer.fsh.sculk_watcher.cry matches 0 positioned ^ ^ ^0.5 run function veer:fsh/sculk_watcher/cry/trace_loop

## Return
execute unless score $seesEntity veer.fsh.sculk_watcher.cry matches 1 run scoreboard players set $seesEntity veer.fsh.sculk_watcher.cry 0