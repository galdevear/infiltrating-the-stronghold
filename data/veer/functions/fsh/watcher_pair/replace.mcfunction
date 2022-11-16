##
 # replace.mcfunction
 # 
 # 
 # Created by Galdeveer.
##

#@private
#alias vector spawnOffset ~ ~1 ~

# Summon end watcher
# Note: End watcher is a vex. The upwards offset is to place it one block away from the ground to improve pathfinding.
execute at @s positioned ~ ~1 ~ run function veer:fsh/end_watcher/summon
# Summon sculk watcher
execute at @s run function veer:fsh/sculk_watcher/summon

# Void previous entity
function veer:fsh/util/kill_in_void