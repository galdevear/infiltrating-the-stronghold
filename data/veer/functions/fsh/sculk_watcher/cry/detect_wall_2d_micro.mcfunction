# Checks are done at half scale

# Initialize old
execute positioned ^ ^ ^-0.5 run function veer:fsh/sculk_watcher/cry/detect_wall_2d_micro-init_old

# If halfway behind the current block is not blocked, check for entities up till that point
execute if score $seesEntity veer.fsh.sculk_watcher.cry matches -1 positioned ^ ^ ^-0.25 unless block ~ ~ ~ #veer:fsh/seethrough run scoreboard players set $seesEntity veer.fsh.sculk_watcher.cry -2
execute if score $seesEntity veer.fsh.sculk_watcher.cry matches -1 positioned ^ ^ ^-0.25 run function veer:fsh/sculk_watcher/cry/detect_wall_micro-1
execute if score $seesEntity veer.fsh.sculk_watcher.cry matches -1 positioned ^ ^ ^-0.25 run function veer:fsh/sculk_watcher/cry/detect_entity_trig

# If the current position is not blocked, check for entities up till that point
execute if score $seesEntity veer.fsh.sculk_watcher.cry matches -1 unless block ~ ~ ~ #veer:fsh/seethrough run scoreboard players set $seesEntity veer.fsh.sculk_watcher.cry -2
execute if score $seesEntity veer.fsh.sculk_watcher.cry matches -1 run function veer:fsh/sculk_watcher/cry/detect_wall_micro-1
execute if score $seesEntity veer.fsh.sculk_watcher.cry matches -1 run function veer:fsh/sculk_watcher/cry/detect_entity_trig

# Check if half an interval foward its blocked (ensures half scale doesn't miss block)
execute if score $seesEntity veer.fsh.sculk_watcher.cry matches -1 positioned ^ ^ ^0.25 unless block ~ ~ ~ #veer:fsh/seethrough run scoreboard players set $seesEntity veer.fsh.sculk_watcher.cry -2
execute if score $seesEntity veer.fsh.sculk_watcher.cry matches -1 positioned ^ ^ ^0.25 run function veer:fsh/sculk_watcher/cry/detect_wall_micro-1

# if neither halfway back, current position, or halfway forward (all at half scale) is blocked then change the conclusion to unblocked
execute if score $seesEntity veer.fsh.sculk_watcher.cry matches -1 run scoreboard players set $seesEntity veer.fsh.sculk_watcher.cry 0 