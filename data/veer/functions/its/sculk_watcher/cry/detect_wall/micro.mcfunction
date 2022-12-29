# Checks are done at half scale
# This function can satisfy the role of any of the normal checks that might get skipped.
# Initialize old
execute positioned ^ ^ ^-0.5 run function veer:its/sculk_watcher/cry/detect_wall/2d/micro_init_old
execute positioned ^ ^ ^-0.5 run function veer:its/sculk_watcher/cry/detect_wall/3d/micro_init_old

# If halfway behind the current block is not blocked, check for entities up till that point
execute if score $seesEntity veer.its.sculk_watcher.cry matches -1 positioned ^ ^ ^-0.25 run function veer:its/sculk_watcher/cry/detect_wall/1d/micro
execute if score $seesEntity veer.its.sculk_watcher.cry matches -1 positioned ^ ^ ^-0.25 run function veer:its/sculk_watcher/cry/detect_wall/2d/micro
execute if score $seesEntity veer.its.sculk_watcher.cry matches -1 positioned ^ ^ ^-0.25 run function veer:its/sculk_watcher/cry/detect_wall/3d/micro
execute if score $seesEntity veer.its.sculk_watcher.cry matches -1 positioned ^ ^ ^-0.25 run function veer:its/sculk_watcher/cry/detect_entity_trig

# If the current position is not blocked, check for entities up till that point
execute if score $seesEntity veer.its.sculk_watcher.cry matches -1 run function veer:its/sculk_watcher/cry/detect_wall/1d/micro
execute if score $seesEntity veer.its.sculk_watcher.cry matches -1 run function veer:its/sculk_watcher/cry/detect_wall/2d/micro
execute if score $seesEntity veer.its.sculk_watcher.cry matches -1 run function veer:its/sculk_watcher/cry/detect_wall/3d/micro
execute if score $seesEntity veer.its.sculk_watcher.cry matches -1 run function veer:its/sculk_watcher/cry/detect_entity_trig

# # Check if half an interval foward its blocked (ensures half scale doesn't miss block)
# is this necessary? (edit: yes. yes it is)
execute if score $seesEntity veer.its.sculk_watcher.cry matches -1 positioned ^ ^ ^0.25 run function veer:its/sculk_watcher/cry/detect_wall/1d/micro
execute if score $seesEntity veer.its.sculk_watcher.cry matches -1 positioned ^ ^ ^0.25 run function veer:its/sculk_watcher/cry/detect_wall/2d/micro
execute if score $seesEntity veer.its.sculk_watcher.cry matches -1 positioned ^ ^ ^0.25 run function veer:its/sculk_watcher/cry/detect_wall/3d/micro


# if neither halfway back, current position, or halfway forward (all at half scale) is blocked then change the conclusion to unblocked
execute if score $seesEntity veer.its.sculk_watcher.cry matches -1 run scoreboard players set $seesEntity veer.its.sculk_watcher.cry 0