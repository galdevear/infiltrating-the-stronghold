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
execute if predicate veer:its/rng/50 run tag @s add veer.its.watcher_pair.replace.true
execute if entity @s[tag=veer.its.watcher_pair.replace.true] at @s positioned ~ ~1 ~ run function veer:its/end_watcher/summon
execute if entity @s[tag=!veer.its.watcher_pair.replace.true] at @s positioned ~ ~1 ~ run function veer:its/obsidian_watcher/summon
tag @s remove veer.its.watcher_pair.replace.true

# Summon sculk watcher
execute at @s run function veer:its/sculk_watcher/summon

# Void previous entity
execute if entity @s[type=#veer:its/watcher_pair/replaceable] run function veer:its/util/kill_in_void