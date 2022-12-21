##
 # replace.mcfunction
 # 
 # 
 # Created by Galdeveer.
##

#@private
#alias vector spawnOffset ~ ~1 ~

# Summon end watcher
# Note: End watcher and Obsidian watchers are vex. The upwards offset is to place it one block away from the ground to improve pathfinding.

#TODO: Change to scoreboard?

# Tag should not be touched inside the summon function
# 50/50 which one gets summoned
execute if predicate veer:fsh/rng/50 run tag @s add veer.fsh.watcher_pair.replace.true
execute if entity @s[tag=veer.fsh.watcher_pair.replace.true] at @s positioned ~ ~1 ~ run function veer:fsh/end_watcher/summon
execute if entity @s[tag=!veer.fsh.watcher_pair.replace.true] at @s positioned ~ ~1 ~ run function veer:fsh/obsidian_watcher/summon
tag @s remove veer.fsh.watcher_pair.replace.true

# Summon sculk watcher
execute at @s run function veer:fsh/sculk_watcher/summon

# Void previous entity
function veer:fsh/util/kill_in_void