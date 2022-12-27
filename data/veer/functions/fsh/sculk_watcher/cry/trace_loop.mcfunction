##
 # Date: 12/25/22
 # Recursive loop that checks for a ray along the vector
 # Created by Galdeveer.
##

## Out of Bounds detection
execute if score $steps veer.fsh.sculk_watcher.cry matches 40.. run scoreboard players set $seesEntity veer.fsh.sculk_watcher.cry -2

## Wall Detection Debug
function veer:fsh/sculk_watcher/cry/trace_block_debug

## Detect wall
# Main raytrace block check
execute unless block ~ ~ ~ #veer:fsh/seethrough run scoreboard players set $seesEntity veer.fsh.sculk_watcher.cry -1
execute if score $seesEntity veer.fsh.sculk_watcher.cry matches 0 run function veer:fsh/sculk_watcher/cry/detect_wall_2d
execute if score $seesEntity veer.fsh.sculk_watcher.cry matches -1 run function veer:fsh/sculk_watcher/cry/detect_wall_2d_micro
execute if score $seesEntity veer.fsh.sculk_watcher.cry matches 0 run function veer:fsh/sculk_watcher/cry/detect_wall_3d

## Trigonometric Detect Entity
execute if score $seesEntity veer.fsh.sculk_watcher.cry matches -1..0 run function veer:fsh/sculk_watcher/cry/detect_entity_trig 

## Startle Filter
execute if score $seesEntity veer.fsh.sculk_watcher.cry matches 1 if entity @s[type=#veer:fsh/sculk_watcher/cry/startle] unless score @s veer.fsh.sculk_watcher.cry.startleDuration matches 3.. run scoreboard players add @s veer.fsh.sculk_watcher.cry.startleDuration 1
execute if score $seesEntity veer.fsh.sculk_watcher.cry matches 1 if entity @s[type=#veer:fsh/sculk_watcher/cry/startle] if score @s veer.fsh.sculk_watcher.cry.startleDuration matches 3.. run scoreboard players set $seesEntity veer.fsh.sculk_watcher.cry -1

## Recurse
# Iterate steps
scoreboard players add $steps veer.fsh.sculk_watcher.cry 1
# Recursive call
execute if score $seesEntity veer.fsh.sculk_watcher.cry matches 0 positioned ^ ^ ^0.5 run function veer:fsh/sculk_watcher/cry/trace_loop

## Return
# execute if score $seesEntity veer.fsh.sculk_watcher.cry matches 1 run particle crimson_spore ~ ~ ~ 0 0 0 0 1 force @a
execute unless score $seesEntity veer.fsh.sculk_watcher.cry matches 1 run scoreboard players set $seesEntity veer.fsh.sculk_watcher.cry 0